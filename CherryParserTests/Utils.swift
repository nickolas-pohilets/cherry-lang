//
//  Utils.swift
//  CherryParserTests
//
//  Created by Nickolas Pokhylets on 23/12/2022.
//

import XCTest
import Foundation

private enum ChangeKind {
    case remove
    case insert
    case none
    
    var description: String {
        switch self {
        case .none: return " "
        case .insert: return "+"
        case .remove: return "-"
        }
    }
}

private extension CollectionDifference.Change {
    var offset: Int {
        switch self {
        case let .insert(offset: offset, element: _, associatedWith: _):
            return offset
        case let .remove(offset: offset, element: _, associatedWith: _):
            return offset
        }
    }
    
    var element: ChangeElement {
        switch self {
        case let .insert(offset: _, element: element, associatedWith: _):
            return element
        case let .remove(offset: _, element: element, associatedWith: _):
            return element
        }
    }
}

private func getDiff<T: Hashable>(old: [T], new: [T]) -> [(ChangeKind, T)]? {
    let diff = new.difference(from: old)
    if diff.isEmpty { return nil }
    let removed = Set(diff.removals.map(\.offset))
    var result: [(ChangeKind, T)] = []
    var oldIndex = 0, insertionIndex = 0, newIndex = 0
    while oldIndex < old.count || insertionIndex < diff.insertions.count {
        if oldIndex < old.count && removed.contains(oldIndex) {
            result.append((.remove, old[oldIndex]))
            oldIndex += 1
        } else if insertionIndex < diff.insertions.count && newIndex == diff.insertions[insertionIndex].offset {
            result.append((.insert, diff.insertions[insertionIndex].element))
            insertionIndex += 1
            newIndex += 1
        } else {
            result.append((.none, old[oldIndex]))
            oldIndex += 1
            newIndex += 1
        }
    }
    assert(oldIndex == old.count)
    assert(newIndex == new.count)
    assert(insertionIndex == diff.insertions.count)
    return result
}

func XCTAssertNoDifference<T: Hashable>(_ a: [T], _ b: [T], message msg: String = "", file: StaticString = #file, line: UInt = #line) {
    if let diff = getDiff(old: a, new: b) {
        var message = msg
        message += ": [\n"
        for (kind, element) in diff {
            message += "\(kind.description)   \(element)\n"
        }
        message += "]"
        XCTFail(message, file: file, line: line)
    }
}
