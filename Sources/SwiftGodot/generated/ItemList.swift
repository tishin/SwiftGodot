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


/// A vertical list of selectable items with one or multiple columns.
/// 
/// This control provides a vertical list of selectable items that may be in a single or in multiple columns, with each item having options for text and an icon. Tooltips are supported and may be different for every item in the list.
/// 
/// Selectable items in the list may be selected or deselected and multiple selection may be enabled. Selection with right mouse button may also be enabled to allow use of popup context menus. Items may also be "activated" by double-clicking them or by pressing [kbd]Enter[/kbd].
/// 
/// Item text only supports single-line strings. Newline characters (e.g. `\n`) in the string won't produce a newline. Text wrapping is enabled in ``IconMode/top`` mode, but the column's width is adjusted to fully fit its content by default. You need to set ``fixedColumnWidth`` greater than zero to wrap the text.
/// 
/// All `set_*` methods allow negative item indices, i.e. `-1` to access the last item, `-2` to select the second-to-last item, and so on.
/// 
/// **Incremental search:** Like ``PopupMenu`` and ``Tree``, ``ItemList`` supports searching within the list while the control is focused. Press a key that matches the first letter of an item's name to select the first item starting with the given letter. After that point, there are two ways to perform incremental search: 1) Press the same key again before the timeout duration to select the next item starting with the same letter. 2) Press letter keys that match the rest of the word before the timeout duration to match to select the item in question directly. Both of these actions will be reset to the beginning of the list if the timeout duration has passed since the last keystroke was registered. You can adjust the timeout duration by changing ``ProjectSettings/gui/timers/incrementalSearchMaxIntervalMsec``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``itemSelected``
/// - ``emptyClicked``
/// - ``itemClicked``
/// - ``multiSelected``
/// - ``itemActivated``
open class ItemList: Control {
    private static var className = StringName("ItemList")
    override open class var godotClassName: StringName { className }
    public enum IconMode: Int64, CaseIterable {
        /// Icon is drawn above the text.
        case top = 0 // ICON_MODE_TOP
        /// Icon is drawn to the left of the text.
        case left = 1 // ICON_MODE_LEFT
    }
    
    public enum SelectMode: Int64, CaseIterable {
        /// Only allow selecting a single item.
        case single = 0 // SELECT_SINGLE
        /// Allows selecting multiple items by holding [kbd]Ctrl[/kbd] or [kbd]Shift[/kbd].
        case multi = 1 // SELECT_MULTI
        /// Allows selecting multiple items by toggling them on and off.
        case toggle = 2 // SELECT_TOGGLE
    }
    
    
    /* Properties */
    
    /// Allows single or multiple item selection. See the ``ItemList/SelectMode`` constants.
    final public var selectMode: ItemList.SelectMode {
        get {
            return get_select_mode ()
        }
        
        set {
            set_select_mode (newValue)
        }
        
    }
    
    /// If `true`, the currently selected item can be selected again.
    final public var allowReselect: Bool {
        get {
            return get_allow_reselect ()
        }
        
        set {
            set_allow_reselect (newValue)
        }
        
    }
    
    /// If `true`, right mouse button click can select items.
    final public var allowRmbSelect: Bool {
        get {
            return get_allow_rmb_select ()
        }
        
        set {
            set_allow_rmb_select (newValue)
        }
        
    }
    
    /// If `true`, allows navigating the ``ItemList`` with letter keys through incremental search.
    final public var allowSearch: Bool {
        get {
            return get_allow_search ()
        }
        
        set {
            set_allow_search (newValue)
        }
        
    }
    
    /// Maximum lines of text allowed in each item. Space will be reserved even when there is not enough lines of text to display.
    /// 
    /// > Note: This property takes effect only when ``iconMode`` is ``IconMode/top``. To make the text wrap, ``fixedColumnWidth`` should be greater than zero.
    /// 
    final public var maxTextLines: Int32 {
        get {
            return get_max_text_lines ()
        }
        
        set {
            set_max_text_lines (newValue)
        }
        
    }
    
    /// If `true`, the control will automatically resize the width to fit its content.
    final public var autoWidth: Bool {
        get {
            return has_auto_width ()
        }
        
        set {
            set_auto_width (newValue)
        }
        
    }
    
    /// If `true`, the control will automatically resize the height to fit its content.
    final public var autoHeight: Bool {
        get {
            return has_auto_height ()
        }
        
        set {
            set_auto_height (newValue)
        }
        
    }
    
    /// Sets the clipping behavior when the text exceeds an item's bounding rectangle. See ``TextServer.OverrunBehavior`` for a description of all modes.
    final public var textOverrunBehavior: TextServer.OverrunBehavior {
        get {
            return get_text_overrun_behavior ()
        }
        
        set {
            set_text_overrun_behavior (newValue)
        }
        
    }
    
    /// If `true`, the control will automatically move items into a new row to fit its content. See also ``HFlowContainer`` for this behavior.
    /// 
    /// If `false`, the control will add a horizontal scrollbar to make all items visible.
    /// 
    final public var wraparoundItems: Bool {
        get {
            return has_wraparound_items ()
        }
        
        set {
            set_wraparound_items (newValue)
        }
        
    }
    
    /// The number of items currently in the list.
    final public var itemCount: Int32 {
        get {
            return get_item_count ()
        }
        
        set {
            set_item_count (newValue)
        }
        
    }
    
    /// Maximum columns the list will have.
    /// 
    /// If greater than zero, the content will be split among the specified columns.
    /// 
    /// A value of zero means unlimited columns, i.e. all items will be put in the same row.
    /// 
    final public var maxColumns: Int32 {
        get {
            return get_max_columns ()
        }
        
        set {
            set_max_columns (newValue)
        }
        
    }
    
    /// Whether all columns will have the same width.
    /// 
    /// If `true`, the width is equal to the largest column width of all columns.
    /// 
    final public var sameColumnWidth: Bool {
        get {
            return is_same_column_width ()
        }
        
        set {
            set_same_column_width (newValue)
        }
        
    }
    
    /// The width all columns will be adjusted to.
    /// 
    /// A value of zero disables the adjustment, each item will have a width equal to the width of its content and the columns will have an uneven width.
    /// 
    final public var fixedColumnWidth: Int32 {
        get {
            return get_fixed_column_width ()
        }
        
        set {
            set_fixed_column_width (newValue)
        }
        
    }
    
    /// The icon position, whether above or to the left of the text. See the ``ItemList/IconMode`` constants.
    final public var iconMode: ItemList.IconMode {
        get {
            return get_icon_mode ()
        }
        
        set {
            set_icon_mode (newValue)
        }
        
    }
    
    /// The scale of icon applied after ``fixedIconSize`` and transposing takes effect.
    final public var iconScale: Double {
        get {
            return get_icon_scale ()
        }
        
        set {
            set_icon_scale (newValue)
        }
        
    }
    
    /// The size all icons will be adjusted to.
    /// 
    /// If either X or Y component is not greater than zero, icon size won't be affected.
    /// 
    final public var fixedIconSize: Vector2i {
        get {
            return get_fixed_icon_size ()
        }
        
        set {
            set_fixed_icon_size (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_add_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_item")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 359861678)!
            }
            
        }
        
    }()
    
    /// Adds an item to the item list with specified text. Returns the index of an added item.
    /// 
    /// Specify an `icon`, or use `null` as the `icon` for a list item with no icon.
    /// 
    /// If `selectable` is `true`, the list item will be selectable.
    /// 
    public final func addItem(text: String, icon: Texture2D? = nil, selectable: Bool = true) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: selectable) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ItemList.method_add_item, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_icon_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_icon_item")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4256579627)!
            }
            
        }
        
    }()
    
    /// Adds an item to the item list with no text, only an icon. Returns the index of an added item.
    public final func addIconItem(icon: Texture2D?, selectable: Bool = true) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: icon?.handle) { pArg0 in
            withUnsafePointer(to: selectable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_add_icon_item, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_text")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets text of the item associated with the specified index.
    public final func setItemText(idx: Int32, text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            let text = GString(text)
            withUnsafePointer(to: text.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_text, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_text")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the text associated with the specified index.
    public final func getItemText(idx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_text, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_item_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_icon")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets (or replaces) the icon's ``Texture2D`` associated with the specified index.
    public final func setItemIcon(idx: Int32, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: icon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_icon, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_icon")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the icon associated with the specified index.
    public final func getItemIcon(idx: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_icon, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_item_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_text_direction")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1707680378)!
            }
            
        }
        
    }()
    
    /// Sets item's text base writing direction.
    public final func setItemTextDirection(idx: Int32, direction: Control.TextDirection) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: direction.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_text_direction, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_text_direction")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4235602388)!
            }
            
        }
        
    }()
    
    /// Returns item's text base writing direction.
    public final func getItemTextDirection(idx: Int32) -> Control.TextDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_text_direction, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_item_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_language")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets language code of item's text used for line-breaking and text shaping algorithms, if left empty current locale is used instead.
    public final func setItemLanguage(idx: Int32, language: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_language, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_language")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns item's text language code.
    public final func getItemLanguage(idx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_language, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_item_auto_translate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_auto_translate_mode")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 287402019)!
            }
            
        }
        
    }()
    
    /// Sets the auto translate mode of the item associated with the specified index.
    /// 
    /// Items use ``Node/AutoTranslateMode/inherit`` by default, which uses the same auto translate mode as the ``ItemList`` itself.
    /// 
    public final func setItemAutoTranslateMode(idx: Int32, mode: Node.AutoTranslateMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_auto_translate_mode, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_auto_translate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_auto_translate_mode")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 906302372)!
            }
            
        }
        
    }()
    
    /// Returns item's auto translate mode.
    public final func getItemAutoTranslateMode(idx: Int32) -> Node.AutoTranslateMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_auto_translate_mode, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Node.AutoTranslateMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_item_icon_transposed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_icon_transposed")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets whether the item icon will be drawn transposed.
    public final func setItemIconTransposed(idx: Int32, transposed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: transposed) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_icon_transposed, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_item_icon_transposed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_item_icon_transposed")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the item icon will be drawn transposed, i.e. the X and Y axes are swapped.
    public final func isItemIconTransposed(idx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_is_item_icon_transposed, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_icon_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_icon_region")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1356297692)!
            }
            
        }
        
    }()
    
    /// Sets the region of item's icon used. The whole icon will be used if the region has no area.
    public final func setItemIconRegion(idx: Int32, rect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_icon_region, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_icon_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_icon_region")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3327874267)!
            }
            
        }
        
    }()
    
    /// Returns the region of item's icon used. The whole icon will be used if the region has no area.
    public final func getItemIconRegion(idx: Int32) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_icon_region, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_icon_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_icon_modulate")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets a modulating ``Color`` of the item associated with the specified index.
    public final func setItemIconModulate(idx: Int32, modulate: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: modulate) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_icon_modulate, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_icon_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_icon_modulate")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns a ``Color`` modulating item's icon at the specified index.
    public final func getItemIconModulate(idx: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_icon_modulate, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_selectable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_selectable")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Allows or disallows selection of the item associated with the specified index.
    public final func setItemSelectable(idx: Int32, selectable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: selectable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_selectable, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_item_selectable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_item_selectable")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the item at the specified index is selectable.
    public final func isItemSelectable(idx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_is_item_selectable, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_disabled")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Disables (or enables) the item at the specified index.
    /// 
    /// Disabled items cannot be selected and do not trigger activation signals (when double-clicking or pressing [kbd]Enter[/kbd]).
    /// 
    public final func setItemDisabled(idx: Int32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: disabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_disabled, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_item_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_item_disabled")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the item at the specified index is disabled.
    public final func isItemDisabled(idx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_is_item_disabled, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_metadata")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2152698145)!
            }
            
        }
        
    }()
    
    /// Sets a value (of any type) to be stored with the item associated with the specified index.
    public final func setItemMetadata(idx: Int32, metadata: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: metadata.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_metadata, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_metadata")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4227898402)!
            }
            
        }
        
    }()
    
    /// Returns the metadata value of the specified index.
    public final func getItemMetadata(idx: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_metadata, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_item_custom_bg_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_custom_bg_color")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets the background color of the item specified by `idx` index to the specified ``Color``.
    public final func setItemCustomBgColor(idx: Int32, customBgColor: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: customBgColor) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_custom_bg_color, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_custom_bg_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_custom_bg_color")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns the custom background color of the item specified by `idx` index.
    public final func getItemCustomBgColor(idx: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_custom_bg_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_custom_fg_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_custom_fg_color")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets the foreground color of the item specified by `idx` index to the specified ``Color``.
    public final func setItemCustomFgColor(idx: Int32, customFgColor: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: customFgColor) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_custom_fg_color, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_custom_fg_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_custom_fg_color")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns the custom foreground color of the item specified by `idx` index.
    public final func getItemCustomFgColor(idx: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_custom_fg_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_item_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_rect")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 159227807)!
            }
            
        }
        
    }()
    
    /// Returns the position and size of the item with the specified index, in the coordinate system of the ``ItemList`` node. If `expand` is `true` the last column expands to fill the rest of the row.
    /// 
    /// > Note: The returned value is unreliable if called right after modifying the ``ItemList``, before it redraws in the next frame.
    /// 
    public final func getItemRect(idx: Int32, expand: Bool = true) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: expand) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_get_item_rect, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_tooltip_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_tooltip_enabled")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets whether the tooltip hint is enabled for specified item index.
    public final func setItemTooltipEnabled(idx: Int32, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_tooltip_enabled, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_item_tooltip_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_item_tooltip_enabled")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the tooltip is enabled for specified item index.
    public final func isItemTooltipEnabled(idx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_is_item_tooltip_enabled, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_item_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_tooltip")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the tooltip hint for the item associated with the specified index.
    public final func setItemTooltip(idx: Int32, tooltip: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            let tooltip = GString(tooltip)
            withUnsafePointer(to: tooltip.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_set_item_tooltip, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_tooltip: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_tooltip")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the tooltip hint associated with the specified index.
    public final func getItemTooltip(idx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_get_item_tooltip, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_select: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 972357352)!
            }
            
        }
        
    }()
    
    /// Select the item at the specified index.
    /// 
    /// > Note: This method does not trigger the item selection signal.
    /// 
    public final func select(idx: Int32, single: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: single) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_select, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_deselect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deselect")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Ensures the item associated with the specified index is not selected.
    public final func deselect(idx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_deselect, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_deselect_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deselect_all")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Ensures there are no items selected.
    public final func deselectAll() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ItemList.method_deselect_all, handle, nil, nil)
        
    }
    
    fileprivate static let method_is_selected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_selected")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the item at the specified index is currently selected.
    public final func isSelected(idx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_is_selected, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_selected_items: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_items")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    /// Returns an array with the indexes of the selected items.
    public final func getSelectedItems() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(ItemList.method_get_selected_items, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_move_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_item")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Moves item from index `fromIdx` to `toIdx`.
    public final func moveItem(fromIdx: Int32, toIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromIdx) { pArg0 in
            withUnsafePointer(to: toIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_move_item, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_item_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_item_count")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_item_count(_ count: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_item_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_item_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_count")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_item_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ItemList.method_get_item_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_remove_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_item")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the item specified by `idx` index from the list.
    public final func removeItem(idx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_remove_item, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all items from the list.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ItemList.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_sort_items_by_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("sort_items_by_text")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Sorts items in the list by their text.
    public final func sortItemsByText() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ItemList.method_sort_items_by_text, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_fixed_column_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fixed_column_width")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fixed_column_width(_ width: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_fixed_column_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fixed_column_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fixed_column_width")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fixed_column_width() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ItemList.method_get_fixed_column_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_same_column_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_same_column_width")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_same_column_width(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_same_column_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_same_column_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_same_column_width")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_same_column_width() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_is_same_column_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_text_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_text_lines")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_text_lines(_ lines: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lines) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_max_text_lines, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_text_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_text_lines")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_text_lines() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ItemList.method_get_max_text_lines, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_columns: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_columns")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_columns(_ amount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_max_columns, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_columns: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_columns")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_columns() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ItemList.method_get_max_columns, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_select_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_select_mode")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 928267388)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_select_mode(_ mode: ItemList.SelectMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_select_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_select_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_select_mode")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1191945842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_select_mode() -> ItemList.SelectMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ItemList.method_get_select_mode, handle, nil, &_result)
        return ItemList.SelectMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_icon_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_icon_mode")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2025053633)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_icon_mode(_ mode: ItemList.IconMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_icon_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_icon_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_icon_mode")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3353929232)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_icon_mode() -> ItemList.IconMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ItemList.method_get_icon_mode, handle, nil, &_result)
        return ItemList.IconMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_fixed_icon_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fixed_icon_size")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fixed_icon_size(_ size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_fixed_icon_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fixed_icon_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fixed_icon_size")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fixed_icon_size() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(ItemList.method_get_fixed_icon_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_icon_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_icon_scale")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_icon_scale(_ scale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_icon_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_icon_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_icon_scale")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_icon_scale() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ItemList.method_get_icon_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_allow_rmb_select: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_rmb_select")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_rmb_select(_ allow: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: allow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_allow_rmb_select, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_allow_rmb_select: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_allow_rmb_select")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_allow_rmb_select() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_get_allow_rmb_select, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_allow_reselect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_reselect")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_reselect(_ allow: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: allow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_allow_reselect, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_allow_reselect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_allow_reselect")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_allow_reselect() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_get_allow_reselect, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_allow_search: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_search")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_search(_ allow: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: allow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_allow_search, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_allow_search: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_allow_search")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_allow_search() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_get_allow_search, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_auto_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_width")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_width(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_auto_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_auto_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_auto_width")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_auto_width() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_has_auto_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_auto_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_height")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_height(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_auto_height, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_auto_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_auto_height")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_auto_height() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_has_auto_height, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_anything_selected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_anything_selected")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if one or more items are selected.
    public final func isAnythingSelected() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_is_anything_selected, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_item_at_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_item_at_position")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2300324924)!
            }
            
        }
        
    }()
    
    /// Returns the item index at the given `position`.
    /// 
    /// When there is no item at that point, -1 will be returned if `exact` is `true`, and the closest item index will be returned otherwise.
    /// 
    /// > Note: The returned value is unreliable if called right after modifying the ``ItemList``, before it redraws in the next frame.
    /// 
    public final func getItemAtPosition(_ position: Vector2, exact: Bool = false) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: exact) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ItemList.method_get_item_at_position, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_ensure_current_is_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("ensure_current_is_visible")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Ensure current selection is visible, adjusting the scroll position as necessary.
    public final func ensureCurrentIsVisible() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ItemList.method_ensure_current_is_visible, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_v_scroll_bar: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_v_scroll_bar")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2630340773)!
            }
            
        }
        
    }()
    
    /// Returns the vertical scrollbar.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getVScrollBar() -> VScrollBar? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ItemList.method_get_v_scroll_bar, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_h_scroll_bar: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_h_scroll_bar")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4004517983)!
            }
            
        }
        
    }()
    
    /// Returns the horizontal scrollbar.
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``CanvasItem/visible`` property.
    /// 
    public final func getHScrollBar() -> HScrollBar? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ItemList.method_get_h_scroll_bar, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_overrun_behavior")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1008890932)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text_overrun_behavior(_ overrunBehavior: TextServer.OverrunBehavior) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: overrunBehavior.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_text_overrun_behavior, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_overrun_behavior")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3779142101)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_overrun_behavior() -> TextServer.OverrunBehavior {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ItemList.method_get_text_overrun_behavior, handle, nil, &_result)
        return TextServer.OverrunBehavior (rawValue: _result)!
    }
    
    fileprivate static let method_set_wraparound_items: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_wraparound_items")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_wraparound_items(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ItemList.method_set_wraparound_items, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_wraparound_items: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_wraparound_items")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_wraparound_items() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ItemList.method_has_wraparound_items, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_force_update_list_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("force_update_list_size")
        return withUnsafePointer(to: &ItemList.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces an update to the list size based on its items. This happens automatically whenever size of the items, or other relevant settings like ``autoHeight``, change. The method can be used to trigger the update ahead of next drawing pass.
    public final func forceUpdateListSize() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ItemList.method_force_update_list_size, handle, nil, nil)
        
    }
    
    // Signals 
    /// Emitted when specified item has been selected. Only applicable in single selection mode.
    /// 
    /// ``allowReselect`` must be enabled to reselect an item.
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
    /// obj.itemSelected.connect { index in
    ///    print ("caught signal")
    /// }
    /// ```
    public var itemSelected: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "item_selected") }
    
    /// Emitted when any mouse click is issued within the rect of the list but on empty space.
    /// 
    /// `atPosition` is the click position in this control's local coordinate system.
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
    /// obj.emptyClicked.connect { atPosition, mouseButtonIndex in
    ///    print ("caught signal")
    /// }
    /// ```
    public var emptyClicked: SignalWithArguments<Vector2, Int64> { SignalWithArguments<Vector2, Int64> (target: self, signalName: "empty_clicked") }
    
    /// Emitted when specified list item has been clicked with any mouse button.
    /// 
    /// `atPosition` is the click position in this control's local coordinate system.
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
    /// obj.itemClicked.connect { index, atPosition, mouseButtonIndex in
    ///    print ("caught signal")
    /// }
    /// ```
    public var itemClicked: SignalWithArguments<Int64, Vector2, Int64> { SignalWithArguments<Int64, Vector2, Int64> (target: self, signalName: "item_clicked") }
    
    /// Emitted when a multiple selection is altered on a list allowing multiple selection.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.multiSelected.connect { index, selected in
    ///    print ("caught signal")
    /// }
    /// ```
    public var multiSelected: SignalWithArguments<Int64, Bool> { SignalWithArguments<Int64, Bool> (target: self, signalName: "multi_selected") }
    
    /// Emitted when specified list item is activated via double-clicking or by pressing [kbd]Enter[/kbd].
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.itemActivated.connect { index in
    ///    print ("caught signal")
    /// }
    /// ```
    public var itemActivated: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "item_activated") }
    
}

