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


/// Server keeping track of different cameras accessible in Godot.
/// 
/// The ``CameraServer`` keeps track of different cameras accessible in Godot. These are external cameras such as webcams or the cameras on your phone.
/// 
/// It is notably used to provide AR modules with a video feed from the camera.
/// 
/// > Note: This class is currently only implemented on Linux, macOS, and iOS. On other platforms no ``CameraFeed``s will be available. To get a ``CameraFeed`` on iOS, the camera plugin from <a href="https://github.com/godotengine/godot-ios-plugins">godot-ios-plugins</a> is required.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``cameraFeedAdded``
/// - ``cameraFeedRemoved``
open class CameraServer: Object {
    /// The shared instance of this class
    public static var shared: CameraServer {
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { ptr in
            lookupObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("CameraServer")
    override open class var godotClassName: StringName { className }
    public enum FeedImage: Int64, CaseIterable {
        /// The RGBA camera image.
        case rgbaImage = 0 // FEED_RGBA_IMAGE
        /// The <a href="https://en.wikipedia.org/wiki/YCbCr">YCbCr</a> camera image.
        // case ycbcrImage = 0 // FEED_YCBCR_IMAGE
        /// The Y component camera image.
        // case yImage = 0 // FEED_Y_IMAGE
        /// The CbCr component camera image.
        case cbcrImage = 1 // FEED_CBCR_IMAGE
    }
    
    /* Methods */
    fileprivate static let method_get_feed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_feed")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 361927068)!
            }
            
        }
        
    }()
    
    /// Returns the ``CameraFeed`` corresponding to the camera with the given `index`.
    public static func getFeed(index: Int32) -> CameraFeed? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_feed, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_feed_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_feed_count")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the number of ``CameraFeed``s registered.
    public static func getFeedCount() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(method_get_feed_count, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_feeds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("feeds")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``CameraFeed``s.
    public static func feeds() -> TypedArray<CameraFeed?> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(method_feeds, UnsafeMutableRawPointer(mutating: shared.handle), nil, &_result)
        return TypedArray<CameraFeed?>(takingOver: _result)
    }
    
    fileprivate static let method_add_feed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_feed")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3204782488)!
            }
            
        }
        
    }()
    
    /// Adds the camera `feed` to the camera server.
    public static func addFeed(_ feed: CameraFeed?) {
        withUnsafePointer(to: feed?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_add_feed, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_feed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_feed")
        return withUnsafePointer(to: &CameraServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3204782488)!
            }
            
        }
        
    }()
    
    /// Removes the specified camera `feed`.
    public static func removeFeed(_ feed: CameraFeed?) {
        withUnsafePointer(to: feed?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_remove_feed, UnsafeMutableRawPointer(mutating: shared.handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted when a ``CameraFeed`` is added (e.g. a webcam is plugged in).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.cameraFeedAdded.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var cameraFeedAdded: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "camera_feed_added") }
    
    /// Emitted when a ``CameraFeed`` is removed (e.g. a webcam is unplugged).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.cameraFeedRemoved.connect { id in
    ///    print ("caught signal")
    /// }
    /// ```
    public var cameraFeedRemoved: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "camera_feed_removed") }
    
}

