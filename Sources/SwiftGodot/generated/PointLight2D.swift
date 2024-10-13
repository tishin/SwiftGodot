// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Positional 2D light source.
/// 
/// Casts light in a 2D environment. This light's shape is defined by a (usually grayscale) texture.
open class PointLight2D: Light2D {
    override open class var godotClassName: StringName { "PointLight2D" }
    
    /* Properties */
    
    /// ``Texture2D`` used for the light's appearance.
    final public var texture: Texture2D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /// The offset of the light's ``texture``.
    final public var offset: Vector2 {
        get {
            return get_texture_offset ()
        }
        
        set {
            set_texture_offset (newValue)
        }
        
    }
    
    /// The ``texture``'s scale factor.
    final public var textureScale: Double {
        get {
            return get_texture_scale ()
        }
        
        set {
            set_texture_scale (newValue)
        }
        
    }
    
    /// The height of the light. Used with 2D normal mapping. The units are in pixels, e.g. if the height is 100, then it will illuminate an object 100 pixels away at a 45° angle to the plane.
    final public var height: Double {
        get {
            return getHeight ()
        }
        
        set {
            setHeight (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture")
        return withUnsafePointer(to: &PointLight2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture(_ texture: Texture2D?) {
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PointLight2D.method_set_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture")
        return withUnsafePointer(to: &PointLight2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture() -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(PointLight2D.method_get_texture, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_texture_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture_offset")
        return withUnsafePointer(to: &PointLight2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_offset(_ textureOffset: Vector2) {
        withUnsafePointer(to: textureOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PointLight2D.method_set_texture_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture_offset")
        return withUnsafePointer(to: &PointLight2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_offset() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(PointLight2D.method_get_texture_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_texture_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_texture_scale")
        return withUnsafePointer(to: &PointLight2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_scale(_ textureScale: Double) {
        withUnsafePointer(to: textureScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PointLight2D.method_set_texture_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_texture_scale: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_texture_scale")
        return withUnsafePointer(to: &PointLight2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_scale() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(PointLight2D.method_get_texture_scale, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

