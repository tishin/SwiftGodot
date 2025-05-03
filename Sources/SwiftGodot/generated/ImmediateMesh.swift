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


/// Mesh optimized for creating geometry manually.
/// 
/// A mesh type optimized for creating geometry manually, similar to OpenGL 1.x immediate mode.
/// 
/// Here's a sample on how to generate a triangular face:
/// 
/// > Note: Generating complex geometries with ``ImmediateMesh`` is highly inefficient. Instead, it is designed to generate simple geometry that changes often.
/// 
open class ImmediateMesh: Mesh {
    private static var className = StringName("ImmediateMesh")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_surface_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_begin")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2794442543)!
            }
            
        }
        
    }()
    
    /// Begin a new surface.
    public final func surfaceBegin(primitive: Mesh.PrimitiveType, material: Material? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: primitive.rawValue) { pArg0 in
            withUnsafePointer(to: material?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_begin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_set_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_set_color")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    /// Set the color attribute that will be pushed with the next vertex.
    public final func surfaceSetColor(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_set_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_set_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_set_normal")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Set the normal attribute that will be pushed with the next vertex.
    public final func surfaceSetNormal(_ normal: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: normal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_set_normal, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_set_tangent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_set_tangent")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3505987427)!
            }
            
        }
        
    }()
    
    /// Set the tangent attribute that will be pushed with the next vertex.
    public final func surfaceSetTangent(_ tangent: Plane) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tangent) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_set_tangent, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_set_uv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_set_uv")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Set the UV attribute that will be pushed with the next vertex.
    public final func surfaceSetUv(_ uv: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uv) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_set_uv, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_set_uv2: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_set_uv2")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Set the UV2 attribute that will be pushed with the next vertex.
    public final func surfaceSetUv2(_ uv2: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uv2) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_set_uv2, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_add_vertex: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_add_vertex")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Add a 3D vertex using the current attributes previously set.
    public final func surfaceAddVertex(_ vertex: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_add_vertex, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_add_vertex_2d: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_add_vertex_2d")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Add a 2D vertex using the current attributes previously set.
    public final func surfaceAddVertex2d(vertex: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_add_vertex_2d, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_surface_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("surface_end")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// End and commit current surface. Note that surface being created will not be visible until this function is called.
    public final func surfaceEnd() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ImmediateMesh.method_surface_end, handle, nil, nil)
        
    }
    
    fileprivate static let method_clear_surfaces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_surfaces")
        return withUnsafePointer(to: &ImmediateMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear all surfaces.
    public final func clearSurfaces() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ImmediateMesh.method_clear_surfaces, handle, nil, nil)
        
    }
    
}

