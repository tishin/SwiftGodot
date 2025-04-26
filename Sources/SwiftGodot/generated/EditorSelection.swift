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


/// Manages the SceneTree selection in the editor.
/// 
/// This object manages the SceneTree selection in the editor.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getSelection()``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``selectionChanged``
open class EditorSelection: Object {
    private static var className = StringName("EditorSelection")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear the selection.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(EditorSelection.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_add_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_node")
        return withUnsafePointer(to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Adds a node to the selection.
    /// 
    /// > Note: The newly selected node will not be automatically edited in the inspector. If you want to edit a node, use ``EditorInterface/editNode(_:)``.
    /// 
    public final func addNode(_ node: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSelection.method_add_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_node")
        return withUnsafePointer(to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Removes a node from the selection.
    public final func removeNode(_ node: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSelection.method_remove_node, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_selected_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_nodes")
        return withUnsafePointer(to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of selected nodes.
    public final func getSelectedNodes() -> TypedArray<Node?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(EditorSelection.method_get_selected_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Node?>(takingOver: _result)
    }
    
    fileprivate static let method_get_transformable_selected_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transformable_selected_nodes")
        return withUnsafePointer(to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns the list of selected nodes, optimized for transform operations (i.e. moving them, rotating, etc.). This list can be used to avoid situations where a node is selected and is also a child/grandchild.
    public final func getTransformableSelectedNodes() -> TypedArray<Node?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(EditorSelection.method_get_transformable_selected_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Node?>(takingOver: _result)
    }
    
    // Signals 
    /// Emitted when the selection changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.selectionChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var selectionChanged: SimpleSignal { SimpleSignal (target: self, signalName: "selection_changed") }
    
}

