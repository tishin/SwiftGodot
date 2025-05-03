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


/// Class representing a prism-shaped ``PrimitiveMesh``.
/// 
/// Class representing a prism-shaped ``PrimitiveMesh``.
open class PrismMesh: PrimitiveMesh {
    private static var className = StringName("PrismMesh")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Displacement of the upper edge along the X axis. 0.0 positions edge straight above the bottom-left edge.
    final public var leftToRight: Double {
        get {
            return get_left_to_right ()
        }
        
        set {
            set_left_to_right (newValue)
        }
        
    }
    
    /// Size of the prism.
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// Number of added edge loops along the X axis.
    final public var subdivideWidth: Int32 {
        get {
            return get_subdivide_width ()
        }
        
        set {
            set_subdivide_width (newValue)
        }
        
    }
    
    /// Number of added edge loops along the Y axis.
    final public var subdivideHeight: Int32 {
        get {
            return get_subdivide_height ()
        }
        
        set {
            set_subdivide_height (newValue)
        }
        
    }
    
    /// Number of added edge loops along the Z axis.
    final public var subdivideDepth: Int32 {
        get {
            return get_subdivide_depth ()
        }
        
        set {
            set_subdivide_depth (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_left_to_right: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_left_to_right")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_left_to_right(_ leftToRight: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: leftToRight) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrismMesh.method_set_left_to_right, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_left_to_right: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_left_to_right")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_left_to_right() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PrismMesh.method_get_left_to_right, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_size")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size(_ size: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrismMesh.method_set_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(PrismMesh.method_get_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_subdivide_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_subdivide_width")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_width(_ segments: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: segments) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrismMesh.method_set_subdivide_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_subdivide_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_subdivide_width")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_width() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PrismMesh.method_get_subdivide_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_subdivide_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_subdivide_height")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_height(_ segments: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: segments) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrismMesh.method_set_subdivide_height, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_subdivide_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_subdivide_height")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_height() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PrismMesh.method_get_subdivide_height, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_subdivide_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_subdivide_depth")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdivide_depth(_ segments: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: segments) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PrismMesh.method_set_subdivide_depth, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_subdivide_depth: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_subdivide_depth")
        return withUnsafePointer(to: &PrismMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdivide_depth() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(PrismMesh.method_get_subdivide_depth, handle, nil, &_result)
        return _result
    }
    
}

