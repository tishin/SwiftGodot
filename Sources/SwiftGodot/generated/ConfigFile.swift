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


/// Helper class to handle INI-style files.
/// 
/// This helper class can be used to store ``Variant`` values on the filesystem using INI-style formatting. The stored values are identified by a section and a key:
/// 
/// The stored data can be saved to or parsed from a file, though ConfigFile objects can also be used directly without accessing the filesystem.
/// 
/// The following example shows how to create a simple ``ConfigFile`` and save it on disc:
/// 
/// This example shows how the above file could be loaded:
/// 
/// Any operation that mutates the ConfigFile such as ``setValue(section:key:value:)``, ``clear()``, or ``eraseSection(_:)``, only changes what is loaded in memory. If you want to write the change to a file, you have to save the changes with ``save(path:)``, ``saveEncrypted(path:key:)``, or ``saveEncryptedPass(path:password:)``.
/// 
/// Keep in mind that section and property names can't contain spaces. Anything after a space will be ignored on save and on load.
/// 
/// ConfigFiles can also contain manually written comment lines starting with a semicolon (`;`). Those lines will be ignored when parsing the file. Note that comments will be lost when saving the ConfigFile. This can still be useful for dedicated server configuration files, which are typically never overwritten without explicit user action.
/// 
/// > Note: The file extension given to a ConfigFile does not have any impact on its formatting or behavior. By convention, the `.cfg` extension is used here, but any other extension such as `.ini` is also valid. Since neither `.cfg` nor `.ini` are standardized, Godot's ConfigFile formatting may differ from files written by other programs.
/// 
open class ConfigFile: RefCounted {
    private static var className = StringName("ConfigFile")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_value")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2504492430)!
            }
            
        }
        
    }()
    
    /// Assigns a value to the specified key of the specified section. If either the section or the key do not exist, they are created. Passing a `null` value deletes the specified key if it exists, and deletes the section if it ends up empty once the key has been removed.
    public final func setValue(section: String, key: String, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            let key = GString(key)
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ConfigFile.method_set_value, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_value")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 89809366)!
            }
            
        }
        
    }()
    
    /// Returns the current value for the specified section and key. If either the section or the key do not exist, the method returns the fallback `default` value. If `default` is not specified or set to `null`, an error is also raised.
    public final func getValue(section: String, key: String, `default`: Variant?) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            let key = GString(key)
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: `default`.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ConfigFile.method_get_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_has_section: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_section")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified section exists.
    public final func hasSection(_ section: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConfigFile.method_has_section, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_has_section_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_section_key")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 820780508)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified section-key pair exists.
    public final func hasSectionKey(section: String, key: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            let key = GString(key)
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ConfigFile.method_has_section_key, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_sections: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sections")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns an array of all defined section identifiers.
    public final func getSections() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ConfigFile.method_get_sections, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_section_keys: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_section_keys")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4291131558)!
            }
            
        }
        
    }()
    
    /// Returns an array of all defined key identifiers in the specified section. Raises an error and returns an empty array if the section does not exist.
    public final func getSectionKeys(section: String) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConfigFile.method_get_section_keys, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_erase_section: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("erase_section")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Deletes the specified section along with all the key-value pairs inside. Raises an error if the section does not exist.
    public final func eraseSection(_ section: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConfigFile.method_erase_section, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_erase_section_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("erase_section_key")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3186203200)!
            }
            
        }
        
    }()
    
    /// Deletes the specified key in a section. Raises an error if either the section or the key do not exist.
    public final func eraseSectionKey(section: String, key: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let section = GString(section)
        withUnsafePointer(to: section.content) { pArg0 in
            let key = GString(key)
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ConfigFile.method_erase_section_key, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_load: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Loads the config file specified as a parameter. The file's contents are parsed and loaded in the ``ConfigFile`` object which the method was called on.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` values if the operation failed.
    /// 
    public final func load(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConfigFile.method_load, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_parse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("parse")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Parses the passed string as the contents of a config file. The string is parsed and loaded in the ConfigFile object which the method was called on.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` values if the operation failed.
    /// 
    public final func parse(data: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let data = GString(data)
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConfigFile.method_parse, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_save: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Saves the contents of the ``ConfigFile`` object to the file specified as a parameter. The output file uses an INI-style structure.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` values if the operation failed.
    /// 
    public final func save(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ConfigFile.method_save, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_encode_to_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("encode_to_text")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Obtain the text version of this config file (the same text that would be written to a file).
    public final func encodeToText() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(ConfigFile.method_encode_to_text, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_load_encrypted: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_encrypted")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 887037711)!
            }
            
        }
        
    }()
    
    /// Loads the encrypted config file specified as a parameter, using the provided `key` to decrypt it. The file's contents are parsed and loaded in the ``ConfigFile`` object which the method was called on.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` values if the operation failed.
    /// 
    public final func loadEncrypted(path: String, key: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ConfigFile.method_load_encrypted, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_load_encrypted_pass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_encrypted_pass")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Loads the encrypted config file specified as a parameter, using the provided `password` to decrypt it. The file's contents are parsed and loaded in the ``ConfigFile`` object which the method was called on.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` values if the operation failed.
    /// 
    public final func loadEncryptedPass(path: String, password: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            let password = GString(password)
            withUnsafePointer(to: password.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ConfigFile.method_load_encrypted_pass, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_save_encrypted: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_encrypted")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 887037711)!
            }
            
        }
        
    }()
    
    /// Saves the contents of the ``ConfigFile`` object to the AES-256 encrypted file specified as a parameter, using the provided `key` to encrypt it. The output file uses an INI-style structure.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` values if the operation failed.
    /// 
    public final func saveEncrypted(path: String, key: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ConfigFile.method_save_encrypted, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_save_encrypted_pass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("save_encrypted_pass")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Saves the contents of the ``ConfigFile`` object to the AES-256 encrypted file specified as a parameter, using the provided `password` to encrypt it. The output file uses an INI-style structure.
    /// 
    /// Returns ``GodotError/ok`` on success, or one of the other ``GodotError`` values if the operation failed.
    /// 
    public final func saveEncryptedPass(path: String, password: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            let password = GString(password)
            withUnsafePointer(to: password.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ConfigFile.method_save_encrypted_pass, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &ConfigFile.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes the entire contents of the config.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(ConfigFile.method_clear, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
}

