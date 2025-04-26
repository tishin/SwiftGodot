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


/// A camera feed gives you access to a single physical camera attached to your device.
/// 
/// A camera feed gives you access to a single physical camera attached to your device. When enabled, Godot will start capturing frames from the camera which can then be used. See also ``CameraServer``.
/// 
/// > Note: Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.
/// 
/// > Note: This class is currently only implemented on Linux, macOS, and iOS. On other platforms no ``CameraFeed``s will be available. To get a ``CameraFeed`` on iOS, the camera plugin from <a href="https://github.com/godotengine/godot-ios-plugins">godot-ios-plugins</a> is required.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``frameChanged``
/// - ``formatChanged``
open class CameraFeed: RefCounted {
    private static var className = StringName("CameraFeed")
    override open class var godotClassName: StringName { className }
    public enum FeedDataType: Int64, CaseIterable {
        /// No image set for the feed.
        case noimage = 0 // FEED_NOIMAGE
        /// Feed supplies RGB images.
        case rgb = 1 // FEED_RGB
        /// Feed supplies YCbCr images that need to be converted to RGB.
        case ycbcr = 2 // FEED_YCBCR
        /// Feed supplies separate Y and CbCr images that need to be combined and converted to RGB.
        case ycbcrSep = 3 // FEED_YCBCR_SEP
        /// Feed supplies external image.
        case external = 4 // FEED_EXTERNAL
    }
    
    public enum FeedPosition: Int64, CaseIterable {
        /// Unspecified position.
        case unspecified = 0 // FEED_UNSPECIFIED
        /// Camera is mounted at the front of the device.
        case front = 1 // FEED_FRONT
        /// Camera is mounted at the back of the device.
        case back = 2 // FEED_BACK
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
    
    /// Formats supported by the feed. Each entry is a ``VariantDictionary`` describing format parameters.
    final public var formats: VariantArray {
        get {
            return get_formats ()
        }
        
    }
    
    /* Methods */
    fileprivate static let method__activate_feed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_activate_feed")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Called when the camera feed is activated.
    @_documentation(visibility: public)
    open func _activateFeed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CameraFeed.method__activate_feed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__deactivate_feed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_deactivate_feed")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the camera feed is deactivated.
    @_documentation(visibility: public)
    open func _deactivateFeed() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CameraFeed.method__deactivate_feed, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_id")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the unique ID for this feed.
    public final func getId() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CameraFeed.method_get_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_active")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_active() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CameraFeed.method_is_active, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_active")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_active(_ active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_active, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_name")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the camera's name.
    public final func getName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(CameraFeed.method_get_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_name")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the camera's name.
    public final func setName(_ name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_position")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2711679033)!
            }
            
        }
        
    }()
    
    /// Returns the position of camera on the device.
    public final func getPosition() -> CameraFeed.FeedPosition {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CameraFeed.method_get_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CameraFeed.FeedPosition (rawValue: _result)!
    }
    
    fileprivate static let method_set_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_position")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 611162623)!
            }
            
        }
        
    }()
    
    /// Sets the position of this camera.
    public final func setPosition(_ position: CameraFeed.FeedPosition) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transform")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CameraFeed.method_get_transform, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_transform")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform(_ transform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: transform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_rgb_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rgb_image")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 532598488)!
            }
            
        }
        
    }()
    
    /// Sets RGB image for this feed.
    public final func setRgbImage(_ rgbImage: Image?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rgbImage?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_rgb_image, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_ycbcr_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ycbcr_image")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 532598488)!
            }
            
        }
        
    }()
    
    /// Sets YCbCr image for this feed.
    public final func setYcbcrImage(_ ycbcrImage: Image?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ycbcrImage?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_set_ycbcr_image, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_external: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_external")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the feed as external feed provided by another library.
    public final func setExternal(width: Int32, height: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: height) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CameraFeed.method_set_external, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_tex_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_tex_id")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1135699418)!
            }
            
        }
        
    }()
    
    /// Returns the texture backend ID (usable by some external libraries that need a handle to a texture to write data).
    public final func getTextureTexId(feedImageType: CameraServer.FeedImage) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: feedImageType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CameraFeed.method_get_texture_tex_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_datatype: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_datatype")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1477782850)!
            }
            
        }
        
    }()
    
    /// Returns feed image data type.
    public final func getDatatype() -> CameraFeed.FeedDataType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CameraFeed.method_get_datatype, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return CameraFeed.FeedDataType (rawValue: _result)!
    }
    
    fileprivate static let method_get_formats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_formats")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_formats() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(CameraFeed.method_get_formats, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_format")
        return withUnsafePointer(to: &CameraFeed.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 31872775)!
            }
            
        }
        
    }()
    
    /// Sets the feed format parameters for the given index in the ``formats`` array. Returns `true` on success. By default YUYV encoded stream is transformed to FEED_RGB. YUYV encoded stream output format can be changed with `parameters`.output value:
    /// 
    /// `separate` will result in FEED_YCBCR_SEP
    /// 
    /// `grayscale` will result in desaturated FEED_RGB
    /// 
    /// `copy` will result in FEED_YCBCR
    /// 
    public final func setFormat(index: Int32, parameters: VariantDictionary) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: parameters.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CameraFeed.method_set_format, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_activate_feed":
                return _CameraFeed_proxy_activate_feed
            case "_deactivate_feed":
                return _CameraFeed_proxy_deactivate_feed
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when a new frame is available.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.frameChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var frameChanged: SimpleSignal { SimpleSignal (target: self, signalName: "frame_changed") }
    
    /// Emitted when the format has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.formatChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var formatChanged: SimpleSignal { SimpleSignal (target: self, signalName: "format_changed") }
    
}

// Support methods for proxies
func _CameraFeed_proxy_activate_feed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CameraFeed else { return }
    let ret = swiftObject._activateFeed ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _CameraFeed_proxy_deactivate_feed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CameraFeed else { return }
    swiftObject._deactivateFeed ()
}

