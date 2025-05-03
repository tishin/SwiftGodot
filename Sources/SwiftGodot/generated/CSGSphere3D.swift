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


/// A CSG Sphere shape.
/// 
/// This node allows you to create a sphere for use with the CSG system.
/// 
/// > Note: CSG nodes are intended to be used for level prototyping. Creating CSG nodes has a significant CPU cost compared to creating a ``MeshInstance3D`` with a ``PrimitiveMesh``. Moving a CSG node within another CSG node also has a significant CPU cost, so it should be avoided during gameplay.
/// 
open class CSGSphere3D: CSGPrimitive3D {
    private static var className = StringName("CSGSphere3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Radius of the sphere.
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// Number of vertical slices for the sphere.
    final public var radialSegments: Int32 {
        get {
            return get_radial_segments ()
        }
        
        set {
            set_radial_segments (newValue)
        }
        
    }
    
    /// Number of horizontal slices for the sphere.
    final public var rings: Int32 {
        get {
            return get_rings ()
        }
        
        set {
            set_rings (newValue)
        }
        
    }
    
    /// If `true` the normals of the sphere are set to give a smooth effect making the sphere seem rounded. If `false` the sphere will have a flat shaded look.
    final public var smoothFaces: Bool {
        get {
            return get_smooth_faces ()
        }
        
        set {
            set_smooth_faces (newValue)
        }
        
    }
    
    /// The material used to render the sphere.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_radius")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius(_ radius: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGSphere3D.method_set_radius, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_radius: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_radius")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CSGSphere3D.method_get_radius, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_radial_segments: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_radial_segments")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radial_segments(_ radialSegments: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: radialSegments) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGSphere3D.method_set_radial_segments, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_radial_segments: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_radial_segments")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radial_segments() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CSGSphere3D.method_get_radial_segments, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_rings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rings")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rings(_ rings: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rings) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGSphere3D.method_set_rings, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rings")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rings() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CSGSphere3D.method_get_rings, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_smooth_faces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_smooth_faces")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_smooth_faces(_ smoothFaces: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: smoothFaces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGSphere3D.method_set_smooth_faces, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_smooth_faces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_smooth_faces")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_smooth_faces() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CSGSphere3D.method_get_smooth_faces, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_material")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_material(_ material: Material?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: material?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CSGSphere3D.method_set_material, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_material")
        return withUnsafePointer(to: &CSGSphere3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material() -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CSGSphere3D.method_get_material, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

