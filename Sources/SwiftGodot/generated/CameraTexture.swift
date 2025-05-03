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


/// Texture provided by a ``CameraFeed``.
/// 
/// This texture gives access to the camera texture provided by a ``CameraFeed``.
/// 
/// > Note: Many cameras supply YCbCr images which need to be converted in a shader.
/// 
open class CameraTexture: Texture2D {
    private static var className = StringName("CameraTexture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ID of the ``CameraFeed`` for which we want to display the image.
    final public var cameraFeedId: Int32 {
        get {
            return get_camera_feed_id ()
        }
        
        set {
            set_camera_feed_id (newValue)
        }
        
    }
    
    /// Which image within the ``CameraFeed`` we want access to, important if the camera image is split in a Y and CbCr component.
    final public var whichFeed: CameraServer.FeedImage {
        get {
            return get_which_feed ()
        }
        
        set {
            set_which_feed (newValue)
        }
        
    }
    
    /// Convenience property that gives access to the active property of the ``CameraFeed``.
    final public var cameraIsActive: Bool {
        get {
            return get_camera_active ()
        }
        
        set {
            set_camera_active (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_camera_feed_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_camera_feed_id")
        return withUnsafePointer(to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_camera_feed_id(_ feedId: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: feedId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraTexture.method_set_camera_feed_id, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_camera_feed_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_camera_feed_id")
        return withUnsafePointer(to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_camera_feed_id() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CameraTexture.method_get_camera_feed_id, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_which_feed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_which_feed")
        return withUnsafePointer(to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1595299230)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_which_feed(_ whichFeed: CameraServer.FeedImage) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: whichFeed.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraTexture.method_set_which_feed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_which_feed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_which_feed")
        return withUnsafePointer(to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 91039457)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_which_feed() -> CameraServer.FeedImage {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CameraTexture.method_get_which_feed, handle, nil, &_result)
        return CameraServer.FeedImage (rawValue: _result)!
    }
    
    fileprivate static let method_set_camera_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_camera_active")
        return withUnsafePointer(to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_camera_active(_ active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraTexture.method_set_camera_active, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_camera_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_camera_active")
        return withUnsafePointer(to: &CameraTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_camera_active() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CameraTexture.method_get_camera_active, handle, nil, &_result)
        return _result
    }
    
}

