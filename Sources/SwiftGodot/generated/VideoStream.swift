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


/// Base resource for video streams.
/// 
/// Base resource type for all video streams. Classes that derive from ``VideoStream`` can all be used as resource types to play back videos in ``VideoStreamPlayer``.
open class VideoStream: Resource {
    private static var className = StringName("VideoStream")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The video file path or URI that this ``VideoStream`` resource handles.
    /// 
    /// For ``VideoStreamTheora``, this filename should be an Ogg Theora video file with the `.ogv` extension.
    /// 
    final public var file: String {
        get {
            return get_file ()
        }
        
        set {
            set_file (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__instantiate_playback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_instantiate_playback")
        return withUnsafePointer(to: &VideoStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 294648086)!
            }
            
        }
        
    }()
    
    /// Called when the video starts playing, to initialize and return a subclass of ``VideoStreamPlayback``.
    @_documentation(visibility: public)
    open func _instantiatePlayback() -> VideoStreamPlayback? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(VideoStream.method__instantiate_playback, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_file")
        return withUnsafePointer(to: &VideoStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_file(_ file: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VideoStream.method_set_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_file")
        return withUnsafePointer(to: &VideoStream.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_file() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(VideoStream.method_get_file, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_instantiate_playback":
                return _VideoStream_proxy_instantiate_playback
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _VideoStream_proxy_instantiate_playback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? VideoStream else { return }
    let ret = swiftObject._instantiatePlayback ()
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // VideoStreamPlayback
}

