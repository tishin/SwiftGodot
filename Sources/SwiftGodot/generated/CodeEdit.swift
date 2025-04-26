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


/// A multiline text editor designed for editing code.
/// 
/// CodeEdit is a specialized ``TextEdit`` designed for editing plain text code files. It has many features commonly found in code editors such as line numbers, line folding, code completion, indent management, and string/comment management.
/// 
/// > Note: Regardless of locale, ``CodeEdit`` will by default always use left-to-right text direction to correctly display source code.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``breakpointToggled``
/// - ``codeCompletionRequested``
/// - ``symbolLookup``
/// - ``symbolValidate``
/// - ``symbolHovered``
open class CodeEdit: TextEdit {
    private static var className = StringName("CodeEdit")
    override open class var godotClassName: StringName { className }
    public enum CodeCompletionKind: Int64, CaseIterable {
        /// Marks the option as a class.
        case `class` = 0 // KIND_CLASS
        /// Marks the option as a function.
        case function = 1 // KIND_FUNCTION
        /// Marks the option as a Godot signal.
        case signal = 2 // KIND_SIGNAL
        /// Marks the option as a variable.
        case variable = 3 // KIND_VARIABLE
        /// Marks the option as a member.
        case member = 4 // KIND_MEMBER
        /// Marks the option as an enum entry.
        case `enum` = 5 // KIND_ENUM
        /// Marks the option as a constant.
        case constant = 6 // KIND_CONSTANT
        /// Marks the option as a Godot node path.
        case nodePath = 7 // KIND_NODE_PATH
        /// Marks the option as a file path.
        case filePath = 8 // KIND_FILE_PATH
        /// Marks the option as unclassified or plain text.
        case plainText = 9 // KIND_PLAIN_TEXT
    }
    
    public enum CodeCompletionLocation: Int64, CaseIterable {
        /// The option is local to the location of the code completion query - e.g. a local variable. Subsequent value of location represent options from the outer class, the exact value represent how far they are (in terms of inner classes).
        case local = 0 // LOCATION_LOCAL
        /// The option is from the containing class or a parent class, relative to the location of the code completion query. Perform a bitwise OR with the class depth (e.g. `0` for the local class, `1` for the parent, `2` for the grandparent, etc.) to store the depth of an option in the class or a parent class.
        case parentMask = 256 // LOCATION_PARENT_MASK
        /// The option is from user code which is not local and not in a derived class (e.g. Autoload Singletons).
        case otherUserCode = 512 // LOCATION_OTHER_USER_CODE
        /// The option is from other engine code, not covered by the other enum constants - e.g. built-in classes.
        case other = 1024 // LOCATION_OTHER
    }
    
    
    /* Properties */
    
    /// Set when a validated word from [signal symbol_validate] is clicked, the [signal symbol_lookup] should be emitted.
    final public var symbolLookupOnClick: Bool {
        get {
            return is_symbol_lookup_on_click_enabled ()
        }
        
        set {
            set_symbol_lookup_on_click_enabled (newValue)
        }
        
    }
    
    /// Set when a word is hovered, the [signal symbol_hovered] should be emitted.
    final public var symbolTooltipOnHover: Bool {
        get {
            return is_symbol_tooltip_on_hover_enabled ()
        }
        
        set {
            set_symbol_tooltip_on_hover_enabled (newValue)
        }
        
    }
    
    /// If `true`, lines can be folded. Otherwise, line folding methods like ``foldLine(_:)`` will not work and ``canFoldLine(_:)`` will always return `false`. See ``guttersDrawFoldGutter``.
    final public var lineFolding: Bool {
        get {
            return is_line_folding_enabled ()
        }
        
        set {
            set_line_folding_enabled (newValue)
        }
        
    }
    
    /// Draws vertical lines at the provided columns. The first entry is considered a main hard guideline and is draw more prominently.
    final public var lineLengthGuidelines: TypedArray<Int64> {
        get {
            return get_line_length_guidelines ()
        }
        
        set {
            set_line_length_guidelines (newValue)
        }
        
    }
    
    /// If `true`, breakpoints are drawn in the gutter. This gutter is shared with bookmarks and executing lines. Clicking the gutter will toggle the breakpoint for the line, see ``setLineAsBreakpoint(line:breakpointed:)``.
    final public var guttersDrawBreakpointsGutter: Bool {
        get {
            return is_drawing_breakpoints_gutter ()
        }
        
        set {
            set_draw_breakpoints_gutter (newValue)
        }
        
    }
    
    /// If `true`, bookmarks are drawn in the gutter. This gutter is shared with breakpoints and executing lines. See ``setLineAsBookmarked(line:bookmarked:)``.
    final public var guttersDrawBookmarks: Bool {
        get {
            return is_drawing_bookmarks_gutter ()
        }
        
        set {
            set_draw_bookmarks_gutter (newValue)
        }
        
    }
    
    /// If `true`, executing lines are marked in the gutter. This gutter is shared with breakpoints and bookmarks. See ``setLineAsExecuting(line:executing:)``.
    final public var guttersDrawExecutingLines: Bool {
        get {
            return is_drawing_executing_lines_gutter ()
        }
        
        set {
            set_draw_executing_lines_gutter (newValue)
        }
        
    }
    
    /// If `true`, the line number gutter is drawn. Line numbers start at `1` and are incremented for each line of text. Clicking and dragging in the line number gutter will select entire lines of text.
    final public var guttersDrawLineNumbers: Bool {
        get {
            return is_draw_line_numbers_enabled ()
        }
        
        set {
            set_draw_line_numbers (newValue)
        }
        
    }
    
    /// If `true`, line numbers drawn in the gutter are zero padded based on the total line count. Requires ``guttersDrawLineNumbers`` to be set to `true`.
    final public var guttersZeroPadLineNumbers: Bool {
        get {
            return is_line_numbers_zero_padded ()
        }
        
        set {
            set_line_numbers_zero_padded (newValue)
        }
        
    }
    
    /// If `true`, the fold gutter is drawn. In this gutter, the [theme_item can_fold_code_region] icon is drawn for each foldable line (see ``canFoldLine(_:)``) and the [theme_item folded_code_region] icon is drawn for each folded line (see ``isLineFolded(line:)``). These icons can be clicked to toggle the fold state, see ``toggleFoldableLine(_:)``. ``lineFolding`` must be `true` to show icons.
    final public var guttersDrawFoldGutter: Bool {
        get {
            return is_drawing_fold_gutter ()
        }
        
        set {
            set_draw_fold_gutter (newValue)
        }
        
    }
    
    /// Sets the string delimiters. All existing string delimiters will be removed.
    final public var delimiterStrings: TypedArray<String> {
        get {
            return get_string_delimiters ()
        }
        
        set {
            set_string_delimiters (newValue)
        }
        
    }
    
    /// Sets the comment delimiters. All existing comment delimiters will be removed.
    final public var delimiterComments: TypedArray<String> {
        get {
            return get_comment_delimiters ()
        }
        
        set {
            set_comment_delimiters (newValue)
        }
        
    }
    
    /// If `true`, the ``ProjectSettings/input/uiTextCompletionQuery`` action requests code completion. To handle it, see ``_requestCodeCompletion(force:)`` or [signal code_completion_requested].
    final public var codeCompletionEnabled: Bool {
        get {
            return is_code_completion_enabled ()
        }
        
        set {
            set_code_completion_enabled (newValue)
        }
        
    }
    
    /// Sets prefixes that will trigger code completion.
    final public var codeCompletionPrefixes: TypedArray<String> {
        get {
            return get_code_completion_prefixes ()
        }
        
        set {
            set_code_completion_prefixes (newValue)
        }
        
    }
    
    /// Size of the tabulation indent (one [kbd]Tab[/kbd] press) in characters. If ``indentUseSpaces`` is enabled the number of spaces to use.
    final public var indentSize: Int32 {
        get {
            return get_indent_size ()
        }
        
        set {
            set_indent_size (newValue)
        }
        
    }
    
    /// Use spaces instead of tabs for indentation.
    final public var indentUseSpaces: Bool {
        get {
            return is_indent_using_spaces ()
        }
        
        set {
            set_indent_using_spaces (newValue)
        }
        
    }
    
    /// If `true`, an extra indent is automatically inserted when a new line is added and a prefix in ``indentAutomaticPrefixes`` is found. If a brace pair opening key is found, the matching closing brace will be moved to another new line (see ``autoBraceCompletionPairs``).
    final public var indentAutomatic: Bool {
        get {
            return is_auto_indent_enabled ()
        }
        
        set {
            set_auto_indent_enabled (newValue)
        }
        
    }
    
    /// Prefixes to trigger an automatic indent. Used when ``indentAutomatic`` is set to `true`.
    final public var indentAutomaticPrefixes: TypedArray<String> {
        get {
            return get_auto_indent_prefixes ()
        }
        
        set {
            set_auto_indent_prefixes (newValue)
        }
        
    }
    
    /// If `true`, uses ``autoBraceCompletionPairs`` to automatically insert the closing brace when the opening brace is inserted by typing or autocompletion. Also automatically removes the closing brace when using backspace on the opening brace.
    final public var autoBraceCompletionEnabled: Bool {
        get {
            return is_auto_brace_completion_enabled ()
        }
        
        set {
            set_auto_brace_completion_enabled (newValue)
        }
        
    }
    
    /// If `true`, highlights brace pairs when the caret is on either one, using ``autoBraceCompletionPairs``. If matching, the pairs will be underlined. If a brace is unmatched, it is colored with [theme_item brace_mismatch_color].
    final public var autoBraceCompletionHighlightMatching: Bool {
        get {
            return is_highlight_matching_braces_enabled ()
        }
        
        set {
            set_highlight_matching_braces_enabled (newValue)
        }
        
    }
    
    /// Sets the brace pairs to be autocompleted. For each entry in the dictionary, the key is the opening brace and the value is the closing brace that matches it. A brace is a ``String`` made of symbols. See ``autoBraceCompletionEnabled`` and ``autoBraceCompletionHighlightMatching``.
    final public var autoBraceCompletionPairs: VariantDictionary {
        get {
            return get_auto_brace_completion_pairs ()
        }
        
        set {
            set_auto_brace_completion_pairs (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__confirm_code_completion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_confirm_code_completion")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Override this method to define how the selected entry should be inserted. If `replace` is `true`, any existing text should be replaced.
    @_documentation(visibility: public)
    open func _confirmCodeCompletion(replace: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: replace) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method__confirm_code_completion, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__request_code_completion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_request_code_completion")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Override this method to define what happens when the user requests code completion. If `force` is `true`, any checks should be bypassed.
    @_documentation(visibility: public)
    open func _requestCodeCompletion(force: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method__request_code_completion, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__filter_code_completion_candidates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_filter_code_completion_candidates")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2560709669)!
            }
            
        }
        
    }()
    
    /// Override this method to define what items in `candidates` should be displayed.
    /// 
    /// Both `candidates` and the return is a ``VariantArray`` of ``VariantDictionary``, see ``getCodeCompletionOption(index:)`` for ``VariantDictionary`` content.
    /// 
    @_documentation(visibility: public)
    open func _filterCodeCompletionCandidates(_ candidates: TypedArray<VariantDictionary>) -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: candidates.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method__filter_code_completion_candidates, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_set_indent_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_indent_size")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_indent_size(_ size: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_indent_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_indent_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_indent_size")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_indent_size() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_indent_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_indent_using_spaces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_indent_using_spaces")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_indent_using_spaces(_ useSpaces: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useSpaces) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_indent_using_spaces, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_indent_using_spaces: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_indent_using_spaces")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_indent_using_spaces() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_indent_using_spaces, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_auto_indent_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_indent_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_indent_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_auto_indent_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_auto_indent_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_auto_indent_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_auto_indent_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_auto_indent_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_auto_indent_prefixes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_indent_prefixes")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_indent_prefixes(_ prefixes: TypedArray<String>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: prefixes.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_auto_indent_prefixes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_auto_indent_prefixes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_indent_prefixes")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_indent_prefixes() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_auto_indent_prefixes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method_do_indent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("do_indent")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// If there is no selection, indentation is inserted at the caret. Otherwise, the selected lines are indented like ``indentLines()``. Equivalent to the ``ProjectSettings/input/uiTextIndent`` action. The indentation characters used depend on ``indentUseSpaces`` and ``indentSize``.
    public final func doIndent() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_do_indent, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_indent_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("indent_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Indents all lines that are selected or have a caret on them. Uses spaces or a tab depending on ``indentUseSpaces``. See ``unindentLines()``.
    public final func indentLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_indent_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_unindent_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unindent_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Unindents all lines that are selected or have a caret on them. Uses spaces or a tab depending on ``indentUseSpaces``. Equivalent to the ``ProjectSettings/input/uiTextDedent`` action. See ``indentLines()``.
    public final func unindentLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_unindent_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_convert_indent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("convert_indent")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 423910286)!
            }
            
        }
        
    }()
    
    /// Converts the indents of lines between `fromLine` and `toLine` to tabs or spaces as set by ``indentUseSpaces``.
    /// 
    /// Values of `-1` convert the entire text.
    /// 
    public final func convertIndent(fromLine: Int32 = -1, toLine: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fromLine) { pArg0 in
            withUnsafePointer(to: toLine) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_convert_indent, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_auto_brace_completion_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_brace_completion_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_brace_completion_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_auto_brace_completion_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_auto_brace_completion_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_auto_brace_completion_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_auto_brace_completion_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_auto_brace_completion_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_highlight_matching_braces_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_highlight_matching_braces_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_highlight_matching_braces_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_highlight_matching_braces_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_highlight_matching_braces_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_highlight_matching_braces_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_highlight_matching_braces_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_highlight_matching_braces_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_auto_brace_completion_pair: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_auto_brace_completion_pair")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Adds a brace pair.
    /// 
    /// Both the start and end keys must be symbols. Only the start key has to be unique.
    /// 
    public final func addAutoBraceCompletionPair(startKey: String, endKey: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            let endKey = GString(endKey)
            withUnsafePointer(to: endKey.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_add_auto_brace_completion_pair, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_auto_brace_completion_pairs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_brace_completion_pairs")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_brace_completion_pairs(_ pairs: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pairs.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_auto_brace_completion_pairs, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_auto_brace_completion_pairs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_brace_completion_pairs")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_brace_completion_pairs() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_auto_brace_completion_pairs, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_has_auto_brace_completion_open_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_auto_brace_completion_open_key")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if open key `openKey` exists.
    public final func hasAutoBraceCompletionOpenKey(_ openKey: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let openKey = GString(openKey)
        withUnsafePointer(to: openKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_has_auto_brace_completion_open_key, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_has_auto_brace_completion_close_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_auto_brace_completion_close_key")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if close key `closeKey` exists.
    public final func hasAutoBraceCompletionCloseKey(_ closeKey: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let closeKey = GString(closeKey)
        withUnsafePointer(to: closeKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_has_auto_brace_completion_close_key, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_auto_brace_completion_close_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_brace_completion_close_key")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Gets the matching auto brace close key for `openKey`.
    public final func getAutoBraceCompletionCloseKey(openKey: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let openKey = GString(openKey)
        withUnsafePointer(to: openKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_get_auto_brace_completion_close_key, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_draw_breakpoints_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_breakpoints_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_breakpoints_gutter(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_draw_breakpoints_gutter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_breakpoints_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_breakpoints_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_breakpoints_gutter() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_drawing_breakpoints_gutter, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_bookmarks_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_bookmarks_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_bookmarks_gutter(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_draw_bookmarks_gutter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_bookmarks_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_bookmarks_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_bookmarks_gutter() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_drawing_bookmarks_gutter, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_executing_lines_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_executing_lines_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_executing_lines_gutter(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_draw_executing_lines_gutter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_executing_lines_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_executing_lines_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_executing_lines_gutter() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_drawing_executing_lines_gutter, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_line_as_breakpoint: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_as_breakpoint")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets the given line as a breakpoint. If `true` and ``guttersDrawBreakpointsGutter`` is `true`, draws the [theme_item breakpoint] icon in the gutter for this line. See ``getBreakpointedLines()`` and ``isLineBreakpointed(line:)``.
    public final func setLineAsBreakpoint(line: Int32, breakpointed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: breakpointed) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_set_line_as_breakpoint, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_line_breakpointed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_breakpointed")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given line is breakpointed. See ``setLineAsBreakpoint(line:breakpointed:)``.
    public final func isLineBreakpointed(line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_is_line_breakpointed, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_breakpointed_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_breakpointed_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all breakpointed lines.
    public final func clearBreakpointedLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_clear_breakpointed_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_breakpointed_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_breakpointed_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// Gets all breakpointed lines.
    public final func getBreakpointedLines() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_breakpointed_lines, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_line_as_bookmarked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_as_bookmarked")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets the given line as bookmarked. If `true` and ``guttersDrawBookmarks`` is `true`, draws the [theme_item bookmark] icon in the gutter for this line. See ``getBookmarkedLines()`` and ``isLineBookmarked(line:)``.
    public final func setLineAsBookmarked(line: Int32, bookmarked: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: bookmarked) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_set_line_as_bookmarked, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_line_bookmarked: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_bookmarked")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given line is bookmarked. See ``setLineAsBookmarked(line:bookmarked:)``.
    public final func isLineBookmarked(line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_is_line_bookmarked, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_bookmarked_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_bookmarked_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all bookmarked lines.
    public final func clearBookmarkedLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_clear_bookmarked_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_bookmarked_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bookmarked_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// Gets all bookmarked lines.
    public final func getBookmarkedLines() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_bookmarked_lines, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_line_as_executing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_as_executing")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets the given line as executing. If `true` and ``guttersDrawExecutingLines`` is `true`, draws the [theme_item executing_line] icon in the gutter for this line. See ``getExecutingLines()`` and ``isLineExecuting(line:)``.
    public final func setLineAsExecuting(line: Int32, executing: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: executing) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_set_line_as_executing, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_line_executing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_executing")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given line is marked as executing. See ``setLineAsExecuting(line:executing:)``.
    public final func isLineExecuting(line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_is_line_executing, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_clear_executing_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_executing_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all executed lines.
    public final func clearExecutingLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_clear_executing_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_executing_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_executing_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    /// Gets all executing lines.
    public final func getExecutingLines() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_executing_lines, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_draw_line_numbers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_line_numbers")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_line_numbers(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_draw_line_numbers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_draw_line_numbers_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_draw_line_numbers_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_line_numbers_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_draw_line_numbers_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_line_numbers_zero_padded: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_numbers_zero_padded")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_numbers_zero_padded(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_line_numbers_zero_padded, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_line_numbers_zero_padded: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_numbers_zero_padded")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_line_numbers_zero_padded() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_line_numbers_zero_padded, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_fold_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_fold_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_fold_gutter(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_draw_fold_gutter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_drawing_fold_gutter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_drawing_fold_gutter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_drawing_fold_gutter() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_drawing_fold_gutter, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_line_folding_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_folding_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_folding_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_line_folding_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_line_folding_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_folding_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_line_folding_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_line_folding_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_can_fold_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_fold_line")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given line is foldable. A line is foldable if it is the start of a valid code region (see ``getCodeRegionStartTag()``), if it is the start of a comment or string block, or if the next non-empty line is more indented (see ``TextEdit/getIndentLevel(line:)``).
    public final func canFoldLine(_ line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_can_fold_line, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_fold_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("fold_line")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Folds the given line, if possible (see ``canFoldLine(_:)``).
    public final func foldLine(_ line: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_fold_line, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_unfold_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unfold_line")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Unfolds the given line if it is folded or if it is hidden under a folded line.
    public final func unfoldLine(_ line: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_unfold_line, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_fold_all_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("fold_all_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Folds all lines that are possible to be folded (see ``canFoldLine(_:)``).
    public final func foldAllLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_fold_all_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_unfold_all_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unfold_all_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Unfolds all lines that are folded.
    public final func unfoldAllLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_unfold_all_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_toggle_foldable_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("toggle_foldable_line")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Toggle the folding of the code block at the given line.
    public final func toggleFoldableLine(_ line: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_toggle_foldable_line, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_toggle_foldable_lines_at_carets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("toggle_foldable_lines_at_carets")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Toggle the folding of the code block on all lines with a caret on them.
    public final func toggleFoldableLinesAtCarets() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_toggle_foldable_lines_at_carets, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_is_line_folded: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_folded")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given line is folded. See ``foldLine(_:)``.
    public final func isLineFolded(line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_is_line_folded, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_folded_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_folded_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns all lines that are currently folded.
    public final func getFoldedLines() -> TypedArray<Int64> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_folded_lines, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Int64>(takingOver: _result)
    }
    
    fileprivate static let method_create_code_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_code_region")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Creates a new code region with the selection. At least one single line comment delimiter have to be defined (see ``addCommentDelimiter(startKey:endKey:lineOnly:)``).
    /// 
    /// A code region is a part of code that is highlighted when folded and can help organize your script.
    /// 
    /// Code region start and end tags can be customized (see ``setCodeRegionTags(start:end:)``).
    /// 
    /// Code regions are delimited using start and end tags (respectively `region` and `endregion` by default) preceded by one line comment delimiter. (eg. `#region` and `#endregion`)
    /// 
    public final func createCodeRegion() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_create_code_region, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_code_region_start_tag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_code_region_start_tag")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the code region start tag (without comment delimiter).
    public final func getCodeRegionStartTag() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_code_region_start_tag, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_code_region_end_tag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_code_region_end_tag")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the code region end tag (without comment delimiter).
    public final func getCodeRegionEndTag() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_code_region_end_tag, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_code_region_tags: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_code_region_tags")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 708800718)!
            }
            
        }
        
    }()
    
    /// Sets the code region start and end tags (without comment delimiter).
    public final func setCodeRegionTags(start: String = "region", end: String = "endregion") {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let start = GString(start)
        withUnsafePointer(to: start.content) { pArg0 in
            let end = GString(end)
            withUnsafePointer(to: end.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_set_code_region_tags, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_line_code_region_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_code_region_start")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given line is a code region start. See ``setCodeRegionTags(start:end:)``.
    public final func isLineCodeRegionStart(line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_is_line_code_region_start, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_line_code_region_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_line_code_region_end")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given line is a code region end. See ``setCodeRegionTags(start:end:)``.
    public final func isLineCodeRegionEnd(line: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_is_line_code_region_end, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_string_delimiter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_string_delimiter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3146098955)!
            }
            
        }
        
    }()
    
    /// Defines a string delimiter from `startKey` to `endKey`. Both keys should be symbols, and `startKey` must not be shared with other delimiters.
    /// 
    /// If `lineOnly` is `true` or `endKey` is an empty ``String``, the region does not carry over to the next line.
    /// 
    public final func addStringDelimiter(startKey: String, endKey: String, lineOnly: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            let endKey = GString(endKey)
            withUnsafePointer(to: endKey.content) { pArg1 in
                withUnsafePointer(to: lineOnly) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(CodeEdit.method_add_string_delimiter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_string_delimiter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_string_delimiter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the string delimiter with `startKey`.
    public final func removeStringDelimiter(startKey: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_remove_string_delimiter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_string_delimiter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_string_delimiter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if string `startKey` exists.
    public final func hasStringDelimiter(startKey: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_has_string_delimiter, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_string_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_string_delimiters")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_string_delimiters(_ stringDelimiters: TypedArray<String>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: stringDelimiters.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_string_delimiters, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_string_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_string_delimiters")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all string delimiters.
    public final func clearStringDelimiters() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_clear_string_delimiters, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_string_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_string_delimiters")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_string_delimiters() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_string_delimiters, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method_is_in_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_in_string")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 688195400)!
            }
            
        }
        
    }()
    
    /// Returns the delimiter index if `line` `column` is in a string. If `column` is not provided, will return the delimiter index if the entire `line` is a string. Otherwise `-1`.
    public final func isInString(line: Int32, column: Int32 = -1) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_is_in_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_comment_delimiter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_comment_delimiter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3146098955)!
            }
            
        }
        
    }()
    
    /// Adds a comment delimiter from `startKey` to `endKey`. Both keys should be symbols, and `startKey` must not be shared with other delimiters.
    /// 
    /// If `lineOnly` is `true` or `endKey` is an empty ``String``, the region does not carry over to the next line.
    /// 
    public final func addCommentDelimiter(startKey: String, endKey: String, lineOnly: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            let endKey = GString(endKey)
            withUnsafePointer(to: endKey.content) { pArg1 in
                withUnsafePointer(to: lineOnly) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(CodeEdit.method_add_comment_delimiter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_comment_delimiter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_comment_delimiter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the comment delimiter with `startKey`.
    public final func removeCommentDelimiter(startKey: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_remove_comment_delimiter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_comment_delimiter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_comment_delimiter")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if comment `startKey` exists.
    public final func hasCommentDelimiter(startKey: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_has_comment_delimiter, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_comment_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_comment_delimiters")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_comment_delimiters(_ commentDelimiters: TypedArray<String>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: commentDelimiters.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_comment_delimiters, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_comment_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_comment_delimiters")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all comment delimiters.
    public final func clearCommentDelimiters() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_clear_comment_delimiters, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_comment_delimiters: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_comment_delimiters")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_comment_delimiters() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_comment_delimiters, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method_is_in_comment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_in_comment")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 688195400)!
            }
            
        }
        
    }()
    
    /// Returns delimiter index if `line` `column` is in a comment. If `column` is not provided, will return delimiter index if the entire `line` is a comment. Otherwise `-1`.
    public final func isInComment(line: Int32, column: Int32 = -1) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_is_in_comment, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_delimiter_start_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_delimiter_start_key")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Gets the start key for a string or comment region index.
    public final func getDelimiterStartKey(delimiterIndex: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: delimiterIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_get_delimiter_start_key, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_delimiter_end_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_delimiter_end_key")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Gets the end key for a string or comment region index.
    public final func getDelimiterEndKey(delimiterIndex: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: delimiterIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_get_delimiter_end_key, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_delimiter_start_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_delimiter_start_position")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3016396712)!
            }
            
        }
        
    }()
    
    /// If `line` `column` is in a string or comment, returns the start position of the region. If not or no start could be found, both ``Vector2`` values will be `-1`.
    public final func getDelimiterStartPosition(line: Int32, column: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_get_delimiter_start_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_delimiter_end_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_delimiter_end_position")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3016396712)!
            }
            
        }
        
    }()
    
    /// If `line` `column` is in a string or comment, returns the end position of the region. If not or no end could be found, both ``Vector2`` values will be `-1`.
    public final func getDelimiterEndPosition(line: Int32, column: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_get_delimiter_end_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_code_hint: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_code_hint")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the code hint text. Pass an empty string to clear.
    public final func setCodeHint(_ codeHint: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let codeHint = GString(codeHint)
        withUnsafePointer(to: codeHint.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_code_hint, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_code_hint_draw_below: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_code_hint_draw_below")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `true`, the code hint will draw below the main caret. If `false`, the code hint will draw above the main caret. See ``setCodeHint(_:)``.
    public final func setCodeHintDrawBelow(_ drawBelow: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawBelow) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_code_hint_draw_below, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_text_for_code_completion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_for_code_completion")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the full text with char `0xFFFF` at the caret location.
    public final func getTextForCodeCompletion() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_text_for_code_completion, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_request_code_completion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("request_code_completion")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 107499316)!
            }
            
        }
        
    }()
    
    /// Emits [signal code_completion_requested], if `force` is `true` will bypass all checks. Otherwise will check that the caret is in a word or in front of a prefix. Will ignore the request if all current options are of type file path, node path, or signal.
    public final func requestCodeCompletion(force: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_request_code_completion, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_code_completion_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_code_completion_option")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3944379502)!
            }
            
        }
        
    }()
    
    /// Submits an item to the queue of potential candidates for the autocomplete menu. Call ``updateCodeCompletionOptions(force:)`` to update the list.
    /// 
    /// `location` indicates location of the option relative to the location of the code completion query. See ``CodeEdit.CodeCompletionLocation`` for how to set this value.
    /// 
    /// > Note: This list will replace all current candidates.
    /// 
    public final func addCodeCompletionOption(type: CodeEdit.CodeCompletionKind, displayText: String, insertText: String, textColor: Color = Color (r: 1, g: 1, b: 1, a: 1), icon: Resource? = nil, value: Variant?, location: Int32 = 1024) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            let displayText = GString(displayText)
            withUnsafePointer(to: displayText.content) { pArg1 in
                let insertText = GString(insertText)
                withUnsafePointer(to: insertText.content) { pArg2 in
                    withUnsafePointer(to: textColor) { pArg3 in
                        withUnsafePointer(to: icon?.handle) { pArg4 in
                            withUnsafePointer(to: value.content) { pArg5 in
                                withUnsafePointer(to: location) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(CodeEdit.method_add_code_completion_option, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_update_code_completion_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update_code_completion_options")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Submits all completion options added with ``addCodeCompletionOption(type:displayText:insertText:textColor:icon:value:location:)``. Will try to force the autocomplete menu to popup, if `force` is `true`.
    /// 
    /// > Note: This will replace all current candidates.
    /// 
    public final func updateCodeCompletionOptions(force: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: force) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_update_code_completion_options, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_code_completion_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_code_completion_options")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Gets all completion options, see ``getCodeCompletionOption(index:)`` for return content.
    public final func getCodeCompletionOptions() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_code_completion_options, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_get_code_completion_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_code_completion_option")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3485342025)!
            }
            
        }
        
    }()
    
    /// Gets the completion option at `index`. The return ``VariantDictionary`` has the following key-values:
    /// 
    /// `kind`: ``CodeEdit/CodeCompletionKind``
    /// 
    /// `display_text`: Text that is shown on the autocomplete menu.
    /// 
    /// `insert_text`: Text that is to be inserted when this item is selected.
    /// 
    /// `font_color`: Color of the text on the autocomplete menu.
    /// 
    /// `icon`: Icon to draw on the autocomplete menu.
    /// 
    /// `default_value`: Value of the symbol.
    /// 
    public final func getCodeCompletionOption(index: Int32) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_get_code_completion_option, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_code_completion_selected_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_code_completion_selected_index")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Gets the index of the current selected completion option.
    public final func getCodeCompletionSelectedIndex() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_code_completion_selected_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_code_completion_selected_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_code_completion_selected_index")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Sets the current selected completion option.
    public final func setCodeCompletionSelectedIndex(_ index: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_code_completion_selected_index, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_confirm_code_completion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("confirm_code_completion")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 107499316)!
            }
            
        }
        
    }()
    
    /// Inserts the selected entry into the text. If `replace` is `true`, any existing text is replaced rather than merged.
    public final func confirmCodeCompletion(replace: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: replace) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_confirm_code_completion, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_cancel_code_completion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("cancel_code_completion")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Cancels the autocomplete menu.
    public final func cancelCodeCompletion() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_cancel_code_completion, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_code_completion_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_code_completion_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_code_completion_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_code_completion_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_code_completion_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_code_completion_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_code_completion_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_code_completion_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_code_completion_prefixes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_code_completion_prefixes")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_code_completion_prefixes(_ prefixes: TypedArray<String>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: prefixes.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_code_completion_prefixes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_code_completion_prefixes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_code_completion_prefixes")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_code_completion_prefixes() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_code_completion_prefixes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method_set_line_length_guidelines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_line_length_guidelines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_line_length_guidelines(_ guidelineColumns: TypedArray<Int64>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: guidelineColumns.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_line_length_guidelines, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_line_length_guidelines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line_length_guidelines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_line_length_guidelines() -> TypedArray<Int64> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(CodeEdit.method_get_line_length_guidelines, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Int64>(takingOver: _result)
    }
    
    fileprivate static let method_set_symbol_lookup_on_click_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_symbol_lookup_on_click_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_symbol_lookup_on_click_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_symbol_lookup_on_click_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_symbol_lookup_on_click_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_symbol_lookup_on_click_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_symbol_lookup_on_click_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_symbol_lookup_on_click_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_text_for_symbol_lookup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_for_symbol_lookup")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the full text with char `0xFFFF` at the cursor location.
    public final func getTextForSymbolLookup() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(CodeEdit.method_get_text_for_symbol_lookup, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_text_with_cursor_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_text_with_cursor_char")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1391810591)!
            }
            
        }
        
    }()
    
    /// Returns the full text with char `0xFFFF` at the specified location.
    public final func getTextWithCursorChar(line: Int32, column: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: line) { pArg0 in
            withUnsafePointer(to: column) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeEdit.method_get_text_with_cursor_char, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_symbol_lookup_word_as_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_symbol_lookup_word_as_valid")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets the symbol emitted by [signal symbol_validate] as a valid lookup.
    public final func setSymbolLookupWordAsValid(_ valid: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: valid) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_symbol_lookup_word_as_valid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_symbol_tooltip_on_hover_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_symbol_tooltip_on_hover_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_symbol_tooltip_on_hover_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeEdit.method_set_symbol_tooltip_on_hover_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_symbol_tooltip_on_hover_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_symbol_tooltip_on_hover_enabled")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_symbol_tooltip_on_hover_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CodeEdit.method_is_symbol_tooltip_on_hover_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_move_lines_up: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_lines_up")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Moves all lines up that are selected or have a caret on them.
    public final func moveLinesUp() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_move_lines_up, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_move_lines_down: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_lines_down")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Moves all lines down that are selected or have a caret on them.
    public final func moveLinesDown() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_move_lines_down, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_delete_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("delete_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Deletes all lines that are selected or have a caret on them.
    public final func deleteLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_delete_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_duplicate_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("duplicate_selection")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Duplicates all selected text and duplicates all lines with a caret on them.
    public final func duplicateSelection() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_duplicate_selection, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_duplicate_lines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("duplicate_lines")
        return withUnsafePointer(to: &CodeEdit.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Duplicates all lines currently selected with any caret. Duplicates the entire line beneath the current one no matter where the caret is within the line.
    public final func duplicateLines() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeEdit.method_duplicate_lines, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_confirm_code_completion":
                return _CodeEdit_proxy_confirm_code_completion
            case "_filter_code_completion_candidates":
                return _CodeEdit_proxy_filter_code_completion_candidates
            case "_request_code_completion":
                return _CodeEdit_proxy_request_code_completion
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when a breakpoint is added or removed from a line. If the line is moved via backspace a removed is emitted at the old line.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.breakpointToggled.connect { line in
    ///    print ("caught signal")
    /// }
    /// ```
    public var breakpointToggled: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "breakpoint_toggled") }
    
    /// Emitted when the user requests code completion. This signal will not be sent if ``_requestCodeCompletion(force:)`` is overridden or ``codeCompletionEnabled`` is `false`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.codeCompletionRequested.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var codeCompletionRequested: SimpleSignal { SimpleSignal (target: self, signalName: "code_completion_requested") }
    
    /// Emitted when the user has clicked on a valid symbol.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.symbolLookup.connect { symbol, line, column in
    ///    print ("caught signal")
    /// }
    /// ```
    public var symbolLookup: SignalWithArguments<String, Int64, Int64> { SignalWithArguments<String, Int64, Int64> (target: self, signalName: "symbol_lookup") }
    
    /// Emitted when the user hovers over a symbol. The symbol should be validated and responded to, by calling ``setSymbolLookupWordAsValid(_:)``.
    /// 
    /// > Note: ``symbolLookupOnClick`` must be `true` for this signal to be emitted.
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
    /// obj.symbolValidate.connect { symbol in
    ///    print ("caught signal")
    /// }
    /// ```
    public var symbolValidate: SignalWithArguments<String> { SignalWithArguments<String> (target: self, signalName: "symbol_validate") }
    
    /// Emitted when the user hovers over a symbol. Unlike [signal Control.mouse_entered], this signal is not emitted immediately, but when the cursor is over the symbol for ``ProjectSettings/gui/timers/tooltipDelaySec`` seconds.
    /// 
    /// > Note: ``symbolTooltipOnHover`` must be `true` for this signal to be emitted.
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
    /// obj.symbolHovered.connect { symbol, line, column in
    ///    print ("caught signal")
    /// }
    /// ```
    public var symbolHovered: SignalWithArguments<String, Int64, Int64> { SignalWithArguments<String, Int64, Int64> (target: self, signalName: "symbol_hovered") }
    
}

// Support methods for proxies
func _CodeEdit_proxy_confirm_code_completion (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CodeEdit else { return }
    swiftObject._confirmCodeCompletion (replace: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _CodeEdit_proxy_filter_code_completion_candidates (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CodeEdit else { return }
    let ret = swiftObject._filterCodeCompletionCandidates (args [0]!.assumingMemoryBound (to: TypedArray<VariantDictionary>.self).pointee)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _CodeEdit_proxy_request_code_completion (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CodeEdit else { return }
    swiftObject._requestCodeCompletion (force: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

