// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Android)
import Android
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


open class PolygonPathFinder: Resource {
    private static var className = StringName("PolygonPathFinder")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /* Methods */
    fileprivate static let method_setup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("setup")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3251786936)!
            }
            
        }
        
    }()
    
    /// Sets up ``PolygonPathFinder`` with an array of points that define the vertices of the polygon, and an array of indices that determine the edges of the polygon.
    /// 
    /// The length of `connections` must be even, returns an error if odd.
    /// 
    public final func setup(points: PackedVector2Array, connections: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: connections.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PolygonPathFinder.method_setup, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_find_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_path")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1562168077)!
            }
            
        }
        
    }()
    
    /// 
    public final func findPath(from: Vector2, to: Vector2) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PolygonPathFinder.method_find_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_intersections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_intersections")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3932192302)!
            }
            
        }
        
    }()
    
    /// 
    public final func getIntersections(from: Vector2, to: Vector2) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PolygonPathFinder.method_get_intersections, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_closest_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_point")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2656412154)!
            }
            
        }
        
    }()
    
    /// 
    public final func getClosestPoint(_ point: Vector2) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PolygonPathFinder.method_get_closest_point, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_point_inside: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_point_inside")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 556197845)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `point` falls inside the polygon area.
    /// 
    public final func isPointInside(point: Vector2) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PolygonPathFinder.method_is_point_inside, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_point_penalty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_point_penalty")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setPointPenalty(idx: Int32, penalty: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: penalty) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PolygonPathFinder.method_set_point_penalty, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_point_penalty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_point_penalty")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getPointPenalty(idx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PolygonPathFinder.method_get_point_penalty, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_bounds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bounds")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBounds() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(PolygonPathFinder.method_get_bounds, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

