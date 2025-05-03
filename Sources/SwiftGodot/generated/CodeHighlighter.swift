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


/// A syntax highlighter intended for code.
/// 
/// By adjusting various properties of this resource, you can change the colors of strings, comments, numbers, and other text patterns inside a ``TextEdit`` control.
open class CodeHighlighter: SyntaxHighlighter {
    private static var className = StringName("CodeHighlighter")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Sets the color for numbers.
    final public var numberColor: Color {
        get {
            return get_number_color ()
        }
        
        set {
            set_number_color (newValue)
        }
        
    }
    
    /// Sets the color for symbols.
    final public var symbolColor: Color {
        get {
            return get_symbol_color ()
        }
        
        set {
            set_symbol_color (newValue)
        }
        
    }
    
    /// Sets color for functions. A function is a non-keyword string followed by a '('.
    final public var functionColor: Color {
        get {
            return get_function_color ()
        }
        
        set {
            set_function_color (newValue)
        }
        
    }
    
    /// Sets color for member variables. A member variable is non-keyword, non-function string proceeded with a '.'.
    final public var memberVariableColor: Color {
        get {
            return get_member_variable_color ()
        }
        
        set {
            set_member_variable_color (newValue)
        }
        
    }
    
    /// Sets the keyword colors. All existing keywords will be removed. The ``VariantDictionary`` key is the keyword. The value is the keyword color.
    final public var keywordColors: VariantDictionary {
        get {
            return get_keyword_colors ()
        }
        
        set {
            set_keyword_colors (newValue)
        }
        
    }
    
    /// Sets the member keyword colors. All existing member keyword will be removed. The ``VariantDictionary`` key is the member keyword. The value is the member keyword color.
    final public var memberKeywordColors: VariantDictionary {
        get {
            return get_member_keyword_colors ()
        }
        
        set {
            set_member_keyword_colors (newValue)
        }
        
    }
    
    /// Sets the color regions. All existing regions will be removed. The ``VariantDictionary`` key is the region start and end key, separated by a space. The value is the region color.
    final public var colorRegions: VariantDictionary {
        get {
            return get_color_regions ()
        }
        
        set {
            set_color_regions (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_add_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1636512886)!
            }
            
        }
        
    }()
    
    /// Sets the color for a keyword.
    /// 
    /// The keyword cannot contain any symbols except '_'.
    /// 
    public final func addKeywordColor(keyword: String, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let keyword = GString(keyword)
        withUnsafePointer(to: keyword.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeHighlighter.method_add_keyword_color, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the keyword.
    public final func removeKeywordColor(keyword: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let keyword = GString(keyword)
        withUnsafePointer(to: keyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_remove_keyword_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the keyword exists, else `false`.
    public final func hasKeywordColor(keyword: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let keyword = GString(keyword)
        withUnsafePointer(to: keyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_has_keyword_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3855908743)!
            }
            
        }
        
    }()
    
    /// Returns the color for a keyword.
    public final func getKeywordColor(keyword: String) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        let keyword = GString(keyword)
        withUnsafePointer(to: keyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_get_keyword_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_keyword_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_keyword_colors")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_keyword_colors(_ keywords: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: keywords.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_set_keyword_colors, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_keyword_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_keyword_colors")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all keywords.
    public final func clearKeywordColors() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeHighlighter.method_clear_keyword_colors, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_keyword_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_keyword_colors")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_keyword_colors() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(CodeHighlighter.method_get_keyword_colors, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_add_member_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_member_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1636512886)!
            }
            
        }
        
    }()
    
    /// Sets the color for a member keyword.
    /// 
    /// The member keyword cannot contain any symbols except '_'.
    /// 
    /// It will not be highlighted if preceded by a '.'.
    /// 
    public final func addMemberKeywordColor(memberKeyword: String, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let memberKeyword = GString(memberKeyword)
        withUnsafePointer(to: memberKeyword.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CodeHighlighter.method_add_member_keyword_color, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_member_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_member_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the member keyword.
    public final func removeMemberKeywordColor(memberKeyword: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let memberKeyword = GString(memberKeyword)
        withUnsafePointer(to: memberKeyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_remove_member_keyword_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_member_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_member_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the member keyword exists, else `false`.
    public final func hasMemberKeywordColor(memberKeyword: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let memberKeyword = GString(memberKeyword)
        withUnsafePointer(to: memberKeyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_has_member_keyword_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_member_keyword_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_member_keyword_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3855908743)!
            }
            
        }
        
    }()
    
    /// Returns the color for a member keyword.
    public final func getMemberKeywordColor(memberKeyword: String) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        let memberKeyword = GString(memberKeyword)
        withUnsafePointer(to: memberKeyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_get_member_keyword_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_member_keyword_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_member_keyword_colors")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_member_keyword_colors(_ memberKeyword: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: memberKeyword.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_set_member_keyword_colors, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_member_keyword_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_member_keyword_colors")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all member keywords.
    public final func clearMemberKeywordColors() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeHighlighter.method_clear_member_keyword_colors, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_member_keyword_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_member_keyword_colors")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_member_keyword_colors() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(CodeHighlighter.method_get_member_keyword_colors, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_add_color_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_color_region")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2924977451)!
            }
            
        }
        
    }()
    
    /// Adds a color region (such as for comments or strings) from `startKey` to `endKey`. Both keys should be symbols, and `startKey` must not be shared with other delimiters.
    /// 
    /// If `lineOnly` is `true` or `endKey` is an empty ``String``, the region does not carry over to the next line.
    /// 
    public final func addColorRegion(startKey: String, endKey: String, color: Color, lineOnly: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            let endKey = GString(endKey)
            withUnsafePointer(to: endKey.content) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: lineOnly) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CodeHighlighter.method_add_color_region, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_color_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_color_region")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Removes the color region that uses that start key.
    public final func removeColorRegion(startKey: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_remove_color_region, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_color_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_color_region")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the start key exists, else `false`.
    public final func hasColorRegion(startKey: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let startKey = GString(startKey)
        withUnsafePointer(to: startKey.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_has_color_region, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_color_regions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color_regions")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color_regions(_ colorRegions: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: colorRegions.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_set_color_regions, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_color_regions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_color_regions")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all color regions.
    public final func clearColorRegions() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CodeHighlighter.method_clear_color_regions, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_color_regions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color_regions")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color_regions() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(CodeHighlighter.method_get_color_regions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_function_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_function_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_function_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_set_function_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_function_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_function_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_function_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CodeHighlighter.method_get_function_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_number_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_number_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_number_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_set_number_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_number_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_number_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_number_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CodeHighlighter.method_get_number_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_symbol_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_symbol_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_symbol_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_set_symbol_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_symbol_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_symbol_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_symbol_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CodeHighlighter.method_get_symbol_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_member_variable_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_member_variable_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_member_variable_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CodeHighlighter.method_set_member_variable_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_member_variable_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_member_variable_color")
        return withUnsafePointer(to: &CodeHighlighter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_member_variable_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CodeHighlighter.method_get_member_variable_color, handle, nil, &_result)
        return _result
    }
    
}

