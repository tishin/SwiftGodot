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


/// A 1D texture where the red, green, and blue color channels correspond to points on 3 curves.
/// 
/// A 1D texture where the red, green, and blue color channels correspond to points on 3 unit ``Curve`` resources. Compared to using separate ``CurveTexture``s, this further simplifies the task of saving curves as image files.
/// 
/// If you only need to store one curve within a single texture, use ``CurveTexture`` instead. See also ``GradientTexture1D`` and ``GradientTexture2D``.
/// 
open class CurveXYZTexture: Texture2D {
    private static var className = StringName("CurveXYZTexture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The width of the texture (in pixels). Higher values make it possible to represent high-frequency data better (such as sudden direction changes), at the cost of increased generation time and memory usage.
    final public var width: Int32 {
        get {
            return getWidth ()
        }
        
        set {
            set_width (newValue)
        }
        
    }
    
    /// The ``Curve`` that is rendered onto the texture's red channel. Should be a unit ``Curve``.
    final public var curveX: Curve? {
        get {
            return get_curve_x ()
        }
        
        set {
            set_curve_x (newValue)
        }
        
    }
    
    /// The ``Curve`` that is rendered onto the texture's green channel. Should be a unit ``Curve``.
    final public var curveY: Curve? {
        get {
            return get_curve_y ()
        }
        
        set {
            set_curve_y (newValue)
        }
        
    }
    
    /// The ``Curve`` that is rendered onto the texture's blue channel. Should be a unit ``Curve``.
    final public var curveZ: Curve? {
        get {
            return get_curve_z ()
        }
        
        set {
            set_curve_z (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_width")
        return withUnsafePointer(to: &CurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_width(_ width: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CurveXYZTexture.method_set_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_curve_x: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_curve_x")
        return withUnsafePointer(to: &CurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve_x(_ curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CurveXYZTexture.method_set_curve_x, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_curve_x: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_curve_x")
        return withUnsafePointer(to: &CurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve_x() -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CurveXYZTexture.method_get_curve_x, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_curve_y: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_curve_y")
        return withUnsafePointer(to: &CurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve_y(_ curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CurveXYZTexture.method_set_curve_y, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_curve_y: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_curve_y")
        return withUnsafePointer(to: &CurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve_y() -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CurveXYZTexture.method_get_curve_y, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_curve_z: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_curve_z")
        return withUnsafePointer(to: &CurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve_z(_ curve: Curve?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CurveXYZTexture.method_set_curve_z, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_curve_z: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_curve_z")
        return withUnsafePointer(to: &CurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve_z() -> Curve? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CurveXYZTexture.method_get_curve_z, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

