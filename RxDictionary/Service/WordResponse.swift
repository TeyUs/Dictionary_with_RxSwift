//
//  WordResponse.swift
//  RxDictionary
//
//  Created by Uslu, Teyhan on 26.10.2023.
//

import Foundation

typealias WordResponse = [WordResponseElement]

// MARK: - WordResponseElement
struct WordResponseElement: Codable {
    let word: String?
    let meanings: [Meaning]?
    let sourceUrls: [String]?
}

// MARK: - Meaning
struct Meaning: Codable {
    let definitions: [DefinitionModel]?
}

// MARK: - Definition
struct DefinitionModel: Codable {
    let definition: String?
    let example: String?
}

