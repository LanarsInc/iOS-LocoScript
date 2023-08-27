//
//  StringsLoader.swift
//  
//
//  Created by Alexander Baraley on 25.08.2023.
//

import Foundation

final class StringsLoader {

  let key: String

  init(locoAPIKey: String) {
    self.key = locoAPIKey
  }

  func loadLocalization(for tags: [Tag]) async throws {
    do {
      let locales = try await loadAvailableLocales()

      try await withThrowingTaskGroup(of: Void.self) { group in
        tags.forEach { tag in
          locales.forEach { locale in
            group.addTask {
              try await self.importTranslation(with: locale, tagName: tag.name, fileURL: tag.fileURL(for: locale))
            }
          }
        }

        try await group.waitForAll()
      }
    } catch {
      throw LocoScriptError.custom(error.localizedDescription)
    }
  }
}

private extension StringsLoader {

  func loadAvailableLocales() async throws -> [String] {
    var request = URLRequest(url: URL(string: "https://localise.biz/api/locales")!)
    request.addValue("Loco \(key)", forHTTPHeaderField: "Authorization")

    let (data, _) = try await URLSession.shared.data(for: request)
    let decoder = JSONDecoder()
    let result = try decoder.decode([LocaleCode].self, from: data)

    return result.map(\.code)
  }

  func importTranslation(with locale: String, tagName: String, fileURL: URL) async throws {
    var components = URLComponents(string: "https://localise.biz/api/export/locale/\(locale).strings")!
    components.queryItems = [
      .init(name: "key", value: key),
      .init(name: "filter", value: tagName),
    ]

    guard let url = components.url else { return }

    let request = URLRequest(url: url)

    let (tempUrl, _) = try await URLSession.shared.download(for: request)
    let (data, _) = try await URLSession.shared.data(from: tempUrl)

    // Template text of strings file from loco.biz takes around 500 bytes
    if data.count < 500 {
      throw LocoScriptError.emptyStringsFile(locale: locale, tag: tagName)
    }

    if FileManager.default.fileExists(atPath: fileURL.path) {
      try data.write(to: fileURL.absoluteURL)
    } else {
      try FileManager.default.createDirectory(
        at: fileURL.deletingLastPathComponent(), 
        withIntermediateDirectories: true
      )
      FileManager.default.createFile(atPath: fileURL.path, contents: data)
    }

    print("Success: \(fileURL.pathComponents.suffix(2).joined(separator: "/"))")
  }
}
