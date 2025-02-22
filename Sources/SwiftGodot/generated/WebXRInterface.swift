// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// XR interface using WebXR.
/// 
/// WebXR is an open standard that allows creating VR and AR applications that run in the web browser.
/// 
/// As such, this interface is only available when running in Web exports.
/// 
/// WebXR supports a wide range of devices, from the very capable (like Valve Index, HTC Vive, Oculus Rift and Quest) down to the much less capable (like Google Cardboard, Oculus Go, GearVR, or plain smartphones).
/// 
/// Since WebXR is based on JavaScript, it makes extensive use of callbacks, which means that ``WebXRInterface`` is forced to use signals, where other XR interfaces would instead use functions that return a result immediately. This makes ``WebXRInterface`` quite a bit more complicated to initialize than other XR interfaces.
/// 
/// Here's the minimum code required to start an immersive VR session:
/// 
/// There are a couple ways to handle "controller" input:
/// 
/// - Using ``XRController3D`` nodes and their [signal XRController3D.button_pressed] and [signal XRController3D.button_released] signals. This is how controllers are typically handled in XR apps in Godot, however, this will only work with advanced VR controllers like the Oculus Touch or Index controllers, for example.
/// 
/// - Using the [signal select], [signal squeeze] and related signals. This method will work for both advanced VR controllers, and non-traditional input sources like a tap on the screen, a spoken voice command or a button press on the device itself.
/// 
/// You can use both methods to allow your game or app to support a wider or narrower set of devices and input methods, or to allow more advanced interactions with more advanced devices.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``sessionSupported``
/// - ``sessionStarted``
/// - ``sessionEnded``
/// - ``sessionFailed``
/// - ``selectstart``
/// - ``select``
/// - ``selectend``
/// - ``squeezestart``
/// - ``squeeze``
/// - ``squeezeend``
/// - ``visibilityStateChanged``
/// - ``referenceSpaceReset``
/// - ``displayRefreshRateChanged``
open class WebXRInterface: XRInterface {
    override open class var godotClassName: StringName { "WebXRInterface" }
    public enum TargetRayMode: Int64, CaseIterable {
        /// We don't know the the target ray mode.
        case unknown = 0 // TARGET_RAY_MODE_UNKNOWN
        /// Target ray originates at the viewer's eyes and points in the direction they are looking.
        case gaze = 1 // TARGET_RAY_MODE_GAZE
        /// Target ray from a handheld pointer, most likely a VR touch controller.
        case trackedPointer = 2 // TARGET_RAY_MODE_TRACKED_POINTER
        /// Target ray from touch screen, mouse or other tactile input device.
        case screen = 3 // TARGET_RAY_MODE_SCREEN
    }
    
    
    /* Properties */
    
    /// The session mode used by ``XRInterface/initialize()`` when setting up the WebXR session.
    /// 
    /// This doesn't have any effect on the interface when already initialized.
    /// 
    /// Possible values come from <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode">WebXR's XRSessionMode</a>, including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.
    /// 
    final public var sessionMode: String {
        get {
            return get_session_mode ()
        }
        
        set {
            set_session_mode (newValue)
        }
        
    }
    
    /// A comma-seperated list of required features used by ``XRInterface/initialize()`` when setting up the WebXR session.
    /// 
    /// If a user's browser or device doesn't support one of the given features, initialization will fail and [signal session_failed] will be emitted.
    /// 
    /// This doesn't have any effect on the interface when already initialized.
    /// 
    /// Possible values come from <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType">WebXR's XRReferenceSpaceType</a>, or include other features like `"hand-tracking"` to enable hand tracking.
    /// 
    final public var requiredFeatures: String {
        get {
            return get_required_features ()
        }
        
        set {
            set_required_features (newValue)
        }
        
    }
    
    /// A comma-seperated list of optional features used by ``XRInterface/initialize()`` when setting up the WebXR session.
    /// 
    /// If a user's browser or device doesn't support one of the given features, initialization will continue, but you won't be able to use the requested feature.
    /// 
    /// This doesn't have any effect on the interface when already initialized.
    /// 
    /// Possible values come from <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType">WebXR's XRReferenceSpaceType</a>, or include other features like `"hand-tracking"` to enable hand tracking.
    /// 
    final public var optionalFeatures: String {
        get {
            return get_optional_features ()
        }
        
        set {
            set_optional_features (newValue)
        }
        
    }
    
    /// A comma-seperated list of reference space types used by ``XRInterface/initialize()`` when setting up the WebXR session.
    /// 
    /// The reference space types are requested in order, and the first one supported by the users device or browser will be used. The ``referenceSpaceType`` property contains the reference space type that was ultimately selected.
    /// 
    /// This doesn't have any effect on the interface when already initialized.
    /// 
    /// Possible values come from <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType">WebXR's XRReferenceSpaceType</a>. If you want to use a particular reference space type, it must be listed in either ``requiredFeatures`` or ``optionalFeatures``.
    /// 
    final public var requestedReferenceSpaceTypes: String {
        get {
            return get_requested_reference_space_types ()
        }
        
        set {
            set_requested_reference_space_types (newValue)
        }
        
    }
    
    /// The reference space type (from the list of requested types set in the ``requestedReferenceSpaceTypes`` property), that was ultimately used by ``XRInterface/initialize()`` when setting up the WebXR session.
    /// 
    /// Possible values come from <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpaceType">WebXR's XRReferenceSpaceType</a>. If you want to use a particular reference space type, it must be listed in either ``requiredFeatures`` or ``optionalFeatures``.
    /// 
    final public var referenceSpaceType: String {
        get {
            return get_reference_space_type ()
        }
        
    }
    
    /// A comma-separated list of features that were successfully enabled by ``XRInterface/initialize()`` when setting up the WebXR session.
    /// 
    /// This may include features requested by setting ``requiredFeatures`` and ``optionalFeatures``, and will only be available after [signal session_started] has been emitted.
    /// 
    /// > Note: This may not be support by all web browsers, in which case it will be an empty string.
    /// 
    final public var enabledFeatures: String {
        get {
            return get_enabled_features ()
        }
        
    }
    
    /// Indicates if the WebXR session's imagery is visible to the user.
    /// 
    /// Possible values come from <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRVisibilityState">WebXR's XRVisibilityState</a>, including `"hidden"`, `"visible"`, and `"visible-blurred"`.
    /// 
    final public var visibilityState: String {
        get {
            return get_visibility_state ()
        }
        
    }
    
    /* Methods */
    fileprivate static var method_is_session_supported: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_session_supported")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Checks if the given `sessionMode` is supported by the user's browser.
    /// 
    /// Possible values come from <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRSessionMode">WebXR's XRSessionMode</a>, including: `"immersive-vr"`, `"immersive-ar"`, and `"inline"`.
    /// 
    /// This method returns nothing, instead it emits the [signal session_supported] signal with the result.
    /// 
    public final func isSessionSupported(sessionMode: String) {
        let sessionMode = GString(sessionMode)
        withUnsafePointer(to: sessionMode.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_is_session_supported, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_set_session_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_session_mode")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_session_mode(_ sessionMode: String) {
        let sessionMode = GString(sessionMode)
        withUnsafePointer(to: sessionMode.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_set_session_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_session_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_session_mode")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_session_mode() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_session_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_required_features: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_required_features")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_required_features(_ requiredFeatures: String) {
        let requiredFeatures = GString(requiredFeatures)
        withUnsafePointer(to: requiredFeatures.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_set_required_features, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_required_features: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_required_features")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_required_features() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_required_features, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_optional_features: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_optional_features")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_optional_features(_ optionalFeatures: String) {
        let optionalFeatures = GString(optionalFeatures)
        withUnsafePointer(to: optionalFeatures.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_set_optional_features, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_optional_features: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_optional_features")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_optional_features() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_optional_features, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_reference_space_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_reference_space_type")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_reference_space_type() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_reference_space_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_enabled_features: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_enabled_features")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enabled_features() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_enabled_features, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_requested_reference_space_types: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_requested_reference_space_types")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_requested_reference_space_types(_ requestedReferenceSpaceTypes: String) {
        let requestedReferenceSpaceTypes = GString(requestedReferenceSpaceTypes)
        withUnsafePointer(to: requestedReferenceSpaceTypes.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_set_requested_reference_space_types, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_requested_reference_space_types: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_requested_reference_space_types")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_requested_reference_space_types() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_requested_reference_space_types, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_is_input_source_active: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_input_source_active")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if there is an active input source with the given `inputSourceId`.
    public final func isInputSourceActive(inputSourceId: Int32) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: inputSourceId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_is_input_source_active, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_input_source_tracker: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_input_source_tracker")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 399776966)!
            }
            
        }
        
    }()
    
    /// Gets an ``XRControllerTracker`` for the given `inputSourceId`.
    /// 
    /// In the context of WebXR, an input source can be an advanced VR controller like the Oculus Touch or Index controllers, or even a tap on the screen, a spoken voice command or a button press on the device itself. When a non-traditional input source is used, interpret the position and orientation of the ``XRPositionalTracker`` as a ray pointing at the object the user wishes to interact with.
    /// 
    /// Use this method to get information about the input source that triggered one of these signals:
    /// 
    /// - [signal selectstart]
    /// 
    /// - [signal select]
    /// 
    /// - [signal selectend]
    /// 
    /// - [signal squeezestart]
    /// 
    /// - [signal squeeze]
    /// 
    /// - [signal squeezestart]
    /// 
    public final func getInputSourceTracker(inputSourceId: Int32) -> XRControllerTracker? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: inputSourceId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_get_input_source_tracker, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_input_source_target_ray_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_input_source_target_ray_mode")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2852387453)!
            }
            
        }
        
    }()
    
    /// Returns the target ray mode for the given `inputSourceId`.
    /// 
    /// This can help interpret the input coming from that input source. See <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRInputSource/targetRayMode">XRInputSource.targetRayMode</a> for more information.
    /// 
    public final func getInputSourceTargetRayMode(inputSourceId: Int32) -> WebXRInterface.TargetRayMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: inputSourceId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_get_input_source_target_ray_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return WebXRInterface.TargetRayMode (rawValue: _result)!
    }
    
    fileprivate static var method_get_visibility_state: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_visibility_state")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_state() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_visibility_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_display_refresh_rate: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_display_refresh_rate")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the display refresh rate for the current HMD. Not supported on all HMDs and browsers. It may not report an accurate value until after using ``setDisplayRefreshRate(_:)``.
    public final func getDisplayRefreshRate() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_display_refresh_rate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_display_refresh_rate: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_display_refresh_rate")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the display refresh rate for the current HMD. Not supported on all HMDs and browsers. It won't take effect right away until after [signal display_refresh_rate_changed] is emitted.
    public final func setDisplayRefreshRate(_ refreshRate: Double) {
        withUnsafePointer(to: refreshRate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebXRInterface.method_set_display_refresh_rate, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_available_display_refresh_rates: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_available_display_refresh_rates")
        return withUnsafePointer(to: &WebXRInterface.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns display refresh rates supported by the current HMD. Only returned if this feature is supported by the web browser and after the interface has been initialized.
    public final func getAvailableDisplayRefreshRates() -> GArray {
        let _result: GArray = GArray ()
        gi.object_method_bind_ptrcall(WebXRInterface.method_get_available_display_refresh_rates, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    // Signals 
    /// Emitted by ``isSessionSupported(sessionMode:)`` to indicate if the given `sessionMode` is supported or not.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sessionSupported.connect { sessionMode, supported in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sessionSupported: SignalWithArguments<String, Bool> { SignalWithArguments<String, Bool> (target: self, signalName: "session_supported") }
    
    /// Emitted by ``XRInterface/initialize()`` if the session is successfully started.
    /// 
    /// At this point, it's safe to do `get_viewport().use_xr = true` to instruct Godot to start rendering to the XR device.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sessionStarted.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var sessionStarted: SimpleSignal { SimpleSignal (target: self, signalName: "session_started") }
    
    /// Emitted when the user ends the WebXR session (which can be done using UI from the browser or device).
    /// 
    /// At this point, you should do `get_viewport().use_xr = false` to instruct Godot to resume rendering to the screen.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sessionEnded.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var sessionEnded: SimpleSignal { SimpleSignal (target: self, signalName: "session_ended") }
    
    /// Emitted by ``XRInterface/initialize()`` if the session fails to start.
    /// 
    /// `message` may optionally contain an error message from WebXR, or an empty string if no message is available.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sessionFailed.connect { message in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sessionFailed: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "session_failed") }
    
    /// Emitted when one of the input source has started its "primary action".
    /// 
    /// Use ``getInputSourceTracker(inputSourceId:)`` and ``getInputSourceTargetRayMode(inputSourceId:)`` to get more information about the input source.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.selectstart.connect { inputSourceId in
    ///    print ("caught signal")
    /// }
    /// ```
    public var selectstart: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "selectstart") }
    
    /// Emitted after one of the input sources has finished its "primary action".
    /// 
    /// Use ``getInputSourceTracker(inputSourceId:)`` and ``getInputSourceTargetRayMode(inputSourceId:)`` to get more information about the input source.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.select.connect { inputSourceId in
    ///    print ("caught signal")
    /// }
    /// ```
    public var select: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "select") }
    
    /// Emitted when one of the input sources has finished its "primary action".
    /// 
    /// Use ``getInputSourceTracker(inputSourceId:)`` and ``getInputSourceTargetRayMode(inputSourceId:)`` to get more information about the input source.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.selectend.connect { inputSourceId in
    ///    print ("caught signal")
    /// }
    /// ```
    public var selectend: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "selectend") }
    
    /// Emitted when one of the input sources has started its "primary squeeze action".
    /// 
    /// Use ``getInputSourceTracker(inputSourceId:)`` and ``getInputSourceTargetRayMode(inputSourceId:)`` to get more information about the input source.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.squeezestart.connect { inputSourceId in
    ///    print ("caught signal")
    /// }
    /// ```
    public var squeezestart: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "squeezestart") }
    
    /// Emitted after one of the input sources has finished its "primary squeeze action".
    /// 
    /// Use ``getInputSourceTracker(inputSourceId:)`` and ``getInputSourceTargetRayMode(inputSourceId:)`` to get more information about the input source.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.squeeze.connect { inputSourceId in
    ///    print ("caught signal")
    /// }
    /// ```
    public var squeeze: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "squeeze") }
    
    /// Emitted when one of the input sources has finished its "primary squeeze action".
    /// 
    /// Use ``getInputSourceTracker(inputSourceId:)`` and ``getInputSourceTargetRayMode(inputSourceId:)`` to get more information about the input source.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.squeezeend.connect { inputSourceId in
    ///    print ("caught signal")
    /// }
    /// ```
    public var squeezeend: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "squeezeend") }
    
    /// Emitted when ``visibilityState`` has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.visibilityStateChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var visibilityStateChanged: SimpleSignal { SimpleSignal (target: self, signalName: "visibility_state_changed") }
    
    /// Emitted to indicate that the reference space has been reset or reconfigured.
    /// 
    /// When (or whether) this is emitted depends on the user's browser or device, but may include when the user has changed the dimensions of their play space (which you may be able to access via ``XRInterface/getPlayArea()``) or pressed/held a button to recenter their position.
    /// 
    /// See <a href="https://developer.mozilla.org/en-US/docs/Web/API/XRReferenceSpace/reset_event">WebXR's XRReferenceSpace reset event</a> for more information.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.referenceSpaceReset.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var referenceSpaceReset: SimpleSignal { SimpleSignal (target: self, signalName: "reference_space_reset") }
    
    /// Emitted after the display's refresh rate has changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.displayRefreshRateChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var displayRefreshRateChanged: SimpleSignal { SimpleSignal (target: self, signalName: "display_refresh_rate_changed") }
    
}

