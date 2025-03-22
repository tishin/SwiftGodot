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


open class ScriptLanguage: Object {
    fileprivate static var className = StringName("ScriptLanguage")
    override open class var godotClassName: StringName { className }
    public enum ScriptNameCasing: Int64, CaseIterable {
        /// 
        case auto = 0 // SCRIPT_NAME_CASING_AUTO
        /// 
        case pascalCase = 1 // SCRIPT_NAME_CASING_PASCAL_CASE
        /// 
        case snakeCase = 2 // SCRIPT_NAME_CASING_SNAKE_CASE
        /// 
        case kebabCase = 3 // SCRIPT_NAME_CASING_KEBAB_CASE
    }
    
}

