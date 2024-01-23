// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for the game's main loop.
/// 
/// ``MainLoop`` is the abstract base class for a Godot project's game loop. It is inherited by ``SceneTree``, which is the default game loop implementation used in Godot projects, though it is also possible to write and use one's own ``MainLoop`` subclass instead of the scene tree.
/// 
/// Upon the application start, a ``MainLoop`` implementation must be provided to the OS; otherwise, the application will exit. This happens automatically (and a ``SceneTree`` is created) unless a ``MainLoop`` ``Script`` is provided from the command line (with e.g. `godot -s my_loop.gd` or the "Main Loop Type" project setting is overwritten.
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
    /// Specific to the Android platform.
    /// 
    public static let notificationApplicationResumed = 2014
    /// Notification received from the OS when the application is paused.
    /// 
    /// Specific to the Android platform.
    /// 
    public static let notificationApplicationPaused = 2015
    /// Notification received from the OS when the application is focused, i.e. when changing the focus from the OS desktop or a thirdparty application to any open window of the Godot instance.
    /// 
    /// Implemented on desktop platforms.
    /// 
    public static let notificationApplicationFocusIn = 2016
    /// Notification received from the OS when the application is defocused, i.e. when changing the focus from any open window of the Godot instance to the OS desktop or a thirdparty application.
    /// 
    /// Implemented on desktop platforms.
    /// 
    public static let notificationApplicationFocusOut = 2017
    /// Notification received when text server is changed.
    public static let notificationTextServerChanged = 2018
    /* Methods */
    /// Called once during initialization.
    @_documentation(visibility: public)
    open func _initialize () {
    }
    
    /// Called each physics frame with the time since the last physics frame as argument (`delta`, in seconds). Equivalent to ``Node/_physicsProcess(delta:)``.
    /// 
    /// If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
    /// 
    @_documentation(visibility: public)
    open func _physicsProcess (delta: Double)-> Bool {
        return false
    }
    
    /// Called each process (idle) frame with the time since the last process frame as argument (in seconds). Equivalent to ``Node/_process(delta:)``.
    /// 
    /// If implemented, the method must return a boolean value. `true` ends the main loop, while `false` lets it proceed to the next frame.
    /// 
    @_documentation(visibility: public)
    open func _process (delta: Double)-> Bool {
        return false
    }
    
    /// Called before the program exits.
    @_documentation(visibility: public)
    open func _finalize () {
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
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal1 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal1 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ permission: String, _ granted: Bool) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = GString (args [0])!.description
                let arg_1 = Bool (args [1])!
                
                callback (arg_0, arg_1)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _, _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
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
    public var onRequestPermissionsResult: Signal1 { Signal1 (target: self, signalName: "on_request_permissions_result") }
    
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

