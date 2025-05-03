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


/// A container that creates a tab for each child control, displaying only the active tab's control.
/// 
/// Arranges child controls into a tabbed view, creating a tab for each one. The active tab's corresponding control is made visible, while all other child controls are hidden. Ignores non-control children.
/// 
/// > Note: The drawing of the clickable tabs is handled by this node; ``TabBar`` is not needed.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``activeTabRearranged``
/// - ``tabChanged``
/// - ``tabClicked``
/// - ``tabHovered``
/// - ``tabSelected``
/// - ``tabButtonPressed``
/// - ``prePopupPressed``
open class TabContainer: Container {
    private static var className = StringName("TabContainer")
    override open class var godotClassName: StringName { className }
    public enum TabPosition: Int64, CaseIterable {
        /// Places the tab bar at the top.
        case top = 0 // POSITION_TOP
        /// Places the tab bar at the bottom. The tab bar's ``StyleBox`` will be flipped vertically.
        case bottom = 1 // POSITION_BOTTOM
        /// Represents the size of the ``TabContainer/TabPosition`` enum.
        case max = 2 // POSITION_MAX
    }
    
    
    /* Properties */
    
    /// Sets the position at which tabs will be placed. See ``TabBar.AlignmentMode`` for details.
    final public var tabAlignment: TabBar.AlignmentMode {
        get {
            return get_tab_alignment ()
        }
        
        set {
            set_tab_alignment (newValue)
        }
        
    }
    
    /// The current tab index. When set, this index's ``Control`` node's `visible` property is set to `true` and all others are set to `false`.
    /// 
    /// A value of `-1` means that no tab is selected.
    /// 
    final public var currentTab: Int32 {
        get {
            return get_current_tab ()
        }
        
        set {
            set_current_tab (newValue)
        }
        
    }
    
    /// Sets the position of the tab bar. See ``TabContainer/TabPosition`` for details.
    final public var tabsPosition: TabContainer.TabPosition {
        get {
            return get_tabs_position ()
        }
        
        set {
            set_tabs_position (newValue)
        }
        
    }
    
    /// If `true`, tabs overflowing this node's width will be hidden, displaying two navigation buttons instead. Otherwise, this node's minimum size is updated so that all tabs are visible.
    final public var clipTabs: Bool {
        get {
            return get_clip_tabs ()
        }
        
        set {
            set_clip_tabs (newValue)
        }
        
    }
    
    /// If `true`, tabs are visible. If `false`, tabs' content and titles are hidden.
    final public var tabsVisible: Bool {
        get {
            return are_tabs_visible ()
        }
        
        set {
            set_tabs_visible (newValue)
        }
        
    }
    
    /// If `true`, all tabs are drawn in front of the panel. If `false`, inactive tabs are drawn behind the panel.
    final public var allTabsInFront: Bool {
        get {
            return is_all_tabs_in_front ()
        }
        
        set {
            set_all_tabs_in_front (newValue)
        }
        
    }
    
    /// If `true`, tabs can be rearranged with mouse drag.
    final public var dragToRearrangeEnabled: Bool {
        get {
            return get_drag_to_rearrange_enabled ()
        }
        
        set {
            set_drag_to_rearrange_enabled (newValue)
        }
        
    }
    
    /// ``TabContainer``s with the same rearrange group ID will allow dragging the tabs between them. Enable drag with ``dragToRearrangeEnabled``.
    /// 
    /// Setting this to `-1` will disable rearranging between ``TabContainer``s.
    /// 
    final public var tabsRearrangeGroup: Int32 {
        get {
            return get_tabs_rearrange_group ()
        }
        
        set {
            set_tabs_rearrange_group (newValue)
        }
        
    }
    
    /// If `true`, child ``Control`` nodes that are hidden have their minimum size take into account in the total, instead of only the currently visible one.
    final public var useHiddenTabsForMinSize: Bool {
        get {
            return get_use_hidden_tabs_for_min_size ()
        }
        
        set {
            set_use_hidden_tabs_for_min_size (newValue)
        }
        
    }
    
    /// The focus access mode for the internal ``TabBar`` node.
    final public var tabFocusMode: Control.FocusMode {
        get {
            return get_tab_focus_mode ()
        }
        
        set {
            set_tab_focus_mode (newValue)
        }
        
    }
    
    /// If `true`, all tabs can be deselected so that no tab is selected. Click on the ``currentTab`` to deselect it.
    /// 
    /// Only the tab header will be shown if no tabs are selected.
    /// 
    final public var deselectEnabled: Bool {
        get {
            return get_deselect_enabled ()
        }
        
        set {
            set_deselect_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_tab_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_count")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of tabs.
    public final func getTabCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabContainer.method_get_tab_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_current_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_tab")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_current_tab(_ tabIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_current_tab, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_current_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_tab")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_tab() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabContainer.method_get_current_tab, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_previous_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_previous_tab")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the previously active tab index.
    public final func getPreviousTab() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabContainer.method_get_previous_tab, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_select_previous_available: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select_previous_available")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Selects the first available tab with lower index than the currently selected. Returns `true` if tab selection changed.
    public final func selectPreviousAvailable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_select_previous_available, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_select_next_available: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select_next_available")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Selects the first available tab with greater index than the currently selected. Returns `true` if tab selection changed.
    public final func selectNextAvailable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_select_next_available, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_current_tab_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_tab_control")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2783021301)!
            }
            
        }
        
    }()
    
    /// Returns the child ``Control`` node located at the active tab index.
    public final func getCurrentTabControl() -> Control? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TabContainer.method_get_current_tab_control, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_tab_bar: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_bar")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1865451809)!
            }
            
        }
        
    }()
    
    /// Returns the ``TabBar`` contained in this container.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it or editing its tabs may cause a crash. If you wish to edit the tabs, use the methods provided in ``TabContainer``.
    /// 
    public final func getTabBar() -> TabBar? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TabContainer.method_get_tab_bar, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_tab_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_control")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1065994134)!
            }
            
        }
        
    }()
    
    /// Returns the ``Control`` node from the tab at index `tabIdx`.
    public final func getTabControl(tabIdx: Int32) -> Control? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_control, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_tab_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_alignment")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2413632353)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tab_alignment(_ alignment: TabBar.AlignmentMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_tab_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_alignment")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2178122193)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tab_alignment() -> TabBar.AlignmentMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TabContainer.method_get_tab_alignment, handle, nil, &_result)
        return TabBar.AlignmentMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_tabs_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tabs_position")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 256673370)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tabs_position(_ tabsPosition: TabContainer.TabPosition) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabsPosition.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_tabs_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tabs_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tabs_position")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 919937023)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tabs_position() -> TabContainer.TabPosition {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TabContainer.method_get_tabs_position, handle, nil, &_result)
        return TabContainer.TabPosition (rawValue: _result)!
    }
    
    fileprivate static let method_set_clip_tabs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_clip_tabs")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_clip_tabs(_ clipTabs: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: clipTabs) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_clip_tabs, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_clip_tabs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_clip_tabs")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_clip_tabs() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_get_clip_tabs, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_tabs_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tabs_visible")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tabs_visible(_ visible: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_tabs_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_are_tabs_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("are_tabs_visible")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func are_tabs_visible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_are_tabs_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_all_tabs_in_front: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_all_tabs_in_front")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_all_tabs_in_front(_ isFront: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: isFront) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_all_tabs_in_front, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_all_tabs_in_front: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_all_tabs_in_front")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_all_tabs_in_front() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_is_all_tabs_in_front, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_tab_title: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_title")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a custom title for the tab at index `tabIdx` (tab titles default to the name of the indexed child node). Set it back to the child's name to make the tab default to it again.
    public final func setTabTitle(tabIdx: Int32, title: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            let title = GString(title)
            withUnsafePointer(to: title.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_title, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_title: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_title")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the title of the tab at index `tabIdx`. Tab titles default to the name of the indexed child node, but this can be overridden with ``setTabTitle(tabIdx:title:)``.
    public final func getTabTitle(tabIdx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_title, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_tab_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_tooltip")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a custom tooltip text for tab at index `tabIdx`.
    /// 
    /// > Note: By default, if the `tooltip` is empty and the tab text is truncated (not all characters fit into the tab), the title will be displayed as a tooltip. To hide the tooltip, assign `" "` as the `tooltip` text.
    /// 
    public final func setTabTooltip(tabIdx: Int32, tooltip: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            let tooltip = GString(tooltip)
            withUnsafePointer(to: tooltip.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_tooltip, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_tooltip")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the tooltip text of the tab at index `tabIdx`.
    public final func getTabTooltip(tabIdx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_tooltip, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_tab_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_icon")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets an icon for the tab at index `tabIdx`.
    public final func setTabIcon(tabIdx: Int32, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_icon, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_icon")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the ``Texture2D`` for the tab at index `tabIdx` or `null` if the tab has no ``Texture2D``.
    public final func getTabIcon(tabIdx: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_icon, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_tab_icon_max_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_icon_max_width")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the maximum allowed width of the icon for the tab at index `tabIdx`. This limit is applied on top of the default size of the icon and on top of [theme_item icon_max_width]. The height is adjusted according to the icon's ratio.
    public final func setTabIconMaxWidth(tabIdx: Int32, width: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: width) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_icon_max_width, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_icon_max_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_icon_max_width")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the maximum allowed width of the icon for the tab at index `tabIdx`.
    public final func getTabIconMaxWidth(tabIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_icon_max_width, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tab_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_disabled")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `disabled` is `true`, disables the tab at index `tabIdx`, making it non-interactable.
    public final func setTabDisabled(tabIdx: Int32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: disabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_disabled, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_tab_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_tab_disabled")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the tab at index `tabIdx` is disabled.
    public final func isTabDisabled(tabIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_is_tab_disabled, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tab_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_hidden")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `hidden` is `true`, hides the tab at index `tabIdx`, making it disappear from the tab area.
    public final func setTabHidden(tabIdx: Int32, hidden: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: hidden) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_hidden, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_tab_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_tab_hidden")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the tab at index `tabIdx` is hidden.
    public final func isTabHidden(tabIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_is_tab_hidden, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tab_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_metadata")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2152698145)!
            }
            
        }
        
    }()
    
    /// Sets the metadata value for the tab at index `tabIdx`, which can be retrieved later using ``getTabMetadata(tabIdx:)``.
    public final func setTabMetadata(tabIdx: Int32, metadata: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: metadata.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_metadata, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_metadata")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4227898402)!
            }
            
        }
        
    }()
    
    /// Returns the metadata value set to the tab at index `tabIdx` using ``setTabMetadata(tabIdx:metadata:)``. If no metadata was previously set, returns `null` by default.
    public final func getTabMetadata(tabIdx: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_metadata, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_tab_button_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_button_icon")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets the button icon from the tab at index `tabIdx`.
    public final func setTabButtonIcon(tabIdx: Int32, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabContainer.method_set_tab_button_icon, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_button_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_button_icon")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the button icon from the tab at index `tabIdx`.
    public final func getTabButtonIcon(tabIdx: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_button_icon, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_tab_idx_at_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_idx_at_point")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3820158470)!
            }
            
        }
        
    }()
    
    /// Returns the index of the tab at local coordinates `point`. Returns `-1` if the point is outside the control boundaries or if there's no tab at the queried position.
    public final func getTabIdxAtPoint(_ point: Vector2) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_idx_at_point, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_tab_idx_from_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_idx_from_control")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2787397975)!
            }
            
        }
        
    }()
    
    /// Returns the index of the tab tied to the given `control`. The control must be a child of the ``TabContainer``.
    public final func getTabIdxFromControl(_ control: Control?) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: control?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_get_tab_idx_from_control, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_popup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_popup")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// If set on a ``Popup`` node instance, a popup menu icon appears in the top-right corner of the ``TabContainer`` (setting it to `null` will make it go away). Clicking it will expand the ``Popup`` node.
    public final func setPopup(_ popup: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: popup?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_popup, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_popup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_popup")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 111095082)!
            }
            
        }
        
    }()
    
    /// Returns the ``Popup`` node instance if one has been set already with ``setPopup(_:)``.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``Window/visible`` property.
    /// 
    public final func getPopup() -> Popup? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TabContainer.method_get_popup, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_to_rearrange_enabled")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_drag_to_rearrange_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_drag_to_rearrange_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag_to_rearrange_enabled")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_drag_to_rearrange_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_get_drag_to_rearrange_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tabs_rearrange_group")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tabs_rearrange_group(_ groupId: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: groupId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_tabs_rearrange_group, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tabs_rearrange_group")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tabs_rearrange_group() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabContainer.method_get_tabs_rearrange_group, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_hidden_tabs_for_min_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_hidden_tabs_for_min_size")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_hidden_tabs_for_min_size(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_use_hidden_tabs_for_min_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_hidden_tabs_for_min_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_hidden_tabs_for_min_size")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_hidden_tabs_for_min_size() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_get_use_hidden_tabs_for_min_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_tab_focus_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_focus_mode")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3232914922)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tab_focus_mode(_ focusMode: Control.FocusMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: focusMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_tab_focus_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_focus_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_focus_mode")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2132829277)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tab_focus_mode() -> Control.FocusMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TabContainer.method_get_tab_focus_mode, handle, nil, &_result)
        return Control.FocusMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_deselect_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_deselect_enabled")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_deselect_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabContainer.method_set_deselect_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_deselect_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_deselect_enabled")
        return withUnsafePointer(to: &TabContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_deselect_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabContainer.method_get_deselect_enabled, handle, nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the active tab is rearranged via mouse drag. See ``dragToRearrangeEnabled``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.activeTabRearranged.connect { idxTo in
    ///    print ("caught signal")
    /// }
    /// ```
    public var activeTabRearranged: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "active_tab_rearranged") }
    
    /// Emitted when switching to another tab.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.tabChanged.connect { tab in
    ///    print ("caught signal")
    /// }
    /// ```
    public var tabChanged: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "tab_changed") }
    
    /// Emitted when a tab is clicked, even if it is the current tab.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.tabClicked.connect { tab in
    ///    print ("caught signal")
    /// }
    /// ```
    public var tabClicked: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "tab_clicked") }
    
    /// Emitted when a tab is hovered by the mouse.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.tabHovered.connect { tab in
    ///    print ("caught signal")
    /// }
    /// ```
    public var tabHovered: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "tab_hovered") }
    
    /// Emitted when a tab is selected via click, directional input, or script, even if it is the current tab.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.tabSelected.connect { tab in
    ///    print ("caught signal")
    /// }
    /// ```
    public var tabSelected: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "tab_selected") }
    
    /// Emitted when the user clicks on the button icon on this tab.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.tabButtonPressed.connect { tab in
    ///    print ("caught signal")
    /// }
    /// ```
    public var tabButtonPressed: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "tab_button_pressed") }
    
    /// Emitted when the ``TabContainer``'s ``Popup`` button is clicked. See ``setPopup(_:)`` for details.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.prePopupPressed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var prePopupPressed: SimpleSignal { SimpleSignal (target: self, signalName: "pre_popup_pressed") }
    
}

