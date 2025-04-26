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


open class AudioStreamPlaybackResampled: AudioStreamPlayback {
    private static var className = StringName("AudioStreamPlaybackResampled")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__mix_resampled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_mix_resampled")
        return withUnsafePointer(to: &AudioStreamPlaybackResampled.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 50157827)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _mixResampled(dstBuffer: OpaquePointer?, frameCount: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: dstBuffer) { pArg0 in
            withUnsafePointer(to: frameCount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AudioStreamPlaybackResampled.method__mix_resampled, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_stream_sampling_rate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_stream_sampling_rate")
        return withUnsafePointer(to: &AudioStreamPlaybackResampled.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getStreamSamplingRate() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AudioStreamPlaybackResampled.method__get_stream_sampling_rate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_begin_resample: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("begin_resample")
        return withUnsafePointer(to: &AudioStreamPlaybackResampled.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    public final func beginResample() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AudioStreamPlaybackResampled.method_begin_resample, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_stream_sampling_rate":
                return _AudioStreamPlaybackResampled_proxy_get_stream_sampling_rate
            case "_mix_resampled":
                return _AudioStreamPlaybackResampled_proxy_mix_resampled
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AudioStreamPlaybackResampled_proxy_get_stream_sampling_rate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlaybackResampled else { return }
    let ret = swiftObject._getStreamSamplingRate ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _AudioStreamPlaybackResampled_proxy_mix_resampled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AudioStreamPlaybackResampled else { return }
    let ret = swiftObject._mixResampled (dstBuffer: args [0]!.assumingMemoryBound (to: OpaquePointer?.self).pointee, frameCount: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

