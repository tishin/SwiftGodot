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


/// A control that provides a horizontal bar with tabs.
/// 
/// A control that provides a horizontal bar with tabs. Similar to ``TabContainer`` but is only in charge of drawing tabs, not interacting with children.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``tabSelected``
/// - ``tabChanged``
/// - ``tabClicked``
/// - ``tabRmbClicked``
/// - ``tabClosePressed``
/// - ``tabButtonPressed``
/// - ``tabHovered``
/// - ``activeTabRearranged``
open class TabBar: Control {
    private static var className = StringName("TabBar")
    override open class var godotClassName: StringName { className }
    public enum AlignmentMode: Int64, CaseIterable {
        /// Places tabs to the left.
        case left = 0 // ALIGNMENT_LEFT
        /// Places tabs in the middle.
        case center = 1 // ALIGNMENT_CENTER
        /// Places tabs to the right.
        case right = 2 // ALIGNMENT_RIGHT
        /// Represents the size of the ``TabBar/AlignmentMode`` enum.
        case max = 3 // ALIGNMENT_MAX
    }
    
    public enum CloseButtonDisplayPolicy: Int64, CaseIterable {
        /// Never show the close buttons.
        case showNever = 0 // CLOSE_BUTTON_SHOW_NEVER
        /// Only show the close button on the currently active tab.
        case showActiveOnly = 1 // CLOSE_BUTTON_SHOW_ACTIVE_ONLY
        /// Show the close button on all tabs.
        case showAlways = 2 // CLOSE_BUTTON_SHOW_ALWAYS
        /// Represents the size of the ``TabBar/CloseButtonDisplayPolicy`` enum.
        case max = 3 // CLOSE_BUTTON_MAX
    }
    
    
    /* Properties */
    
    /// The index of the current selected tab. A value of `-1` means that no tab is selected and can only be set when ``deselectEnabled`` is `true` or if all tabs are hidden or disabled.
    final public var currentTab: Int32 {
        get {
            return get_current_tab ()
        }
        
        set {
            set_current_tab (newValue)
        }
        
    }
    
    /// Sets the position at which tabs will be placed. See ``TabBar/AlignmentMode`` for details.
    final public var tabAlignment: TabBar.AlignmentMode {
        get {
            return get_tab_alignment ()
        }
        
        set {
            set_tab_alignment (newValue)
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
    
    /// Sets when the close button will appear on the tabs. See ``TabBar/CloseButtonDisplayPolicy`` for details.
    final public var tabCloseDisplayPolicy: TabBar.CloseButtonDisplayPolicy {
        get {
            return get_tab_close_display_policy ()
        }
        
        set {
            set_tab_close_display_policy (newValue)
        }
        
    }
    
    /// Sets the maximum width which all tabs should be limited to. Unlimited if set to `0`.
    final public var maxTabWidth: Int32 {
        get {
            return get_max_tab_width ()
        }
        
        set {
            set_max_tab_width (newValue)
        }
        
    }
    
    /// if `true`, the mouse's scroll wheel can be used to navigate the scroll view.
    final public var scrollingEnabled: Bool {
        get {
            return get_scrolling_enabled ()
        }
        
        set {
            set_scrolling_enabled (newValue)
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
    
    /// ``TabBar``s with the same rearrange group ID will allow dragging the tabs between them. Enable drag with ``dragToRearrangeEnabled``.
    /// 
    /// Setting this to `-1` will disable rearranging between ``TabBar``s.
    /// 
    final public var tabsRearrangeGroup: Int32 {
        get {
            return get_tabs_rearrange_group ()
        }
        
        set {
            set_tabs_rearrange_group (newValue)
        }
        
    }
    
    /// If `true`, the tab offset will be changed to keep the currently selected tab visible.
    final public var scrollToSelected: Bool {
        get {
            return get_scroll_to_selected ()
        }
        
        set {
            set_scroll_to_selected (newValue)
        }
        
    }
    
    /// If `true`, enables selecting a tab with the right mouse button.
    final public var selectWithRmb: Bool {
        get {
            return get_select_with_rmb ()
        }
        
        set {
            set_select_with_rmb (newValue)
        }
        
    }
    
    /// If `true`, all tabs can be deselected so that no tab is selected. Click on the current tab to deselect it.
    final public var deselectEnabled: Bool {
        get {
            return get_deselect_enabled ()
        }
        
        set {
            set_deselect_enabled (newValue)
        }
        
    }
    
    /// The number of tabs currently in the bar.
    final public var tabCount: Int32 {
        get {
            return get_tab_count ()
        }
        
        set {
            set_tab_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_tab_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_count")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tab_count(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_set_tab_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_count")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tab_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabBar.method_get_tab_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_current_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_current_tab")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_set_current_tab, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_current_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_tab")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_current_tab() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabBar.method_get_current_tab, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_previous_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_previous_tab")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the previously active tab index.
    public final func getPreviousTab() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabBar.method_get_previous_tab, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_select_previous_available: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select_previous_available")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Selects the first available tab with lower index than the currently selected. Returns `true` if tab selection changed.
    public final func selectPreviousAvailable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_select_previous_available, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_select_next_available: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select_next_available")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Selects the first available tab with greater index than the currently selected. Returns `true` if tab selection changed.
    public final func selectNextAvailable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_select_next_available, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_tab_title: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_title")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a `title` for the tab at index `tabIdx`.
    public final func setTabTitle(tabIdx: Int32, title: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            let title = GString(title)
            withUnsafePointer(to: title.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_title, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_title: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_title")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the title of the tab at index `tabIdx`.
    public final func getTabTitle(tabIdx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_title, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_tab_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_tooltip")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a `tooltip` for tab at index `tabIdx`.
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
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_tooltip, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_tooltip")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_tooltip, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_tab_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_text_direction")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1707680378)!
            }
            
        }
        
    }()
    
    /// Sets tab title base writing direction.
    public final func setTabTextDirection(tabIdx: Int32, direction: Control.TextDirection) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: direction.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_text_direction, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_text_direction")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4235602388)!
            }
            
        }
        
    }()
    
    /// Returns tab title text base writing direction.
    public final func getTabTextDirection(tabIdx: Int32) -> Control.TextDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_text_direction, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_tab_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_language")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets language code of tab title used for line-breaking and text shaping algorithms, if left empty current locale is used instead.
    public final func setTabLanguage(tabIdx: Int32, language: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_language, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_language")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns tab title language code.
    public final func getTabLanguage(tabIdx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_language, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_tab_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_icon")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets an `icon` for the tab at index `tabIdx`.
    public final func setTabIcon(tabIdx: Int32, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_icon, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_icon")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the icon for the tab at index `tabIdx` or `null` if the tab has no icon.
    public final func getTabIcon(tabIdx: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_icon, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_tab_icon_max_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_icon_max_width")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_icon_max_width, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_icon_max_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_icon_max_width")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_icon_max_width, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tab_button_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_button_icon")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets an `icon` for the button of the tab at index `tabIdx` (located to the right, before the close button), making it visible and clickable (See [signal tab_button_pressed]). Giving it a `null` value will hide the button.
    public final func setTabButtonIcon(tabIdx: Int32, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_button_icon, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_button_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_button_icon")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the icon for the right button of the tab at index `tabIdx` or `null` if the right button has no icon.
    public final func getTabButtonIcon(tabIdx: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_button_icon, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_tab_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_disabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_disabled, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_tab_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_tab_disabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_is_tab_disabled, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tab_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_hidden")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_hidden, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_tab_hidden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_tab_hidden")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_is_tab_hidden, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tab_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_metadata")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                        gi.object_method_bind_ptrcall(TabBar.method_set_tab_metadata, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_metadata")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_metadata, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_remove_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_tab")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the tab at index `tabIdx`.
    public final func removeTab(tabIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_remove_tab, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_tab")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1465444425)!
            }
            
        }
        
    }()
    
    /// Adds a new tab.
    public final func addTab(title: String = "", icon: Texture2D? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let title = GString(title)
        withUnsafePointer(to: title.content) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabBar.method_add_tab, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_idx_at_point: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_idx_at_point")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_idx_at_point, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tab_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_alignment")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_set_tab_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_alignment")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2178122193)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tab_alignment() -> TabBar.AlignmentMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TabBar.method_get_tab_alignment, handle, nil, &_result)
        return TabBar.AlignmentMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_clip_tabs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_clip_tabs")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_set_clip_tabs, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_clip_tabs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_clip_tabs")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_clip_tabs() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_get_clip_tabs, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_tab_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_offset")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of hidden tabs offsetted to the left.
    public final func getTabOffset() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabBar.method_get_tab_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_offset_buttons_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset_buttons_visible")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the offset buttons (the ones that appear when there's not enough space for all tabs) are visible.
    public final func getOffsetButtonsVisible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_get_offset_buttons_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_ensure_tab_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("ensure_tab_visible")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Moves the scroll view to make the tab visible.
    public final func ensureTabVisible(idx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_ensure_tab_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_rect")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3327874267)!
            }
            
        }
        
    }()
    
    /// Returns tab ``Rect2`` with local position and size.
    public final func getTabRect(tabIdx: Int32) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: tabIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_get_tab_rect, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_move_tab: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_tab")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Moves a tab from `from` to `to`.
    public final func moveTab(from: Int32, to: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TabBar.method_move_tab, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_tab_close_display_policy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_close_display_policy")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2212906737)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tab_close_display_policy(_ policy: TabBar.CloseButtonDisplayPolicy) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: policy.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_set_tab_close_display_policy, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_close_display_policy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_close_display_policy")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2956568028)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tab_close_display_policy() -> TabBar.CloseButtonDisplayPolicy {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TabBar.method_get_tab_close_display_policy, handle, nil, &_result)
        return TabBar.CloseButtonDisplayPolicy (rawValue: _result)!
    }
    
    fileprivate static let method_set_max_tab_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_tab_width")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_tab_width(_ width: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_set_max_tab_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_tab_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_tab_width")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_tab_width() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabBar.method_get_max_tab_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_scrolling_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scrolling_enabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scrolling_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_set_scrolling_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scrolling_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scrolling_enabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scrolling_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_get_scrolling_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_to_rearrange_enabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_set_drag_to_rearrange_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_drag_to_rearrange_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_drag_to_rearrange_enabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_drag_to_rearrange_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_get_drag_to_rearrange_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tabs_rearrange_group")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_set_tabs_rearrange_group, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tabs_rearrange_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tabs_rearrange_group")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tabs_rearrange_group() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TabBar.method_get_tabs_rearrange_group, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_scroll_to_selected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scroll_to_selected")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scroll_to_selected(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_set_scroll_to_selected, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scroll_to_selected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scroll_to_selected")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scroll_to_selected() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_get_scroll_to_selected, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_select_with_rmb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_select_with_rmb")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_select_with_rmb(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TabBar.method_set_select_with_rmb, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_select_with_rmb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_select_with_rmb")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_select_with_rmb() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_get_select_with_rmb, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_deselect_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_deselect_enabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TabBar.method_set_deselect_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_deselect_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_deselect_enabled")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_deselect_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TabBar.method_get_deselect_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear_tabs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_tabs")
        return withUnsafePointer(to: &TabBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all tabs.
    public final func clearTabs() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TabBar.method_clear_tabs, handle, nil, nil)
        
    }
    
    // Signals 
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
    
    /// Emitted when a tab is right-clicked. ``selectWithRmb`` must be enabled.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.tabRmbClicked.connect { tab in
    ///    print ("caught signal")
    /// }
    /// ```
    public var tabRmbClicked: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "tab_rmb_clicked") }
    
    /// Emitted when a tab's close button is pressed.
    /// 
    /// > Note: Tabs are not removed automatically once the close button is pressed, this behavior needs to be programmed manually. For example:
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
    /// obj.tabClosePressed.connect { tab in
    ///    print ("caught signal")
    /// }
    /// ```
    public var tabClosePressed: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "tab_close_pressed") }
    
    /// Emitted when a tab's right button is pressed. See ``setTabButtonIcon(tabIdx:icon:)``.
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
    
}

