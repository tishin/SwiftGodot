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


/// A 2D texture uniform array to be used within the visual shader graph.
/// 
/// Translated to `uniform sampler2DArray` in the shader language.
open class VisualShaderNodeTexture2DArray: VisualShaderNodeSample3D {
    private static var className = StringName("VisualShaderNodeTexture2DArray")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// A source texture array. Used if ``VisualShaderNodeSample3D/source`` is set to ``VisualShaderNodeSample3D/Source/texture``.
    final public var textureArray: TextureLayered? {
        get {
            return get_texture_array ()
        }
        
        set {
            set_texture_array (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_texture_array: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_array")
        return withUnsafePointer(to: &VisualShaderNodeTexture2DArray.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1278366092)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_array(_ value: TextureLayered?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeTexture2DArray.method_set_texture_array, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_array: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_array")
        return withUnsafePointer(to: &VisualShaderNodeTexture2DArray.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3984243839)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_array() -> TextureLayered? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(VisualShaderNodeTexture2DArray.method_get_texture_array, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

