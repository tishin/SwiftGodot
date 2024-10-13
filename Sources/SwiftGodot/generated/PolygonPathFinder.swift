// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class PolygonPathFinder: Resource {
    override open class var godotClassName: StringName { "PolygonPathFinder" }
    
    /* Properties */
    
    /* Methods */
    fileprivate static var method_setup: GDExtensionMethodBindPtr = {
        let methodName = StringName("setup")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3251786936)!
            }
            
        }
        
    }()
    
    /// 
    public final func setup(points: PackedVector2Array, connections: PackedInt32Array) {
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
    
    fileprivate static var method_find_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("find_path")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1562168077)!
            }
            
        }
        
    }()
    
    /// 
    public final func findPath(from: Vector2, to: Vector2) -> PackedVector2Array {
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
    
    fileprivate static var method_get_intersections: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_intersections")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3932192302)!
            }
            
        }
        
    }()
    
    /// 
    public final func getIntersections(from: Vector2, to: Vector2) -> PackedVector2Array {
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
    
    fileprivate static var method_get_closest_point: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_closest_point")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2656412154)!
            }
            
        }
        
    }()
    
    /// 
    public final func getClosestPoint(_ point: Vector2) -> Vector2 {
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
    
    fileprivate static var method_is_point_inside: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_point_inside")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 556197845)!
            }
            
        }
        
    }()
    
    /// 
    public final func isPointInside(point: Vector2) -> Bool {
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
    
    fileprivate static var method_set_point_penalty: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_point_penalty")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// 
    public final func setPointPenalty(idx: Int32, penalty: Double) {
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
    
    fileprivate static var method_get_point_penalty: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_point_penalty")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// 
    public final func getPointPenalty(idx: Int32) -> Double {
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
    
    fileprivate static var method_get_bounds: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_bounds")
        return withUnsafePointer(to: &PolygonPathFinder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    /// 
    public final func getBounds() -> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(PolygonPathFinder.method_get_bounds, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

