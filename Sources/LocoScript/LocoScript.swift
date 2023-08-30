
import Foundation

@main
enum LocoScript {

  static func main() async throws {
    let currentDirectoryPath = FileManager.default.currentDirectoryPath

    print("current root directory: \(currentDirectoryPath)")

    guard
      let configurationURL = URL(string: currentDirectoryPath + "/.locoConfig"),
      let data = FileManager.default.contents(atPath: configurationURL.path)
    else {
      throw LocoScriptError.noConfigurationFile
    }

    let configuration = try JSONDecoder().decode(Configuration.self, from: data)
    
    let loader = StringsLoader(locoAPIKey: configuration.locoAPIKey)

    let tags = configuration.tags.map { Tag(name: $0.key, folderPath: currentDirectoryPath + $0.value) }

    try await loader.loadLocalization(for: tags)
  }
}
