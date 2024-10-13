// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Container for ``Animation`` resources.
/// 
/// An animation library stores a set of animations accessible through ``StringName`` keys, for use with ``AnimationPlayer`` nodes.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``animationAdded``
/// - ``animationRemoved``
/// - ``animationRenamed``
/// - ``animationChanged``
open class AnimationLibrary: Resource {
    override open class var godotClassName: StringName { "AnimationLibrary" }
    /* Methods */
    fileprivate static var method_add_animation: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1811855551)!
            }
            
        }
        
    }()
    
    /// Adds the `animation` to the library, accessible by the key `name`.
    public final func addAnimation(name: StringName, animation: Animation?) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: animation?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationLibrary.method_add_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_remove_animation: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes the ``Animation`` with the key `name`.
    public final func removeAnimation(name: StringName) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationLibrary.method_remove_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_rename_animation: GDExtensionMethodBindPtr = {
        let methodName = StringName("rename_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Changes the key of the ``Animation`` associated with the key `name` to `newname`.
    public final func renameAnimation(name: StringName, newname: StringName) {
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: newname.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationLibrary.method_rename_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_has_animation: GDExtensionMethodBindPtr = {
        let methodName = StringName("has_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the library stores an ``Animation`` with `name` as the key.
    public final func hasAnimation(name: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationLibrary.method_has_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static var method_get_animation: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2933122410)!
            }
            
        }
        
    }()
    
    /// Returns the ``Animation`` with the key `name`. If the animation does not exist, `null` is returned and an error is logged.
    public final func getAnimation(name: StringName) -> Animation? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationLibrary.method_get_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_animation_list: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_animation_list")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the keys for the ``Animation``s stored in the library.
    public final func getAnimationList() -> VariantCollection<StringName> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(AnimationLibrary.method_get_animation_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return VariantCollection<StringName>(content: _result)
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ name: StringName) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = StringName (args [0])!
                
                callback (arg_0)
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
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when an ``Animation`` is added, under the key `name`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationAdded.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationAdded: Signal1 { Signal1 (target: self, signalName: "animation_added") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal2/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal2/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal2/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal2 {
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
        @discardableResult /* Signal2 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ name: StringName) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = StringName (args [0])!
                
                callback (arg_0)
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
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when an ``Animation`` stored with the key `name` is removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationRemoved.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationRemoved: Signal2 { Signal2 (target: self, signalName: "animation_removed") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal3/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal3/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal3/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal3 {
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
        @discardableResult /* Signal3 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ name: StringName, _ toName: StringName) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = StringName (args [0])!
                let arg_1 = StringName (args [1])!
                
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
    
    /// Emitted when the key for an ``Animation`` is changed, from `name` to `toName`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationRenamed.connect { name, toName in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationRenamed: Signal3 { Signal3 (target: self, signalName: "animation_renamed") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal4/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal4/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal4/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal4 {
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
        @discardableResult /* Signal4 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ name: StringName) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = StringName (args [0])!
                
                callback (arg_0)
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
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when there's a change in one of the animations, e.g. tracks are added, moved or have changed paths. `name` is the key of the animation that was changed.
    /// 
    /// See also [signal Resource.changed], which this acts as a relay for.
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
    /// obj.animationChanged.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationChanged: Signal4 { Signal4 (target: self, signalName: "animation_changed") }
    
}

