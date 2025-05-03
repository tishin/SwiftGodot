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


/// An editor for graph-like structures, using ``GraphNode``s.
/// 
/// ``GraphEdit`` provides tools for creation, manipulation, and display of various graphs. Its main purpose in the engine is to power the visual programming systems, such as visual shaders, but it is also available for use in user projects.
/// 
/// ``GraphEdit`` by itself is only an empty container, representing an infinite grid where ``GraphNode``s can be placed. Each ``GraphNode`` represents a node in the graph, a single unit of data in the connected scheme. ``GraphEdit``, in turn, helps to control various interactions with nodes and between nodes. When the user attempts to connect, disconnect, or delete a ``GraphNode``, a signal is emitted in the ``GraphEdit``, but no action is taken by default. It is the responsibility of the programmer utilizing this control to implement the necessary logic to determine how each request should be handled.
/// 
/// **Performance:** It is greatly advised to enable low-processor usage mode (see ``OS/lowProcessorUsageMode``) when using GraphEdits.
/// 
/// > Note: Keep in mind that ``Node/getChildren(includeInternal:)`` will also return the connection layer node named `_connection_layer` due to technical limitations. This behavior may change in future releases.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``connectionRequest``
/// - ``disconnectionRequest``
/// - ``connectionToEmpty``
/// - ``connectionFromEmpty``
/// - ``connectionDragStarted``
/// - ``connectionDragEnded``
/// - ``copyNodesRequest``
/// - ``cutNodesRequest``
/// - ``pasteNodesRequest``
/// - ``duplicateNodesRequest``
/// - ``deleteNodesRequest``
/// - ``nodeSelected``
/// - ``nodeDeselected``
/// - ``frameRectChanged``
/// - ``popupRequest``
/// - ``beginNodeMove``
/// - ``endNodeMove``
/// - ``graphElementsLinkedToFrameRequest``
/// - ``scrollOffsetChanged``
open class GraphEdit: Control {
    private static var className = StringName("GraphEdit")
    override open class var godotClassName: StringName { className }
    public enum PanningScheme: Int64, CaseIterable {
        /// [kbd]Mouse Wheel[/kbd] will zoom, [kbd]Ctrl + Mouse Wheel[/kbd] will move the view.
        case zooms = 0 // SCROLL_ZOOMS
        /// [kbd]Mouse Wheel[/kbd] will move the view, [kbd]Ctrl + Mouse Wheel[/kbd] will zoom.
        case pans = 1 // SCROLL_PANS
    }
    
    public enum GridPattern: Int64, CaseIterable {
        /// Draw the grid using solid lines.
        case lines = 0 // GRID_PATTERN_LINES
        /// Draw the grid using dots.
        case dots = 1 // GRID_PATTERN_DOTS
    }
    
    
    /* Properties */
    
    /// The scroll offset.
    final public var scrollOffset: Vector2 {
        get {
            return get_scroll_offset ()
        }
        
        set {
            set_scroll_offset (newValue)
        }
        
    }
    
    /// If `true`, the grid is visible.
    final public var showGrid: Bool {
        get {
            return is_showing_grid ()
        }
        
        set {
            set_show_grid (newValue)
        }
        
    }
    
    /// The pattern used for drawing the grid.
    final public var gridPattern: GraphEdit.GridPattern {
        get {
            return get_grid_pattern ()
        }
        
        set {
            set_grid_pattern (newValue)
        }
        
    }
    
    /// If `true`, enables snapping.
    final public var snappingEnabled: Bool {
        get {
            return is_snapping_enabled ()
        }
        
        set {
            set_snapping_enabled (newValue)
        }
        
    }
    
    /// The snapping distance in pixels, also determines the grid line distance.
    final public var snappingDistance: Int32 {
        get {
            return get_snapping_distance ()
        }
        
        set {
            set_snapping_distance (newValue)
        }
        
    }
    
    /// Defines the control scheme for panning with mouse wheel.
    final public var panningScheme: GraphEdit.PanningScheme {
        get {
            return get_panning_scheme ()
        }
        
        set {
            set_panning_scheme (newValue)
        }
        
    }
    
    /// If `true`, enables disconnection of existing connections in the GraphEdit by dragging the right end.
    final public var rightDisconnects: Bool {
        get {
            return is_right_disconnects_enabled ()
        }
        
        set {
            set_right_disconnects (newValue)
        }
        
    }
    
    /// The curvature of the lines between the nodes. 0 results in straight lines.
    final public var connectionLinesCurvature: Double {
        get {
            return get_connection_lines_curvature ()
        }
        
        set {
            set_connection_lines_curvature (newValue)
        }
        
    }
    
    /// The thickness of the lines between the nodes.
    final public var connectionLinesThickness: Double {
        get {
            return get_connection_lines_thickness ()
        }
        
        set {
            set_connection_lines_thickness (newValue)
        }
        
    }
    
    /// If `true`, the lines between nodes will use antialiasing.
    final public var connectionLinesAntialiased: Bool {
        get {
            return is_connection_lines_antialiased ()
        }
        
        set {
            set_connection_lines_antialiased (newValue)
        }
        
    }
    
    /// The connections between ``GraphNode``s.
    /// 
    /// A connection is represented as a ``VariantDictionary`` in the form of:
    /// 
    /// Connections with `keep_alive` set to `false` may be deleted automatically if invalid during a redraw.
    /// 
    final public var connections: TypedArray<VariantDictionary> {
        get {
            return get_connection_list ()
        }
        
        set {
            set_connections (newValue)
        }
        
    }
    
    /// The current zoom value.
    final public var zoom: Double {
        get {
            return get_zoom ()
        }
        
        set {
            set_zoom (newValue)
        }
        
    }
    
    /// The lower zoom limit.
    final public var zoomMin: Double {
        get {
            return get_zoom_min ()
        }
        
        set {
            set_zoom_min (newValue)
        }
        
    }
    
    /// The upper zoom limit.
    final public var zoomMax: Double {
        get {
            return get_zoom_max ()
        }
        
        set {
            set_zoom_max (newValue)
        }
        
    }
    
    /// The step of each zoom level.
    final public var zoomStep: Double {
        get {
            return get_zoom_step ()
        }
        
        set {
            set_zoom_step (newValue)
        }
        
    }
    
    /// If `true`, the minimap is visible.
    final public var minimapEnabled: Bool {
        get {
            return is_minimap_enabled ()
        }
        
        set {
            set_minimap_enabled (newValue)
        }
        
    }
    
    /// The size of the minimap rectangle. The map itself is based on the size of the grid area and is scaled to fit this rectangle.
    final public var minimapSize: Vector2 {
        get {
            return get_minimap_size ()
        }
        
        set {
            set_minimap_size (newValue)
        }
        
    }
    
    /// The opacity of the minimap rectangle.
    final public var minimapOpacity: Double {
        get {
            return get_minimap_opacity ()
        }
        
        set {
            set_minimap_opacity (newValue)
        }
        
    }
    
    /// If `true`, the menu toolbar is visible.
    final public var showMenu: Bool {
        get {
            return is_showing_menu ()
        }
        
        set {
            set_show_menu (newValue)
        }
        
    }
    
    /// If `true`, the label with the current zoom level is visible. The zoom level is displayed in percents.
    final public var showZoomLabel: Bool {
        get {
            return is_showing_zoom_label ()
        }
        
        set {
            set_show_zoom_label (newValue)
        }
        
    }
    
    /// If `true`, buttons that allow to change and reset the zoom level are visible.
    final public var showZoomButtons: Bool {
        get {
            return is_showing_zoom_buttons ()
        }
        
        set {
            set_show_zoom_buttons (newValue)
        }
        
    }
    
    /// If `true`, buttons that allow to configure grid and snapping options are visible.
    final public var showGridButtons: Bool {
        get {
            return is_showing_grid_buttons ()
        }
        
        set {
            set_show_grid_buttons (newValue)
        }
        
    }
    
    /// If `true`, the button to toggle the minimap is visible.
    final public var showMinimapButton: Bool {
        get {
            return is_showing_minimap_button ()
        }
        
        set {
            set_show_minimap_button (newValue)
        }
        
    }
    
    /// If `true`, the button to automatically arrange graph nodes is visible.
    final public var showArrangeButton: Bool {
        get {
            return is_showing_arrange_button ()
        }
        
        set {
            set_show_arrange_button (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__is_in_input_hotzone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_in_input_hotzone")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1779768129)!
            }
            
        }
        
    }()
    
    /// Returns whether the `mousePosition` is in the input hot zone.
    /// 
    /// By default, a hot zone is a ``Rect2`` positioned such that its center is at `inNode`.``GraphNode/getInputPortPosition(portIdx:)``(`inPort`) (For output's case, call ``GraphNode/getOutputPortPosition(portIdx:)`` instead). The hot zone's width is twice the Theme Property `port_grab_distance_horizontal`, and its height is twice the `port_grab_distance_vertical`.
    /// 
    /// Below is a sample code to help get started:
    /// 
    @_documentation(visibility: public)
    open func _isInInputHotzone(inNode: Object?, inPort: Int32, mousePosition: Vector2) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: inNode?.handle) { pArg0 in
            withUnsafePointer(to: inPort) { pArg1 in
                withUnsafePointer(to: mousePosition) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GraphEdit.method__is_in_input_hotzone, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__is_in_output_hotzone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_in_output_hotzone")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1779768129)!
            }
            
        }
        
    }()
    
    /// Returns whether the `mousePosition` is in the output hot zone. For more information on hot zones, see ``_isInInputHotzone(inNode:inPort:mousePosition:)``.
    /// 
    /// Below is a sample code to help get started:
    /// 
    @_documentation(visibility: public)
    open func _isInOutputHotzone(inNode: Object?, inPort: Int32, mousePosition: Vector2) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: inNode?.handle) { pArg0 in
            withUnsafePointer(to: inPort) { pArg1 in
                withUnsafePointer(to: mousePosition) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GraphEdit.method__is_in_output_hotzone, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_connection_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_connection_line")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3932192302)!
            }
            
        }
        
    }()
    
    /// Virtual method which can be overridden to customize how connections are drawn.
    @_documentation(visibility: public)
    open func _getConnectionLine(fromPosition: Vector2, toPosition: Vector2) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: fromPosition) { pArg0 in
            withUnsafePointer(to: toPosition) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method__get_connection_line, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__is_node_hover_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_node_hover_valid")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4216241294)!
            }
            
        }
        
    }()
    
    /// This virtual method can be used to insert additional error detection while the user is dragging a connection over a valid port.
    /// 
    /// Return `true` if the connection is indeed valid or return `false` if the connection is impossible. If the connection is impossible, no snapping to the port and thus no connection request to that port will happen.
    /// 
    /// In this example a connection to same node is suppressed:
    /// 
    @_documentation(visibility: public)
    open func _isNodeHoverValid(fromNode: StringName, fromPort: Int32, toNode: StringName, toPort: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fromNode.content) { pArg0 in
            withUnsafePointer(to: fromPort) { pArg1 in
                withUnsafePointer(to: toNode.content) { pArg2 in
                    withUnsafePointer(to: toPort) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(GraphEdit.method__is_node_hover_valid, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_connect_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("connect_node")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1376144231)!
            }
            
        }
        
    }()
    
    /// Create a connection between the `fromPort` of the `fromNode` ``GraphNode`` and the `toPort` of the `toNode` ``GraphNode``. If the connection already exists, no connection is created.
    /// 
    /// Connections with `keepAlive` set to `false` may be deleted automatically if invalid during a redraw.
    /// 
    public final func connectNode(fromNode: StringName, fromPort: Int32, toNode: StringName, toPort: Int32, keepAlive: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: fromNode.content) { pArg0 in
            withUnsafePointer(to: fromPort) { pArg1 in
                withUnsafePointer(to: toNode.content) { pArg2 in
                    withUnsafePointer(to: toPort) { pArg3 in
                        withUnsafePointer(to: keepAlive) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(GraphEdit.method_connect_node, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_is_node_connected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_node_connected")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4216241294)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `fromPort` of the `fromNode` ``GraphNode`` is connected to the `toPort` of the `toNode` ``GraphNode``.
    public final func isNodeConnected(fromNode: StringName, fromPort: Int32, toNode: StringName, toPort: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fromNode.content) { pArg0 in
            withUnsafePointer(to: fromPort) { pArg1 in
                withUnsafePointer(to: toNode.content) { pArg2 in
                    withUnsafePointer(to: toPort) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(GraphEdit.method_is_node_connected, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_disconnect_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("disconnect_node")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1933654315)!
            }
            
        }
        
    }()
    
    /// Removes the connection between the `fromPort` of the `fromNode` ``GraphNode`` and the `toPort` of the `toNode` ``GraphNode``. If the connection does not exist, no connection is removed.
    public final func disconnectNode(fromNode: StringName, fromPort: Int32, toNode: StringName, toPort: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromNode.content) { pArg0 in
            withUnsafePointer(to: fromPort) { pArg1 in
                withUnsafePointer(to: toNode.content) { pArg2 in
                    withUnsafePointer(to: toPort) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(GraphEdit.method_disconnect_node, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_connection_activity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_connection_activity")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1141899943)!
            }
            
        }
        
    }()
    
    /// Sets the coloration of the connection between `fromNode`'s `fromPort` and `toNode`'s `toPort` with the color provided in the [theme_item activity] theme property. The color is linearly interpolated between the connection color and the activity color using `amount` as weight.
    public final func setConnectionActivity(fromNode: StringName, fromPort: Int32, toNode: StringName, toPort: Int32, amount: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromNode.content) { pArg0 in
            withUnsafePointer(to: fromPort) { pArg1 in
                withUnsafePointer(to: toNode.content) { pArg2 in
                    withUnsafePointer(to: toPort) { pArg3 in
                        withUnsafePointer(to: amount) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(GraphEdit.method_set_connection_activity, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_connections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_connections")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_connections(_ connections: TypedArray<VariantDictionary>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: connections.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_connections, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_connection_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_list")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_connection_list() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_connection_list, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_get_connection_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_count")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 861718734)!
            }
            
        }
        
    }()
    
    /// Returns the number of connections from `fromPort` of `fromNode`.
    public final func getConnectionCount(fromNode: StringName, fromPort: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: fromNode.content) { pArg0 in
            withUnsafePointer(to: fromPort) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method_get_connection_count, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_closest_connection_at_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_closest_connection_at_point")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 453879819)!
            }
            
        }
        
    }()
    
    /// Returns the closest connection to the given point in screen space. If no connection is found within `maxDistance` pixels, an empty ``VariantDictionary`` is returned.
    /// 
    /// A connection is represented as a ``VariantDictionary`` in the form of:
    /// 
    /// For example, getting a connection at a given mouse position can be achieved like this:
    /// 
    public final func getClosestConnectionAtPoint(_ point: Vector2, maxDistance: Double = 4.0) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: maxDistance) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method_get_closest_connection_at_point, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connections_intersecting_with_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connections_intersecting_with_rect")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2709748719)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` containing the list of connections that intersect with the given ``Rect2``.
    /// 
    /// A connection is represented as a ``VariantDictionary`` in the form of:
    /// 
    public final func getConnectionsIntersectingWithRect(_ rect: Rect2) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_get_connections_intersecting_with_rect, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_clear_connections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_connections")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all connections between nodes.
    public final func clearConnections() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GraphEdit.method_clear_connections, handle, nil, nil)
        
    }
    
    fileprivate static let method_force_connection_drag_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("force_connection_drag_end")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Ends the creation of the current connection. In other words, if you are dragging a connection you can use this method to abort the process and remove the line that followed your cursor.
    /// 
    /// This is best used together with [signal connection_drag_started] and [signal connection_drag_ended] to add custom behavior like node addition through shortcuts.
    /// 
    /// > Note: This method suppresses any other connection request signals apart from [signal connection_drag_ended].
    /// 
    public final func forceConnectionDragEnd() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GraphEdit.method_force_connection_drag_end, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_scroll_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scroll_offset")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scroll_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(GraphEdit.method_get_scroll_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_scroll_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scroll_offset")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scroll_offset(_ offset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_scroll_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_valid_right_disconnect_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_valid_right_disconnect_type")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Allows to disconnect nodes when dragging from the right port of the ``GraphNode``'s slot if it has the specified type. See also ``removeValidRightDisconnectType(_:)``.
    public final func addValidRightDisconnectType(_ type: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_add_valid_right_disconnect_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_valid_right_disconnect_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_valid_right_disconnect_type")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Disallows to disconnect nodes when dragging from the right port of the ``GraphNode``'s slot if it has the specified type. Use this to disable disconnection previously allowed with ``addValidRightDisconnectType(_:)``.
    public final func removeValidRightDisconnectType(_ type: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_remove_valid_right_disconnect_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_valid_left_disconnect_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_valid_left_disconnect_type")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Allows to disconnect nodes when dragging from the left port of the ``GraphNode``'s slot if it has the specified type. See also ``removeValidLeftDisconnectType(_:)``.
    public final func addValidLeftDisconnectType(_ type: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_add_valid_left_disconnect_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_valid_left_disconnect_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_valid_left_disconnect_type")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Disallows to disconnect nodes when dragging from the left port of the ``GraphNode``'s slot if it has the specified type. Use this to disable disconnection previously allowed with ``addValidLeftDisconnectType(_:)``.
    public final func removeValidLeftDisconnectType(_ type: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_remove_valid_left_disconnect_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_valid_connection_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_valid_connection_type")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Allows the connection between two different port types. The port type is defined individually for the left and the right port of each slot with the ``GraphNode/setSlot(slotIndex:enableLeftPort:typeLeft:colorLeft:enableRightPort:typeRight:colorRight:customIconLeft:customIconRight:drawStylebox:)`` method.
    /// 
    /// See also ``isValidConnectionType(fromType:toType:)`` and ``removeValidConnectionType(fromType:toType:)``.
    /// 
    public final func addValidConnectionType(fromType: Int32, toType: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromType) { pArg0 in
            withUnsafePointer(to: toType) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method_add_valid_connection_type, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_valid_connection_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_valid_connection_type")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Disallows the connection between two different port types previously allowed by ``addValidConnectionType(fromType:toType:)``. The port type is defined individually for the left and the right port of each slot with the ``GraphNode/setSlot(slotIndex:enableLeftPort:typeLeft:colorLeft:enableRightPort:typeRight:colorRight:customIconLeft:customIconRight:drawStylebox:)`` method.
    /// 
    /// See also ``isValidConnectionType(fromType:toType:)``.
    /// 
    public final func removeValidConnectionType(fromType: Int32, toType: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromType) { pArg0 in
            withUnsafePointer(to: toType) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method_remove_valid_connection_type, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_valid_connection_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_valid_connection_type")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2522259332)!
            }
            
        }
        
    }()
    
    /// Returns whether it's possible to make a connection between two different port types. The port type is defined individually for the left and the right port of each slot with the ``GraphNode/setSlot(slotIndex:enableLeftPort:typeLeft:colorLeft:enableRightPort:typeRight:colorRight:customIconLeft:customIconRight:drawStylebox:)`` method.
    /// 
    /// See also ``addValidConnectionType(fromType:toType:)`` and ``removeValidConnectionType(fromType:toType:)``.
    /// 
    public final func isValidConnectionType(fromType: Int32, toType: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fromType) { pArg0 in
            withUnsafePointer(to: toType) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method_is_valid_connection_type, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_connection_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_line")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3932192302)!
            }
            
        }
        
    }()
    
    /// Returns the points which would make up a connection between `fromNode` and `toNode`.
    public final func getConnectionLine(fromNode: Vector2, toNode: Vector2) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: fromNode) { pArg0 in
            withUnsafePointer(to: toNode) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method_get_connection_line, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_attach_graph_element_to_frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("attach_graph_element_to_frame")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Attaches the `element` ``GraphElement`` to the `frame` ``GraphFrame``.
    public final func attachGraphElementToFrame(element: StringName, frame: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: element.content) { pArg0 in
            withUnsafePointer(to: frame.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GraphEdit.method_attach_graph_element_to_frame, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_detach_graph_element_from_frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("detach_graph_element_from_frame")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Detaches the `element` ``GraphElement`` from the ``GraphFrame`` it is currently attached to.
    public final func detachGraphElementFromFrame(element: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: element.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_detach_graph_element_from_frame, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_element_frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_element_frame")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 988084372)!
            }
            
        }
        
    }()
    
    /// Returns the ``GraphFrame`` that contains the ``GraphElement`` with the given name.
    public final func getElementFrame(element: StringName) -> GraphFrame? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: element.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_get_element_frame, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_attached_nodes_of_frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attached_nodes_of_frame")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 689397652)!
            }
            
        }
        
    }()
    
    /// Returns an array of node names that are attached to the ``GraphFrame`` with the given name.
    public final func getAttachedNodesOfFrame(_ frame: StringName) -> TypedArray<StringName> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: frame.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_get_attached_nodes_of_frame, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<StringName>(takingOver: _result)
    }
    
    fileprivate static let method_set_panning_scheme: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_panning_scheme")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 18893313)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_panning_scheme(_ scheme: GraphEdit.PanningScheme) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scheme.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_panning_scheme, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_panning_scheme: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_panning_scheme")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 549924446)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_panning_scheme() -> GraphEdit.PanningScheme {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GraphEdit.method_get_panning_scheme, handle, nil, &_result)
        return GraphEdit.PanningScheme (rawValue: _result)!
    }
    
    fileprivate static let method_set_zoom: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_zoom")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_zoom(_ zoom: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: zoom) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_zoom, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_zoom: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_zoom")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_zoom() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_zoom, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_zoom_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_zoom_min")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_zoom_min(_ zoomMin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: zoomMin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_zoom_min, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_zoom_min: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_zoom_min")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_zoom_min() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_zoom_min, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_zoom_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_zoom_max")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_zoom_max(_ zoomMax: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: zoomMax) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_zoom_max, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_zoom_max: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_zoom_max")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_zoom_max() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_zoom_max, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_zoom_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_zoom_step")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_zoom_step(_ zoomStep: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: zoomStep) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_zoom_step, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_zoom_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_zoom_step")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_zoom_step() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_zoom_step, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_grid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_grid")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_grid(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_show_grid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_grid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_grid")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_grid() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_showing_grid, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_grid_pattern: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_grid_pattern")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1074098205)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_grid_pattern(_ pattern: GraphEdit.GridPattern) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pattern.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_grid_pattern, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_grid_pattern: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_grid_pattern")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286127528)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_grid_pattern() -> GraphEdit.GridPattern {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(GraphEdit.method_get_grid_pattern, handle, nil, &_result)
        return GraphEdit.GridPattern (rawValue: _result)!
    }
    
    fileprivate static let method_set_snapping_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_snapping_enabled")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_snapping_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_snapping_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_snapping_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_snapping_enabled")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_snapping_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_snapping_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_snapping_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_snapping_distance")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_snapping_distance(_ pixels: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pixels) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_snapping_distance, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_snapping_distance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_snapping_distance")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_snapping_distance() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_snapping_distance, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_connection_lines_curvature: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_connection_lines_curvature")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_connection_lines_curvature(_ curvature: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: curvature) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_connection_lines_curvature, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_connection_lines_curvature: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_lines_curvature")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_connection_lines_curvature() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_connection_lines_curvature, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_connection_lines_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_connection_lines_thickness")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_connection_lines_thickness(_ pixels: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pixels) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_connection_lines_thickness, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_connection_lines_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_lines_thickness")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_connection_lines_thickness() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_connection_lines_thickness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_connection_lines_antialiased: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_connection_lines_antialiased")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_connection_lines_antialiased(_ pixels: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pixels) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_connection_lines_antialiased, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_connection_lines_antialiased: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_connection_lines_antialiased")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_connection_lines_antialiased() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_connection_lines_antialiased, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_minimap_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_minimap_size")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_minimap_size(_ size: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_minimap_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_minimap_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_minimap_size")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_minimap_size() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(GraphEdit.method_get_minimap_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_minimap_opacity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_minimap_opacity")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_minimap_opacity(_ opacity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: opacity) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_minimap_opacity, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_minimap_opacity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_minimap_opacity")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_minimap_opacity() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GraphEdit.method_get_minimap_opacity, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_minimap_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_minimap_enabled")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_minimap_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_minimap_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_minimap_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_minimap_enabled")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_minimap_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_minimap_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_menu: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_menu")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_menu(_ hidden: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: hidden) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_show_menu, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_menu: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_menu")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_menu() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_showing_menu, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_zoom_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_zoom_label")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_zoom_label(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_show_zoom_label, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_zoom_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_zoom_label")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_zoom_label() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_showing_zoom_label, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_grid_buttons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_grid_buttons")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_grid_buttons(_ hidden: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: hidden) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_show_grid_buttons, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_grid_buttons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_grid_buttons")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_grid_buttons() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_showing_grid_buttons, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_zoom_buttons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_zoom_buttons")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_zoom_buttons(_ hidden: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: hidden) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_show_zoom_buttons, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_zoom_buttons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_zoom_buttons")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_zoom_buttons() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_showing_zoom_buttons, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_minimap_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_minimap_button")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_minimap_button(_ hidden: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: hidden) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_show_minimap_button, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_minimap_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_minimap_button")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_minimap_button() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_showing_minimap_button, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_arrange_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_arrange_button")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_arrange_button(_ hidden: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: hidden) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_show_arrange_button, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_showing_arrange_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_showing_arrange_button")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_showing_arrange_button() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_showing_arrange_button, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_right_disconnects: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_right_disconnects")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_right_disconnects(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_right_disconnects, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_right_disconnects_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_right_disconnects_enabled")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_right_disconnects_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GraphEdit.method_is_right_disconnects_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_menu_hbox: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_menu_hbox")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3590609951)!
            }
            
        }
        
    }()
    
    /// Gets the ``HBoxContainer`` that contains the zooming and grid snap controls in the top left of the graph. You can use this method to reposition the toolbar or to add your own custom controls to it.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getMenuHbox() -> HBoxContainer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(GraphEdit.method_get_menu_hbox, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_arrange_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("arrange_nodes")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Rearranges selected nodes in a layout with minimum crossings between connections and uniform horizontal and vertical gap between nodes.
    public final func arrangeNodes() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GraphEdit.method_arrange_nodes, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_selected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selected")
        return withUnsafePointer(to: &GraphEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Sets the specified `node` as the one selected.
    public final func setSelected(node: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GraphEdit.method_set_selected, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_connection_line":
                return _GraphEdit_proxy_get_connection_line
            case "_is_in_input_hotzone":
                return _GraphEdit_proxy_is_in_input_hotzone
            case "_is_in_output_hotzone":
                return _GraphEdit_proxy_is_in_output_hotzone
            case "_is_node_hover_valid":
                return _GraphEdit_proxy_is_node_hover_valid
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted to the GraphEdit when the connection between the `fromPort` of the `fromNode` ``GraphNode`` and the `toPort` of the `toNode` ``GraphNode`` is attempted to be created.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.connectionRequest.connect { fromNode, fromPort, toNode, toPort in
    ///    print ("caught signal")
    /// }
    /// ```
    public var connectionRequest: SignalWithArguments<StringName, Int64, StringName, Int64> { SignalWithArguments<StringName, Int64, StringName, Int64> (target: self, signalName: "connection_request") }
    
    /// Emitted to the GraphEdit when the connection between `fromPort` of `fromNode` ``GraphNode`` and `toPort` of `toNode` ``GraphNode`` is attempted to be removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.disconnectionRequest.connect { fromNode, fromPort, toNode, toPort in
    ///    print ("caught signal")
    /// }
    /// ```
    public var disconnectionRequest: SignalWithArguments<StringName, Int64, StringName, Int64> { SignalWithArguments<StringName, Int64, StringName, Int64> (target: self, signalName: "disconnection_request") }
    
    /// Emitted when user drags a connection from an output port into the empty space of the graph.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.connectionToEmpty.connect { fromNode, fromPort, releasePosition in
    ///    print ("caught signal")
    /// }
    /// ```
    public var connectionToEmpty: SignalWithArguments<StringName, Int64, Vector2> { SignalWithArguments<StringName, Int64, Vector2> (target: self, signalName: "connection_to_empty") }
    
    /// Emitted when user drags a connection from an input port into the empty space of the graph.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.connectionFromEmpty.connect { toNode, toPort, releasePosition in
    ///    print ("caught signal")
    /// }
    /// ```
    public var connectionFromEmpty: SignalWithArguments<StringName, Int64, Vector2> { SignalWithArguments<StringName, Int64, Vector2> (target: self, signalName: "connection_from_empty") }
    
    /// Emitted at the beginning of a connection drag.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.connectionDragStarted.connect { fromNode, fromPort, isOutput in
    ///    print ("caught signal")
    /// }
    /// ```
    public var connectionDragStarted: SignalWithArguments<StringName, Int64, Bool> { SignalWithArguments<StringName, Int64, Bool> (target: self, signalName: "connection_drag_started") }
    
    /// Emitted at the end of a connection drag.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.connectionDragEnded.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var connectionDragEnded: SimpleSignal { SimpleSignal (target: self, signalName: "connection_drag_ended") }
    
    /// Emitted when this ``GraphEdit`` captures a `ui_copy` action ([kbd]Ctrl + C[/kbd] by default). In general, this signal indicates that the selected ``GraphElement``s should be copied.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.copyNodesRequest.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var copyNodesRequest: SimpleSignal { SimpleSignal (target: self, signalName: "copy_nodes_request") }
    
    /// Emitted when this ``GraphEdit`` captures a `ui_cut` action ([kbd]Ctrl + X[/kbd] by default). In general, this signal indicates that the selected ``GraphElement``s should be cut.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.cutNodesRequest.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var cutNodesRequest: SimpleSignal { SimpleSignal (target: self, signalName: "cut_nodes_request") }
    
    /// Emitted when this ``GraphEdit`` captures a `ui_paste` action ([kbd]Ctrl + V[/kbd] by default). In general, this signal indicates that previously copied ``GraphElement``s should be pasted.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.pasteNodesRequest.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var pasteNodesRequest: SimpleSignal { SimpleSignal (target: self, signalName: "paste_nodes_request") }
    
    /// Emitted when this ``GraphEdit`` captures a `ui_graph_duplicate` action ([kbd]Ctrl + D[/kbd] by default). In general, this signal indicates that the selected ``GraphElement``s should be duplicated.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.duplicateNodesRequest.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var duplicateNodesRequest: SimpleSignal { SimpleSignal (target: self, signalName: "duplicate_nodes_request") }
    
    /// Emitted when this ``GraphEdit`` captures a `ui_graph_delete` action ([kbd]Delete[/kbd] by default).
    /// 
    /// `nodes` is an array of node names that should be removed. These usually include all selected nodes.
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
    /// obj.deleteNodesRequest.connect { nodes in
    ///    print ("caught signal")
    /// }
    /// ```
    public var deleteNodesRequest: SignalWithArguments<TypedArray<StringName>> { SignalWithArguments<TypedArray<StringName>> (target: self, signalName: "delete_nodes_request") }
    
    /// Emitted when the given ``GraphElement`` node is selected.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.nodeSelected.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var nodeSelected: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "node_selected") }
    
    /// Emitted when the given ``GraphElement`` node is deselected.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.nodeDeselected.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var nodeDeselected: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "node_deselected") }
    
    /// Emitted when the ``GraphFrame`` `frame` is resized to `newRect`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.frameRectChanged.connect { frame, newRect in
    ///    print ("caught signal")
    /// }
    /// ```
    public var frameRectChanged: SignalWithArguments<GraphFrame?, Rect2> { SignalWithArguments<GraphFrame?, Rect2> (target: self, signalName: "frame_rect_changed") }
    
    /// Emitted when a popup is requested. Happens on right-clicking in the GraphEdit. `atPosition` is the position of the mouse pointer when the signal is sent.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.popupRequest.connect { atPosition in
    ///    print ("caught signal")
    /// }
    /// ```
    public var popupRequest: SignalWithArguments<Vector2> { SignalWithArguments<Vector2> (target: self, signalName: "popup_request") }
    
    /// Emitted at the beginning of a ``GraphElement``'s movement.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.beginNodeMove.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var beginNodeMove: SimpleSignal { SimpleSignal (target: self, signalName: "begin_node_move") }
    
    /// Emitted at the end of a ``GraphElement``'s movement.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.endNodeMove.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var endNodeMove: SimpleSignal { SimpleSignal (target: self, signalName: "end_node_move") }
    
    /// Emitted when one or more ``GraphElement``s are dropped onto the ``GraphFrame`` named `frame`, when they were not previously attached to any other one.
    /// 
    /// `elements` is an array of ``GraphElement``s to be attached.
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
    /// obj.graphElementsLinkedToFrameRequest.connect { elements, frame in
    ///    print ("caught signal")
    /// }
    /// ```
    public var graphElementsLinkedToFrameRequest: SignalWithArguments<VariantArray, StringName> { SignalWithArguments<VariantArray, StringName> (target: self, signalName: "graph_elements_linked_to_frame_request") }
    
    /// Emitted when the scroll offset is changed by the user. It will not be emitted when changed in code.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scrollOffsetChanged.connect { offset in
    ///    print ("caught signal")
    /// }
    /// ```
    public var scrollOffsetChanged: SignalWithArguments<Vector2> { SignalWithArguments<Vector2> (target: self, signalName: "scroll_offset_changed") }
    
}

// Support methods for proxies
func _GraphEdit_proxy_get_connection_line (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GraphEdit else { return }
    let ret = swiftObject._getConnectionLine (fromPosition: args [0]!.assumingMemoryBound (to: Vector2.self).pointee, toPosition: args [1]!.assumingMemoryBound (to: Vector2.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedVector2Array
    ret.content = PackedVector2Array.zero
}

func _GraphEdit_proxy_is_in_input_hotzone (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GraphEdit else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._isInInputHotzone (inNode: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object, inPort: args [1]!.assumingMemoryBound (to: Int32.self).pointee, mousePosition: args [2]!.assumingMemoryBound (to: Vector2.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _GraphEdit_proxy_is_in_output_hotzone (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GraphEdit else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._isInOutputHotzone (inNode: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Object, inPort: args [1]!.assumingMemoryBound (to: Int32.self).pointee, mousePosition: args [2]!.assumingMemoryBound (to: Vector2.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _GraphEdit_proxy_is_node_hover_valid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GraphEdit else { return }
    let ret = swiftObject._isNodeHoverValid (fromNode: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), fromPort: args [1]!.assumingMemoryBound (to: Int32.self).pointee, toNode: StringName (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee), toPort: args [3]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

