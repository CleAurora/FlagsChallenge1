//
//  FlagAPI.swift
//  Challenge1Flags
//
//  Created by Cleís Aurora Pereira on 24/06/22.
//

import Foundation

class FlagAPI {
    let flags = FlagAPI.getFlags()

    static func getFlags() -> [Flag] {
        let flags = [
        Flag(name: "Estonia", image: "Estonia"),
        Flag(name: "France", image: "France"),
        Flag(name: "Germany", image: "Germany"),
        Flag(name: "Ireland", image: "Ireland"),
        Flag(name: "Italy", image: "Italy"),
        Flag(name: "Monaco", image: "Monaco"),
        Flag(name: "Nigeria", image: "Nigeria"),
        Flag(name: "Poland", image: "Poland"),
        Flag(name: "Russia", image: "Russia"),
        Flag(name: "Spain", image: "Spain"),
        Flag(name: "US", image: "US"),
        Flag(name: "UK", image: "UK")
        ]

        return flags
    }
}
