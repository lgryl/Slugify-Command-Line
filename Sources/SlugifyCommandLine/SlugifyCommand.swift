// Created 13/11/2021

import Foundation
import Slugify
import ArgumentParser

struct SlugifyCommand: ParsableCommand {
    @Argument(help: "text to create a slug from.")
    var text: String

    mutating func run() throws {
        print(text.slug)
    }
}
