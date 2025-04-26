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


/// A self-contained collection of ``Translation`` resources.
/// 
/// ``TranslationDomain`` is a self-contained collection of ``Translation`` resources. Translations can be added to or removed from it.
/// 
/// If you're working with the main translation domain, it is more convenient to use the wrap methods on ``TranslationServer``.
/// 
open class TranslationDomain: RefCounted {
    private static var className = StringName("TranslationDomain")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, enables pseudolocalization for the project. This can be used to spot untranslatable strings or layout issues that may occur once the project is localized to languages that have longer strings than the source language.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationEnabled: Bool {
        get {
            return is_pseudolocalization_enabled ()
        }
        
        set {
            set_pseudolocalization_enabled (newValue)
        }
        
    }
    
    /// Replace all characters with their accented variants during pseudolocalization.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationAccentsEnabled: Bool {
        get {
            return is_pseudolocalization_accents_enabled ()
        }
        
        set {
            set_pseudolocalization_accents_enabled (newValue)
        }
        
    }
    
    /// Double vowels in strings during pseudolocalization to simulate the lengthening of text due to localization.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationDoubleVowelsEnabled: Bool {
        get {
            return is_pseudolocalization_double_vowels_enabled ()
        }
        
        set {
            set_pseudolocalization_double_vowels_enabled (newValue)
        }
        
    }
    
    /// If `true`, emulate bidirectional (right-to-left) text when pseudolocalization is enabled. This can be used to spot issues with RTL layout and UI mirroring that will crop up if the project is localized to RTL languages such as Arabic or Hebrew.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationFakeBidiEnabled: Bool {
        get {
            return is_pseudolocalization_fake_bidi_enabled ()
        }
        
        set {
            set_pseudolocalization_fake_bidi_enabled (newValue)
        }
        
    }
    
    /// Replace all characters in the string with `*`. Useful for finding non-localizable strings.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationOverrideEnabled: Bool {
        get {
            return is_pseudolocalization_override_enabled ()
        }
        
        set {
            set_pseudolocalization_override_enabled (newValue)
        }
        
    }
    
    /// Skip placeholders for string formatting like `%s` or `%f` during pseudolocalization. Useful to identify strings which need additional control characters to display correctly.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationSkipPlaceholdersEnabled: Bool {
        get {
            return is_pseudolocalization_skip_placeholders_enabled ()
        }
        
        set {
            set_pseudolocalization_skip_placeholders_enabled (newValue)
        }
        
    }
    
    /// The expansion ratio to use during pseudolocalization. A value of `0.3` is sufficient for most practical purposes, and will increase the length of each string by 30%.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationExpansionRatio: Double {
        get {
            return get_pseudolocalization_expansion_ratio ()
        }
        
        set {
            set_pseudolocalization_expansion_ratio (newValue)
        }
        
    }
    
    /// Prefix that will be prepended to the pseudolocalized string.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationPrefix: String {
        get {
            return get_pseudolocalization_prefix ()
        }
        
        set {
            set_pseudolocalization_prefix (newValue)
        }
        
    }
    
    /// Suffix that will be appended to the pseudolocalized string.
    /// 
    /// > Note: Updating this property does not automatically update texts in the scene tree. Please propagate the ``MainLoop/notificationTranslationChanged`` notification manually after you have finished modifying pseudolocalization related options.
    /// 
    final public var pseudolocalizationSuffix: String {
        get {
            return get_pseudolocalization_suffix ()
        }
        
        set {
            set_pseudolocalization_suffix (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_translation_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_translation_object")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 606768082)!
            }
            
        }
        
    }()
    
    /// Returns the ``Translation`` instance that best matches `locale`. Returns `null` if there are no matches.
    public final func getTranslationObject(locale: String) -> Translation? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        let locale = GString(locale)
        withUnsafePointer(to: locale.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_get_translation_object, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_add_translation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_translation")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Adds a translation.
    public final func addTranslation(_ translation: Translation?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: translation?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_add_translation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_translation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_translation")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Removes the given translation.
    public final func removeTranslation(_ translation: Translation?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: translation?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_remove_translation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all translations.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TranslationDomain.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_translate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("translate")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1829228469)!
            }
            
        }
        
    }()
    
    /// Returns the current locale's translation for the given message and context.
    public final func translate(message: StringName, context: StringName = StringName ("")) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: context.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TranslationDomain.method_translate, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_translate_plural: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("translate_plural")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 229954002)!
            }
            
        }
        
    }()
    
    /// Returns the current locale's translation for the given message, plural message and context.
    /// 
    /// The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.
    /// 
    public final func translatePlural(message: StringName, messagePlural: StringName, n: Int32, context: StringName = StringName ("")) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: messagePlural.content) { pArg1 in
                withUnsafePointer(to: n) { pArg2 in
                    withUnsafePointer(to: context.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TranslationDomain.method_translate_plural, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pseudolocalization_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_pseudolocalization_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TranslationDomain.method_is_pseudolocalization_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_pseudolocalization_accents_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pseudolocalization_accents_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_pseudolocalization_accents_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TranslationDomain.method_is_pseudolocalization_accents_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_accents_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_accents_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_accents_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_accents_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_pseudolocalization_double_vowels_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pseudolocalization_double_vowels_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_pseudolocalization_double_vowels_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TranslationDomain.method_is_pseudolocalization_double_vowels_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_double_vowels_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_double_vowels_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_double_vowels_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_double_vowels_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_pseudolocalization_fake_bidi_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pseudolocalization_fake_bidi_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_pseudolocalization_fake_bidi_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TranslationDomain.method_is_pseudolocalization_fake_bidi_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_fake_bidi_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_fake_bidi_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_fake_bidi_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_fake_bidi_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_pseudolocalization_override_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pseudolocalization_override_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_pseudolocalization_override_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TranslationDomain.method_is_pseudolocalization_override_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_override_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_override_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_override_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_override_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_pseudolocalization_skip_placeholders_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pseudolocalization_skip_placeholders_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_pseudolocalization_skip_placeholders_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TranslationDomain.method_is_pseudolocalization_skip_placeholders_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_skip_placeholders_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_skip_placeholders_enabled")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_skip_placeholders_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_skip_placeholders_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pseudolocalization_expansion_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pseudolocalization_expansion_ratio")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pseudolocalization_expansion_ratio() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TranslationDomain.method_get_pseudolocalization_expansion_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_expansion_ratio: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_expansion_ratio")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_expansion_ratio(_ ratio: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_expansion_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pseudolocalization_prefix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pseudolocalization_prefix")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pseudolocalization_prefix() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TranslationDomain.method_get_pseudolocalization_prefix, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_pseudolocalization_prefix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_prefix")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_prefix(_ prefix: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let prefix = GString(prefix)
        withUnsafePointer(to: prefix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_prefix, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_pseudolocalization_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pseudolocalization_suffix")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pseudolocalization_suffix() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TranslationDomain.method_get_pseudolocalization_suffix, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_pseudolocalization_suffix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_suffix")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pseudolocalization_suffix(_ suffix: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let suffix = GString(suffix)
        withUnsafePointer(to: suffix.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_set_pseudolocalization_suffix, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_pseudolocalize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pseudolocalize")
        return withUnsafePointer(to: &TranslationDomain.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965194235)!
            }
            
        }
        
    }()
    
    /// Returns the pseudolocalized string based on the `message` passed in.
    public final func pseudolocalize(message: StringName) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TranslationDomain.method_pseudolocalize, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
}

