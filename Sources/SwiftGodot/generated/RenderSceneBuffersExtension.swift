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


/// This class allows for a RenderSceneBuffer implementation to be made in GDExtension.
/// 
/// This class allows for a RenderSceneBuffer implementation to be made in GDExtension.
open class RenderSceneBuffersExtension: RenderSceneBuffers {
    private static var className = StringName("RenderSceneBuffersExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__configure: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_configure")
        return withUnsafePointer(to: &RenderSceneBuffersExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3072623270)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to handle the (re)sizing of a viewport.
    @_documentation(visibility: public)
    open func _configure(config: RenderSceneBuffersConfiguration?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: config?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersExtension.method__configure, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_fsr_sharpness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_fsr_sharpness")
        return withUnsafePointer(to: &RenderSceneBuffersExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to record a new FSR sharpness value.
    @_documentation(visibility: public)
    open func _setFsrSharpness(_ fsrSharpness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fsrSharpness) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersExtension.method__set_fsr_sharpness, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_texture_mipmap_bias: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_texture_mipmap_bias")
        return withUnsafePointer(to: &RenderSceneBuffersExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to change the texture mipmap bias.
    @_documentation(visibility: public)
    open func _setTextureMipmapBias(_ textureMipmapBias: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureMipmapBias) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersExtension.method__set_texture_mipmap_bias, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_anisotropic_filtering_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_anisotropic_filtering_level")
        return withUnsafePointer(to: &RenderSceneBuffersExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to change the anisotropic filtering level.
    @_documentation(visibility: public)
    open func _setAnisotropicFilteringLevel(_ anisotropicFilteringLevel: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: anisotropicFilteringLevel) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersExtension.method__set_anisotropic_filtering_level, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__set_use_debanding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_use_debanding")
        return withUnsafePointer(to: &RenderSceneBuffersExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Implement this in GDExtension to react to the debanding flag changing.
    @_documentation(visibility: public)
    open func _setUseDebanding(_ useDebanding: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useDebanding) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderSceneBuffersExtension.method__set_use_debanding, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_configure":
                return _RenderSceneBuffersExtension_proxy_configure
            case "_set_anisotropic_filtering_level":
                return _RenderSceneBuffersExtension_proxy_set_anisotropic_filtering_level
            case "_set_fsr_sharpness":
                return _RenderSceneBuffersExtension_proxy_set_fsr_sharpness
            case "_set_texture_mipmap_bias":
                return _RenderSceneBuffersExtension_proxy_set_texture_mipmap_bias
            case "_set_use_debanding":
                return _RenderSceneBuffersExtension_proxy_set_use_debanding
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _RenderSceneBuffersExtension_proxy_configure (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneBuffersExtension else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._configure (config: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? RenderSceneBuffersConfiguration)
}

func _RenderSceneBuffersExtension_proxy_set_anisotropic_filtering_level (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneBuffersExtension else { return }
    swiftObject._setAnisotropicFilteringLevel (args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _RenderSceneBuffersExtension_proxy_set_fsr_sharpness (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneBuffersExtension else { return }
    swiftObject._setFsrSharpness (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _RenderSceneBuffersExtension_proxy_set_texture_mipmap_bias (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneBuffersExtension else { return }
    swiftObject._setTextureMipmapBias (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _RenderSceneBuffersExtension_proxy_set_use_debanding (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? RenderSceneBuffersExtension else { return }
    swiftObject._setUseDebanding (args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

