@main
enum LocoScript {

  static func main() async throws {
    let loader = StringsLoader(locoAPIKey: "oD8Sxz1qDdVJ4DZyx1jW6C8Q_u5X9Eyy")

    let destinationDirectory = "/Users/baraley/Projects/LANARS/LocoScript/Localization/"

    let tags = [
      Tag(name: "common", folderPath: destinationDirectory),
      Tag(name: "iOS", folderPath: destinationDirectory)
    ]
    do {
      try await loader.loadLocalization(for: tags)
    } catch {
      print(error.localizedDescription)
    }
  }
}
