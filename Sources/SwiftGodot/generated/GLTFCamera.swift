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


/// Represents a glTF camera.
/// 
/// Represents a camera as defined by the base glTF spec.
open class GLTFCamera: Resource {
    private static var className = StringName("GLTFCamera")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, the camera is in perspective mode. Otherwise, the camera is in orthographic/orthogonal mode. This maps to glTF's camera `type` property. See ``Camera3D/projection`` and the glTF spec for more information.
    final public var perspective: Bool {
        get {
            return get_perspective ()
        }
        
        set {
            set_perspective (newValue)
        }
        
    }
    
    /// The FOV of the camera. This class and glTF define the camera FOV in radians, while Godot uses degrees. This maps to glTF's `yfov` property. This value is only used for perspective cameras, when ``perspective`` is `true`.
    final public var fov: Double {
        get {
            return get_fov ()
        }
        
        set {
            set_fov (newValue)
        }
        
    }
    
    /// The size of the camera. This class and glTF define the camera size magnitude as a radius in meters, while Godot defines it as a diameter in meters. This maps to glTF's `ymag` property. This value is only used for orthographic/orthogonal cameras, when ``perspective`` is `false`.
    final public var sizeMag: Double {
        get {
            return get_size_mag ()
        }
        
        set {
            set_size_mag (newValue)
        }
        
    }
    
    /// The distance to the far culling boundary for this camera relative to its local Z axis, in meters. This maps to glTF's `zfar` property.
    final public var depthFar: Double {
        get {
            return get_depth_far ()
        }
        
        set {
            set_depth_far (newValue)
        }
        
    }
    
    /// The distance to the near culling boundary for this camera relative to its local Z axis, in meters. This maps to glTF's `znear` property.
    final public var depthNear: Double {
        get {
            return get_depth_near ()
        }
        
        set {
            set_depth_near (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_from_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("from_node")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 237784)!
            }
            
        }
        
    }()
    
    /// Create a new GLTFCamera instance from the given Godot ``Camera3D`` node.
    public static func fromNode(cameraNode: Camera3D?) -> GLTFCamera? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: cameraNode?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_from_node, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_to_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("to_node")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2285090890)!
            }
            
        }
        
    }()
    
    /// Converts this GLTFCamera instance into a Godot ``Camera3D`` node.
    public final func toNode() -> Camera3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(GLTFCamera.method_to_node, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_from_dictionary: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("from_dictionary")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2495512509)!
            }
            
        }
        
    }()
    
    /// Creates a new GLTFCamera instance by parsing the given ``VariantDictionary``.
    public static func fromDictionary(_ dictionary: VariantDictionary) -> GLTFCamera? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: dictionary.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_from_dictionary, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_to_dictionary: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("to_dictionary")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// Serializes this GLTFCamera instance into a ``VariantDictionary``.
    public final func toDictionary() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(GLTFCamera.method_to_dictionary, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_perspective: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_perspective")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_perspective() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFCamera.method_get_perspective, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_perspective: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_perspective")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_perspective(_ perspective: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: perspective) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFCamera.method_set_perspective, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fov: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fov")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fov() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFCamera.method_get_fov, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fov: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fov")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fov(_ fov: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fov) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFCamera.method_set_fov, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_size_mag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size_mag")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size_mag() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFCamera.method_get_size_mag, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_size_mag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_size_mag")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size_mag(_ sizeMag: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sizeMag) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFCamera.method_set_size_mag, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_depth_far: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth_far")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_far() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFCamera.method_get_depth_far, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_depth_far: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_depth_far")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_far(_ zdepthFar: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: zdepthFar) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFCamera.method_set_depth_far, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_depth_near: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_depth_near")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_depth_near() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFCamera.method_get_depth_near, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_depth_near: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_depth_near")
        return withUnsafePointer(to: &GLTFCamera.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_depth_near(_ zdepthNear: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: zdepthNear) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFCamera.method_set_depth_near, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

