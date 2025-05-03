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


/// The server responsible for language translations.
/// 
/// The translation server is the API backend that manages all language translations.
/// 
/// Translations are stored in ``TranslationDomain``s, which can be accessed by name. The most commonly used translation domain is the main translation domain. It always exists and can be accessed using an empty ``StringName``. The translation server provides wrapper methods for accessing the main translation domain directly, without having to fetch the translation domain first. Custom translation domains are mainly for advanced usages like editor plugins. Names starting with `godot.` are reserved for engine internals.
/// 
open class TranslationServer: Object {
    /// The shared instance of this class
    public static var shared: TranslationServer {
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("TranslationServer")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, enables the use of pseudolocalization on the main translation domain. See ``ProjectSettings/internationalization/pseudolocalization/usePseudolocalization`` for details.
    static public var pseudolocalizationEnabled: Bool {
        get {
            return is_pseudolocalization_enabled ()
        }
        
        set {
            set_pseudolocalization_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_locale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_locale")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Sets the locale of the project. The `locale` string will be standardized to match known locales (e.g. `en-US` would be matched to `en_US`).
    /// 
    /// If translations have been loaded beforehand for the new locale, they will be applied.
    /// 
    public static func setLocale(_ locale: String) {
        let locale = GString(locale)
        withUnsafePointer(to: locale.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_set_locale, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_locale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_locale")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the current locale of the project.
    /// 
    /// See also ``OS/getLocale()`` and ``OS/getLocaleLanguage()`` to query the locale of the user system.
    /// 
    public static func getLocale() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(method_get_locale, shared.handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_tool_locale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tool_locale")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the current locale of the editor.
    /// 
    /// > Note: When called from an exported project returns the same value as ``getLocale()``.
    /// 
    public static func getToolLocale() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(method_get_tool_locale, shared.handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_compare_locales: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compare_locales")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878152881)!
            }
            
        }
        
    }()
    
    /// Compares two locales and returns a similarity score between `0` (no match) and `10` (full match).
    public static func compareLocales(localeA: String, localeB: String) -> Int32 {
        var _result: Int32 = 0
        let localeA = GString(localeA)
        withUnsafePointer(to: localeA.content) { pArg0 in
            let localeB = GString(localeB)
            withUnsafePointer(to: localeB.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_compare_locales, shared.handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_standardize_locale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("standardize_locale")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4216441673)!
            }
            
        }
        
    }()
    
    /// Returns a `locale` string standardized to match known locales (e.g. `en-US` would be matched to `en_US`). If `addDefaults` is `true`, the locale may have a default script or country added.
    public static func standardizeLocale(_ locale: String, addDefaults: Bool = false) -> String {
        let _result = GString ()
        let locale = GString(locale)
        withUnsafePointer(to: locale.content) { pArg0 in
            withUnsafePointer(to: addDefaults) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_standardize_locale, shared.handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_all_languages: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_all_languages")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns array of known language codes.
    public static func getAllLanguages() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_get_all_languages, shared.handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_language_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_language_name")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a readable language name for the `language` code.
    public static func getLanguageName(language: String) -> String {
        let _result = GString ()
        let language = GString(language)
        withUnsafePointer(to: language.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_language_name, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_all_scripts: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_all_scripts")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of known script codes.
    public static func getAllScripts() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_get_all_scripts, shared.handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_script_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_name")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a readable script name for the `script` code.
    public static func getScriptName(script: String) -> String {
        let _result = GString ()
        let script = GString(script)
        withUnsafePointer(to: script.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_script_name, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_all_countries: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_all_countries")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of known country codes.
    public static func getAllCountries() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_get_all_countries, shared.handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_country_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_country_name")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a readable country name for the `country` code.
    public static func getCountryName(country: String) -> String {
        let _result = GString ()
        let country = GString(country)
        withUnsafePointer(to: country.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_country_name, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_locale_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_locale_name")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns a locale's language and its variant (e.g. `"en_US"` would return `"English (United States)"`).
    public static func getLocaleName(locale: String) -> String {
        let _result = GString ()
        let locale = GString(locale)
        withUnsafePointer(to: locale.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_locale_name, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_translate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("translate")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1829228469)!
            }
            
        }
        
    }()
    
    /// Returns the current locale's translation for the given message and context.
    /// 
    /// > Note: This method always uses the main translation domain.
    /// 
    public static func translate(message: StringName, context: StringName = StringName ("")) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: context.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_translate, shared.handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_translate_plural: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("translate_plural")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 229954002)!
            }
            
        }
        
    }()
    
    /// Returns the current locale's translation for the given message, plural message and context.
    /// 
    /// The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.
    /// 
    /// > Note: This method always uses the main translation domain.
    /// 
    public static func translatePlural(message: StringName, pluralMessage: StringName, n: Int32, context: StringName = StringName ("")) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: pluralMessage.content) { pArg1 in
                withUnsafePointer(to: n) { pArg2 in
                    withUnsafePointer(to: context.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_translate_plural, shared.handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_translation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_translation")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Adds a translation to the main translation domain.
    public static func addTranslation(_ translation: Translation?) {
        withUnsafePointer(to: translation?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_add_translation, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_translation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_translation")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Removes the given translation from the main translation domain.
    public static func removeTranslation(_ translation: Translation?) {
        withUnsafePointer(to: translation?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_remove_translation, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_translation_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_translation_object")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2065240175)!
            }
            
        }
        
    }()
    
    /// Returns the ``Translation`` instance that best matches `locale` in the main translation domain. Returns `null` if there are no matches.
    public static func getTranslationObject(locale: String) -> Translation? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let locale = GString(locale)
        withUnsafePointer(to: locale.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_translation_object, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_has_domain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_domain")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a translation domain with the specified name exists.
    public static func hasDomain(_ domain: StringName) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: domain.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_has_domain, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_or_add_domain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_or_add_domain")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 397200075)!
            }
            
        }
        
    }()
    
    /// Returns the translation domain with the specified name. An empty translation domain will be created and added if it does not exist.
    public static func getOrAddDomain(_ domain: StringName) -> TranslationDomain? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: domain.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_or_add_domain, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_remove_domain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_domain")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes the translation domain with the specified name.
    /// 
    /// > Note: Trying to remove the main translation domain is an error.
    /// 
    public static func removeDomain(_ domain: StringName) {
        withUnsafePointer(to: domain.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_remove_domain, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all translations from the main translation domain.
    public static func clear() {
        gi.object_method_bind_ptrcall(method_clear, shared.handle, nil, nil)
        
    }
    
    fileprivate static let method_get_loaded_locales: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loaded_locales")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of all loaded locales of the project.
    public static func getLoadedLocales() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_get_loaded_locales, shared.handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_is_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_pseudolocalization_enabled")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate static func is_pseudolocalization_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(method_is_pseudolocalization_enabled, shared.handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_pseudolocalization_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_pseudolocalization_enabled")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate static func set_pseudolocalization_enabled(_ enabled: Bool) {
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_set_pseudolocalization_enabled, shared.handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_reload_pseudolocalization: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reload_pseudolocalization")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Reparses the pseudolocalization options and reloads the translation for the main translation domain.
    public static func reloadPseudolocalization() {
        gi.object_method_bind_ptrcall(method_reload_pseudolocalization, shared.handle, nil, nil)
        
    }
    
    fileprivate static let method_pseudolocalize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pseudolocalize")
        return withUnsafePointer(to: &TranslationServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1965194235)!
            }
            
        }
        
    }()
    
    /// Returns the pseudolocalized string based on the `message` passed in.
    /// 
    /// > Note: This method always uses the main translation domain.
    /// 
    public static func pseudolocalize(message: StringName) -> StringName {
        let _result: StringName = StringName ()
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_pseudolocalize, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
}

