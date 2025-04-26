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


/// An input field for single-line text.
/// 
/// ``LineEdit`` provides an input field for editing a single line of text.
/// 
/// - When the ``LineEdit`` control is focused using the keyboard arrow keys, it will only gain focus and not enter edit mode.
/// 
/// - To enter edit mode, click on the control with the mouse, see also ``keepEditingOnTextSubmit``.
/// 
/// - To exit edit mode, press `ui_text_submit` or `ui_cancel` (by default [kbd]Escape[/kbd]) actions.
/// 
/// - Check ``edit()``, ``unedit()``, ``isEditing()``, and [signal editing_toggled] for more information.
/// 
/// **Important:**
/// 
/// - Focusing the ``LineEdit`` with `ui_focus_next` (by default [kbd]Tab[/kbd]) or `ui_focus_prev` (by default [kbd]Shift + Tab[/kbd]) or ``Control/grabFocus()`` still enters edit mode (for compatibility).
/// 
/// ``LineEdit`` features many built-in shortcuts that are always available ([kbd]Ctrl[/kbd] here maps to [kbd]Cmd[/kbd] on macOS):
/// 
/// - [kbd]Ctrl + C[/kbd]: Copy
/// 
/// - [kbd]Ctrl + X[/kbd]: Cut
/// 
/// - [kbd]Ctrl + V[/kbd] or [kbd]Ctrl + Y[/kbd]: Paste/"yank"
/// 
/// - [kbd]Ctrl + Z[/kbd]: Undo
/// 
/// - [kbd]Ctrl + ~[/kbd]: Swap input direction.
/// 
/// - [kbd]Ctrl + Shift + Z[/kbd]: Redo
/// 
/// - [kbd]Ctrl + U[/kbd]: Delete text from the caret position to the beginning of the line
/// 
/// - [kbd]Ctrl + K[/kbd]: Delete text from the caret position to the end of the line
/// 
/// - [kbd]Ctrl + A[/kbd]: Select all text
/// 
/// - [kbd]Up Arrow[/kbd]/[kbd]Down Arrow[/kbd]: Move the caret to the beginning/end of the line
/// 
/// On macOS, some extra keyboard shortcuts are available:
/// 
/// - [kbd]Cmd + F[/kbd]: Same as [kbd]Right Arrow[/kbd], move the caret one character right
/// 
/// - [kbd]Cmd + B[/kbd]: Same as [kbd]Left Arrow[/kbd], move the caret one character left
/// 
/// - [kbd]Cmd + P[/kbd]: Same as [kbd]Up Arrow[/kbd], move the caret to the previous line
/// 
/// - [kbd]Cmd + N[/kbd]: Same as [kbd]Down Arrow[/kbd], move the caret to the next line
/// 
/// - [kbd]Cmd + D[/kbd]: Same as [kbd]Delete[/kbd], delete the character on the right side of caret
/// 
/// - [kbd]Cmd + H[/kbd]: Same as [kbd]Backspace[/kbd], delete the character on the left side of the caret
/// 
/// - [kbd]Cmd + A[/kbd]: Same as [kbd]Home[/kbd], move the caret to the beginning of the line
/// 
/// - [kbd]Cmd + E[/kbd]: Same as [kbd]End[/kbd], move the caret to the end of the line
/// 
/// - [kbd]Cmd + Left Arrow[/kbd]: Same as [kbd]Home[/kbd], move the caret to the beginning of the line
/// 
/// - [kbd]Cmd + Right Arrow[/kbd]: Same as [kbd]End[/kbd], move the caret to the end of the line
/// 
/// > Note: Caret movement shortcuts listed above are not affected by ``shortcutKeysEnabled``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``textChanged``
/// - ``textChangeRejected``
/// - ``textSubmitted``
/// - ``editingToggled``
open class LineEdit: Control {
    private static var className = StringName("LineEdit")
    override open class var godotClassName: StringName { className }
    public enum MenuItems: Int64, CaseIterable {
        /// Cuts (copies and clears) the selected text.
        case cut = 0 // MENU_CUT
        /// Copies the selected text.
        case copy = 1 // MENU_COPY
        /// Pastes the clipboard text over the selected text (or at the caret's position).
        /// 
        /// Non-printable escape characters are automatically stripped from the OS clipboard via ``GString/stripEscapes()``.
        /// 
        case paste = 2 // MENU_PASTE
        /// Erases the whole ``LineEdit`` text.
        case clear = 3 // MENU_CLEAR
        /// Selects the whole ``LineEdit`` text.
        case selectAll = 4 // MENU_SELECT_ALL
        /// Undoes the previous action.
        case undo = 5 // MENU_UNDO
        /// Reverse the last undo action.
        case redo = 6 // MENU_REDO
        /// ID of "Text Writing Direction" submenu.
        case submenuTextDir = 7 // MENU_SUBMENU_TEXT_DIR
        /// Sets text direction to inherited.
        case dirInherited = 8 // MENU_DIR_INHERITED
        /// Sets text direction to automatic.
        case dirAuto = 9 // MENU_DIR_AUTO
        /// Sets text direction to left-to-right.
        case dirLtr = 10 // MENU_DIR_LTR
        /// Sets text direction to right-to-left.
        case dirRtl = 11 // MENU_DIR_RTL
        /// Toggles control character display.
        case displayUcc = 12 // MENU_DISPLAY_UCC
        /// ID of "Insert Control Character" submenu.
        case submenuInsertUcc = 13 // MENU_SUBMENU_INSERT_UCC
        /// Inserts left-to-right mark (LRM) character.
        case insertLrm = 14 // MENU_INSERT_LRM
        /// Inserts right-to-left mark (RLM) character.
        case insertRlm = 15 // MENU_INSERT_RLM
        /// Inserts start of left-to-right embedding (LRE) character.
        case insertLre = 16 // MENU_INSERT_LRE
        /// Inserts start of right-to-left embedding (RLE) character.
        case insertRle = 17 // MENU_INSERT_RLE
        /// Inserts start of left-to-right override (LRO) character.
        case insertLro = 18 // MENU_INSERT_LRO
        /// Inserts start of right-to-left override (RLO) character.
        case insertRlo = 19 // MENU_INSERT_RLO
        /// Inserts pop direction formatting (PDF) character.
        case insertPdf = 20 // MENU_INSERT_PDF
        /// Inserts Arabic letter mark (ALM) character.
        case insertAlm = 21 // MENU_INSERT_ALM
        /// Inserts left-to-right isolate (LRI) character.
        case insertLri = 22 // MENU_INSERT_LRI
        /// Inserts right-to-left isolate (RLI) character.
        case insertRli = 23 // MENU_INSERT_RLI
        /// Inserts first strong isolate (FSI) character.
        case insertFsi = 24 // MENU_INSERT_FSI
        /// Inserts pop direction isolate (PDI) character.
        case insertPdi = 25 // MENU_INSERT_PDI
        /// Inserts zero width joiner (ZWJ) character.
        case insertZwj = 26 // MENU_INSERT_ZWJ
        /// Inserts zero width non-joiner (ZWNJ) character.
        case insertZwnj = 27 // MENU_INSERT_ZWNJ
        /// Inserts word joiner (WJ) character.
        case insertWj = 28 // MENU_INSERT_WJ
        /// Inserts soft hyphen (SHY) character.
        case insertShy = 29 // MENU_INSERT_SHY
        /// Opens system emoji and symbol picker.
        case emojiAndSymbol = 30 // MENU_EMOJI_AND_SYMBOL
        /// Represents the size of the ``LineEdit/MenuItems`` enum.
        case max = 31 // MENU_MAX
    }
    
    public enum VirtualKeyboardType: Int64, CaseIterable {
        /// Default text virtual keyboard.
        case `default` = 0 // KEYBOARD_TYPE_DEFAULT
        /// Multiline virtual keyboard.
        case multiline = 1 // KEYBOARD_TYPE_MULTILINE
        /// Virtual number keypad, useful for PIN entry.
        case number = 2 // KEYBOARD_TYPE_NUMBER
        /// Virtual number keypad, useful for entering fractional numbers.
        case numberDecimal = 3 // KEYBOARD_TYPE_NUMBER_DECIMAL
        /// Virtual phone number keypad.
        case phone = 4 // KEYBOARD_TYPE_PHONE
        /// Virtual keyboard with additional keys to assist with typing email addresses.
        case emailAddress = 5 // KEYBOARD_TYPE_EMAIL_ADDRESS
        /// Virtual keyboard for entering a password. On most platforms, this should disable autocomplete and autocapitalization.
        /// 
        /// > Note: This is not supported on Web. Instead, this behaves identically to ``VirtualKeyboardType/`default```.
        /// 
        case password = 6 // KEYBOARD_TYPE_PASSWORD
        /// Virtual keyboard with additional keys to assist with typing URLs.
        case url = 7 // KEYBOARD_TYPE_URL
    }
    
    
    /* Properties */
    
    /// String value of the ``LineEdit``.
    /// 
    /// > Note: Changing text using this property won't emit the [signal text_changed] signal.
    /// 
    final public var text: String {
        get {
            return get_text ()
        }
        
        set {
            set_text (newValue)
        }
        
    }
    
    /// Text shown when the ``LineEdit`` is empty. It is **not** the ``LineEdit``'s default value (see ``text``).
    final public var placeholderText: String {
        get {
            return get_placeholder ()
        }
        
        set {
            set_placeholder (newValue)
        }
        
    }
    
    /// Text alignment as defined in the ``HorizontalAlignment`` enum.
    final public var alignment: HorizontalAlignment {
        get {
            return get_horizontal_alignment ()
        }
        
        set {
            set_horizontal_alignment (newValue)
        }
        
    }
    
    /// Maximum number of characters that can be entered inside the ``LineEdit``. If `0`, there is no limit.
    /// 
    /// When a limit is defined, characters that would exceed ``maxLength`` are truncated. This happens both for existing ``text`` contents when setting the max length, or for new text inserted in the ``LineEdit``, including pasting.
    /// 
    /// If any input text is truncated, the [signal text_change_rejected] signal is emitted with the truncated substring as parameter:
    /// 
    final public var maxLength: Int32 {
        get {
            return get_max_length ()
        }
        
        set {
            set_max_length (newValue)
        }
        
    }
    
    /// If `false`, existing text cannot be modified and new text cannot be added.
    final public var editable: Bool {
        get {
            return is_editable ()
        }
        
        set {
            set_editable (newValue)
        }
        
    }
    
    /// If `true`, the ``LineEdit`` will not exit edit mode when text is submitted by pressing `ui_text_submit` action (by default: [kbd]Enter[/kbd] or [kbd]Kp Enter[/kbd]).
    final public var keepEditingOnTextSubmit: Bool {
        get {
            return is_editing_kept_on_text_submit ()
        }
        
        set {
            set_keep_editing_on_text_submit (newValue)
        }
        
    }
    
    /// If `true`, the ``LineEdit`` width will increase to stay longer than the ``text``. It will **not** compress if the ``text`` is shortened.
    final public var expandToTextLength: Bool {
        get {
            return is_expand_to_text_length_enabled ()
        }
        
        set {
            set_expand_to_text_length_enabled (newValue)
        }
        
    }
    
    /// If `true`, the context menu will appear when right-clicked.
    final public var contextMenuEnabled: Bool {
        get {
            return is_context_menu_enabled ()
        }
        
        set {
            set_context_menu_enabled (newValue)
        }
        
    }
    
    /// If `true`, "Emoji and Symbols" menu is enabled.
    final public var emojiMenuEnabled: Bool {
        get {
            return is_emoji_menu_enabled ()
        }
        
        set {
            set_emoji_menu_enabled (newValue)
        }
        
    }
    
    /// If `true`, the native virtual keyboard is shown when focused on platforms that support it.
    final public var virtualKeyboardEnabled: Bool {
        get {
            return is_virtual_keyboard_enabled ()
        }
        
        set {
            set_virtual_keyboard_enabled (newValue)
        }
        
    }
    
    /// Specifies the type of virtual keyboard to show.
    final public var virtualKeyboardType: LineEdit.VirtualKeyboardType {
        get {
            return get_virtual_keyboard_type ()
        }
        
        set {
            set_virtual_keyboard_type (newValue)
        }
        
    }
    
    /// If `true`, the ``LineEdit`` will show a clear button if ``text`` is not empty, which can be used to clear the text quickly.
    final public var clearButtonEnabled: Bool {
        get {
            return is_clear_button_enabled ()
        }
        
        set {
            set_clear_button_enabled (newValue)
        }
        
    }
    
    /// If `true`, shortcut keys for context menu items are enabled, even if the context menu is disabled.
    final public var shortcutKeysEnabled: Bool {
        get {
            return is_shortcut_keys_enabled ()
        }
        
        set {
            set_shortcut_keys_enabled (newValue)
        }
        
    }
    
    /// If `false`, using middle mouse button to paste clipboard will be disabled.
    /// 
    /// > Note: This method is only implemented on Linux.
    /// 
    final public var middleMousePasteEnabled: Bool {
        get {
            return is_middle_mouse_paste_enabled ()
        }
        
        set {
            set_middle_mouse_paste_enabled (newValue)
        }
        
    }
    
    /// If `false`, it's impossible to select the text using mouse nor keyboard.
    final public var selectingEnabled: Bool {
        get {
            return is_selecting_enabled ()
        }
        
        set {
            set_selecting_enabled (newValue)
        }
        
    }
    
    /// If `true`, the selected text will be deselected when focus is lost.
    final public var deselectOnFocusLossEnabled: Bool {
        get {
            return is_deselect_on_focus_loss_enabled ()
        }
        
        set {
            set_deselect_on_focus_loss_enabled (newValue)
        }
        
    }
    
    /// If `true`, allow drag and drop of selected text.
    final public var dragAndDropSelectionEnabled: Bool {
        get {
            return is_drag_and_drop_selection_enabled ()
        }
        
        set {
            set_drag_and_drop_selection_enabled (newValue)
        }
        
    }
    
    /// Sets the icon that will appear in the right end of the ``LineEdit`` if there's no ``text``, or always, if ``clearButtonEnabled`` is set to `false`.
    final public var rightIcon: Texture2D? {
        get {
            return get_right_icon ()
        }
        
        set {
            set_right_icon (newValue)
        }
        
    }
    
    /// If `true`, the ``LineEdit`` doesn't display decoration.
    final public var flat: Bool {
        get {
            return is_flat ()
        }
        
        set {
            set_flat (newValue)
        }
        
    }
    
    /// If `true`, control characters are displayed.
    final public var drawControlChars: Bool {
        get {
            return get_draw_control_chars ()
        }
        
        set {
            set_draw_control_chars (newValue)
        }
        
    }
    
    /// If `true`, the ``LineEdit`` will select the whole text when it gains focus.
    final public var selectAllOnFocus: Bool {
        get {
            return is_select_all_on_focus ()
        }
        
        set {
            set_select_all_on_focus (newValue)
        }
        
    }
    
    /// If `true`, makes the caret blink.
    final public var caretBlink: Bool {
        get {
            return is_caret_blink_enabled ()
        }
        
        set {
            set_caret_blink_enabled (newValue)
        }
        
    }
    
    /// The interval at which the caret blinks (in seconds).
    final public var caretBlinkInterval: Double {
        get {
            return get_caret_blink_interval ()
        }
        
        set {
            set_caret_blink_interval (newValue)
        }
        
    }
    
    /// The caret's column position inside the ``LineEdit``. When set, the text may scroll to accommodate it.
    final public var caretColumn: Int32 {
        get {
            return get_caret_column ()
        }
        
        set {
            set_caret_column (newValue)
        }
        
    }
    
    /// If `true`, the ``LineEdit`` will always show the caret, even if not editing or focus is lost.
    final public var caretForceDisplayed: Bool {
        get {
            return is_caret_force_displayed ()
        }
        
        set {
            set_caret_force_displayed (newValue)
        }
        
    }
    
    /// Allow moving caret, selecting and removing the individual composite character components.
    /// 
    /// > Note: [kbd]Backspace[/kbd] is always removing individual composite character components.
    /// 
    final public var caretMidGrapheme: Bool {
        get {
            return is_caret_mid_grapheme_enabled ()
        }
        
        set {
            set_caret_mid_grapheme_enabled (newValue)
        }
        
    }
    
    /// If `true`, every character is replaced with the secret character (see ``secretCharacter``).
    final public var secret: Bool {
        get {
            return is_secret ()
        }
        
        set {
            set_secret (newValue)
        }
        
    }
    
    /// The character to use to mask secret input. Only a single character can be used as the secret character. If it is longer than one character, only the first one will be used. If it is empty, a space will be used instead.
    final public var secretCharacter: String {
        get {
            return get_secret_character ()
        }
        
        set {
            set_secret_character (newValue)
        }
        
    }
    
    /// Base text writing direction.
    final public var textDirection: Control.TextDirection {
        get {
            return get_text_direction ()
        }
        
        set {
            set_text_direction (newValue)
        }
        
    }
    
    /// Language code used for line-breaking and text shaping algorithms. If left empty, current locale is used instead.
    final public var language: String {
        get {
            return get_language ()
        }
        
        set {
            set_language (newValue)
        }
        
    }
    
    /// Set BiDi algorithm override for the structured text.
    final public var structuredTextBidiOverride: TextServer.StructuredTextParser {
        get {
            return get_structured_text_bidi_override ()
        }
        
        set {
            set_structured_text_bidi_override (newValue)
        }
        
    }
    
    /// Set additional options for BiDi override.
    final public var structuredTextBidiOverrideOptions: VariantArray {
        get {
            return get_structured_text_bidi_override_options ()
        }
        
        set {
            set_structured_text_bidi_override_options (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_has_ime_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_ime_text")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the user has text in the <a href="https://en.wikipedia.org/wiki/Input_method">Input Method Editor</a> (IME).
    public final func hasImeText() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_has_ime_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_cancel_ime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("cancel_ime")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Closes the <a href="https://en.wikipedia.org/wiki/Input_method">Input Method Editor</a> (IME) if it is open. Any text in the IME will be lost.
    public final func cancelIme() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_cancel_ime, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_apply_ime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_ime")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Applies text from the <a href="https://en.wikipedia.org/wiki/Input_method">Input Method Editor</a> (IME) and closes the IME if it is open.
    public final func applyIme() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_apply_ime, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_horizontal_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_horizontal_alignment")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2312603777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_horizontal_alignment(_ alignment: HorizontalAlignment) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_horizontal_alignment, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_horizontal_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_horizontal_alignment")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 341400642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_horizontal_alignment() -> HorizontalAlignment {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LineEdit.method_get_horizontal_alignment, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return HorizontalAlignment (rawValue: _result)!
    }
    
    fileprivate static let method_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("edit")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Allows entering edit mode whether the ``LineEdit`` is focused or not.
    /// 
    /// See also ``keepEditingOnTextSubmit``.
    /// 
    public final func edit() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_edit, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_unedit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unedit")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Allows exiting edit mode while preserving focus.
    public final func unedit() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_unedit, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_is_editing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editing")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the ``LineEdit`` is being edited.
    public final func isEditing() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_editing, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_keep_editing_on_text_submit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_keep_editing_on_text_submit")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_keep_editing_on_text_submit(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_keep_editing_on_text_submit, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_editing_kept_on_text_submit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editing_kept_on_text_submit")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editing_kept_on_text_submit() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_editing_kept_on_text_submit, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Erases the ``LineEdit``'s ``text``.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_select: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1328111411)!
            }
            
        }
        
    }()
    
    /// Selects characters inside ``LineEdit`` between `from` and `to`. By default, `from` is at the beginning and `to` at the end.
    /// 
    public final func select(from: Int32 = 0, to: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(LineEdit.method_select, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_select_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select_all")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Selects the whole ``String``.
    public final func selectAll() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_select_all, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_deselect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deselect")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the current selection.
    public final func deselect() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_deselect, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_has_undo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_undo")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an "undo" action is available.
    public final func hasUndo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_has_undo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_redo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_redo")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a "redo" action is available.
    public final func hasRedo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_has_redo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_selection")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the user has selected text.
    public final func hasSelection() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_has_selection, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_selected_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_text")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the text inside the selection.
    public final func getSelectedText() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LineEdit.method_get_selected_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_selection_from_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_from_column")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the selection begin column.
    public final func getSelectionFromColumn() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LineEdit.method_get_selection_from_column, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_selection_to_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_to_column")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the selection end column.
    public final func getSelectionToColumn() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LineEdit.method_get_selection_to_column, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_text, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LineEdit.method_get_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_draw_control_chars: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_draw_control_chars")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_draw_control_chars() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_get_draw_control_chars, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_control_chars: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_control_chars")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_control_chars(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_draw_control_chars, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_direction")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 119160795)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_text_direction(_ direction: Control.TextDirection) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: direction.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_text_direction, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_direction")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 797257663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_direction() -> Control.TextDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LineEdit.method_get_text_direction, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_language")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_language(_ language: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let language = GString(language)
        withUnsafePointer(to: language.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_language, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_language")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_language() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LineEdit.method_get_language, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 55961453)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_structured_text_bidi_override(_ parser: TextServer.StructuredTextParser) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: parser.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_structured_text_bidi_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3385126229)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LineEdit.method_get_structured_text_bidi_override, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TextServer.StructuredTextParser (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override_options")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_structured_text_bidi_override_options(_ args: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: args.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_structured_text_bidi_override_options, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override_options")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override_options() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(LineEdit.method_get_structured_text_bidi_override_options, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_placeholder")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_placeholder(_ text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_placeholder, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_placeholder")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_placeholder() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LineEdit.method_get_placeholder, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_caret_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_column")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_caret_column(_ position: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_caret_column, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_caret_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_column")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_caret_column() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LineEdit.method_get_caret_column, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_scroll_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scroll_offset")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the scroll offset due to ``caretColumn``, as a number of characters.
    public final func getScrollOffset() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LineEdit.method_get_scroll_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_expand_to_text_length_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_expand_to_text_length_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_expand_to_text_length_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_expand_to_text_length_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_expand_to_text_length_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_expand_to_text_length_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_expand_to_text_length_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_expand_to_text_length_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_caret_blink_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_blink_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_caret_blink_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_caret_blink_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_caret_blink_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_caret_blink_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_caret_blink_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_caret_blink_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_caret_mid_grapheme_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_mid_grapheme_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_caret_mid_grapheme_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_caret_mid_grapheme_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_caret_mid_grapheme_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_caret_mid_grapheme_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_caret_mid_grapheme_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_caret_mid_grapheme_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_caret_force_displayed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_force_displayed")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_caret_force_displayed(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_caret_force_displayed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_caret_force_displayed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_caret_force_displayed")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_caret_force_displayed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_caret_force_displayed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_caret_blink_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_blink_interval")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_caret_blink_interval(_ interval: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: interval) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_caret_blink_interval, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_caret_blink_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_blink_interval")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_caret_blink_interval() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(LineEdit.method_get_caret_blink_interval, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_max_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_max_length")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_max_length(_ chars: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: chars) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_max_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_max_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_max_length")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_max_length() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(LineEdit.method_get_max_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_insert_text_at_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("insert_text_at_caret")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Inserts `text` at the caret. If the resulting value is longer than ``maxLength``, nothing happens.
    public final func insertTextAtCaret(text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_insert_text_at_caret, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_delete_char_at_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("delete_char_at_caret")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Deletes one character at the caret's current position (equivalent to pressing [kbd]Delete[/kbd]).
    public final func deleteCharAtCaret() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(LineEdit.method_delete_char_at_caret, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_delete_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("delete_text")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Deletes a section of the ``text`` going from position `fromColumn` to `toColumn`. Both parameters should be within the text's length.
    public final func deleteText(fromColumn: Int32, toColumn: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromColumn) { pArg0 in
            withUnsafePointer(to: toColumn) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(LineEdit.method_delete_text, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editable")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editable(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_editable, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editable")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_editable, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secret")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secret(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_secret, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_secret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_secret")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_secret() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_secret, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_secret_character: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_secret_character")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_secret_character(_ character: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let character = GString(character)
        withUnsafePointer(to: character.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_secret_character, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_secret_character: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_secret_character")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_secret_character() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(LineEdit.method_get_secret_character, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_menu_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("menu_option")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Executes a given action as defined in the ``LineEdit/MenuItems`` enum.
    public final func menuOption(_ option: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_menu_option, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_menu: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_menu")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 229722558)!
            }
            
        }
        
    }()
    
    /// Returns the ``PopupMenu`` of this ``LineEdit``. By default, this menu is displayed when right-clicking on the ``LineEdit``.
    /// 
    /// You can add custom menu items or remove standard ones. Make sure your IDs don't conflict with the standard ones (see ``LineEdit/MenuItems``). For example:
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``Window/visible`` property.
    /// 
    public final func getMenu() -> PopupMenu? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(LineEdit.method_get_menu, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_is_menu_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_menu_visible")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the menu is visible. Use this instead of `get_menu().visible` to improve performance (so the creation of the menu is avoided).
    public final func isMenuVisible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_menu_visible, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_context_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_context_menu_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_context_menu_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_context_menu_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_context_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_context_menu_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_context_menu_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_context_menu_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emoji_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emoji_menu_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_emoji_menu_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_emoji_menu_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_emoji_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_emoji_menu_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_emoji_menu_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_emoji_menu_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_virtual_keyboard_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_virtual_keyboard_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_virtual_keyboard_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_virtual_keyboard_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_virtual_keyboard_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_virtual_keyboard_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_virtual_keyboard_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_virtual_keyboard_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_virtual_keyboard_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_virtual_keyboard_type")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2696893573)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_virtual_keyboard_type(_ type: LineEdit.VirtualKeyboardType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_virtual_keyboard_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_virtual_keyboard_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_virtual_keyboard_type")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1928699316)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_virtual_keyboard_type() -> LineEdit.VirtualKeyboardType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(LineEdit.method_get_virtual_keyboard_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return LineEdit.VirtualKeyboardType (rawValue: _result)!
    }
    
    fileprivate static let method_set_clear_button_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_clear_button_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_clear_button_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_clear_button_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_clear_button_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_clear_button_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_clear_button_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_clear_button_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shortcut_keys_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shortcut_keys_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shortcut_keys_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_shortcut_keys_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_shortcut_keys_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_shortcut_keys_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_shortcut_keys_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_shortcut_keys_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_middle_mouse_paste_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_middle_mouse_paste_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_middle_mouse_paste_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_middle_mouse_paste_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_middle_mouse_paste_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_middle_mouse_paste_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_middle_mouse_paste_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_middle_mouse_paste_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_selecting_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selecting_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_selecting_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_selecting_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_selecting_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_selecting_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_selecting_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_selecting_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_deselect_on_focus_loss_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_deselect_on_focus_loss_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_deselect_on_focus_loss_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_deselect_on_focus_loss_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_deselect_on_focus_loss_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_deselect_on_focus_loss_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_deselect_on_focus_loss_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_deselect_on_focus_loss_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_drag_and_drop_selection_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_and_drop_selection_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_drag_and_drop_selection_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_drag_and_drop_selection_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drag_and_drop_selection_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drag_and_drop_selection_enabled")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drag_and_drop_selection_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_drag_and_drop_selection_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_right_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_right_icon")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_right_icon(_ icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: icon?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_right_icon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_right_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_right_icon")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 255860311)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_right_icon() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(LineEdit.method_get_right_icon, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_flat: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flat")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flat(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_flat, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_flat: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_flat")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flat() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_flat, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_select_all_on_focus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_select_all_on_focus")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_select_all_on_focus(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(LineEdit.method_set_select_all_on_focus, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_select_all_on_focus: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_select_all_on_focus")
        return withUnsafePointer(to: &LineEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_select_all_on_focus() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(LineEdit.method_is_select_all_on_focus, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the text changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.textChanged.connect { newText in
    ///    print ("caught signal")
    /// }
    /// ```
    public var textChanged: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "text_changed") }
    
    /// Emitted when appending text that overflows the ``maxLength``. The appended text is truncated to fit ``maxLength``, and the part that couldn't fit is passed as the `rejectedSubstring` argument.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.textChangeRejected.connect { rejectedSubstring in
    ///    print ("caught signal")
    /// }
    /// ```
    public var textChangeRejected: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "text_change_rejected") }
    
    /// Emitted when the user presses the `ui_text_submit` action (by default: [kbd]Enter[/kbd] or [kbd]Kp Enter[/kbd]) while the ``LineEdit`` has focus.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.textSubmitted.connect { newText in
    ///    print ("caught signal")
    /// }
    /// ```
    public var textSubmitted: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "text_submitted") }
    
    /// Emitted when the ``LineEdit`` switches in or out of edit mode.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.editingToggled.connect { toggledOn in
    ///    print ("caught signal")
    /// }
    /// ```
    public var editingToggled: SignalWithArguments<Bool> { SignalWithArguments<Bool> (target: self, signalName: "editing_toggled") }
    
}

