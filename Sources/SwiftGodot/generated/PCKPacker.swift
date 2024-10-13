// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Creates packages that can be loaded into a running project.
/// 
/// The ``PCKPacker`` is used to create packages that can be loaded into a running project using ``ProjectSettings/loadResourcePack(_:replaceFiles:offset:)``.
/// 
/// The above ``PCKPacker`` creates package `test.pck`, then adds a file named `text.txt` at the root of the package.
/// 
open class PCKPacker: RefCounted {
    override open class var godotClassName: StringName { "PCKPacker" }
    /* Methods */
    fileprivate static var method_pck_start: GDExtensionMethodBindPtr = {
        let methodName = StringName("pck_start")
        return withUnsafePointer(to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 508410629)!
            }
            
        }
        
    }()
    
    /// Creates a new PCK file with the name `pckName`. The `.pck` file extension isn't added automatically, so it should be part of `pckName` (even though it's not required).
    public final func pckStart(pckName: String, alignment: Int32 = 32, key: String = "0000000000000000000000000000000000000000000000000000000000000000", encryptDirectory: Bool = false) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let pckName = GString(pckName)
        withUnsafePointer(to: pckName.content) { pArg0 in
            withUnsafePointer(to: alignment) { pArg1 in
                let key = GString(key)
                withUnsafePointer(to: key.content) { pArg2 in
                    withUnsafePointer(to: encryptDirectory) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(PCKPacker.method_pck_start, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_add_file: GDExtensionMethodBindPtr = {
        let methodName = StringName("add_file")
        return withUnsafePointer(to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2215643711)!
            }
            
        }
        
    }()
    
    /// Adds the `sourcePath` file to the current PCK package at the `pckPath` internal path (should start with `res://`).
    public final func addFile(pckPath: String, sourcePath: String, encrypt: Bool = false) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let pckPath = GString(pckPath)
        withUnsafePointer(to: pckPath.content) { pArg0 in
            let sourcePath = GString(sourcePath)
            withUnsafePointer(to: sourcePath.content) { pArg1 in
                withUnsafePointer(to: encrypt) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(PCKPacker.method_add_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_flush: GDExtensionMethodBindPtr = {
        let methodName = StringName("flush")
        return withUnsafePointer(to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1633102583)!
            }
            
        }
        
    }()
    
    /// Writes the files specified using all ``addFile(pckPath:sourcePath:encrypt:)`` calls since the last flush. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.
    public final func flush(verbose: Bool = false) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: verbose) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PCKPacker.method_flush, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
}

