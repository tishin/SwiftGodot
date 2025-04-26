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


/// Allows the creation of ZIP files.
/// 
/// This class implements a writer that allows storing the multiple blobs in a ZIP archive. See also ``ZIPReader`` and ``PCKPacker``.
/// 
open class ZIPPacker: RefCounted {
    private static var className = StringName("ZIPPacker")
    override open class var godotClassName: StringName { className }
    public enum ZipAppend: Int64, CaseIterable {
        /// Create a new zip archive at the given path.
        case create = 0 // APPEND_CREATE
        /// Append a new zip archive to the end of the already existing file at the given path.
        case createafter = 1 // APPEND_CREATEAFTER
        /// Add new files to the existing zip archive at the given path.
        case addinzip = 2 // APPEND_ADDINZIP
    }
    
    /* Methods */
    fileprivate static let method_open: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open")
        return withUnsafePointer(to: &ZIPPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1936816515)!
            }
            
        }
        
    }()
    
    /// Opens a zip file for writing at the given path using the specified write mode.
    /// 
    /// This must be called before everything else.
    /// 
    public final func open(path: String, append: ZIPPacker.ZipAppend = .create) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: append.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ZIPPacker.method_open, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_start_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start_file")
        return withUnsafePointer(to: &ZIPPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Starts writing to a file within the archive. Only one file can be written at the same time.
    /// 
    /// Must be called after ``open(path:append:)``.
    /// 
    public final func startFile(path: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ZIPPacker.method_start_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_write_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("write_file")
        return withUnsafePointer(to: &ZIPPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Write the given `data` to the file.
    /// 
    /// Needs to be called after ``startFile(path:)``.
    /// 
    public final func writeFile(data: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ZIPPacker.method_write_file, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_close_file: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close_file")
        return withUnsafePointer(to: &ZIPPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Stops writing to a file within the archive.
    /// 
    /// It will fail if there is no open file.
    /// 
    public final func closeFile() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ZIPPacker.method_close_file, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close")
        return withUnsafePointer(to: &ZIPPacker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Closes the underlying resources used by this instance.
    public final func close() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ZIPPacker.method_close, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
}

