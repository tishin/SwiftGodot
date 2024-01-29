// Based on godot/tests/core/math/test_geometry_2d.h

import XCTest
import SwiftGodotTestability
@testable import SwiftGodot

final class Geometry2DTests: GodotTestCase {
    
    func testPointInCircle () {
        XCTAssertTrue (Geometry2D.isPointInCircle (point: Vector2 (x: 0, y: 0), circlePosition: Vector2 (x: 0, y: 0), circleRadius: 1.0))
        
        XCTAssertTrue (Geometry2D.isPointInCircle (point: Vector2 (x: 0, y: 0), circlePosition: Vector2 (x: 11.99, y: 0), circleRadius: 12))
        XCTAssertTrue (Geometry2D.isPointInCircle (point: Vector2 (x: -11.99, y: 0), circlePosition: Vector2 (x: 0, y: 0), circleRadius: 12))
        
        XCTAssertFalse (Geometry2D.isPointInCircle (point: Vector2 (x: 0, y: 0), circlePosition: Vector2 (x: 12.01, y: 0), circleRadius: 12))
        XCTAssertFalse (Geometry2D.isPointInCircle (point: Vector2 (x: -12.01, y: 0), circlePosition: Vector2 (x: 0, y: 0), circleRadius: 12))
        
        XCTAssertTrue (Geometry2D.isPointInCircle (point: Vector2 (x: 7, y: -42), circlePosition: Vector2 (x: 4, y: -40), circleRadius: 3.7))
        XCTAssertFalse (Geometry2D.isPointInCircle (point: Vector2 (x: 7, y: -42), circlePosition: Vector2 (x: 4, y: -40), circleRadius: 3.5))
        
        // This tests points on the edge of the circle. They are treated as being inside the circle.
        XCTAssertTrue (Geometry2D.isPointInCircle (point: Vector2 (x: 1.0, y: 0.0), circlePosition: Vector2 (x: 0, y: 0), circleRadius: 1.0))
        XCTAssertTrue (Geometry2D.isPointInCircle (point: Vector2 (x: 0.0, y: -1.0), circlePosition: Vector2 (x: 0, y: 0), circleRadius: 1.0))
    }

    func testPointInTriangle () {
        XCTAssertTrue (Geometry2D.pointIsInsideTriangle (point: Vector2 (x: 0, y: 0), a: Vector2 (x: -1, y: 1), b: Vector2 (x: 0, y: -1), c: Vector2 (x: 1, y: 1)))
        XCTAssertFalse (Geometry2D.pointIsInsideTriangle (point: Vector2 (x: -1.01, y: 1.0), a: Vector2 (x: -1, y: 1), b: Vector2 (x: 0, y: -1), c: Vector2 (x: 1, y: 1)))
        
        XCTAssertTrue (Geometry2D.pointIsInsideTriangle (point: Vector2 (x: 3, y: 2.5), a: Vector2 (x: 1, y: 4), b: Vector2 (x: 3, y: 2), c: Vector2 (x: 5, y: 4)))
        XCTAssertTrue (Geometry2D.pointIsInsideTriangle (point: Vector2 (x: -3, y: -2.5), a: Vector2 (x: -1, y: -4), b: Vector2 (x: -3, y: -2), c: Vector2 (x: -5, y: -4)))
        XCTAssertFalse (Geometry2D.pointIsInsideTriangle (point: Vector2 (x: 0, y: 0), a: Vector2 (x: 1, y: 4), b: Vector2 (x: 3, y: 2), c: Vector2 (x: 5, y: 4)))
        
        // This tests points on the edge of the triangle. They are treated as being outside the triangle.
        // In `isPointInCircle` and `isPointInPolygon` they are treated as being inside, so in order the make
        // the behavior consistent this may change in the future (see issue #44717 and PR #44274).
        XCTAssertFalse (Geometry2D.pointIsInsideTriangle (point: Vector2 (x: 1, y: 1), a: Vector2 (x: -1, y: 1), b: Vector2 (x: 0, y: -1), c: Vector2 (x: 1, y: 1)))
        XCTAssertFalse (Geometry2D.pointIsInsideTriangle (point: Vector2 (x: 0, y: 1), a: Vector2 (x: -1, y: 1), b: Vector2 (x: 0, y: -1), c: Vector2 (x: 1, y: 1)))
    }
    
    
}
