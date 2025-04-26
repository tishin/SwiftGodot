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


/// Allows reading the content of a ZIP file.
/// 
/// This class implements a reader that can extract the content of individual files inside a ZIP archive. See also ``ZIPPacker``.
/// 
open class ZIPReader: RefCounted {
    private static var className = StringName("ZIPReader")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_open: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open")
        return withUnsafePointer(to: &ZIPReader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Opens the zip archive at the given `path` and reads its file index.
    public final func open(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ZIPReader.method_open, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close")
        return withUnsafePointer(to: &ZIPReader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Closes the underlying resources used by this instance.
    public final func close() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ZIPReader.method_close, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_files: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_files")
        return withUnsafePointer(to: &ZIPReader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Returns the list of names of all files in the loaded archive.
    /// 
    /// Must be called after ``open(path:)``.
    /// 
    public final func getFiles() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(ZIPReader.method_get_files, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_read_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("read_file")
        return withUnsafePointer(to: &ZIPReader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 740857591)!
            }
            
        }
        
    }()
    
    /// Loads the whole content of a file in the loaded zip archive into memory and returns it.
    /// 
    /// Must be called after ``open(path:)``.
    /// 
    public final func readFile(path: String, caseSensitive: Bool = true) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: caseSensitive) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ZIPReader.method_read_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_file_exists: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("file_exists")
        return withUnsafePointer(to: &ZIPReader.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 35364943)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the file exists in the loaded zip archive.
    /// 
    /// Must be called after ``open(path:)``.
    /// 
    public final func fileExists(path: String, caseSensitive: Bool = true) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: caseSensitive) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ZIPReader.method_file_exists, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
}

