//
//  LocoScriptError.swift
//  
//
//  Created by Alexander Baraley on 27.08.2023.
//

import Foundation

enum LocoScriptError: Error, LocalizedError, CustomStringConvertible {
  case noConfigurationFile
  case emptyStringsFile(locale: String, tag: String)
  case custom(String)

  var localizedDescription: String {
    switch self {
    case .noConfigurationFile:
      return "No configuration file is present"
    case .emptyStringsFile(let locale, let tag):
      return "No localization strings or tag is incorrect for locale: \(locale), tag: \(tag)"
    case .custom(let string):
      return string
    }
  }

  var description: String {
    localizedDescription
  }
}
