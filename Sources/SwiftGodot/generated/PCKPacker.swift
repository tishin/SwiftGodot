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


/// Creates packages that can be loaded into a running project.
/// 
/// The ``PCKPacker`` is used to create packages that can be loaded into a running project using ``ProjectSettings/loadResourcePack(_:replaceFiles:offset:)``.
/// 
/// The above ``PCKPacker`` creates package `test.pck`, then adds a file named `text.txt` at the root of the package.
/// 
/// > Note: PCK is Godot's own pack file format. To create ZIP archives that can be read by any program, use ``ZIPPacker`` instead.
/// 
open class PCKPacker: RefCounted {
    private static var className = StringName("PCKPacker")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_pck_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pck_start")
        return withUnsafePointer(to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 508410629)!
            }
            
        }
        
    }()
    
    /// Creates a new PCK file at the file path `pckPath`. The `.pck` file extension isn't added automatically, so it should be part of `pckPath` (even though it's not required).
    public final func pckStart(pckPath: String, alignment: Int32 = 32, key: String = "0000000000000000000000000000000000000000000000000000000000000000", encryptDirectory: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let pckPath = GString(pckPath)
        withUnsafePointer(to: pckPath.content) { pArg0 in
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
    
    fileprivate static let method_add_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_file")
        return withUnsafePointer(to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2215643711)!
            }
            
        }
        
    }()
    
    /// Adds the `sourcePath` file to the current PCK package at the `targetPath` internal path. The `res://` prefix for `targetPath` is optional and stripped internally.
    public final func addFile(targetPath: String, sourcePath: String, encrypt: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let targetPath = GString(targetPath)
        withUnsafePointer(to: targetPath.content) { pArg0 in
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
    
    fileprivate static let method_add_file_removal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_file_removal")
        return withUnsafePointer(to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Registers a file removal of the `targetPath` internal path to the PCK. This is mainly used for patches. If the file at this path has been loaded from a previous PCK, it will be removed. The `res://` prefix for `targetPath` is optional and stripped internally.
    public final func addFileRemoval(targetPath: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let targetPath = GString(targetPath)
        withUnsafePointer(to: targetPath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PCKPacker.method_add_file_removal, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_flush: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("flush")
        return withUnsafePointer(to: &PCKPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1633102583)!
            }
            
        }
        
    }()
    
    /// Writes the files specified using all ``addFile(targetPath:sourcePath:encrypt:)`` calls since the last flush. If `verbose` is `true`, a list of files added will be printed to the console for easier debugging.
    public final func flush(verbose: Bool = false) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
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

