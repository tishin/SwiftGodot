// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A camera feed gives you access to a single physical camera attached to your device.
/// 
/// A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used. See also ``CameraServer``.
/// 
/// > Note: Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.
/// 
open class CameraFeed: RefCounted {
    override open class var godotClassName: StringName { "CameraFeed" }
    public enum FeedDataType: Int64, CaseIterable, CustomDebugStringConvertible {
        /// No image set for the feed.
        case noimage = 0 // FEED_NOIMAGE
        /// Feed supplies RGB images.
        case rgb = 1 // FEED_RGB
        /// Feed supplies YCbCr images that need to be converted to RGB.
        case ycbcr = 2 // FEED_YCBCR
        /// Feed supplies separate Y and CbCr images that need to be combined and converted to RGB.
        case ycbcrSep = 3 // FEED_YCBCR_SEP
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .noimage: return ".noimage"
                case .rgb: return ".rgb"
                case .ycbcr: return ".ycbcr"
                case .ycbcrSep: return ".ycbcrSep"
            }
            
        }
        
    }
    
    public enum FeedPosition: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Unspecified position.
        case unspecified = 0 // FEED_UNSPECIFIED
        /// Camera is mounted at the front of the device.
        case front = 1 // FEED_FRONT
        /// Camera is mounted at the back of the device.
        case back = 2 // FEED_BACK
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .unspecified: return ".unspecified"
                case .front: return ".front"
                case .back: return ".back"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// If `true`, the feed is active.
    final public var feedIsActive: Bool {
        get {
            return is_active ()
        }
        
        set {
            set_active (newValue)
        }
        
    }
    
    /// The transform applied to the camera's image.
    final public var feedTransform: Transform2D {
        get {
            return get_transform ()
        }
        
        set {
            set_transform (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_id: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_id")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the unique ID for this feed.
    public final func getId() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CameraFeed.method_get_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_active")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_active() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CameraFeed.method_is_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_active")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_active(_ active: Bool) {
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_name: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_name")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the camera's name.
    public final func getName() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(CameraFeed.method_get_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_position: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_position")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2711679033)!
            }
            
        }
        
    }()
    
    /// Returns the position of camera on the device.
    public final func getPosition() -> CameraFeed.FeedPosition {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CameraFeed.method_get_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CameraFeed.FeedPosition (rawValue: _result)!
    }
    
    fileprivate static var method_get_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_transform")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform() -> Transform2D {
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CameraFeed.method_get_transform, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_transform: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_transform")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform(_ transform: Transform2D) {
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_datatype: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_datatype")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1477782850)!
            }
            
        }
        
    }()
    
    /// Returns feed image data type.
    public final func getDatatype() -> CameraFeed.FeedDataType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CameraFeed.method_get_datatype, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CameraFeed.FeedDataType (rawValue: _result)!
    }
    
}

