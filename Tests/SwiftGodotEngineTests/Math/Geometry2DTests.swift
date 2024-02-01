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
    
    func testPointInPolygon () {
        let p = PackedVector2Array ()
        XCTAssertFalse (Geometry2D.isPointInPolygon (point: Vector2 (x: 0, y: 0), polygon: p))
        
        p.pushBack (value: Vector2 (x: -88, y: 120))
        p.pushBack (value: Vector2 (x: -74, y: -38))
        p.pushBack (value: Vector2 (x: 135, y: -145))
        p.pushBack (value: Vector2 (x: 425, y: 70))
        p.pushBack (value: Vector2 (x: 68, y: 112))
        p.pushBack (value: Vector2 (x: -120, y: 370))
        p.pushBack (value: Vector2 (x: -323, y: -145))
        XCTAssertFalse (Geometry2D.isPointInPolygon (point: Vector2 (x: -350, y: 0), polygon: p))
        XCTAssertFalse (Geometry2D.isPointInPolygon (point: Vector2 (x: -110, y: 60), polygon: p))
        XCTAssertFalse (Geometry2D.isPointInPolygon (point: Vector2 (x: 412, y: 96), polygon: p))
        XCTAssertFalse (Geometry2D.isPointInPolygon (point: Vector2 (x: 83, y: 130), polygon: p))
        XCTAssertFalse (Geometry2D.isPointInPolygon (point: Vector2 (x: -320, y: -153), polygon: p))
        
        XCTAssertTrue (Geometry2D.isPointInPolygon (point: Vector2 (x: 0, y: 0), polygon: p))
        XCTAssertTrue (Geometry2D.isPointInPolygon (point: Vector2 (x: -230, y: 0), polygon: p))
        XCTAssertTrue (Geometry2D.isPointInPolygon (point: Vector2 (x: 130, y: -110), polygon: p))
        XCTAssertTrue (Geometry2D.isPointInPolygon (point: Vector2 (x: 370, y: 55), polygon: p))
        XCTAssertTrue (Geometry2D.isPointInPolygon (point: Vector2 (x: -160, y: 190), polygon: p))
        
        // This tests points on the edge of the polygon. They are treated as being inside the polygon.
        let c = Int (p.size ())
        for i in 0..<c {
            let p1 = p [i]
            XCTAssertTrue (Geometry2D.isPointInPolygon (point: p1, polygon: p))
            
            let p2 = p [(i + 1) % c]
            let midpoint = ((p1 + p2) * 0.5)
            XCTAssertTrue (Geometry2D.isPointInPolygon (point: midpoint, polygon: p))
        }
    }
    
    func testPolygonClockwise () {
        let p = PackedVector2Array ()
        XCTAssertFalse (Geometry2D.isPolygonClockwise (polygon: p))
        
        p.pushBack (value: Vector2 (x: 5, y: -5))
        p.pushBack (value: Vector2 (x: -1, y: -5))
        p.pushBack (value: Vector2 (x: -5, y: -1))
        p.pushBack (value: Vector2 (x: -1, y: 3))
        p.pushBack (value: Vector2 (x: 1, y: 5))
        XCTAssertTrue (Geometry2D.isPolygonClockwise (polygon: p))
        
        p.reverse ()
        XCTAssertFalse (Geometry2D.isPolygonClockwise (polygon: p))
    }

    func testLineIntersection () {
        var r: Variant
        
        r = Geometry2D.lineIntersectsLine (fromA: Vector2 (x: 2, y: 0), dirA: Vector2 (x: 0, y: 1), fromB: Vector2 (x: 0, y: 2), dirB: Vector2 (x: 1, y: 0))
        XCTAssertEqual (r.gtype, .vector2)
        XCTAssertEqual (Vector2 (r), Vector2 (x: 2, y: 2))
        
        r = Geometry2D.lineIntersectsLine (fromA: Vector2 (x: -1, y: 1), dirA: Vector2 (x: 1, y: -1), fromB: Vector2 (x: 4, y: 1), dirB: Vector2 (x: -1, y: -1))
        XCTAssertEqual (r.gtype, .vector2)
        XCTAssertEqual (Vector2 (r), Vector2 (x: 1.5, y: -1.5))
        
        r = Geometry2D.lineIntersectsLine (fromA: Vector2 (x: -1, y: 0), dirA: Vector2 (x: -1, y: -1), fromB: Vector2 (x: 1, y: 0), dirB: Vector2 (x: 1, y: -1))
        XCTAssertEqual (r.gtype, .vector2)
        XCTAssertEqual (Vector2 (r), Vector2 (x: 0, y: 1))
        
        r = Geometry2D.lineIntersectsLine (fromA: Vector2 (x: -1, y: 1), dirA: Vector2 (x: 1, y: -1), fromB: Vector2 (x: 0, y: 1), dirB: Vector2 (x: 1, y: -1))
        XCTAssertEqual (r.gtype, .nil, "Parallel lines should not intersect.")
    }

    func testSegmentIntersection () {
        var r: Variant
        
        r = Geometry2D.segmentIntersectsSegment (fromA: Vector2 (x: -1, y: 1), toA: Vector2 (x: 1, y: -1), fromB: Vector2 (x: 1, y: 1), toB: Vector2 (x: -1, y: -1))
        XCTAssertEqual (r.gtype, .vector2)
        XCTAssertEqual (Vector2 (r), Vector2 (x: 0, y: 0))
        
        r = Geometry2D.segmentIntersectsSegment (fromA: Vector2 (x: -1, y: 1), toA: Vector2 (x: 1, y: -1), fromB: Vector2 (x: 1, y: 1), toB: Vector2 (x: 0.1, y: 0.1))
        XCTAssertEqual (r.gtype, .nil)
        r = Geometry2D.segmentIntersectsSegment (fromA: Vector2 (x: -1, y: 1), toA: Vector2 (x: 1, y: -1), fromB: Vector2 (x: 0.1, y: 0.1), toB: Vector2 (x: 1, y: 1))
        XCTAssertEqual (r.gtype, .nil)
        
        r = Geometry2D.segmentIntersectsSegment (fromA: Vector2 (x: -1, y: 1), toA: Vector2 (x: 1, y: -1), fromB: Vector2 (x: 0, y: 1), toB: Vector2 (x: 2, y: -1))
        XCTAssertEqual (r.gtype, .nil, "Parallel segments should not intersect.")
        
        r = Geometry2D.segmentIntersectsSegment (fromA: Vector2 (x: 1, y: 2), toA: Vector2 (x: 3, y: 2), fromB: Vector2 (x: 0, y: 2), toB: Vector2 (x: -2, y: 2))
        XCTAssertEqual (r.gtype, .nil,"Non-overlapping collinear segments should not intersect.")
        
        r = Geometry2D.segmentIntersectsSegment (fromA: Vector2 (x: 0, y: 0), toA: Vector2 (x: 0, y: 1), fromB: Vector2 (x: 0, y: 0), toB: Vector2 (x: 1, y: 0))
        XCTAssertEqual (r.gtype, .vector2, "Touching segments should intersect.")
        XCTAssertEqual (Vector2 (r), Vector2 (x: 0, y: 0))
        
        r = Geometry2D.segmentIntersectsSegment (fromA: Vector2 (x: 0, y: 1), toA: Vector2 (x: 0, y: 0), fromB: Vector2 (x: 0, y: 0), toB: Vector2 (x: 1, y: 0))
        XCTAssertEqual (r.gtype, .vector2, "Touching segments should intersect.")
        XCTAssertEqual (Vector2 (r), Vector2 (x: 0, y: 0))
    }
    
}
