//
//  Configuration.swift
//  
//
//  Created by Alexander Baraley on 27.08.2023.
//

import Foundation


struct Configuration: Decodable {

  let locoAPIKey: String
  let tags: [String: String]
}
