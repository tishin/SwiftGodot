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


/// Abstract base class for the game's main loop.
/// 
/// ``MainLoop`` is the abstract base class for a Godot project's game loop. It is inherited by ``SceneTree``, which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own ``MainLoop`` subclass instead of the scene tree.
/// 
/// Upon the application start, a ``MainLoop`` implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a ``SceneTree`` is created) unless a ``MainLoop`` ``Script`` is provided from the command line (with e.g. `godot -s my_loop.gd`) or the ``ProjectSettings/application/run/mainLoopType`` project setting is overwritten.
/// 
/// Here is an example script implementing a simple ``MainLoop``:
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``onRequestPermissionsResult``
open class MainLoop: Object {
    private static var className = StringName("MainLoop")
    override open class var godotClassName: StringName { className }
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
    fileprivate static let method__initialize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_initialize")
        return withUnsafePointer(to: &MainLoop.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called once during initialization.
    @_documentation(visibility: public)
    open func _initialize() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MainLoop.method__initialize, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__physics_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_physics_process")
        return withUnsafePointer(to: &MainLoop.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 330693286)!
            }
            
        }
        
    }()
    
    /// Called each physics frame with the time since the last physics frame as argument (`delta`, in seconds). Equivalent to ``Node/_physicsProcess(delta:)``.
    /// 
    /// If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
    /// 
    /// > Note: `delta` will be larger than expected if running at a framerate lower than ``Engine/physicsTicksPerSecond`` / ``Engine/maxPhysicsStepsPerFrame`` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both ``_process(delta:)`` and ``_physicsProcess(delta:)``. As a result, avoid using `delta` for time measurements in real-world seconds. Use the ``Time`` singleton's methods for this purpose instead, such as ``Time/getTicksUsec()``.
    /// 
    @_documentation(visibility: public)
    open func _physicsProcess(delta: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: delta) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MainLoop.method__physics_process, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process")
        return withUnsafePointer(to: &MainLoop.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 330693286)!
            }
            
        }
        
    }()
    
    /// Called each process (idle) frame with the time since the last process frame as argument (in seconds). Equivalent to ``Node/_process(delta:)``.
    /// 
    /// If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
    /// 
    /// > Note: `delta` will be larger than expected if running at a framerate lower than ``Engine/physicsTicksPerSecond`` / ``Engine/maxPhysicsStepsPerFrame`` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both ``_process(delta:)`` and ``_physicsProcess(delta:)``. As a result, avoid using `delta` for time measurements in real-world seconds. Use the ``Time`` singleton's methods for this purpose instead, such as ``Time/getTicksUsec()``.
    /// 
    @_documentation(visibility: public)
    open func _process(delta: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: delta) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(MainLoop.method__process, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__finalize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_finalize")
        return withUnsafePointer(to: &MainLoop.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called before the program exits.
    @_documentation(visibility: public)
    open func _finalize() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(MainLoop.method__finalize, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
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
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MainLoop else { return }
    swiftObject._finalize ()
}

func _MainLoop_proxy_initialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MainLoop else { return }
    swiftObject._initialize ()
}

func _MainLoop_proxy_physics_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MainLoop else { return }
    let ret = swiftObject._physicsProcess (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _MainLoop_proxy_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? MainLoop else { return }
    let ret = swiftObject._process (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

