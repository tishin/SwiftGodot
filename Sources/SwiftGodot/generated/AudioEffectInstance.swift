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


/// Manipulates the audio it receives for a given effect.
/// 
/// An audio effect instance manipulates the audio it receives for a given effect. This instance is automatically created by an ``AudioEffect`` when it is added to a bus, and should usually not be created directly. If necessary, it can be fetched at run-time with ``AudioServer/getBusEffectInstance(busIdx:effectIdx:channel:)``.
open class AudioEffectInstance: RefCounted {
    private static var className = StringName("AudioEffectInstance")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process")
        return withUnsafePointer(to: &AudioEffectInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1649997291)!
            }
            
        }
        
    }()
    
    /// Called by the ``AudioServer`` to process this effect. When ``_processSilence()`` is not overridden or it returns `false`, this method is called only when the bus is active.
    /// 
    /// > Note: It is not useful to override this method in GDScript or C#. Only GDExtension can take advantage of it.
    /// 
    @_documentation(visibility: public)
    open func _process(srcBuffer: OpaquePointer?, dstBuffer: OpaquePointer?, frameCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: srcBuffer) { pArg0 in
            withUnsafePointer(to: dstBuffer) { pArg1 in
                withUnsafePointer(to: frameCount) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AudioEffectInstance.method__process, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__process_silence: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process_silence")
        return withUnsafePointer(to: &AudioEffectInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Override this method to customize the processing behavior of this effect instance.
    /// 
    /// Should return `true` to force the ``AudioServer`` to always call ``_process(srcBuffer:dstBuffer:frameCount:)``, even if the bus has been muted or cannot otherwise be heard.
    /// 
    @_documentation(visibility: public)
    open func _processSilence() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AudioEffectInstance.method__process_silence, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_process":
                return _AudioEffectInstance_proxy_process
            case "_process_silence":
                return _AudioEffectInstance_proxy_process_silence
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AudioEffectInstance_proxy_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioEffectInstance else { return }
    swiftObject._process (srcBuffer: args [0]!.assumingMemoryBound (to: OpaquePointer?.self).pointee, dstBuffer: args [1]!.assumingMemoryBound (to: OpaquePointer?.self).pointee, frameCount: args [2]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _AudioEffectInstance_proxy_process_silence (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioEffectInstance else { return }
    let ret = swiftObject._processSilence ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

