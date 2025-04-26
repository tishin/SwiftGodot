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


/// Internal database of built in shader include files.
/// 
/// This object contains shader fragments from Godot's internal shaders. These can be used when access to internal uniform buffers and/or internal functions is required for instance when composing compositor effects or compute shaders. Only fragments for the current rendering device are loaded.
open class ShaderIncludeDB: Object {
    private static var className = StringName("ShaderIncludeDB")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_list_built_in_include_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("list_built_in_include_files")
        return withUnsafePointer(to: &ShaderIncludeDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Returns a list of built-in include files that are currently registered.
    public static func listBuiltInIncludeFiles() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_list_built_in_include_files, nil, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_has_built_in_include_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_built_in_include_file")
        return withUnsafePointer(to: &ShaderIncludeDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns `true` if an include file with this name exists.
    public static func hasBuiltInIncludeFile(filename: String) -> Bool {
        var _result: Bool = false
        let filename = GString(filename)
        withUnsafePointer(to: filename.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_has_built_in_include_file, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_built_in_include_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_built_in_include_file")
        return withUnsafePointer(to: &ShaderIncludeDB.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1703090593)!
            }
            
        }
        
    }()
    
    /// Returns the code for the built-in shader fragment. You can also access this in your shader code through `#include "filename"`.
    public static func getBuiltInIncludeFile(filename: String) -> String {
        let _result = GString ()
        let filename = GString(filename)
        withUnsafePointer(to: filename.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_built_in_include_file, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
}

