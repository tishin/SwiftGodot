// Based on godot/tests/core/math/test_astar.h

import XCTest
import SwiftGodotTestability
@testable import SwiftGodot

final class AStarTests: GodotTestCase {
    
    class ABCX: AStar3D {
        
        static let A: Int = 0
        static let B: Int = 1
        static let C: Int = 2
        static let X: Int = 3
        
        required init() {
            super.init()
            
            addPoint(id: Self.A, position: Vector3(x: 0, y: 0, z: 0))
            addPoint(id: Self.B, position: Vector3(x: 1, y: 0, z: 0))
            addPoint(id: Self.C, position: Vector3(x: 0, y: 1, z: 0))
            addPoint(id: Self.X, position: Vector3(x: 0, y: 0, z: 1))
            connectPoints(id: Self.A, toId: Self.B)
            connectPoints(id: Self.A, toId: Self.C)
            connectPoints(id: Self.B, toId: Self.C)
            connectPoints(id: Self.X, toId: Self.A)
        }
        
        required init(nativeHandle: UnsafeRawPointer) {
            super.init(nativeHandle: nativeHandle)
        }
        
        // Disable heuristic completely.
        override func _computeCost(fromId: Int, toId: Int) -> Double {
            if (fromId == Self.A && toId == Self.C) {
                return 1000
            }
            return 100
        }
        
    }
    
    override class var godotSubclasses: [Wrapped.Type] {
        return [ABCX.self]
    }
    
    func testAbcPath () {
        let abcx = ABCX ()
        let path = abcx.getIdPath (fromId: ABCX.A, toId: ABCX.C)
        XCTAssertEqual (path.size (), 3)
        XCTAssertEqual (path [safe: 0], Int64(ABCX.A))
        XCTAssertEqual (path [safe: 1], Int64(ABCX.B))
        XCTAssertEqual (path [safe: 2], Int64(ABCX.C))
    }

    func testAbcxPath () {
        let abcx = ABCX ()
        let path = abcx.getIdPath (fromId: ABCX.X, toId: ABCX.C)
        XCTAssertEqual (path.size (), 4)
        XCTAssertEqual (path [safe: 0], Int64(ABCX.X))
        XCTAssertEqual (path [safe: 1], Int64(ABCX.A))
        XCTAssertEqual (path [safe: 2], Int64(ABCX.B))
        XCTAssertEqual (path [safe: 3], Int64(ABCX.C))
    }
    
}
