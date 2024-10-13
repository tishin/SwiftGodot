// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A node used to generate previews of resources or files.
/// 
/// This node is used to generate previews for resources or files.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getResourcePreviewer()``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``previewInvalidated``
open class EditorResourcePreview: Node {
    override open class var godotClassName: StringName { "EditorResourcePreview" }
    /* Methods */
    fileprivate static var method_queue_resource_preview: GDExtensionMethodBindPtr = {
        let methodName = StringName("queue_resource_preview")
        return withUnsafePointer(to: &EditorResourcePreview.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 233177534)!
            }
            
        }
        
    }()
    
    /// Queue a resource file located at `path` for preview. Once the preview is ready, the `receiver`'s `receiverFunc` will be called. The `receiverFunc` must take the following four arguments: ``String`` path, ``Texture2D`` preview, ``Texture2D`` thumbnail_preview, ``Variant`` userdata. `userdata` can be anything, and will be returned when `receiverFunc` is called.
    /// 
    /// > Note: If it was not possible to create the preview the `receiverFunc` will still be called, but the preview will be null.
    /// 
    public final func queueResourcePreview(path: String, receiver: Object?, receiverFunc: StringName, userdata: Variant) {
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: receiver?.handle) { pArg1 in
                withUnsafePointer(to: receiverFunc.content) { pArg2 in
                    withUnsafePointer(to: userdata.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorResourcePreview.method_queue_resource_preview, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_queue_edited_resource_preview: GDExtensionMethodBindPtr = {
        let methodName = StringName("queue_edited_resource_preview")
        return withUnsafePointer(to: &EditorResourcePreview.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1608376650)!
            }
            
        }
        
    }()
    
    /// Queue the `resource` being edited for preview. Once the preview is ready, the `receiver`'s `receiverFunc` will be called. The `receiverFunc` must take the following four arguments: ``String`` path, ``Texture2D`` preview, ``Texture2D`` thumbnail_preview, ``Variant`` userdata. `userdata` can be anything, and will be returned when `receiverFunc` is called.
    /// 
    /// > Note: If it was not possible to create the preview the `receiverFunc` will still be called, but the preview will be null.
    /// 
    public final func queueEditedResourcePreview(resource: Resource?, receiver: Object?, receiverFunc: StringName, userdata: Variant) {
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: receiver?.handle) { pArg1 in
                withUnsafePointer(to: receiverFunc.content) { pArg2 in
                    withUnsafePointer(to: userdata.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EditorResourcePreview.method_queue_edited_resource_preview, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_add_preview_generator: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_preview_generator")
        return withUnsafePointer(to: &EditorResourcePreview.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 332288124)!
            }
            
        }
        
    }()
    
    /// Create an own, custom preview generator.
    public final func addPreviewGenerator(_ generator: EditorResourcePreviewGenerator?) {
        withUnsafePointer(to: generator?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePreview.method_add_preview_generator, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_remove_preview_generator: GDExtensionMethodBindPtr = {
        let methodName = StringName("remove_preview_generator")
        return withUnsafePointer(to: &EditorResourcePreview.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 332288124)!
            }
            
        }
        
    }()
    
    /// Removes a custom preview generator.
    public final func removePreviewGenerator(_ generator: EditorResourcePreviewGenerator?) {
        withUnsafePointer(to: generator?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePreview.method_remove_preview_generator, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_check_for_invalidation: GDExtensionMethodBindPtr = {
        let methodName = StringName("check_for_invalidation")
        return withUnsafePointer(to: &EditorResourcePreview.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Check if the resource changed, if so, it will be invalidated and the corresponding signal emitted.
    public final func checkForInvalidation(path: String) {
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorResourcePreview.method_check_for_invalidation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
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
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ path: String) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = GString (args [0])!.description
                
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
    
    /// Emitted if a preview was invalidated (changed). `path` corresponds to the path of the preview.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.previewInvalidated.connect { path in
    ///    print ("caught signal")
    /// }
    /// ```
    public var previewInvalidated: Signal1 { Signal1 (target: self, signalName: "preview_invalidated") }
    
}

