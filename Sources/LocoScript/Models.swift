//
//  Models.swift
//
//
//  Created by Alexander Baraley on 25.08.2023.
//

import Foundation

struct Configuration: Decodable {
  let locoAPIKey: String
  let tags: [String: String]
}

struct LocaleCode: Decodable {
  let code: String
}

struct Tag {
  let name: String
  let folderPath: String

  func fileURL(for locale: String) -> URL {
    let fileTemplate = "{locale}.lproj/\(name).strings"
    let filePath = fileTemplate.replacingOccurrences(of: "{locale}", with: locale)

    return URL(fileURLWithPath: folderPath + filePath)
  }
}
