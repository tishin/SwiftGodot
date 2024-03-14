// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

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
    override open class var godotClassName: StringName { "EditorSelection" }
    /* Methods */
    fileprivate static var method_clear: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear")
        return withUnsafePointer (to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear the selection.
    public final func clear () {
        gi.object_method_bind_ptrcall (EditorSelection.method_clear, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_add_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_node")
        return withUnsafePointer (to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Adds a node to the selection.
    /// 
    /// > Note: The newly selected node will not be automatically edited in the inspector. If you want to edit a node, use ``EditorInterface/editNode(_:)``.
    /// 
    public final func addNode (_ node: Node?) {
        #if true
        
        var copy_node_handle = node?.handle
        
        gi.object_method_bind_ptrcall_v (EditorSelection.method_add_node, UnsafeMutableRawPointer (mutating: handle), nil, &copy_node_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: node?.handle) { p0 in
        _args.append (node == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (EditorSelection.method_add_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_remove_node: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_node")
        return withUnsafePointer (to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Removes a node from the selection.
    public final func removeNode (_ node: Node?) {
        #if true
        
        var copy_node_handle = node?.handle
        
        gi.object_method_bind_ptrcall_v (EditorSelection.method_remove_node, UnsafeMutableRawPointer (mutating: handle), nil, &copy_node_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: node?.handle) { p0 in
        _args.append (node == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (EditorSelection.method_remove_node, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_selected_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_selected_nodes")
        return withUnsafePointer (to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Gets the list of selected nodes.
    public final func getSelectedNodes ()-> ObjectCollection<Node> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (EditorSelection.method_get_selected_nodes, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ObjectCollection<Node>(content: _result)
    }
    
    fileprivate static var method_get_transformable_selected_nodes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_transformable_selected_nodes")
        return withUnsafePointer (to: &EditorSelection.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Gets the list of selected nodes, optimized for transform operations (i.e. moving them, rotating, etc). This list avoids situations where a node is selected and also child/grandchild.
    public final func getTransformableSelectedNodes ()-> ObjectCollection<Node> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (EditorSelection.method_get_transformable_selected_nodes, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ObjectCollection<Node>(content: _result)
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
