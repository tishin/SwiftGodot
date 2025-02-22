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


/// A container that represents a basic element that can be placed inside a ``GraphEdit`` control.
/// 
/// ``GraphElement`` allows to create custom elements for a ``GraphEdit`` graph. By default such elements can be selected, resized, and repositioned, but they cannot be connected. For a graph element that allows for connections see ``GraphNode``.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``nodeSelected``
/// - ``nodeDeselected``
/// - ``raiseRequest``
/// - ``deleteRequest``
/// - ``resizeRequest``
/// - ``resizeEnd``
/// - ``dragged``
/// - ``positionOffsetChanged``
open class GraphElement: Container {
    override open class var godotClassName: StringName { "GraphElement" }
    
    /* Properties */
    
    /// The offset of the GraphElement, relative to the scroll offset of the ``GraphEdit``.
    final public var positionOffset: Vector2 {
        get {
            return get_position_offset ()
        }
        
        set {
            set_position_offset (newValue)
        }
        
    }
    
    /// If `true`, the user can resize the GraphElement.
    /// 
    /// > Note: Dragging the handle will only emit the [signal resize_request] and [signal resize_end] signals, the GraphElement needs to be resized manually.
    /// 
    final public var resizable: Bool {
        get {
            return is_resizable ()
        }
        
        set {
            set_resizable (newValue)
        }
        
    }
    
    /// If `true`, the user can drag the GraphElement.
    final public var draggable: Bool {
        get {
            return is_draggable ()
        }
        
        set {
            set_draggable (newValue)
        }
        
    }
    
    /// If `true`, the user can select the GraphElement.
    final public var selectable: Bool {
        get {
            return is_selectable ()
        }
        
        set {
            set_selectable (newValue)
        }
        
    }
    
    /// If `true`, the GraphElement is selected.
    final public var selected: Bool {
        get {
            return is_selected ()
        }
        
        set {
            set_selected (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_resizable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_resizable")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_resizable(_ resizable: Bool) {
        withUnsafePointer(to: resizable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphElement.method_set_resizable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_resizable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_resizable")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_resizable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphElement.method_is_resizable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_draggable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_draggable")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draggable(_ draggable: Bool) {
        withUnsafePointer(to: draggable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphElement.method_set_draggable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_draggable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_draggable")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draggable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphElement.method_is_draggable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_selectable: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_selectable")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_selectable(_ selectable: Bool) {
        withUnsafePointer(to: selectable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphElement.method_set_selectable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_selectable: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_selectable")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_selectable() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphElement.method_is_selectable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_selected: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_selected")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_selected(_ selected: Bool) {
        withUnsafePointer(to: selected) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphElement.method_set_selected, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_selected: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_selected")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_selected() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphElement.method_is_selected, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_position_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_position_offset")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position_offset(_ offset: Vector2) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphElement.method_set_position_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_position_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_position_offset")
        return withUnsafePointer(to: &GraphElement.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position_offset() -> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(GraphElement.method_get_position_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the GraphElement is selected.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.nodeSelected.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var nodeSelected: SimpleSignal { SimpleSignal (target: self, signalName: "node_selected") }
    
    /// Emitted when the GraphElement is deselected.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.nodeDeselected.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var nodeDeselected: SimpleSignal { SimpleSignal (target: self, signalName: "node_deselected") }
    
    /// Emitted when displaying the GraphElement over other ones is requested. Happens on focusing (clicking into) the GraphElement.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.raiseRequest.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var raiseRequest: SimpleSignal { SimpleSignal (target: self, signalName: "raise_request") }
    
    /// Emitted when removing the GraphElement is requested.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.deleteRequest.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var deleteRequest: SimpleSignal { SimpleSignal (target: self, signalName: "delete_request") }
    
    /// Emitted when resizing the GraphElement is requested. Happens on dragging the resizer handle (see ``resizable``).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resizeRequest.connect { newSize in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resizeRequest: SignalWithArguments<Vector2> { SignalWithArguments<Vector2> (target: self, signalName: "resize_request") }
    
    /// Emitted when releasing the mouse button after dragging the resizer handle (see ``resizable``).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resizeEnd.connect { newSize in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resizeEnd: SignalWithArguments<Vector2> { SignalWithArguments<Vector2> (target: self, signalName: "resize_end") }
    
    /// Emitted when the GraphElement is dragged.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragged.connect { from, to in
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragged: SignalWithArguments<Vector2, Vector2> { SignalWithArguments<Vector2, Vector2> (target: self, signalName: "dragged") }
    
    /// Emitted when the GraphElement is moved.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.positionOffsetChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var positionOffsetChanged: SimpleSignal { SimpleSignal (target: self, signalName: "position_offset_changed") }
    
}

