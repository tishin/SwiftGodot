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


/// A multiline text editor.
/// 
/// A multiline text editor. It also has limited facilities for editing code, such as syntax highlighting support. For more advanced facilities for editing code, see ``CodeEdit``.
/// 
/// > Note: Most viewport, caret, and edit methods contain a `caret_index` argument for ``caretMultiple`` support. The argument should be one of the following: `-1` for all carets, `0` for the main caret, or greater than `0` for secondary carets in the order they were created.
/// 
/// > Note: When holding down [kbd]Alt[/kbd], the vertical scroll wheel will scroll 5 times as fast as it would normally do. This also works in the Godot script editor.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``textSet``
/// - ``textChanged``
/// - ``linesEditedFrom``
/// - ``caretChanged``
/// - ``gutterClicked``
/// - ``gutterAdded``
/// - ``gutterRemoved``
open class TextEdit: Control {
    private static var className = StringName("TextEdit")
    override open class var godotClassName: StringName { className }
    public enum MenuItems: Int64, CaseIterable {
        /// Cuts (copies and clears) the selected text.
        case cut = 0 // MENU_CUT
        /// Copies the selected text.
        case copy = 1 // MENU_COPY
        /// Pastes the clipboard text over the selected text (or at the cursor's position).
        case paste = 2 // MENU_PASTE
        /// Erases the whole ``TextEdit`` text.
        case clear = 3 // MENU_CLEAR
        /// Selects the whole ``TextEdit`` text.
        case selectAll = 4 // MENU_SELECT_ALL
        /// Undoes the previous action.
        case undo = 5 // MENU_UNDO
        /// Redoes the previous action.
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
        /// Represents the size of the ``TextEdit/MenuItems`` enum.
        case max = 31 // MENU_MAX
    }
    
    public enum EditAction: Int64, CaseIterable {
        /// No current action.
        case none = 0 // ACTION_NONE
        /// A typing action.
        case typing = 1 // ACTION_TYPING
        /// A backwards delete action.
        case backspace = 2 // ACTION_BACKSPACE
        /// A forward delete action.
        case delete = 3 // ACTION_DELETE
    }
    
    public enum SearchFlags: Int64, CaseIterable {
        /// Match case when searching.
        case matchCase = 1 // SEARCH_MATCH_CASE
        /// Match whole words when searching.
        case wholeWords = 2 // SEARCH_WHOLE_WORDS
        /// Search from end to beginning.
        case backwards = 4 // SEARCH_BACKWARDS
    }
    
    public enum CaretType: Int64, CaseIterable {
        /// Vertical line caret.
        case line = 0 // CARET_TYPE_LINE
        /// Block caret.
        case block = 1 // CARET_TYPE_BLOCK
    }
    
    public enum SelectionMode: Int64, CaseIterable {
        /// Not selecting.
        case none = 0 // SELECTION_MODE_NONE
        /// Select as if `shift` is pressed.
        case shift = 1 // SELECTION_MODE_SHIFT
        /// Select single characters as if the user single clicked.
        case pointer = 2 // SELECTION_MODE_POINTER
        /// Select whole words as if the user double clicked.
        case word = 3 // SELECTION_MODE_WORD
        /// Select whole lines as if the user triple clicked.
        case line = 4 // SELECTION_MODE_LINE
    }
    
    public enum LineWrappingMode: Int64, CaseIterable {
        /// Line wrapping is disabled.
        case none = 0 // LINE_WRAPPING_NONE
        /// Line wrapping occurs at the control boundary, beyond what would normally be visible.
        case boundary = 1 // LINE_WRAPPING_BOUNDARY
    }
    
    public enum GutterType: Int64, CaseIterable {
        /// When a gutter is set to string using ``setGutterType(gutter:type:)``, it is used to contain text set via the ``setLineGutterText(line:gutter:text:)`` method.
        case string = 0 // GUTTER_TYPE_STRING
        /// When a gutter is set to icon using ``setGutterType(gutter:type:)``, it is used to contain an icon set via the ``setLineGutterIcon(line:gutter:icon:)`` method.
        case icon = 1 // GUTTER_TYPE_ICON
        /// When a gutter is set to custom using ``setGutterType(gutter:type:)``, it is used to contain custom visuals controlled by a callback method set via the ``setGutterCustomDraw(column:drawCallback:)`` method.
        case custom = 2 // GUTTER_TYPE_CUSTOM
    }
    
    
    /* Properties */
    
    /// String value of the ``TextEdit``.
    final public var text: String {
        get {
            return get_text ()
        }
        
        set {
            set_text (newValue)
        }
        
    }
    
    /// Text shown when the ``TextEdit`` is empty. It is **not** the ``TextEdit``'s default value (see ``text``).
    final public var placeholderText: String {
        get {
            return get_placeholder ()
        }
        
        set {
            set_placeholder (newValue)
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
    
    /// If `true`, a right-click displays the context menu.
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
    
    /// If `true`, shortcut keys for context menu items are enabled, even if the context menu is disabled.
    final public var shortcutKeysEnabled: Bool {
        get {
            return is_shortcut_keys_enabled ()
        }
        
        set {
            set_shortcut_keys_enabled (newValue)
        }
        
    }
    
    /// If `true`, text can be selected.
    /// 
    /// If `false`, text can not be selected by the user or by the ``select(originLine:originColumn:caretLine:caretColumn:caretIndex:)`` or ``selectAll()`` methods.
    /// 
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
    
    /// If `true`, allow drag and drop of selected text. Text can still be dropped from other sources.
    final public var dragAndDropSelectionEnabled: Bool {
        get {
            return is_drag_and_drop_selection_enabled ()
        }
        
        set {
            set_drag_and_drop_selection_enabled (newValue)
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
    
    /// If `true`, copying or cutting without a selection is performed on all lines with a caret. Otherwise, copy and cut require a selection.
    final public var emptySelectionClipboardEnabled: Bool {
        get {
            return is_empty_selection_clipboard_enabled ()
        }
        
        set {
            set_empty_selection_clipboard_enabled (newValue)
        }
        
    }
    
    /// Sets the line wrapping mode to use.
    final public var wrapMode: TextEdit.LineWrappingMode {
        get {
            return get_line_wrapping_mode ()
        }
        
        set {
            set_line_wrapping_mode (newValue)
        }
        
    }
    
    /// If ``wrapMode`` is set to ``LineWrappingMode/boundary``, sets text wrapping mode. To see how each mode behaves, see ``TextServer.AutowrapMode``.
    final public var autowrapMode: TextServer.AutowrapMode {
        get {
            return get_autowrap_mode ()
        }
        
        set {
            set_autowrap_mode (newValue)
        }
        
    }
    
    /// If `true`, all wrapped lines are indented to the same amount as the unwrapped line.
    final public var indentWrappedLines: Bool {
        get {
            return is_indent_wrapped_lines ()
        }
        
        set {
            set_indent_wrapped_lines (newValue)
        }
        
    }
    
    /// Scroll smoothly over the text rather than jumping to the next location.
    final public var scrollSmooth: Bool {
        get {
            return is_smooth_scroll_enabled ()
        }
        
        set {
            set_smooth_scroll_enabled (newValue)
        }
        
    }
    
    /// Sets the scroll speed with the minimap or when ``scrollSmooth`` is enabled.
    final public var scrollVScrollSpeed: Double {
        get {
            return get_v_scroll_speed ()
        }
        
        set {
            set_v_scroll_speed (newValue)
        }
        
    }
    
    /// Allow scrolling past the last line into "virtual" space.
    final public var scrollPastEndOfFile: Bool {
        get {
            return is_scroll_past_end_of_file_enabled ()
        }
        
        set {
            set_scroll_past_end_of_file_enabled (newValue)
        }
        
    }
    
    /// If there is a vertical scrollbar, this determines the current vertical scroll value in line numbers, starting at 0 for the top line.
    final public var scrollVertical: Double {
        get {
            return get_v_scroll ()
        }
        
        set {
            set_v_scroll (newValue)
        }
        
    }
    
    /// If there is a horizontal scrollbar, this determines the current horizontal scroll value in pixels.
    final public var scrollHorizontal: Int32 {
        get {
            return get_h_scroll ()
        }
        
        set {
            set_h_scroll (newValue)
        }
        
    }
    
    /// If `true`, ``TextEdit`` will disable vertical scroll and fit minimum height to the number of visible lines. When both this property and ``scrollFitContentWidth`` are `true`, no scrollbars will be displayed.
    final public var scrollFitContentHeight: Bool {
        get {
            return is_fit_content_height_enabled ()
        }
        
        set {
            set_fit_content_height_enabled (newValue)
        }
        
    }
    
    /// If `true`, ``TextEdit`` will disable horizontal scroll and fit minimum width to the widest line in the text. When both this property and ``scrollFitContentHeight`` are `true`, no scrollbars will be displayed.
    final public var scrollFitContentWidth: Bool {
        get {
            return is_fit_content_width_enabled ()
        }
        
        set {
            set_fit_content_width_enabled (newValue)
        }
        
    }
    
    /// If `true`, a minimap is shown, providing an outline of your source code. The minimap uses a fixed-width text size.
    final public var minimapDraw: Bool {
        get {
            return is_drawing_minimap ()
        }
        
        set {
            set_draw_minimap (newValue)
        }
        
    }
    
    /// The width, in pixels, of the minimap.
    final public var minimapWidth: Int32 {
        get {
            return get_minimap_width ()
        }
        
        set {
            set_minimap_width (newValue)
        }
        
    }
    
    /// Set the type of caret to draw.
    final public var caretType: TextEdit.CaretType {
        get {
            return get_caret_type ()
        }
        
        set {
            set_caret_type (newValue)
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
    
    /// If `true`, caret will be visible when ``editable`` is disabled.
    final public var caretDrawWhenEditableDisabled: Bool {
        get {
            return is_drawing_caret_when_editable_disabled ()
        }
        
        set {
            set_draw_caret_when_editable_disabled (newValue)
        }
        
    }
    
    /// If `true`, a right-click moves the caret at the mouse position before displaying the context menu.
    /// 
    /// If `false`, the context menu ignores mouse location.
    /// 
    final public var caretMoveOnRightClick: Bool {
        get {
            return is_move_caret_on_right_click_enabled ()
        }
        
        set {
            set_move_caret_on_right_click_enabled (newValue)
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
    
    /// If `true`, multiple carets are allowed. Left-clicking with [kbd]Alt[/kbd] adds a new caret. See ``addCaret(line:column:)`` and ``getCaretCount()``.
    final public var caretMultiple: Bool {
        get {
            return is_multiple_carets_enabled ()
        }
        
        set {
            set_multiple_carets_enabled (newValue)
        }
        
    }
    
    /// If `false`, using [kbd]Ctrl + Left[/kbd] or [kbd]Ctrl + Right[/kbd] ([kbd]Cmd + Left[/kbd] or [kbd]Cmd + Right[/kbd] on macOS) bindings will stop moving caret only if a space or punctuation is detected. If `true`, it will also stop the caret if a character is part of `!"#$%&'()*+,-./:;<=>?@[\]^`{|}~`, the Unicode General Punctuation table, or the Unicode CJK Punctuation table. Useful for subword moving. This behavior also will be applied to the behavior of text selection.
    final public var useDefaultWordSeparators: Bool {
        get {
            return is_default_word_separators_enabled ()
        }
        
        set {
            set_use_default_word_separators (newValue)
        }
        
    }
    
    /// If `false`, using [kbd]Ctrl + Left[/kbd] or [kbd]Ctrl + Right[/kbd] ([kbd]Cmd + Left[/kbd] or [kbd]Cmd + Right[/kbd] on macOS) bindings will use the behavior of ``useDefaultWordSeparators``. If `true`, it will also stop the caret if a character within ``customWordSeparators`` is detected. Useful for subword moving. This behavior also will be applied to the behavior of text selection.
    final public var useCustomWordSeparators: Bool {
        get {
            return is_custom_word_separators_enabled ()
        }
        
        set {
            set_use_custom_word_separators (newValue)
        }
        
    }
    
    /// The characters to consider as word delimiters if ``useCustomWordSeparators`` is `true`. The characters should be defined without separation, for example `#_!`.
    final public var customWordSeparators: String {
        get {
            return get_custom_word_separators ()
        }
        
        set {
            set_custom_word_separators (newValue)
        }
        
    }
    
    /// The syntax highlighter to use.
    /// 
    /// > Note: A ``SyntaxHighlighter`` instance should not be used across multiple ``TextEdit`` nodes.
    /// 
    final public var syntaxHighlighter: SyntaxHighlighter? {
        get {
            return get_syntax_highlighter ()
        }
        
        set {
            set_syntax_highlighter (newValue)
        }
        
    }
    
    /// If `true`, all occurrences of the selected text will be highlighted.
    final public var highlightAllOccurrences: Bool {
        get {
            return is_highlight_all_occurrences_enabled ()
        }
        
        set {
            set_highlight_all_occurrences (newValue)
        }
        
    }
    
    /// If `true`, the line containing the cursor is highlighted.
    final public var highlightCurrentLine: Bool {
        get {
            return is_highlight_current_line_enabled ()
        }
        
        set {
            set_highlight_current_line (newValue)
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
    
    /// If `true`, the "tab" character will have a visible representation.
    final public var drawTabs: Bool {
        get {
            return is_drawing_tabs ()
        }
        
        set {
            set_draw_tabs (newValue)
        }
        
    }
    
    /// If `true`, the "space" character will have a visible representation.
    final public var drawSpaces: Bool {
        get {
            return is_drawing_spaces ()
        }
        
        set {
            set_draw_spaces (newValue)
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
    
    /// Language code used for line-breaking and text shaping algorithms, if left empty current locale is used instead.
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
    fileprivate static let method__handle_unicode_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_handle_unicode_input")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Override this method to define what happens when the user types in the provided key `unicodeChar`.
    @_documentation(visibility: public)
    open func _handleUnicodeInput(unicodeChar: Int32, caretIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: unicodeChar) { pArg0 in
            withUnsafePointer(to: caretIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method__handle_unicode_input, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__backspace: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_backspace")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Override this method to define what happens when the user presses the backspace key.
    @_documentation(visibility: public)
    open func _backspace(caretIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method__backspace, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__cut: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_cut")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Override this method to define what happens when the user performs a cut operation.
    @_documentation(visibility: public)
    open func _cut(caretIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method__cut, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__copy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_copy")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Override this method to define what happens when the user performs a copy operation.
    @_documentation(visibility: public)
    open func _copy(caretIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method__copy, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__paste: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_paste")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Override this method to define what happens when the user performs a paste operation.
    @_documentation(visibility: public)
    open func _paste(caretIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method__paste, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__paste_primary_clipboard: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_paste_primary_clipboard")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Override this method to define what happens when the user performs a paste operation with middle mouse button.
    /// 
    /// > Note: This method is only implemented on Linux.
    /// 
    @_documentation(visibility: public)
    open func _pastePrimaryClipboard(caretIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method__paste_primary_clipboard, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_ime_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_ime_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the user has text in the <a href="https://en.wikipedia.org/wiki/Input_method">Input Method Editor</a> (IME).
    public final func hasImeText() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_has_ime_text, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_cancel_ime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("cancel_ime")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Closes the <a href="https://en.wikipedia.org/wiki/Input_method">Input Method Editor</a> (IME) if it is open. Any text in the IME will be lost.
    public final func cancelIme() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_cancel_ime, handle, nil, nil)
        
    }
    
    fileprivate static let method_apply_ime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("apply_ime")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Applies text from the <a href="https://en.wikipedia.org/wiki/Input_method">Input Method Editor</a> (IME) to each caret and closes the IME if it is open.
    public final func applyIme() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_apply_ime, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_editable, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_editable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_editable, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text_direction")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_text_direction, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_direction")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 797257663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text_direction() -> Control.TextDirection {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextEdit.method_get_text_direction, handle, nil, &_result)
        return Control.TextDirection (rawValue: _result)!
    }
    
    fileprivate static let method_set_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_language")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_language, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_language: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_language")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_language() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextEdit.method_get_language, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_structured_text_bidi_override, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3385126229)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override() -> TextServer.StructuredTextParser {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextEdit.method_get_structured_text_bidi_override, handle, nil, &_result)
        return TextServer.StructuredTextParser (rawValue: _result)!
    }
    
    fileprivate static let method_set_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_structured_text_bidi_override_options")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_structured_text_bidi_override_options, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_structured_text_bidi_override_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_structured_text_bidi_override_options")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_structured_text_bidi_override_options() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(TextEdit.method_get_structured_text_bidi_override_options, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_tab_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tab_size")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the tab size for the ``TextEdit`` to use.
    public final func setTabSize(_ size: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_tab_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tab_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tab_size")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the ``TextEdit``'s' tab size.
    public final func getTabSize() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_tab_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_indent_wrapped_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_indent_wrapped_lines")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_indent_wrapped_lines(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_indent_wrapped_lines, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_indent_wrapped_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_indent_wrapped_lines")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_indent_wrapped_lines() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_indent_wrapped_lines, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_overtype_mode_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_overtype_mode_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `true`, enables overtype mode. In this mode, typing overrides existing text instead of inserting text. The ``ProjectSettings/input/uiTextToggleInsertMode`` action toggles overtype mode. See ``isOvertypeModeEnabled()``.
    public final func setOvertypeModeEnabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_overtype_mode_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_overtype_mode_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_overtype_mode_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if overtype mode is enabled. See ``setOvertypeModeEnabled(_:)``.
    public final func isOvertypeModeEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_overtype_mode_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_context_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_context_menu_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_context_menu_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_context_menu_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_context_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_context_menu_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_context_menu_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_context_menu_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_emoji_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emoji_menu_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_emoji_menu_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_emoji_menu_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_emoji_menu_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_emoji_menu_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_emoji_menu_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_shortcut_keys_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shortcut_keys_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shortcut_keys_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_shortcut_keys_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_shortcut_keys_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_shortcut_keys_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_shortcut_keys_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_shortcut_keys_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_virtual_keyboard_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_virtual_keyboard_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_virtual_keyboard_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_virtual_keyboard_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_virtual_keyboard_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_virtual_keyboard_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_virtual_keyboard_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_virtual_keyboard_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_middle_mouse_paste_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_middle_mouse_paste_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_middle_mouse_paste_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_middle_mouse_paste_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_middle_mouse_paste_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_middle_mouse_paste_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_middle_mouse_paste_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_middle_mouse_paste_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_empty_selection_clipboard_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_empty_selection_clipboard_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_empty_selection_clipboard_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_empty_selection_clipboard_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_empty_selection_clipboard_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_empty_selection_clipboard_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_empty_selection_clipboard_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_empty_selection_clipboard_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Performs a full reset of ``TextEdit``, including undo history.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_text, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_text() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextEdit.method_get_text, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_line_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_count")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of lines in the text.
    public final func getLineCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_line_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_placeholder")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_placeholder, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_placeholder")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_placeholder() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextEdit.method_get_placeholder, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the text for a specific `line`.
    /// 
    /// Carets on the line will attempt to keep their visual x position.
    /// 
    public final func setLine(_ line: Int32, newText: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            let newText = GString(newText)
            withUnsafePointer(to: newText.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_line, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the text of a specific line.
    public final func getLine(_ line: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_line, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_line_with_ime: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_with_ime")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns line text as it is currently displayed, including IME composition string.
    public final func getLineWithIme(line: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_line_with_ime, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_line_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_width")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 688195400)!
            }
            
        }
        
    }()
    
    /// Returns the width in pixels of the `wrapIndex` on `line`.
    public final func getLineWidth(line: Int32, wrapIndex: Int32 = -1) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: wrapIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_line_width, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_height")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the maximum value of the line height among all lines.
    /// 
    /// > Note: The return value is influenced by [theme_item line_spacing] and [theme_item font_size]. And it will not be less than `1`.
    /// 
    public final func getLineHeight() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_line_height, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_indent_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_indent_level")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the indent level of the given line. This is the number of spaces and tabs at the beginning of the line, with the tabs taking the tab size into account (see ``getTabSize()``).
    public final func getIndentLevel(line: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_indent_level, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_first_non_whitespace_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_first_non_whitespace_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the first column containing a non-whitespace character on the given line. If there is only whitespace, returns the number of characters.
    public final func getFirstNonWhitespaceColumn(line: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_first_non_whitespace_column, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_swap_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("swap_lines")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Swaps the two lines. Carets will be swapped with the lines.
    public final func swapLines(fromLine: Int32, toLine: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromLine) { pArg0 in
            withUnsafePointer(to: toLine) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_swap_lines, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_insert_line_at: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("insert_line_at")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Inserts a new line with `text` at `line`.
    public final func insertLineAt(line: Int32, text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            let text = GString(text)
            withUnsafePointer(to: text.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_insert_line_at, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_line_at: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_line_at")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 972357352)!
            }
            
        }
        
    }()
    
    /// Removes the line of text at `line`. Carets on this line will attempt to match their previous visual x position.
    /// 
    /// If `moveCaretsDown` is `true` carets will move to the next line down, otherwise carets will move up.
    /// 
    public final func removeLineAt(line: Int32, moveCaretsDown: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: moveCaretsDown) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_remove_line_at, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_insert_text_at_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("insert_text_at_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2697778442)!
            }
            
        }
        
    }()
    
    /// Insert the specified text at the caret position.
    public final func insertTextAtCaret(text: String, caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: caretIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_insert_text_at_caret, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_insert_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("insert_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1881564334)!
            }
            
        }
        
    }()
    
    /// Inserts the `text` at `line` and `column`.
    /// 
    /// If `beforeSelectionBegin` is `true`, carets and selections that begin at `line` and `column` will moved to the end of the inserted text, along with all carets after it.
    /// 
    /// If `beforeSelectionEnd` is `true`, selections that end at `line` and `column` will be extended to the end of the inserted text. These parameters can be used to insert text inside of or outside of selections.
    /// 
    public final func insertText(_ text: String, line: Int32, column: Int32, beforeSelectionBegin: Bool = true, beforeSelectionEnd: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: line) { pArg1 in
                withUnsafePointer(to: column) { pArg2 in
                    withUnsafePointer(to: beforeSelectionBegin) { pArg3 in
                        withUnsafePointer(to: beforeSelectionEnd) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextEdit.method_insert_text, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4275841770)!
            }
            
        }
        
    }()
    
    /// Removes text between the given positions.
    public final func removeText(fromLine: Int32, fromColumn: Int32, toLine: Int32, toColumn: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromLine) { pArg0 in
            withUnsafePointer(to: fromColumn) { pArg1 in
                withUnsafePointer(to: toLine) { pArg2 in
                    withUnsafePointer(to: toColumn) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextEdit.method_remove_text, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_last_unhidden_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_last_unhidden_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the last unhidden line in the entire ``TextEdit``.
    public final func getLastUnhiddenLine() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_last_unhidden_line, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_next_visible_line_offset_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next_visible_line_offset_from")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175239445)!
            }
            
        }
        
    }()
    
    /// Returns the count to the next visible line from `line` to `line + visible_amount`. Can also count backwards. For example if a ``TextEdit`` has 5 lines with lines 2 and 3 hidden, calling this with `line = 1, visible_amount = 1` would return 3.
    public final func getNextVisibleLineOffsetFrom(line: Int32, visibleAmount: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: visibleAmount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_next_visible_line_offset_from, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_next_visible_line_index_offset_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next_visible_line_index_offset_from")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3386475622)!
            }
            
        }
        
    }()
    
    /// Similar to ``getNextVisibleLineOffsetFrom(line:visibleAmount:)``, but takes into account the line wrap indexes. In the returned vector, `x` is the line, `y` is the wrap index.
    public final func getNextVisibleLineIndexOffsetFrom(line: Int32, wrapIndex: Int32, visibleAmount: Int32) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: wrapIndex) { pArg1 in
                withUnsafePointer(to: visibleAmount) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_get_next_visible_line_index_offset_from, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_backspace: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("backspace")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Called when the user presses the backspace key. Can be overridden with ``_backspace(caretIndex:)``.
    public final func backspace(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_backspace, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_cut: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("cut")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Cut's the current selection. Can be overridden with ``_cut(caretIndex:)``.
    public final func cut(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_cut, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_copy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("copy")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Copies the current text selection. Can be overridden with ``_copy(caretIndex:)``.
    public final func copy(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_copy, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_paste: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("paste")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Paste at the current location. Can be overridden with ``_paste(caretIndex:)``.
    public final func paste(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_paste, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_paste_primary_clipboard: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("paste_primary_clipboard")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Pastes the primary clipboard.
    public final func pastePrimaryClipboard(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_paste_primary_clipboard, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_start_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start_action")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2834827583)!
            }
            
        }
        
    }()
    
    /// Starts an action, will end the current action if `action` is different.
    /// 
    /// An action will also end after a call to ``endAction()``, after ``ProjectSettings/gui/timers/textEditIdleDetectSec`` is triggered or a new undoable step outside the ``startAction(_:)`` and ``endAction()`` calls.
    /// 
    public final func startAction(_ action: TextEdit.EditAction) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: action.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_start_action, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_end_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("end_action")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Marks the end of steps in the current action started with ``startAction(_:)``.
    public final func endAction() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_end_action, handle, nil, nil)
        
    }
    
    fileprivate static let method_begin_complex_operation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("begin_complex_operation")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Starts a multipart edit. All edits will be treated as one action until ``endComplexOperation()`` is called.
    public final func beginComplexOperation() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_begin_complex_operation, handle, nil, nil)
        
    }
    
    fileprivate static let method_end_complex_operation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("end_complex_operation")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Ends a multipart edit, started with ``beginComplexOperation()``. If called outside a complex operation, the current operation is pushed onto the undo/redo stack.
    public final func endComplexOperation() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_end_complex_operation, handle, nil, nil)
        
    }
    
    fileprivate static let method_has_undo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_undo")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an "undo" action is available.
    public final func hasUndo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_has_undo, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_redo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_redo")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a "redo" action is available.
    public final func hasRedo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_has_redo, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_undo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("undo")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Perform undo operation.
    public final func undo() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_undo, handle, nil, nil)
        
    }
    
    fileprivate static let method_redo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("redo")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Perform redo operation.
    public final func redo() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_redo, handle, nil, nil)
        
    }
    
    fileprivate static let method_clear_undo_history: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_undo_history")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the undo history.
    public final func clearUndoHistory() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_clear_undo_history, handle, nil, nil)
        
    }
    
    fileprivate static let method_tag_saved_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("tag_saved_version")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Tag the current version as saved.
    public final func tagSavedVersion() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_tag_saved_version, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_version")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current version of the ``TextEdit``. The version is a count of recorded operations by the undo/redo history.
    public final func getVersion() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_version, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_saved_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_saved_version")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the last tagged saved version from ``tagSavedVersion()``.
    public final func getSavedVersion() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_saved_version, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_search_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_search_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the search text. See ``setSearchFlags(_:)``.
    public final func setSearchText(_ searchText: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let searchText = GString(searchText)
        withUnsafePointer(to: searchText.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_search_text, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_search_flags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_search_flags")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the search `flags`. This is used with ``setSearchText(_:)`` to highlight occurrences of the searched text. Search flags can be specified from the ``TextEdit/SearchFlags`` enum.
    public final func setSearchFlags(_ flags: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flags) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_search_flags, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_search: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("search")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1203739136)!
            }
            
        }
        
    }()
    
    /// Perform a search inside the text. Search flags can be specified in the ``TextEdit/SearchFlags`` enum.
    /// 
    /// In the returned vector, `x` is the column, `y` is the line. If no results are found, both are equal to `-1`.
    /// 
    public final func search(text: String, flags: UInt32, fromLine: Int32, fromColumn: Int32) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        let text = GString(text)
        withUnsafePointer(to: text.content) { pArg0 in
            withUnsafePointer(to: flags) { pArg1 in
                withUnsafePointer(to: fromLine) { pArg2 in
                    withUnsafePointer(to: fromColumn) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextEdit.method_search, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_tooltip_request_func: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tooltip_request_func")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611583062)!
            }
            
        }
        
    }()
    
    /// Provide custom tooltip text. The callback method must take the following args: `hovered_word: String`.
    public final func setTooltipRequestFunc(callback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: callback.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_tooltip_request_func, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_local_mouse_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_mouse_pos")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the local mouse position adjusted for the text direction.
    public final func getLocalMousePos() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(TextEdit.method_get_local_mouse_pos, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_word_at_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_word_at_pos")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3674420000)!
            }
            
        }
        
    }()
    
    /// Returns the word at `position`.
    public final func getWordAtPos(position: Vector2) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_word_at_pos, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_line_column_at_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_column_at_pos")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3472935744)!
            }
            
        }
        
    }()
    
    /// Returns the line and column at the given position. In the returned vector, `x` is the column and `y` is the line.
    /// 
    /// If `clampLine` is `false` and `position` is below the last line, `Vector2i(-1, -1)` is returned.
    /// 
    /// If `clampColumn` is `false` and `position` is outside the column range of the line, `Vector2i(-1, -1)` is returned.
    /// 
    public final func getLineColumnAtPos(position: Vector2i, clampLine: Bool = true, clampColumn: Bool = true) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: clampLine) { pArg1 in
                withUnsafePointer(to: clampColumn) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_get_line_column_at_pos, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_pos_at_line_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pos_at_line_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 410388347)!
            }
            
        }
        
    }()
    
    /// Returns the local position for the given `line` and `column`. If `x` or `y` of the returned vector equal `-1`, the position is outside of the viewable area of the control.
    /// 
    /// > Note: The Y position corresponds to the bottom side of the line. Use ``getRectAtLineColumn(line:column:)`` to get the top side position.
    /// 
    public final func getPosAtLineColumn(line: Int32, column: Int32) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_pos_at_line_column, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_rect_at_line_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rect_at_line_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3256618057)!
            }
            
        }
        
    }()
    
    /// Returns the local position and size for the grapheme at the given `line` and `column`. If `x` or `y` position of the returned rect equal `-1`, the position is outside of the viewable area of the control.
    /// 
    /// > Note: The Y position of the returned rect corresponds to the top side of the line, unlike ``getPosAtLineColumn(line:column:)`` which returns the bottom side.
    /// 
    public final func getRectAtLineColumn(line: Int32, column: Int32) -> Rect2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2i = Rect2i ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_rect_at_line_column, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_minimap_line_at_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_minimap_line_at_pos")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2485466453)!
            }
            
        }
        
    }()
    
    /// Returns the equivalent minimap line at `position`.
    public final func getMinimapLineAtPos(position: Vector2i) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_minimap_line_at_pos, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_dragging_cursor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_dragging_cursor")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the user is dragging their mouse for scrolling, selecting, or text dragging.
    public final func isDraggingCursor() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_dragging_cursor, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_mouse_over_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_mouse_over_selection")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1840282309)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the mouse is over a selection. If `edges` is `true`, the edges are considered part of the selection.
    public final func isMouseOverSelection(edges: Bool, caretIndex: Int32 = -1) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: edges) { pArg0 in
            withUnsafePointer(to: caretIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_is_mouse_over_selection, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_caret_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_type")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1211596914)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_caret_type(_ type: TextEdit.CaretType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_caret_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_caret_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_type")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2830252959)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_caret_type() -> TextEdit.CaretType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextEdit.method_get_caret_type, handle, nil, &_result)
        return TextEdit.CaretType (rawValue: _result)!
    }
    
    fileprivate static let method_set_caret_blink_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_blink_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_caret_blink_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_caret_blink_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_caret_blink_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_caret_blink_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_caret_blink_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_caret_blink_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_caret_blink_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_blink_interval")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_caret_blink_interval, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_caret_blink_interval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_blink_interval")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_caret_blink_interval() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextEdit.method_get_caret_blink_interval, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_caret_when_editable_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_caret_when_editable_disabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_caret_when_editable_disabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_draw_caret_when_editable_disabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_caret_when_editable_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_caret_when_editable_disabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_caret_when_editable_disabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_drawing_caret_when_editable_disabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_move_caret_on_right_click_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_move_caret_on_right_click_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_move_caret_on_right_click_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_move_caret_on_right_click_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_move_caret_on_right_click_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_move_caret_on_right_click_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_move_caret_on_right_click_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_move_caret_on_right_click_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_caret_mid_grapheme_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_mid_grapheme_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_caret_mid_grapheme_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_caret_mid_grapheme_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_caret_mid_grapheme_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_caret_mid_grapheme_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_caret_mid_grapheme_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_multiple_carets_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_multiple_carets_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_multiple_carets_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_multiple_carets_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_multiple_carets_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_multiple_carets_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_multiple_carets_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_multiple_carets_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 50157827)!
            }
            
        }
        
    }()
    
    /// Adds a new caret at the given location. Returns the index of the new caret, or `-1` if the location is invalid.
    public final func addCaret(line: Int32, column: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_add_caret, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_remove_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the given caret index.
    /// 
    /// > Note: This can result in adjustment of all other caret indices.
    /// 
    public final func removeCaret(_ caret: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caret) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_remove_caret, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_secondary_carets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_secondary_carets")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all additional carets.
    public final func removeSecondaryCarets() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_remove_secondary_carets, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_caret_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_count")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of carets in this ``TextEdit``.
    public final func getCaretCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_caret_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_caret_at_carets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_caret_at_carets")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Adds an additional caret above or below every caret. If `below` is `true` the new caret will be added below and above otherwise.
    public final func addCaretAtCarets(below: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: below) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_add_caret_at_carets, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_sorted_carets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sorted_carets")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2131714034)!
            }
            
        }
        
    }()
    
    /// Returns the carets sorted by selection beginning from lowest line and column to highest (from top to bottom of text).
    /// 
    /// If `includeIgnoredCarets` is `false`, carets from ``multicaretEditIgnoreCaret(caretIndex:)`` will be ignored.
    /// 
    public final func getSortedCarets(includeIgnoredCarets: Bool = false) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: includeIgnoredCarets) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_sorted_carets, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_collapse_carets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("collapse_carets")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 228654177)!
            }
            
        }
        
    }()
    
    /// Collapse all carets in the given range to the `fromLine` and `fromColumn` position.
    /// 
    /// `inclusive` applies to both ends.
    /// 
    /// If ``isInMulitcaretEdit()`` is `true`, carets that are collapsed will be `true` for ``multicaretEditIgnoreCaret(caretIndex:)``.
    /// 
    /// ``mergeOverlappingCarets()`` will be called if any carets were collapsed.
    /// 
    public final func collapseCarets(fromLine: Int32, fromColumn: Int32, toLine: Int32, toColumn: Int32, inclusive: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromLine) { pArg0 in
            withUnsafePointer(to: fromColumn) { pArg1 in
                withUnsafePointer(to: toLine) { pArg2 in
                    withUnsafePointer(to: toColumn) { pArg3 in
                        withUnsafePointer(to: inclusive) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextEdit.method_collapse_carets, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_merge_overlapping_carets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("merge_overlapping_carets")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Merges any overlapping carets. Will favor the newest caret, or the caret with a selection.
    /// 
    /// If ``isInMulitcaretEdit()`` is `true`, the merge will be queued to happen at the end of the multicaret edit. See ``beginMulticaretEdit()`` and ``endMulticaretEdit()``.
    /// 
    /// > Note: This is not called when a caret changes position but after certain actions, so it is possible to get into a state where carets overlap.
    /// 
    public final func mergeOverlappingCarets() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_merge_overlapping_carets, handle, nil, nil)
        
    }
    
    fileprivate static let method_begin_multicaret_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("begin_multicaret_edit")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Starts an edit for multiple carets. The edit must be ended with ``endMulticaretEdit()``. Multicaret edits can be used to edit text at multiple carets and delay merging the carets until the end, so the caret indexes aren't affected immediately. ``beginMulticaretEdit()`` and ``endMulticaretEdit()`` can be nested, and the merge will happen at the last ``endMulticaretEdit()``.
    /// 
    public final func beginMulticaretEdit() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_begin_multicaret_edit, handle, nil, nil)
        
    }
    
    fileprivate static let method_end_multicaret_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("end_multicaret_edit")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Ends an edit for multiple carets, that was started with ``beginMulticaretEdit()``. If this was the last ``endMulticaretEdit()`` and ``mergeOverlappingCarets()`` was called, carets will be merged.
    public final func endMulticaretEdit() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_end_multicaret_edit, handle, nil, nil)
        
    }
    
    fileprivate static let method_is_in_mulitcaret_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_in_mulitcaret_edit")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a ``beginMulticaretEdit()`` has been called and ``endMulticaretEdit()`` has not yet been called.
    public final func isInMulitcaretEdit() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_in_mulitcaret_edit, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_multicaret_edit_ignore_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("multicaret_edit_ignore_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `caretIndex` should be ignored as part of a multicaret edit. See ``beginMulticaretEdit()`` and ``endMulticaretEdit()``. Carets that should be ignored are ones that were part of removed text and will likely be merged at the end of the edit, or carets that were added during the edit.
    /// 
    /// It is recommended to `continue` within a loop iterating on multiple carets if a caret should be ignored.
    /// 
    public final func multicaretEditIgnoreCaret(caretIndex: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_multicaret_edit_ignore_caret, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_caret_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_caret_visible")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1051549951)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the caret is visible, `false` otherwise. A caret will be considered hidden if it is outside the scrollable area when scrolling is enabled.
    /// 
    /// > Note: ``isCaretVisible(caretIndex:)`` does not account for a caret being off-screen if it is still within the scrollable area. It will return `true` even if the caret is off-screen as long as it meets ``TextEdit``'s own conditions for being visible. This includes uses of ``scrollFitContentWidth`` and ``scrollFitContentHeight`` that cause the ``TextEdit`` to expand beyond the viewport's bounds.
    /// 
    public final func isCaretVisible(caretIndex: Int32 = 0) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_is_caret_visible, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_caret_draw_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_draw_pos")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 478253731)!
            }
            
        }
        
    }()
    
    /// Returns the caret pixel draw position.
    public final func getCaretDrawPos(caretIndex: Int32 = 0) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_caret_draw_pos, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_caret_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1302582944)!
            }
            
        }
        
    }()
    
    /// Moves the caret to the specified `line` index. The caret column will be moved to the same visual position it was at the last time ``setCaretColumn(_:adjustViewport:caretIndex:)`` was called, or clamped to the end of the line.
    /// 
    /// If `adjustViewport` is `true`, the viewport will center at the caret position after the move occurs.
    /// 
    /// If `canBeHidden` is `true`, the specified `line` can be hidden.
    /// 
    /// If `wrapIndex` is `-1`, the caret column will be clamped to the `line`'s length. If `wrapIndex` is greater than `-1`, the column will be moved to attempt to match the visual x position on the line's `wrapIndex` to the position from the last time ``setCaretColumn(_:adjustViewport:caretIndex:)`` was called.
    /// 
    /// > Note: If supporting multiple carets this will not check for any overlap. See ``mergeOverlappingCarets()``.
    /// 
    public final func setCaretLine(_ line: Int32, adjustViewport: Bool = true, canBeHidden: Bool = true, wrapIndex: Int32 = 0, caretIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: adjustViewport) { pArg1 in
                withUnsafePointer(to: canBeHidden) { pArg2 in
                    withUnsafePointer(to: wrapIndex) { pArg3 in
                        withUnsafePointer(to: caretIndex) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextEdit.method_set_caret_line, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_caret_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the line the editing caret is on.
    public final func getCaretLine(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_caret_line, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_caret_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_caret_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3796796178)!
            }
            
        }
        
    }()
    
    /// Moves the caret to the specified `column` index.
    /// 
    /// If `adjustViewport` is `true`, the viewport will center at the caret position after the move occurs.
    /// 
    /// > Note: If supporting multiple carets this will not check for any overlap. See ``mergeOverlappingCarets()``.
    /// 
    public final func setCaretColumn(_ column: Int32, adjustViewport: Bool = true, caretIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: adjustViewport) { pArg1 in
                withUnsafePointer(to: caretIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_set_caret_column, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_caret_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the column the editing caret is at.
    public final func getCaretColumn(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_caret_column, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_caret_wrap_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_wrap_index")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the wrap index the editing caret is on.
    public final func getCaretWrapIndex(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_caret_wrap_index, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_word_under_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_word_under_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3929349208)!
            }
            
        }
        
    }()
    
    /// Returns a ``String`` text with the word under the caret's location.
    public final func getWordUnderCaret(caretIndex: Int32 = -1) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_word_under_caret, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_use_default_word_separators: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_default_word_separators")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_default_word_separators(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_use_default_word_separators, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_default_word_separators_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_default_word_separators_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_default_word_separators_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_default_word_separators_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_custom_word_separators: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_custom_word_separators")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_custom_word_separators(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_use_custom_word_separators, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_custom_word_separators_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_custom_word_separators_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_custom_word_separators_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_custom_word_separators_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_custom_word_separators: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_word_separators")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_custom_word_separators(_ customWordSeparators: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let customWordSeparators = GString(customWordSeparators)
        withUnsafePointer(to: customWordSeparators.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_custom_word_separators, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_word_separators: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_word_separators")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_custom_word_separators() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextEdit.method_get_custom_word_separators, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_selecting_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selecting_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_selecting_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_selecting_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_selecting_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_selecting_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_selecting_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_deselect_on_focus_loss_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_deselect_on_focus_loss_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_deselect_on_focus_loss_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_deselect_on_focus_loss_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_deselect_on_focus_loss_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_deselect_on_focus_loss_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_deselect_on_focus_loss_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_drag_and_drop_selection_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_drag_and_drop_selection_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(TextEdit.method_set_drag_and_drop_selection_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drag_and_drop_selection_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drag_and_drop_selection_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drag_and_drop_selection_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_drag_and_drop_selection_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_selection_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selection_mode")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1658801786)!
            }
            
        }
        
    }()
    
    /// Sets the current selection mode.
    public final func setSelectionMode(_ mode: TextEdit.SelectionMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_selection_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_selection_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_mode")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3750106938)!
            }
            
        }
        
    }()
    
    /// Returns the current selection mode.
    public final func getSelectionMode() -> TextEdit.SelectionMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextEdit.method_get_selection_mode, handle, nil, &_result)
        return TextEdit.SelectionMode (rawValue: _result)!
    }
    
    fileprivate static let method_select_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select_all")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Select all the text.
    /// 
    /// If ``selectingEnabled`` is `false`, no selection will occur.
    /// 
    public final func selectAll() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_select_all, handle, nil, nil)
        
    }
    
    fileprivate static let method_select_word_under_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select_word_under_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Selects the word under the caret.
    public final func selectWordUnderCaret(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_select_word_under_caret, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_selection_for_next_occurrence: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_selection_for_next_occurrence")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Adds a selection and a caret for the next occurrence of the current selection. If there is no active selection, selects word under caret.
    public final func addSelectionForNextOccurrence() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_add_selection_for_next_occurrence, handle, nil, nil)
        
    }
    
    fileprivate static let method_skip_selection_for_next_occurrence: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("skip_selection_for_next_occurrence")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Moves a selection and a caret for the next occurrence of the current selection. If there is no active selection, moves to the next occurrence of the word under caret.
    public final func skipSelectionForNextOccurrence() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextEdit.method_skip_selection_for_next_occurrence, handle, nil, nil)
        
    }
    
    fileprivate static let method_select: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("select")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2560984452)!
            }
            
        }
        
    }()
    
    /// Selects text from `originLine` and `originColumn` to `caretLine` and `caretColumn` for the given `caretIndex`. This moves the selection origin and the caret. If the positions are the same, the selection will be deselected.
    /// 
    /// If ``selectingEnabled`` is `false`, no selection will occur.
    /// 
    /// > Note: If supporting multiple carets this will not check for any overlap. See ``mergeOverlappingCarets()``.
    /// 
    public final func select(originLine: Int32, originColumn: Int32, caretLine: Int32, caretColumn: Int32, caretIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: originLine) { pArg0 in
            withUnsafePointer(to: originColumn) { pArg1 in
                withUnsafePointer(to: caretLine) { pArg2 in
                    withUnsafePointer(to: caretColumn) { pArg3 in
                        withUnsafePointer(to: caretIndex) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextEdit.method_select, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_selection")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2824505868)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the user has selected text.
    public final func hasSelection(caretIndex: Int32 = -1) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_has_selection, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_selected_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2309358862)!
            }
            
        }
        
    }()
    
    /// Returns the text inside the selection of a caret, or all the carets if `caretIndex` is its default value `-1`.
    public final func getSelectedText(caretIndex: Int32 = -1) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selected_text, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_selection_at_line_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_at_line_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1810224333)!
            }
            
        }
        
    }()
    
    /// Returns the caret index of the selection at the given `line` and `column`, or `-1` if there is none.
    /// 
    /// If `includeEdges` is `false`, the position must be inside the selection and not at either end. If `onlySelections` is `false`, carets without a selection will also be considered.
    /// 
    public final func getSelectionAtLineColumn(line: Int32, column: Int32, includeEdges: Bool = true, onlySelections: Bool = true) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: includeEdges) { pArg2 in
                    withUnsafePointer(to: onlySelections) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextEdit.method_get_selection_at_line_column, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_ranges_from_carets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_ranges_from_carets")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2393089247)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of line ranges where `x` is the first line and `y` is the last line. All lines within these ranges will have a caret on them or be part of a selection. Each line will only be part of one line range, even if it has multiple carets on it.
    /// 
    /// If a selection's end column (``getSelectionToColumn(caretIndex:)``) is at column `0`, that line will not be included. If a selection begins on the line after another selection ends and `mergeAdjacent` is `true`, or they begin and end on the same line, one line range will include both selections.
    /// 
    public final func getLineRangesFromCarets(onlySelections: Bool = false, mergeAdjacent: Bool = true) -> TypedArray<Vector2i> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: onlySelections) { pArg0 in
            withUnsafePointer(to: mergeAdjacent) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_line_ranges_from_carets, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<Vector2i>(takingOver: _result)
    }
    
    fileprivate static let method_get_selection_origin_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_origin_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the origin line of the selection. This is the opposite end from the caret.
    public final func getSelectionOriginLine(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_origin_line, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_selection_origin_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_origin_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the origin column of the selection. This is the opposite end from the caret.
    public final func getSelectionOriginColumn(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_origin_column, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_selection_origin_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selection_origin_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 195434140)!
            }
            
        }
        
    }()
    
    /// Sets the selection origin line to the `line` for the given `caretIndex`. If the selection origin is moved to the caret position, the selection will deselect.
    /// 
    /// If `canBeHidden` is `false`, The line will be set to the nearest unhidden line below or above.
    /// 
    /// If `wrapIndex` is `-1`, the selection origin column will be clamped to the `line`'s length. If `wrapIndex` is greater than `-1`, the column will be moved to attempt to match the visual x position on the line's `wrapIndex` to the position from the last time ``setSelectionOriginColumn(_:caretIndex:)`` or ``select(originLine:originColumn:caretLine:caretColumn:caretIndex:)`` was called.
    /// 
    public final func setSelectionOriginLine(_ line: Int32, canBeHidden: Bool = true, wrapIndex: Int32 = -1, caretIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: canBeHidden) { pArg1 in
                withUnsafePointer(to: wrapIndex) { pArg2 in
                    withUnsafePointer(to: caretIndex) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextEdit.method_set_selection_origin_line, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_selection_origin_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selection_origin_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2230941749)!
            }
            
        }
        
    }()
    
    /// Sets the selection origin column to the `column` for the given `caretIndex`. If the selection origin is moved to the caret position, the selection will deselect.
    public final func setSelectionOriginColumn(_ column: Int32, caretIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: caretIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_selection_origin_column, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_selection_from_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_from_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the selection begin line. Returns the caret line if there is no selection.
    public final func getSelectionFromLine(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_from_line, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_selection_from_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_from_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the selection begin column. Returns the caret column if there is no selection.
    public final func getSelectionFromColumn(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_from_column, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_selection_to_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_to_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the selection end line. Returns the caret line if there is no selection.
    public final func getSelectionToLine(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_to_line, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_selection_to_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_to_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the selection end column. Returns the caret column if there is no selection.
    public final func getSelectionToColumn(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_to_column, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_caret_after_selection_origin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_caret_after_selection_origin")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1051549951)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the caret of the selection is after the selection origin. This can be used to determine the direction of the selection.
    public final func isCaretAfterSelectionOrigin(caretIndex: Int32 = 0) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_is_caret_after_selection_origin, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_deselect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("deselect")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Deselects the current selection.
    public final func deselect(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_deselect, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_delete_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("delete_selection")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Deletes the selected text.
    public final func deleteSelection(caretIndex: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_delete_selection, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_line_wrapping_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_wrapping_mode")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2525115309)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_wrapping_mode(_ mode: TextEdit.LineWrappingMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_line_wrapping_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_wrapping_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_wrapping_mode")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3562716114)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_line_wrapping_mode() -> TextEdit.LineWrappingMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextEdit.method_get_line_wrapping_mode, handle, nil, &_result)
        return TextEdit.LineWrappingMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_autowrap_mode")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3289138044)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_autowrap_mode(_ autowrapMode: TextServer.AutowrapMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: autowrapMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_autowrap_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_autowrap_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_autowrap_mode")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1549071663)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_autowrap_mode() -> TextServer.AutowrapMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextEdit.method_get_autowrap_mode, handle, nil, &_result)
        return TextServer.AutowrapMode (rawValue: _result)!
    }
    
    fileprivate static let method_is_line_wrapped: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_wrapped")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns if the given line is wrapped.
    public final func isLineWrapped(line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_is_line_wrapped, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_wrap_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_wrap_count")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of times the given line is wrapped.
    public final func getLineWrapCount(line: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_line_wrap_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_wrap_index_at_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_wrap_index_at_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175239445)!
            }
            
        }
        
    }()
    
    /// Returns the wrap index of the given column on the given line. This ranges from `0` to ``getLineWrapCount(line:)``.
    public final func getLineWrapIndexAtColumn(line: Int32, column: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_line_wrap_index_at_column, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line_wrapped_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_wrapped_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 647634434)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``String``s representing each wrapped index.
    public final func getLineWrappedText(line: Int32) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_line_wrapped_text, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_smooth_scroll_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_smooth_scroll_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_smooth_scroll_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_smooth_scroll_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_smooth_scroll_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_smooth_scroll_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_smooth_scroll_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_smooth_scroll_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_v_scroll_bar: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_v_scroll_bar")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3226026593)!
            }
            
        }
        
    }()
    
    /// Returns the ``VScrollBar`` of the ``TextEdit``.
    public final func getVScrollBar() -> VScrollBar? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TextEdit.method_get_v_scroll_bar, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_h_scroll_bar: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_h_scroll_bar")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3774687988)!
            }
            
        }
        
    }()
    
    /// Returns the ``HScrollBar`` used by ``TextEdit``.
    public final func getHScrollBar() -> HScrollBar? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TextEdit.method_get_h_scroll_bar, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_v_scroll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_v_scroll")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_v_scroll(_ value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_v_scroll, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_v_scroll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_v_scroll")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_v_scroll() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextEdit.method_get_v_scroll, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_h_scroll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_h_scroll")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_h_scroll(_ value: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_h_scroll, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_h_scroll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_h_scroll")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_h_scroll() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_h_scroll, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_scroll_past_end_of_file_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scroll_past_end_of_file_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scroll_past_end_of_file_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_scroll_past_end_of_file_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_scroll_past_end_of_file_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_scroll_past_end_of_file_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_scroll_past_end_of_file_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_scroll_past_end_of_file_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_v_scroll_speed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_v_scroll_speed")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_v_scroll_speed(_ speed: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: speed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_v_scroll_speed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_v_scroll_speed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_v_scroll_speed")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_v_scroll_speed() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextEdit.method_get_v_scroll_speed, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fit_content_height_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fit_content_height_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fit_content_height_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_fit_content_height_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_fit_content_height_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_fit_content_height_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_fit_content_height_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_fit_content_height_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_fit_content_width_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fit_content_width_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fit_content_width_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_fit_content_width_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_fit_content_width_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_fit_content_width_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_fit_content_width_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_fit_content_width_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_scroll_pos_for_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scroll_pos_for_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3929084198)!
            }
            
        }
        
    }()
    
    /// Returns the scroll position for `wrapIndex` of `line`.
    public final func getScrollPosForLine(_ line: Int32, wrapIndex: Int32 = 0) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: wrapIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_scroll_pos_for_line, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_line_as_first_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_as_first_visible")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2230941749)!
            }
            
        }
        
    }()
    
    /// Positions the `wrapIndex` of `line` at the top of the viewport.
    public final func setLineAsFirstVisible(line: Int32, wrapIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: wrapIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_line_as_first_visible, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_first_visible_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_first_visible_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the first visible line.
    public final func getFirstVisibleLine() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_first_visible_line, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_line_as_center_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_as_center_visible")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2230941749)!
            }
            
        }
        
    }()
    
    /// Positions the `wrapIndex` of `line` at the center of the viewport.
    public final func setLineAsCenterVisible(line: Int32, wrapIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: wrapIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_line_as_center_visible, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_line_as_last_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_as_last_visible")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2230941749)!
            }
            
        }
        
    }()
    
    /// Positions the `wrapIndex` of `line` at the bottom of the viewport.
    public final func setLineAsLastVisible(line: Int32, wrapIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: wrapIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_line_as_last_visible, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_last_full_visible_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_last_full_visible_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the last visible line. Use ``getLastFullVisibleLineWrapIndex()`` for the wrap index.
    public final func getLastFullVisibleLine() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_last_full_visible_line, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_last_full_visible_line_wrap_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_last_full_visible_line_wrap_index")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the last visible wrap index of the last visible line.
    public final func getLastFullVisibleLineWrapIndex() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_last_full_visible_line_wrap_index, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_visible_line_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visible_line_count")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of lines that can visually fit, rounded down, based on this control's height.
    public final func getVisibleLineCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_visible_line_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_visible_line_count_in_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visible_line_count_in_range")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3175239445)!
            }
            
        }
        
    }()
    
    /// Returns the total number of lines between `fromLine` and `toLine` (inclusive) in the text. This includes wrapped lines and excludes folded lines. If the range covers all lines it is equivalent to ``getTotalVisibleLineCount()``.
    public final func getVisibleLineCountInRange(fromLine: Int32, toLine: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: fromLine) { pArg0 in
            withUnsafePointer(to: toLine) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_visible_line_count_in_range, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_total_visible_line_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_total_visible_line_count")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the total number of lines in the text. This includes wrapped lines and excludes folded lines. If ``wrapMode`` is set to ``LineWrappingMode/none`` and no lines are folded (see ``CodeEdit/isLineFolded(line:)``) then this is equivalent to ``getLineCount()``. See ``getVisibleLineCountInRange(fromLine:toLine:)`` for a limited range of lines.
    public final func getTotalVisibleLineCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_total_visible_line_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_adjust_viewport_to_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("adjust_viewport_to_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Adjust the viewport so the caret is visible.
    public final func adjustViewportToCaret(caretIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_adjust_viewport_to_caret, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_center_viewport_to_caret: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("center_viewport_to_caret")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Centers the viewport on the line the editing caret is at. This also resets the ``scrollHorizontal`` value to `0`.
    public final func centerViewportToCaret(caretIndex: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_center_viewport_to_caret, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_draw_minimap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_minimap")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_minimap(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_draw_minimap, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_minimap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_minimap")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_minimap() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_drawing_minimap, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_minimap_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_minimap_width")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_minimap_width(_ width: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_minimap_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_minimap_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_minimap_width")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_minimap_width() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_minimap_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_minimap_visible_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_minimap_visible_lines")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of lines that may be drawn on the minimap.
    public final func getMinimapVisibleLines() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_minimap_visible_lines, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_gutter")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1025054187)!
            }
            
        }
        
    }()
    
    /// Register a new gutter to this ``TextEdit``. Use `at` to have a specific gutter order. A value of `-1` appends the gutter to the right.
    public final func addGutter(at: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: at) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_add_gutter, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_gutter")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the gutter at the given index.
    public final func removeGutter(_ gutter: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_remove_gutter, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gutter_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gutter_count")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of gutters registered.
    public final func getGutterCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_gutter_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_gutter_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gutter_name")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501894301)!
            }
            
        }
        
    }()
    
    /// Sets the name of the gutter at the given index.
    public final func setGutterName(gutter: Int32, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gutter) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_gutter_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gutter_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gutter_name")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of the gutter at the given index.
    public final func getGutterName(gutter: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_gutter_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_gutter_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gutter_type")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1088959071)!
            }
            
        }
        
    }()
    
    /// Sets the type of gutter at the given index. Gutters can contain icons, text, or custom visuals. See ``TextEdit.GutterType`` for options.
    public final func setGutterType(gutter: Int32, type: TextEdit.GutterType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: type.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_gutter_type, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gutter_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gutter_type")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1159699127)!
            }
            
        }
        
    }()
    
    /// Returns the type of the gutter at the given index. Gutters can contain icons, text, or custom visuals. See ``TextEdit.GutterType`` for options.
    public final func getGutterType(gutter: Int32) -> TextEdit.GutterType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_gutter_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TextEdit.GutterType (rawValue: _result)!
    }
    
    fileprivate static let method_set_gutter_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gutter_width")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Set the width of the gutter at the given index.
    public final func setGutterWidth(gutter: Int32, width: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: width) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_gutter_width, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gutter_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gutter_width")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the width of the gutter at the given index.
    public final func getGutterWidth(gutter: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_gutter_width, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_gutter_draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gutter_draw")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, the gutter at the given index is drawn. The gutter type (``setGutterType(gutter:type:)``) determines how it is drawn. See ``isGutterDrawn(gutter:)``.
    public final func setGutterDraw(gutter: Int32, draw: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: draw) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_gutter_draw, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_gutter_drawn: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_gutter_drawn")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the gutter at the given index is currently drawn. See ``setGutterDraw(gutter:draw:)``.
    public final func isGutterDrawn(gutter: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_is_gutter_drawn, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_gutter_clickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gutter_clickable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, the mouse cursor will change to a pointing hand (``Control/CursorShape/pointingHand``) when hovering over the gutter at the given index. See ``isGutterClickable(gutter:)`` and ``setLineGutterClickable(line:gutter:clickable:)``.
    public final func setGutterClickable(gutter: Int32, clickable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: clickable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_gutter_clickable, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_gutter_clickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_gutter_clickable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the gutter at the given index is clickable. See ``setGutterClickable(gutter:clickable:)``.
    public final func isGutterClickable(gutter: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_is_gutter_clickable, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_gutter_overwritable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gutter_overwritable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, the line data of the gutter at the given index can be overridden when using ``mergeGutters(fromLine:toLine:)``. See ``isGutterOverwritable(gutter:)``.
    public final func setGutterOverwritable(gutter: Int32, overwritable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: overwritable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_gutter_overwritable, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_gutter_overwritable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_gutter_overwritable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the gutter at the given index is overwritable. See ``setGutterOverwritable(gutter:overwritable:)``.
    public final func isGutterOverwritable(gutter: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: gutter) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_is_gutter_overwritable, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_merge_gutters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("merge_gutters")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Merge the gutters from `fromLine` into `toLine`. Only overwritable gutters will be copied. See ``setGutterOverwritable(gutter:overwritable:)``.
    public final func mergeGutters(fromLine: Int32, toLine: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromLine) { pArg0 in
            withUnsafePointer(to: toLine) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_merge_gutters, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_gutter_custom_draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_gutter_custom_draw")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 957362965)!
            }
            
        }
        
    }()
    
    /// Set a custom draw callback for the gutter at the given index. `drawCallback` must take the following arguments: A line index integer, a gutter index integer, and an area ``Rect2``. This callback only works when the gutter type is ``GutterType/custom`` (see ``setGutterType(gutter:type:)``).
    public final func setGutterCustomDraw(column: Int32, drawCallback: Callable) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: column) { pArg0 in
            withUnsafePointer(to: drawCallback.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_gutter_custom_draw, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_total_gutter_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_total_gutter_width")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the total width of all gutters and internal padding.
    public final func getTotalGutterWidth() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TextEdit.method_get_total_gutter_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_line_gutter_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_gutter_metadata")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2060538656)!
            }
            
        }
        
    }()
    
    /// Sets the metadata for `gutter` on `line` to `metadata`.
    public final func setLineGutterMetadata(line: Int32, gutter: Int32, metadata: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: metadata.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_set_line_gutter_metadata, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_gutter_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_gutter_metadata")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 678354945)!
            }
            
        }
        
    }()
    
    /// Returns the metadata currently in `gutter` at `line`.
    public final func getLineGutterMetadata(line: Int32, gutter: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_line_gutter_metadata, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_line_gutter_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_gutter_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2285447957)!
            }
            
        }
        
    }()
    
    /// Sets the text for `gutter` on `line` to `text`. This only works when the gutter type is ``GutterType/string`` (see ``setGutterType(gutter:type:)``).
    public final func setLineGutterText(line: Int32, gutter: Int32, text: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_set_line_gutter_text, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_gutter_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_gutter_text")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1391810591)!
            }
            
        }
        
    }()
    
    /// Returns the text currently in `gutter` at `line`. This only works when the gutter type is ``GutterType/string`` (see ``setGutterType(gutter:type:)``).
    public final func getLineGutterText(line: Int32, gutter: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_line_gutter_text, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_line_gutter_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_gutter_icon")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 176101966)!
            }
            
        }
        
    }()
    
    /// Sets the icon for `gutter` on `line` to `icon`. This only works when the gutter type is ``GutterType/icon`` (see ``setGutterType(gutter:type:)``).
    public final func setLineGutterIcon(line: Int32, gutter: Int32, icon: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: icon?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_set_line_gutter_icon, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_gutter_icon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_gutter_icon")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2584904275)!
            }
            
        }
        
    }()
    
    /// Returns the icon currently in `gutter` at `line`. This only works when the gutter type is ``GutterType/icon`` (see ``setGutterType(gutter:type:)``).
    public final func getLineGutterIcon(line: Int32, gutter: Int32) -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_line_gutter_icon, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_line_gutter_item_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_gutter_item_color")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3733378741)!
            }
            
        }
        
    }()
    
    /// Sets the color for `gutter` on `line` to `color`.
    public final func setLineGutterItemColor(line: Int32, gutter: Int32, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_set_line_gutter_item_color, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_gutter_item_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_gutter_item_color")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2165839948)!
            }
            
        }
        
    }()
    
    /// Returns the color currently in `gutter` at `line`.
    public final func getLineGutterItemColor(line: Int32, gutter: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_get_line_gutter_item_color, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_line_gutter_clickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_gutter_clickable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1383440665)!
            }
            
        }
        
    }()
    
    /// If `clickable` is `true`, makes the `gutter` on the given `line` clickable. This is like ``setGutterClickable(gutter:clickable:)``, but for a single line. If ``isGutterClickable(gutter:)`` is `true`, this will not have any effect. See ``isLineGutterClickable(line:gutter:)`` and [signal gutter_clicked].
    public final func setLineGutterClickable(line: Int32, gutter: Int32, clickable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: clickable) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextEdit.method_set_line_gutter_clickable, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_line_gutter_clickable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_gutter_clickable")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2522259332)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the gutter at the given index on the given line is clickable. See ``setLineGutterClickable(line:gutter:clickable:)``.
    public final func isLineGutterClickable(line: Int32, gutter: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: gutter) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_is_line_gutter_clickable, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_line_background_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_background_color")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets the custom background color of the given line. If transparent, this color is applied on top of the default background color (See [theme_item background_color]). If set to `Color(0, 0, 0, 0)`, no additional color is applied.
    public final func setLineBackgroundColor(line: Int32, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextEdit.method_set_line_background_color, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_background_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_background_color")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3457211756)!
            }
            
        }
        
    }()
    
    /// Returns the custom background color of the given line. If no color is set, returns `Color(0, 0, 0, 0)`.
    public final func getLineBackgroundColor(line: Int32) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_line_background_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_syntax_highlighter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_syntax_highlighter")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2765644541)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_syntax_highlighter(_ syntaxHighlighter: SyntaxHighlighter?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: syntaxHighlighter?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_syntax_highlighter, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_syntax_highlighter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_syntax_highlighter")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2721131626)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_syntax_highlighter() -> SyntaxHighlighter? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TextEdit.method_get_syntax_highlighter, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_highlight_current_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_highlight_current_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_highlight_current_line(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_highlight_current_line, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_highlight_current_line_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_highlight_current_line_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_highlight_current_line_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_highlight_current_line_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_highlight_all_occurrences: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_highlight_all_occurrences")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_highlight_all_occurrences(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_highlight_all_occurrences, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_highlight_all_occurrences_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_highlight_all_occurrences_enabled")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_highlight_all_occurrences_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_highlight_all_occurrences_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_draw_control_chars: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_draw_control_chars")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_draw_control_chars() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_get_draw_control_chars, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_control_chars: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_control_chars")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_control_chars(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_draw_control_chars, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_draw_tabs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_tabs")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_tabs(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_draw_tabs, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_tabs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_tabs")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_tabs() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_drawing_tabs, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_spaces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_spaces")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_spaces(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_set_draw_spaces, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_spaces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_spaces")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_spaces() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_drawing_spaces, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_menu: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_menu")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 229722558)!
            }
            
        }
        
    }()
    
    /// Returns the ``PopupMenu`` of this ``TextEdit``. By default, this menu is displayed when right-clicking on the ``TextEdit``.
    /// 
    /// You can add custom menu items or remove standard ones. Make sure your IDs don't conflict with the standard ones (see ``TextEdit/MenuItems``). For example:
    /// 
    /// > Warning: This is a required internal node, removing and freeing it may cause a crash. If you wish to hide it or any of its children, use their ``Window/visible`` property.
    /// 
    public final func getMenu() -> PopupMenu? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(TextEdit.method_get_menu, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_is_menu_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_menu_visible")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the menu is visible. Use this instead of `get_menu().visible` to improve performance (so the creation of the menu is avoided). See ``getMenu()``.
    public final func isMenuVisible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextEdit.method_is_menu_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_menu_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("menu_option")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Executes a given action as defined in the ``TextEdit/MenuItems`` enum.
    public final func menuOption(_ option: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: option) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_menu_option, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_adjust_carets_after_edit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("adjust_carets_after_edit")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1770277138)!
            }
            
        }
        
    }()
    
    /// This method does nothing.
    public final func adjustCaretsAfterEdit(caret: Int32, fromLine: Int32, fromCol: Int32, toLine: Int32, toCol: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: caret) { pArg0 in
            withUnsafePointer(to: fromLine) { pArg1 in
                withUnsafePointer(to: fromCol) { pArg2 in
                    withUnsafePointer(to: toLine) { pArg3 in
                        withUnsafePointer(to: toCol) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextEdit.method_adjust_carets_after_edit, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_caret_index_edit_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_caret_index_edit_order")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    /// Returns a list of caret indexes in their edit order, this done from bottom to top. Edit order refers to the way actions such as ``insertTextAtCaret(text:caretIndex:)`` are applied.
    public final func getCaretIndexEditOrder() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(TextEdit.method_get_caret_index_edit_order, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_selection_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_line")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the original start line of the selection.
    public final func getSelectionLine(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_line, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_selection_column: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection_column")
        return withUnsafePointer(to: &TextEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the original start column of the selection.
    public final func getSelectionColumn(caretIndex: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: caretIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextEdit.method_get_selection_column, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_backspace":
                return _TextEdit_proxy_backspace
            case "_copy":
                return _TextEdit_proxy_copy
            case "_cut":
                return _TextEdit_proxy_cut
            case "_handle_unicode_input":
                return _TextEdit_proxy_handle_unicode_input
            case "_paste":
                return _TextEdit_proxy_paste
            case "_paste_primary_clipboard":
                return _TextEdit_proxy_paste_primary_clipboard
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when ``clear()`` is called or ``text`` is set.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.textSet.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var textSet: SimpleSignal { SimpleSignal (target: self, signalName: "text_set") }
    
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
    /// obj.textChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var textChanged: SimpleSignal { SimpleSignal (target: self, signalName: "text_changed") }
    
    /// Emitted immediately when the text changes.
    /// 
    /// When text is added `fromLine` will be less than `toLine`. On a remove `toLine` will be less than `fromLine`.
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
    /// obj.linesEditedFrom.connect { fromLine, toLine in
    ///    print ("caught signal")
    /// }
    /// ```
    public var linesEditedFrom: SignalWithArguments<Int64, Int64> { SignalWithArguments<Int64, Int64> (target: self, signalName: "lines_edited_from") }
    
    /// Emitted when any caret changes position.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.caretChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var caretChanged: SimpleSignal { SimpleSignal (target: self, signalName: "caret_changed") }
    
    /// Emitted when a gutter is clicked.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.gutterClicked.connect { line, gutter in
    ///    print ("caught signal")
    /// }
    /// ```
    public var gutterClicked: SignalWithArguments<Int64, Int64> { SignalWithArguments<Int64, Int64> (target: self, signalName: "gutter_clicked") }
    
    /// Emitted when a gutter is added.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.gutterAdded.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var gutterAdded: SimpleSignal { SimpleSignal (target: self, signalName: "gutter_added") }
    
    /// Emitted when a gutter is removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.gutterRemoved.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var gutterRemoved: SimpleSignal { SimpleSignal (target: self, signalName: "gutter_removed") }
    
}

// Support methods for proxies
func _TextEdit_proxy_backspace (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextEdit else { return }
    swiftObject._backspace (caretIndex: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _TextEdit_proxy_copy (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextEdit else { return }
    swiftObject._copy (caretIndex: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _TextEdit_proxy_cut (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextEdit else { return }
    swiftObject._cut (caretIndex: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _TextEdit_proxy_handle_unicode_input (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextEdit else { return }
    swiftObject._handleUnicodeInput (unicodeChar: args [0]!.assumingMemoryBound (to: Int32.self).pointee, caretIndex: args [1]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _TextEdit_proxy_paste (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextEdit else { return }
    swiftObject._paste (caretIndex: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

func _TextEdit_proxy_paste_primary_clipboard (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextEdit else { return }
    swiftObject._pastePrimaryClipboard (caretIndex: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
}

