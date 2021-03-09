//
//  Array+Only.swift
//  Memorizer
//
//  Created by Darkhan on 09.03.2021.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
