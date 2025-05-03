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


/// Performs a ``CurveXYZTexture`` lookup within the visual shader graph.
/// 
/// Comes with a built-in editor for texture's curves.
open class VisualShaderNodeCurveXYZTexture: VisualShaderNodeResizableBase {
    private static var className = StringName("VisualShaderNodeCurveXYZTexture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The source texture.
    final public var texture: CurveXYZTexture? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture")
        return withUnsafePointer(to: &VisualShaderNodeCurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 8031783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture(_ texture: CurveXYZTexture?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeCurveXYZTexture.method_set_texture, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture")
        return withUnsafePointer(to: &VisualShaderNodeCurveXYZTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1950275015)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture() -> CurveXYZTexture? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(VisualShaderNodeCurveXYZTexture.method_get_texture, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

