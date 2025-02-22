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


/// Abstract base class for the game's main loop.
/// 
/// ``MainLoop`` is the abstract base class for a Godot project's game loop. It is inherited by ``SceneTree``, which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own ``MainLoop`` subclass instead of the scene tree.
/// 
/// Upon the application start, a ``MainLoop`` implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a ``SceneTree`` is created) unless a ``MainLoop`` ``Script`` is provided from the command line (with e.g. `godot -s my_loop.gd`) or the "Main Loop Type" project setting is overwritten.
/// 
/// Here is an example script implementing a simple ``MainLoop``:
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``onRequestPermissionsResult``
open class MainLoop: Object {
    override open class var godotClassName: StringName { "MainLoop" }
    /* Constants */
    /// Notification received from the OS when the application is exceeding its allocated memory.
    /// 
    /// Specific to the iOS platform.
    /// 
    public static let notificationOsMemoryWarning = 2009
    /// Notification received when translations may have changed. Can be triggered by the user changing the locale. Can be used to respond to language changes, for example to change the UI strings on the fly. Useful when working with the built-in translation support, like ``Object/tr(message:context:)``.
    public static let notificationTranslationChanged = 2010
    /// Notification received from the OS when a request for "About" information is sent.
    /// 
    /// Specific to the macOS platform.
    /// 
    public static let notificationWmAbout = 2011
    /// Notification received from Godot's crash handler when the engine is about to crash.
    /// 
    /// Implemented on desktop platforms if the crash handler is enabled.
    /// 
    public static let notificationCrash = 2012
    /// Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).
    /// 
    /// Specific to the macOS platform.
    /// 
    public static let notificationOsImeUpdate = 2013
    /// Notification received from the OS when the application is resumed.
    /// 
    /// Specific to the Android and iOS platforms.
    /// 
    public static let notificationApplicationResumed = 2014
    /// Notification received from the OS when the application is paused.
    /// 
    /// Specific to the Android and iOS platforms.
    /// 
    /// > Note: On iOS, you only have approximately 5 seconds to finish a task started by this signal. If you go over this allotment, iOS will kill the app instead of pausing it.
    /// 
    public static let notificationApplicationPaused = 2015
    /// Notification received from the OS when the application is focused, i.e. when changing the focus from the OS desktop or a thirdparty application to any open window of the Godot instance.
    /// 
    /// Implemented on desktop and mobile platforms.
    /// 
    public static let notificationApplicationFocusIn = 2016
    /// Notification received from the OS when the application is defocused, i.e. when changing the focus from any open window of the Godot instance to the OS desktop or a thirdparty application.
    /// 
    /// Implemented on desktop and mobile platforms.
    /// 
    public static let notificationApplicationFocusOut = 2017
    /// Notification received when text server is changed.
    public static let notificationTextServerChanged = 2018
    /* Methods */
    /// Called once during initialization.
    @_documentation(visibility: public)
    open func _initialize() {
    }
    
    /// Called each physics frame with the time since the last physics frame as argument (`delta`, in seconds). Equivalent to ``Node/_physicsProcess(delta:)``.
    /// 
    /// If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
    /// 
    @_documentation(visibility: public)
    open func _physicsProcess(delta: Double) -> Bool {
        return false
    }
    
    /// Called each process (idle) frame with the time since the last process frame as argument (in seconds). Equivalent to ``Node/_process(delta:)``.
    /// 
    /// If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
    /// 
    @_documentation(visibility: public)
    open func _process(delta: Double) -> Bool {
        return false
    }
    
    /// Called before the program exits.
    @_documentation(visibility: public)
    open func _finalize() {
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_finalize":
                return _MainLoop_proxy_finalize
            case "_initialize":
                return _MainLoop_proxy_initialize
            case "_physics_process":
                return _MainLoop_proxy_physics_process
            case "_process":
                return _MainLoop_proxy_process
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when a user responds to a permission request.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.onRequestPermissionsResult.connect { permission, granted in
    ///    print ("caught signal")
    /// }
    /// ```
    public var onRequestPermissionsResult: SignalWithArguments<String, Bool> { SignalWithArguments<String, Bool> (target: self, signalName: "on_request_permissions_result") }
    
}

// Support methods for proxies
func _MainLoop_proxy_finalize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<MainLoop>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._finalize ()
}

func _MainLoop_proxy_initialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<MainLoop>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._initialize ()
}

func _MainLoop_proxy_physics_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<MainLoop>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._physicsProcess (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _MainLoop_proxy_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<MainLoop>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._process (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

