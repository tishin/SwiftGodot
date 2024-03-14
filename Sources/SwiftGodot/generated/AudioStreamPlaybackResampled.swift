// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

open class AudioStreamPlaybackResampled: AudioStreamPlayback {
    override open class var godotClassName: StringName { "AudioStreamPlaybackResampled" }
    /* Methods */
    /// 
    @_documentation(visibility: public)
    open func _getStreamSamplingRate ()-> Double {
        return 0.0
    }
    
    fileprivate static var method_begin_resample: GDExtensionMethodBindPtr = {
        let methodName = StringName ("begin_resample")
        return withUnsafePointer (to: &AudioStreamPlaybackResampled.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    public final func beginResample () {
        gi.object_method_bind_ptrcall (AudioStreamPlaybackResampled.method_begin_resample, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_stream_sampling_rate":
                return _AudioStreamPlaybackResampled_proxy_get_stream_sampling_rate
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AudioStreamPlaybackResampled_proxy_get_stream_sampling_rate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<AudioStreamPlaybackResampled>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getStreamSamplingRate ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}
