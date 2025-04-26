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


/// A container that splits two child controls horizontally or vertically and provides a grabber for adjusting the split ratio.
/// 
/// A container that accepts only two child controls, then arranges them horizontally or vertically and creates a divisor between them. The divisor can be dragged around to change the size relation between the child controls.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``dragged``
/// - ``dragStarted``
/// - ``dragEnded``
open class SplitContainer: Container {
    private static var className = StringName("SplitContainer")
    override open class var godotClassName: StringName { className }
    public enum DraggerVisibility: Int64, CaseIterable {
        /// The split dragger icon is always visible when [theme_item autohide] is `false`, otherwise visible only when the cursor hovers it.
        /// 
        /// The size of the grabber icon determines the minimum [theme_item separation].
        /// 
        /// The dragger icon is automatically hidden if the length of the grabber icon is longer than the split bar.
        /// 
        case visible = 0 // DRAGGER_VISIBLE
        /// The split dragger icon is never visible regardless of the value of [theme_item autohide].
        /// 
        /// The size of the grabber icon determines the minimum [theme_item separation].
        /// 
        case hidden = 1 // DRAGGER_HIDDEN
        /// The split dragger icon is not visible, and the split bar is collapsed to zero thickness.
        case hiddenCollapsed = 2 // DRAGGER_HIDDEN_COLLAPSED
    }
    
    
    /* Properties */
    
    /// The initial offset of the splitting between the two ``Control``s, with `0` being at the end of the first ``Control``.
    final public var splitOffset: Int32 {
        get {
            return get_split_offset ()
        }
        
        set {
            set_split_offset (newValue)
        }
        
    }
    
    /// If `true`, the dragger will be disabled and the children will be sized as if the ``splitOffset`` was `0`.
    final public var collapsed: Bool {
        get {
            return is_collapsed ()
        }
        
        set {
            set_collapsed (newValue)
        }
        
    }
    
    /// Enables or disables split dragging.
    final public var draggingEnabled: Bool {
        get {
            return is_dragging_enabled ()
        }
        
        set {
            set_dragging_enabled (newValue)
        }
        
    }
    
    /// Determines the dragger's visibility. See ``SplitContainer/DraggerVisibility`` for details. This property does not determine whether dragging is enabled or not. Use ``draggingEnabled`` for that.
    final public var draggerVisibility: SplitContainer.DraggerVisibility {
        get {
            return get_dragger_visibility ()
        }
        
        set {
            set_dragger_visibility (newValue)
        }
        
    }
    
    /// If `true`, the ``SplitContainer`` will arrange its children vertically, rather than horizontally.
    /// 
    /// Can't be changed when using ``HSplitContainer`` and ``VSplitContainer``.
    /// 
    final public var vertical: Bool {
        get {
            return is_vertical ()
        }
        
        set {
            set_vertical (newValue)
        }
        
    }
    
    /// Reduces the size of the drag area and split bar [theme_item split_bar_background] at the beginning of the container.
    final public var dragAreaMarginBegin: Int32 {
        get {
            return get_drag_area_margin_begin ()
        }
        
        set {
            set_drag_area_margin_begin (newValue)
        }
        
    }
    
    /// Reduces the size of the drag area and split bar [theme_item split_bar_background] at the end of the container.
    final public var dragAreaMarginEnd: Int32 {
        get {
            return get_drag_area_margin_end ()
        }
        
        set {
            set_drag_area_margin_end (newValue)
        }
        
    }
    
    /// Shifts the drag area in the axis of the container to prevent the drag area from overlapping the ``ScrollBar`` or other selectable ``Control`` of a child node.
    final public var dragAreaOffset: Int32 {
        get {
            return get_drag_area_offset ()
        }
        
        set {
            set_drag_area_offset (newValue)
        }
        
    }
    
    /// Highlights the drag area ``Rect2`` so you can see where it is during development. The drag area is gold if ``draggingEnabled`` is `true`, and red if `false`.
    final public var dragAreaHighlightInEditor: Bool {
        get {
            return is_drag_area_highlight_in_editor_enabled ()
        }
        
        set {
            set_drag_area_highlight_in_editor (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_split_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_split_offset(_ offset: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_split_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_split_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_split_offset() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SplitContainer.method_get_split_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_clamp_split_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clamp_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clamps the ``splitOffset`` value to not go outside the currently possible minimal and maximum values.
    public final func clampSplitOffset() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SplitContainer.method_clamp_split_offset, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_collapsed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collapsed")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collapsed(_ collapsed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: collapsed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_collapsed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collapsed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collapsed")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collapsed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_collapsed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_dragger_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dragger_visibility")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1168273952)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dragger_visibility(_ mode: SplitContainer.DraggerVisibility) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_dragger_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_dragger_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_dragger_visibility")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 967297479)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dragger_visibility() -> SplitContainer.DraggerVisibility {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(SplitContainer.method_get_dragger_visibility, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return SplitContainer.DraggerVisibility (rawValue: _result)!
    }
    
    fileprivate static let method_set_vertical: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertical")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical(_ vertical: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertical) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_vertical, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_vertical: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_vertical")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_vertical() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_vertical, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_dragging_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_dragging_enabled")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dragging_enabled(_ draggingEnabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: draggingEnabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_dragging_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_dragging_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_dragging_enabled")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_dragging_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_dragging_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_drag_area_margin_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_area_margin_begin")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_drag_area_margin_begin(_ margin: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_drag_area_margin_begin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_drag_area_margin_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag_area_margin_begin")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_drag_area_margin_begin() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SplitContainer.method_get_drag_area_margin_begin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_drag_area_margin_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_area_margin_end")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_drag_area_margin_end(_ margin: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_drag_area_margin_end, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_drag_area_margin_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag_area_margin_end")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_drag_area_margin_end() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SplitContainer.method_get_drag_area_margin_end, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_drag_area_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_area_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_drag_area_offset(_ offset: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_drag_area_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_drag_area_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag_area_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_drag_area_offset() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SplitContainer.method_get_drag_area_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_drag_area_highlight_in_editor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_area_highlight_in_editor")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_drag_area_highlight_in_editor(_ dragAreaHighlightInEditor: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: dragAreaHighlightInEditor) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_drag_area_highlight_in_editor, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drag_area_highlight_in_editor_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drag_area_highlight_in_editor_enabled")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drag_area_highlight_in_editor_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_drag_area_highlight_in_editor_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_drag_area_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag_area_control")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 829782337)!
            }
            
        }
        
    }()
    
    /// Returns the drag area ``Control``. For example, you can move a pre-configured button into the drag area ``Control`` so that it rides along with the split bar. Try setting the ``Button`` anchors to `center` prior to the `reparent()` call.
    /// 
    /// > Note: The drag area ``Control`` is drawn over the ``SplitContainer``'s children, so ``CanvasItem`` draw objects called from the ``Control`` and children added to the ``Control`` will also appear over the ``SplitContainer``'s children. Try setting ``Control/mouseFilter`` of custom children to ``Control/MouseFilter/ignore`` to prevent blocking the mouse from dragging if desired.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash.
    /// 
    public final func getDragAreaControl() -> Control? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SplitContainer.method_get_drag_area_control, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    // Signals 
    /// Emitted when the dragger is dragged by user.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragged.connect { offset in
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragged: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "dragged") }
    
    /// Emitted when the user starts dragging.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragStarted.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragStarted: SimpleSignal { SimpleSignal (target: self, signalName: "drag_started") }
    
    /// Emitted when the user ends dragging.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragEnded.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragEnded: SimpleSignal { SimpleSignal (target: self, signalName: "drag_ended") }
    
}

