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


/// An internal control for a single item inside ``Tree``.
/// 
/// A single item of a ``Tree`` control. It can contain other ``TreeItem``s as children, which allows it to create a hierarchy. It can also contain text and buttons. ``TreeItem`` is not a ``Node``, it is internal to the ``Tree``.
/// 
/// To create a ``TreeItem``, use ``Tree/createItem(parent:index:)`` or ``TreeItem/createChild(index:)``. To remove a ``TreeItem``, use ``Object/free()``.
/// 
/// > Note: The ID values used for buttons are 32-bit, unlike integer which is always 64-bit. They go from `-2147483648` to `2147483647`.
/// 
open class TreeItem: Object {
    private static var className = StringName("TreeItem")
    override open class var godotClassName: StringName { className }
    public enum TreeCellMode: Int64, CaseIterable {
        /// Cell shows a string label, optionally with an icon. When editable, the text can be edited using a ``LineEdit``, or a ``TextEdit`` popup if ``setEditMultiline(column:multiline:)`` is used.
        case string = 0 // CELL_MODE_STRING
        /// Cell shows a checkbox, optionally with text and an icon. The checkbox can be pressed, released, or indeterminate (via ``setIndeterminate(column:indeterminate:)``). The checkbox can't be clicked unless the cell is editable.
        case check = 1 // CELL_MODE_CHECK
        /// Cell shows a numeric range. When editable, it can be edited using a range slider. Use ``setRange(column:value:)`` to set the value and ``setRangeConfig(column:min:max:step:expr:)`` to configure the range.
        /// 
        /// This cell can also be used in a text dropdown mode when you assign a text with ``setText(column:text:)``. Separate options with a comma, e.g. `"Option1,Option2,Option3"`.
        /// 
        case range = 2 // CELL_MODE_RANGE
        /// Cell shows an icon. It can't be edited nor display text. The icon is always centered within the cell.
        case icon = 3 // CELL_MODE_ICON
        /// Cell shows as a clickable button. It will display an arrow similar to ``OptionButton``, but doesn't feature a dropdown (for that you can use ``TreeCellMode/range``). Clicking the button emits the [signal Tree.item_edited] signal. The button is flat by default, you can use ``setCustomAsButton(column:enable:)`` to display it with a ``StyleBox``.
        /// 
        /// This mode also supports custom drawing using ``setCustomDrawCallback(column:callback:)``.
        /// 
        case custom = 4 // CELL_MODE_CUSTOM
    }
    
    
    /* Properties */
    
    /// If `true`, the TreeItem is collapsed.
    final public var collapsed: Bool {
        get {
            return is_collapsed ()
        }
        
        set {
            set_collapsed (newValue)
        }
        
    }
    
    /// If `true`, the ``TreeItem`` is visible (default).
    /// 
    /// Note that if a ``TreeItem`` is set to not be visible, none of its children will be visible either.
    /// 
    final public var visible: Bool {
        get {
            return is_visible ()
        }
        
        set {
            set_visible (newValue)
        }
        
    }
    
    /// If `true`, folding is disabled for this TreeItem.
    final public var disableFolding: Bool {
        get {
            return is_folding_disabled ()
        }
        
        set {
            set_disable_folding (newValue)
        }
        
    }
    
    /// The custom minimum height.
    final public var customMinimumHeight: Int32 {
        get {
            return get_custom_minimum_height ()
        }
        
        set {
            set_custom_minimum_height (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_cell_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cell_mode")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 289920701)!
            }
            
        }
        
    }()
    
    /// Sets the given column's cell mode to `mode`. This determines how the cell is displayed and edited. See ``TreeItem/TreeCellMode`` constants for details.
    public final func setCellMode(column: Int32, mode: TreeItem.TreeCellMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_cell_mode, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cell_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cell_mode")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3406114978)!
            }
            
        }
        
    }()
    
    /// Returns the column's cell mode.
    public final func getCellMode(column: Int32) -> TreeItem.TreeCellMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_cell_mode, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TreeItem.TreeCellMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_auto_translate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_translate_mode")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 287402019)!
            }
            
        }
        
    }()
    
    /// Sets the given column's auto translate mode to `mode`.
    /// 
    /// All columns use ``Node/AutoTranslateMode/inherit`` by default, which uses the same auto translate mode as the ``Tree`` itself.
    /// 
    public final func setAutoTranslateMode(column: Int32, mode: Node.AutoTranslateMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_auto_translate_mode, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_auto_translate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_translate_mode")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 906302372)!
            }
            
        }
        
    }()
    
    /// Returns the column's auto translate mode.
    public final func getAutoTranslateMode(column: Int32) -> Node.AutoTranslateMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_auto_translate_mode, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Node.AutoTranslateMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_edit_multiline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_edit_multiline")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `multiline` is `true`, the given `column` is multiline editable.
    /// 
    /// > Note: This option only affects the type of control (``LineEdit`` or ``TextEdit``) that appears when editing the column. You can set multiline values with ``setText(column:text:)`` even if the column is not multiline editable.
    /// 
    public final func setEditMultiline(column: Int32, multiline: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: multiline) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_edit_multiline, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_edit_multiline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_edit_multiline")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `column` is multiline editable.
    public final func isEditMultiline(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_edit_multiline, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_checked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_checked")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `checked` is `true`, the given `column` is checked. Clears column's indeterminate status.
    public final func setChecked(column: Int32, checked: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: checked) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_checked, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_indeterminate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_indeterminate")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `indeterminate` is `true`, the given `column` is marked indeterminate.
    /// 
    /// > Note: If set `true` from `false`, then column is cleared of checked status.
    /// 
    public final func setIndeterminate(column: Int32, indeterminate: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: indeterminate) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_indeterminate, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_checked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_checked")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `column` is checked.
    public final func isChecked(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_checked, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_indeterminate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_indeterminate")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `column` is indeterminate.
    public final func isIndeterminate(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_indeterminate, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_propagate_check: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("propagate_check")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 972357352)!
            }
            
        }
        
    }()
    
    /// Propagates this item's checked status to its children and parents for the given `column`. It is possible to process the items affected by this method call by connecting to [signal Tree.check_propagated_to_item]. The order that the items affected will be processed is as follows: the item invoking this method, children of that item, and finally parents of that item. If `emitSignal` is `false`, then [signal Tree.check_propagated_to_item] will not be emitted.
    public final func propagateCheck(column: Int32, emitSignal: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: emitSignal) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_propagate_check, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the given column's text value.
    public final func setText(column: Int32, text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            let text = GString(text)
            withUnsafePointer(to: text.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_text, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the given column's text.
    public final func getText(column: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_text, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_direction")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1707680378)!
            }
            
        }
        
    }()
    
    /// Sets item's text base writing direction.
    public final func setTextDirection(column: Int32, direction: Control.TextDirection) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: direction.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_text_direction, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_direction")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4235602388)!
            }
            
        }
        
    }()
    
    /// Returns item's text base writing direction.
    public final func getTextDirection(column: Int32) -> Control.TextDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_text_direction, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autowrap_mode")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3633006561)!
            }
            
        }
        
    }()
    
    /// Sets the autowrap mode in the given `column`. If set to something other than ``TextServer/AutowrapMode/off``, the text gets wrapped inside the cell's bounding rectangle.
    public final func setAutowrapMode(column: Int32, autowrapMode: TextServer.AutowrapMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: autowrapMode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_autowrap_mode, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_autowrap_mode")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2902757236)!
            }
            
        }
        
    }()
    
    /// Returns the text autowrap mode in the given `column`. By default it is ``TextServer/AutowrapMode/off``.
    public final func getAutowrapMode(column: Int32) -> TextServer.AutowrapMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_autowrap_mode, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.AutowrapMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_overrun_behavior")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1940772195)!
            }
            
        }
        
    }()
    
    /// Sets the clipping behavior when the text exceeds the item's bounding rectangle in the given `column`.
    public final func setTextOverrunBehavior(column: Int32, overrunBehavior: TextServer.OverrunBehavior) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: overrunBehavior.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_text_overrun_behavior, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_overrun_behavior: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_overrun_behavior")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3782727860)!
            }
            
        }
        
    }()
    
    /// Returns the clipping behavior when the text exceeds the item's bounding rectangle in the given `column`. By default it is ``TextServer/OverrunBehavior/trimEllipsis``.
    public final func getTextOverrunBehavior(column: Int32) -> TextServer.OverrunBehavior {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_text_overrun_behavior, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.OverrunBehavior (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 868756907)!
            }
            
        }
        
    }()
    
    /// Set BiDi algorithm override for the structured text. Has effect for cells that display text.
    public final func setStructuredTextBidiOverride(column: Int32, parser: TextServer.StructuredTextParser) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: parser.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_structured_text_bidi_override, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3377823772)!
            }
            
        }
        
    }()
    
    /// Returns the BiDi algorithm override set for this cell.
    public final func getStructuredTextBidiOverride(column: Int32) -> TextServer.StructuredTextParser {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_structured_text_bidi_override, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.StructuredTextParser (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override_options")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 537221740)!
            }
            
        }
        
    }()
    
    /// Set additional options for BiDi override. Has effect for cells that display text.
    public final func setStructuredTextBidiOverrideOptions(column: Int32, args: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: args.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_structured_text_bidi_override_options, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override_options")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 663333327)!
            }
            
        }
        
    }()
    
    /// Returns the additional BiDi options set for this cell.
    public final func getStructuredTextBidiOverrideOptions(column: Int32) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_structured_text_bidi_override_options, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_language")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets language code of item's text used for line-breaking and text shaping algorithms, if left empty current locale is used instead.
    public final func setLanguage(column: Int32, language: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_language, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_language")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns item's text language code.
    public final func getLanguage(column: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_language, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_suffix")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets a string to be shown after a column's value (for example, a unit abbreviation).
    public final func setSuffix(column: Int32, text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            let text = GString(text)
            withUnsafePointer(to: text.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_suffix, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_suffix")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Gets the suffix string shown after the column value.
    public final func getSuffix(column: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_suffix, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_icon")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets the given cell's icon ``Texture2D``. If the cell is in ``TreeCellMode/icon`` mode, the icon is displayed in the center of the cell. Otherwise, the icon is displayed before the cell's text. ``TreeCellMode/range`` does not display an icon.
    public final func setIcon(column: Int32, texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_icon, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_icon")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the given column's icon ``Texture2D``. Error if no icon is set.
    public final func getIcon(column: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_icon, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_icon_overlay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_icon_overlay")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 666127730)!
            }
            
        }
        
    }()
    
    /// Sets the given cell's icon overlay ``Texture2D``. The cell has to be in ``TreeCellMode/icon`` mode, and icon has to be set. Overlay is drawn on top of icon, in the bottom left corner.
    public final func setIconOverlay(column: Int32, texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_icon_overlay, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_icon_overlay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_icon_overlay")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3536238170)!
            }
            
        }
        
    }()
    
    /// Returns the given column's icon overlay ``Texture2D``.
    public final func getIconOverlay(column: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_icon_overlay, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_icon_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_icon_region")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1356297692)!
            }
            
        }
        
    }()
    
    /// Sets the given column's icon's texture region.
    public final func setIconRegion(column: Int32, region: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: region) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_icon_region, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_icon_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_icon_region")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3327874267)!
            }
            
        }
        
    }()
    
    /// Returns the icon ``Texture2D`` region as ``Rect2``.
    public final func getIconRegion(column: Int32) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_icon_region, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_icon_max_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_icon_max_width")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the maximum allowed width of the icon in the given `column`. This limit is applied on top of the default size of the icon and on top of [theme_item Tree.icon_max_width]. The height is adjusted according to the icon's ratio.
    public final func setIconMaxWidth(column: Int32, width: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: width) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_icon_max_width, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_icon_max_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_icon_max_width")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the maximum allowed width of the icon in the given `column`.
    public final func getIconMaxWidth(column: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_icon_max_width, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_icon_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_icon_modulate")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Modulates the given column's icon with `modulate`.
    public final func setIconModulate(column: Int32, modulate: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: modulate) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_icon_modulate, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_icon_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_icon_modulate")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns the ``Color`` modulating the column's icon.
    public final func getIconModulate(column: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_icon_modulate, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_range")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the value of a ``TreeCellMode/range`` column.
    public final func setRange(column: Int32, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: value) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_range, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_range")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the value of a ``TreeCellMode/range`` column.
    public final func getRange(column: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_range, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_range_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_range_config")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1547181014)!
            }
            
        }
        
    }()
    
    /// Sets the range of accepted values for a column. The column must be in the ``TreeCellMode/range`` mode.
    /// 
    /// If `expr` is `true`, the edit mode slider will use an exponential scale as with ``Range/expEdit``.
    /// 
    public final func setRangeConfig(column: Int32, min: Double, max: Double, step: Double, expr: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: min) { pArg1 in
                withUnsafePointer(to: max) { pArg2 in
                    withUnsafePointer(to: step) { pArg3 in
                        withUnsafePointer(to: expr) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TreeItem.method_set_range_config, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_range_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_range_config")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3554694381)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary containing the range parameters for a given column. The keys are "min", "max", "step", and "expr".
    public final func getRangeConfig(column: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_range_config, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_metadata")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2152698145)!
            }
            
        }
        
    }()
    
    /// Sets the metadata value for the given column, which can be retrieved later using ``getMetadata(column:)``. This can be used, for example, to store a reference to the original data.
    public final func setMetadata(column: Int32, meta: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: meta.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_metadata, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_metadata")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4227898402)!
            }
            
        }
        
    }()
    
    /// Returns the metadata value that was set for the given column using ``setMetadata(column:meta:)``.
    public final func getMetadata(column: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_metadata, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_custom_draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_draw")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 272420368)!
            }
            
        }
        
    }()
    
    /// Sets the given column's custom draw callback to the `callback` method on `object`.
    /// 
    /// The method named `callback` should accept two arguments: the ``TreeItem`` that is drawn and its position and size as a ``Rect2``.
    /// 
    public final func setCustomDraw(column: Int32, object: Object?, callback: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: object?.handle) { pArg1 in
                withUnsafePointer(to: callback.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TreeItem.method_set_custom_draw, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_custom_draw_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_draw_callback")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 957362965)!
            }
            
        }
        
    }()
    
    /// Sets the given column's custom draw callback. Use an empty ``Callable`` ([code skip-lint]Callable()`) to clear the custom callback. The cell has to be in ``TreeCellMode/custom`` to use this feature.
    /// 
    /// The `callback` should accept two arguments: the ``TreeItem`` that is drawn and its position and size as a ``Rect2``.
    /// 
    public final func setCustomDrawCallback(column: Int32, callback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_custom_draw_callback, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_draw_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_draw_callback")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1317077508)!
            }
            
        }
        
    }()
    
    /// Returns the custom callback of column `column`.
    public final func getCustomDrawCallback(column: Int32) -> Callable {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: Callable = Callable ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_custom_draw_callback, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collapsed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collapsed")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collapsed(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_set_collapsed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collapsed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collapsed")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collapsed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TreeItem.method_is_collapsed, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_collapsed_recursive: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collapsed_recursive")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Collapses or uncollapses this ``TreeItem`` and all the descendants of this item.
    public final func setCollapsedRecursive(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_set_collapsed_recursive, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_any_collapsed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_any_collapsed")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2595650253)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this ``TreeItem``, or any of its descendants, is collapsed.
    /// 
    /// If `onlyVisible` is `true` it ignores non-visible ``TreeItem``s.
    /// 
    public final func isAnyCollapsed(onlyVisible: Bool = false) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: onlyVisible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_any_collapsed, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visible")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_set_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visible")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TreeItem.method_is_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_visible_in_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visible_in_tree")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if ``visible`` is `true` and all its ancestors are also visible.
    public final func isVisibleInTree() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TreeItem.method_is_visible_in_tree, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_uncollapse_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("uncollapse_tree")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Uncollapses all ``TreeItem``s necessary to reveal this ``TreeItem``, i.e. all ancestor ``TreeItem``s.
    public final func uncollapseTree() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TreeItem.method_uncollapse_tree, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_custom_minimum_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_minimum_height")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_minimum_height(_ height: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: height) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_set_custom_minimum_height, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_minimum_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_minimum_height")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_minimum_height() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TreeItem.method_get_custom_minimum_height, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_selectable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selectable")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `selectable` is `true`, the given `column` is selectable.
    public final func setSelectable(column: Int32, selectable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: selectable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_selectable, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_selectable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_selectable")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `column` is selectable.
    public final func isSelectable(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_selectable, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_selected: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_selected")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `column` is selected.
    public final func isSelected(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_selected, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_select: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Selects the given `column`.
    public final func select(column: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_select, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_deselect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deselect")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Deselects the given column.
    public final func deselect(column: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_deselect, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editable")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `enabled` is `true`, the given `column` is editable.
    public final func setEditable(column: Int32, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_editable, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editable")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `column` is editable.
    public final func isEditable(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_editable, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_custom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets the given column's custom color.
    public final func setCustomColor(column: Int32, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_custom_color, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns the custom color of column `column`.
    public final func getCustomColor(column: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_custom_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_custom_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_custom_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Resets the color for the given column to default.
    public final func clearCustomColor(column: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_clear_custom_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_custom_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_font")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2637609184)!
            }
            
        }
        
    }()
    
    /// Sets custom font used to draw text in the given `column`.
    public final func setCustomFont(column: Int32, font: Font?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: font?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_custom_font, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_font")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4244553094)!
            }
            
        }
        
    }()
    
    /// Returns custom font used to draw text in the column `column`.
    public final func getCustomFont(column: Int32) -> Font? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_custom_font, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_custom_font_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_font_size")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets custom font size used to draw text in the given `column`.
    public final func setCustomFontSize(column: Int32, fontSize: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: fontSize) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_custom_font_size, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_font_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_font_size")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns custom font size used to draw text in the column `column`.
    public final func getCustomFontSize(column: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_custom_font_size, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_custom_bg_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_bg_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 894174518)!
            }
            
        }
        
    }()
    
    /// Sets the given column's custom background color and whether to just use it as an outline.
    public final func setCustomBgColor(column: Int32, color: Color, justOutline: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: justOutline) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TreeItem.method_set_custom_bg_color, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_custom_bg_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_custom_bg_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Resets the background color for the given column to default.
    public final func clearCustomBgColor(column: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_clear_custom_bg_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_bg_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_bg_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns the custom background color of column `column`.
    public final func getCustomBgColor(column: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_custom_bg_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_custom_as_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_as_button")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Makes a cell with ``TreeCellMode/custom`` display as a non-flat button with a ``StyleBox``.
    public final func setCustomAsButton(column: Int32, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_custom_as_button, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_custom_set_as_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_custom_set_as_button")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the cell was made into a button with ``setCustomAsButton(column:enable:)``.
    public final func isCustomSetAsButton(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_is_custom_set_as_button, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_buttons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_buttons")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all buttons from all columns of this item.
    public final func clearButtons() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TreeItem.method_clear_buttons, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_button")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1688223362)!
            }
            
        }
        
    }()
    
    /// Adds a button with ``Texture2D`` `button` to the end of the cell at column `column`. The `id` is used to identify the button in the according [signal Tree.button_clicked] signal and can be different from the buttons index. If not specified, the next available index is used, which may be retrieved by calling ``getButtonCount(column:)`` immediately before this method. Optionally, the button can be `disabled` and have a `tooltipText`.
    public final func addButton(column: Int32, button: Texture2D?, id: Int32 = -1, disabled: Bool = false, tooltipText: String = "") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: button?.handle) { pArg1 in
                withUnsafePointer(to: id) { pArg2 in
                    withUnsafePointer(to: disabled) { pArg3 in
                        let tooltipText = GString(tooltipText)
                        withUnsafePointer(to: tooltipText.content) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TreeItem.method_add_button, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_button_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_button_count")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of buttons in column `column`.
    public final func getButtonCount(column: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_button_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_button_tooltip_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_button_tooltip_text")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1391810591)!
            }
            
        }
        
    }()
    
    /// Returns the tooltip text for the button at index `buttonIndex` in column `column`.
    public final func getButtonTooltipText(column: Int32, buttonIndex: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_get_button_tooltip_text, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_button_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_button_id")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175239445)!
            }
            
        }
        
    }()
    
    /// Returns the ID for the button at index `buttonIndex` in column `column`.
    public final func getButtonId(column: Int32, buttonIndex: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_get_button_id, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_button_by_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_button_by_id")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175239445)!
            }
            
        }
        
    }()
    
    /// Returns the button index if there is a button with ID `id` in column `column`, otherwise returns -1.
    public final func getButtonById(column: Int32, id: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_get_button_by_id, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_button_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_button_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2165839948)!
            }
            
        }
        
    }()
    
    /// Returns the color of the button with ID `id` in column `column`. If the specified button does not exist, returns ``Color/black``.
    public final func getButtonColor(column: Int32, id: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_get_button_color, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_button")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2584904275)!
            }
            
        }
        
    }()
    
    /// Returns the ``Texture2D`` of the button at index `buttonIndex` in column `column`.
    public final func getButton(column: Int32, buttonIndex: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_get_button, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_button_tooltip_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_button_tooltip_text")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2285447957)!
            }
            
        }
        
    }()
    
    /// Sets the tooltip text for the button at index `buttonIndex` in the given `column`.
    public final func setButtonTooltipText(column: Int32, buttonIndex: Int32, tooltip: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                let tooltip = GString(tooltip)
                withUnsafePointer(to: tooltip.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TreeItem.method_set_button_tooltip_text, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_button")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 176101966)!
            }
            
        }
        
    }()
    
    /// Sets the given column's button ``Texture2D`` at index `buttonIndex` to `button`.
    public final func setButton(column: Int32, buttonIndex: Int32, button: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: button?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TreeItem.method_set_button, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_erase_button: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("erase_button")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Removes the button at index `buttonIndex` in column `column`.
    public final func eraseButton(column: Int32, buttonIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_erase_button, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_button_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_button_disabled")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1383440665)!
            }
            
        }
        
    }()
    
    /// If `true`, disables the button at index `buttonIndex` in the given `column`.
    public final func setButtonDisabled(column: Int32, buttonIndex: Int32, disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: disabled) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TreeItem.method_set_button_disabled, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_button_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_button_color")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3733378741)!
            }
            
        }
        
    }()
    
    /// Sets the given column's button color at index `buttonIndex` to `color`.
    public final func setButtonColor(column: Int32, buttonIndex: Int32, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TreeItem.method_set_button_color, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_button_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_button_disabled")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2522259332)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the button at index `buttonIndex` for the given `column` is disabled.
    public final func isButtonDisabled(column: Int32, buttonIndex: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: buttonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_is_button_disabled, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tooltip_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tooltip_text")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the given column's tooltip text.
    public final func setTooltipText(column: Int32, tooltip: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            let tooltip = GString(tooltip)
            withUnsafePointer(to: tooltip.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_tooltip_text, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tooltip_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tooltip_text")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the given column's tooltip text.
    public final func getTooltipText(column: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_tooltip_text, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_text_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_alignment")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3276431499)!
            }
            
        }
        
    }()
    
    /// Sets the given column's text alignment. See ``HorizontalAlignment`` for possible values.
    public final func setTextAlignment(column: Int32, textAlignment: HorizontalAlignment) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: textAlignment.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_text_alignment, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_alignment")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4171562184)!
            }
            
        }
        
    }()
    
    /// Returns the given column's text alignment.
    public final func getTextAlignment(column: Int32) -> HorizontalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_text_alignment, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return HorizontalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_set_expand_right: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_expand_right")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `enable` is `true`, the given `column` is expanded to the right.
    public final func setExpandRight(column: Int32, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TreeItem.method_set_expand_right, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_expand_right: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_expand_right")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `expand_right` is set.
    public final func getExpandRight(column: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_expand_right, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_disable_folding: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_disable_folding")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disable_folding(_ disable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: disable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_set_disable_folding, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_folding_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_folding_disabled")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_folding_disabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TreeItem.method_is_folding_disabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_create_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_child")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 954243986)!
            }
            
        }
        
    }()
    
    /// Creates an item and adds it as a child.
    /// 
    /// The new item will be inserted as position `index` (the default value `-1` means the last position), or it will be the last child if `index` is higher than the child count.
    /// 
    public final func createChild(index: Int32 = -1) -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_create_child, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_child")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1819951137)!
            }
            
        }
        
    }()
    
    /// Adds a previously unparented ``TreeItem`` as a direct child of this one. The `child` item must not be a part of any ``Tree`` or parented to any ``TreeItem``. See also ``removeChild(_:)``.
    public final func addChild(_ child: TreeItem?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: child?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_add_child, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_child")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1819951137)!
            }
            
        }
        
    }()
    
    /// Removes the given child ``TreeItem`` and all its children from the ``Tree``. Note that it doesn't free the item from memory, so it can be reused later (see ``addChild(_:)``). To completely remove a ``TreeItem`` use ``Object/free()``.
    /// 
    /// > Note: If you want to move a child from one ``Tree`` to another, then instead of removing and adding it manually you can use ``moveBefore(item:)`` or ``moveAfter(item:)``.
    /// 
    public final func removeChild(_ child: TreeItem?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: child?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_remove_child, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tree")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2243340556)!
            }
            
        }
        
    }()
    
    /// Returns the ``Tree`` that owns this TreeItem.
    public final func getTree() -> Tree? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TreeItem.method_get_tree, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_next: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1514277247)!
            }
            
        }
        
    }()
    
    /// Returns the next sibling TreeItem in the tree or a `null` object if there is none.
    public final func getNext() -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TreeItem.method_get_next, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_prev: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_prev")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2768121250)!
            }
            
        }
        
    }()
    
    /// Returns the previous sibling TreeItem in the tree or a `null` object if there is none.
    public final func getPrev() -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TreeItem.method_get_prev, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parent")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1514277247)!
            }
            
        }
        
    }()
    
    /// Returns the parent TreeItem or a `null` object if there is none.
    public final func getParent() -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TreeItem.method_get_parent, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_first_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_first_child")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1514277247)!
            }
            
        }
        
    }()
    
    /// Returns the TreeItem's first child.
    public final func getFirstChild() -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TreeItem.method_get_first_child, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_next_in_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next_in_tree")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1666920593)!
            }
            
        }
        
    }()
    
    /// Returns the next TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.
    /// 
    /// If `wrap` is enabled, the method will wrap around to the first element in the tree when called on the last element, otherwise it returns `null`.
    /// 
    public final func getNextInTree(wrap: Bool = false) -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: wrap) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_next_in_tree, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_prev_in_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_prev_in_tree")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1666920593)!
            }
            
        }
        
    }()
    
    /// Returns the previous TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.
    /// 
    /// If `wrap` is enabled, the method will wrap around to the last element in the tree when called on the first visible element, otherwise it returns `null`.
    /// 
    public final func getPrevInTree(wrap: Bool = false) -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: wrap) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_prev_in_tree, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_next_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next_visible")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1666920593)!
            }
            
        }
        
    }()
    
    /// Returns the next visible TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.
    /// 
    /// If `wrap` is enabled, the method will wrap around to the first visible element in the tree when called on the last visible element, otherwise it returns `null`.
    /// 
    public final func getNextVisible(wrap: Bool = false) -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: wrap) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_next_visible, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_prev_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_prev_visible")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1666920593)!
            }
            
        }
        
    }()
    
    /// Returns the previous visible sibling TreeItem in the tree (in the context of a depth-first search) or a `null` object if there is none.
    /// 
    /// If `wrap` is enabled, the method will wrap around to the last visible element in the tree when called on the first visible element, otherwise it returns `null`.
    /// 
    public final func getPrevVisible(wrap: Bool = false) -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: wrap) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_prev_visible, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_child")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 306700752)!
            }
            
        }
        
    }()
    
    /// Returns a child item by its `index` (see ``getChildCount()``). This method is often used for iterating all children of an item.
    /// 
    /// Negative indices access the children from the last one.
    /// 
    public final func getChild(index: Int32) -> TreeItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_get_child, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_child_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_child_count")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the number of child items.
    public final func getChildCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TreeItem.method_get_child_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_children: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_children")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Returns an array of references to the item's children.
    public final func getChildren() -> TypedArray<TreeItem?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(TreeItem.method_get_children, handle, nil, &_result)
        return TypedArray<TreeItem?>(takingOver: _result)
    }
    
    fileprivate static let method_get_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_index")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the node's order in the tree. For example, if called on the first child item the position is `0`.
    public final func getIndex() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TreeItem.method_get_index, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_move_before: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_before")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1819951137)!
            }
            
        }
        
    }()
    
    /// Moves this TreeItem right before the given `item`.
    /// 
    /// > Note: You can't move to the root or move the root.
    /// 
    public final func moveBefore(item: TreeItem?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: item?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_move_before, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_move_after: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_after")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1819951137)!
            }
            
        }
        
    }()
    
    /// Moves this TreeItem right after the given `item`.
    /// 
    /// > Note: You can't move to the root or move the root.
    /// 
    public final func moveAfter(item: TreeItem?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: item?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TreeItem.method_move_after, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_call_recursive: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("call_recursive")
        return withUnsafePointer(to: &TreeItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2866548813)!
            }
            
        }
        
    }()
    
    /// Calls the `method` on the actual TreeItem and its children recursively. Pass parameters as a comma separated list.
    public final func callRecursive(method: StringName, _ arguments: Variant?...) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let method = method.toVariant()
        withUnsafePointer(to: method.content) { pArg0 in
            if arguments.isEmpty {
                withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                        gi.object_method_bind_call(TreeItem.method_call_recursive, handle, pArgs, 1, &_result, nil)
                    }
                    
                }
                
            } else {
                // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 1 + arguments.count) { pArgsBuffer in
                    defer { pArgsBuffer.deinitialize() }
                    guard let pArgs = pArgsBuffer.baseAddress else {
                        fatalError("pArgsBuffer.baseAddress is nil")
                    }
                    pArgsBuffer.initializeElement(at: 0, to: pArg0)
                    // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                        defer { contentsBuffer.deinitialize() }
                        guard let contentsPtr = contentsBuffer.baseAddress else {
                            fatalError("contentsBuffer.baseAddress is nil")
                        }
                        
                        for i in 0..<arguments.count {
                            // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                            contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                            // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                            pArgsBuffer.initializeElement(at: 1 + i, to: contentsPtr + i)
                        }
                    
                        gi.object_method_bind_call(TreeItem.method_call_recursive, handle, pArgs, Int64(1 + arguments.count), &_result, nil)
                    }                           
                }
                
            }
        }
        
        
    }
    
}

