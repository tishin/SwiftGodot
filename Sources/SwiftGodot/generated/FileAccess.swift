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


/// Provides methods for file reading and writing operations.
/// 
/// This class can be used to permanently store data in the user device's file system and to read from it. This is useful for storing game save data or player configuration files.
/// 
/// Here's a sample on how to write and read from a file:
/// 
/// In the example above, the file will be saved in the user data folder as specified in the <a href="https://docs.godotengine.org/en//tutorials/io/data_paths.html">Data paths</a> documentation.
/// 
/// ``FileAccess`` will close when it's freed, which happens when it goes out of scope or when it gets assigned with `null`. ``close()`` can be used to close it before then explicitly. In C# the reference must be disposed manually, which can be done with the `using` statement or by calling the `Dispose` method directly.
/// 
/// > Note: To access project resources once exported, it is recommended to use ``ResourceLoader`` instead of ``FileAccess``, as some files are converted to engine-specific formats and their original source files might not be present in the exported PCK package. If using ``FileAccess``, make sure the file is included in the export by changing its import mode to **Keep File (exported as is)** in the Import dock, or, for files where this option is not available, change the non-resource export filter in the Export dialog to include the file's extension (e.g. `*.txt`).
/// 
/// > Note: Files are automatically closed only if the process exits "normally" (such as by clicking the window manager's close button or pressing **Alt + F4**). If you stop the project execution by pressing **F8** while the project is running, the file won't be closed as the game process will be killed. You can work around this by calling ``flush()`` at regular intervals.
/// 
open class FileAccess: RefCounted {
    private static var className = StringName("FileAccess")
    override open class var godotClassName: StringName { className }
    public enum ModeFlags: Int64, CaseIterable {
        /// Opens the file for read operations. The cursor is positioned at the beginning of the file.
        case read = 1 // READ
        /// Opens the file for write operations. The file is created if it does not exist, and truncated if it does.
        /// 
        /// > Note: When creating a file it must be in an already existing directory. To recursively create directories for a file path, see ``DirAccess/makeDirRecursive(path:)``.
        /// 
        case write = 2 // WRITE
        /// Opens the file for read and write operations. Does not truncate the file. The cursor is positioned at the beginning of the file.
        case readWrite = 3 // READ_WRITE
        /// Opens the file for read and write operations. The file is created if it does not exist, and truncated if it does. The cursor is positioned at the beginning of the file.
        /// 
        /// > Note: When creating a file it must be in an already existing directory. To recursively create directories for a file path, see ``DirAccess/makeDirRecursive(path:)``.
        /// 
        case writeRead = 7 // WRITE_READ
    }
    
    public enum CompressionMode: Int64, CaseIterable {
        /// Uses the <a href="https://fastlz.org/">FastLZ</a> compression method.
        case fastlz = 0 // COMPRESSION_FASTLZ
        /// Uses the <a href="https://en.wikipedia.org/wiki/DEFLATE">DEFLATE</a> compression method.
        case deflate = 1 // COMPRESSION_DEFLATE
        /// Uses the <a href="https://facebook.github.io/zstd/">Zstandard</a> compression method.
        case zstd = 2 // COMPRESSION_ZSTD
        /// Uses the <a href="https://www.gzip.org/">gzip</a> compression method.
        case gzip = 3 // COMPRESSION_GZIP
        /// Uses the <a href="https://github.com/google/brotli">brotli</a> compression method (only decompression is supported).
        case brotli = 4 // COMPRESSION_BROTLI
    }
    
    public struct UnixPermissionFlags: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Read for owner bit.
        public static let readOwner = UnixPermissionFlags (rawValue: 256)
        /// Write for owner bit.
        public static let writeOwner = UnixPermissionFlags (rawValue: 128)
        /// Execute for owner bit.
        public static let executeOwner = UnixPermissionFlags (rawValue: 64)
        /// Read for group bit.
        public static let readGroup = UnixPermissionFlags (rawValue: 32)
        /// Write for group bit.
        public static let writeGroup = UnixPermissionFlags (rawValue: 16)
        /// Execute for group bit.
        public static let executeGroup = UnixPermissionFlags (rawValue: 8)
        /// Read for other bit.
        public static let readOther = UnixPermissionFlags (rawValue: 4)
        /// Write for other bit.
        public static let writeOther = UnixPermissionFlags (rawValue: 2)
        /// Execute for other bit.
        public static let executeOther = UnixPermissionFlags (rawValue: 1)
        /// Set user id on execution bit.
        public static let setUserId = UnixPermissionFlags (rawValue: 2048)
        /// Set group id on execution bit.
        public static let setGroupId = UnixPermissionFlags (rawValue: 1024)
        /// Restricted deletion (sticky) bit.
        public static let restrictedDelete = UnixPermissionFlags (rawValue: 512)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.readOwner) { result += "readOwner, " }
            if self.contains (.writeOwner) { result += "writeOwner, " }
            if self.contains (.executeOwner) { result += "executeOwner, " }
            if self.contains (.readGroup) { result += "readGroup, " }
            if self.contains (.writeGroup) { result += "writeGroup, " }
            if self.contains (.executeGroup) { result += "executeGroup, " }
            if self.contains (.readOther) { result += "readOther, " }
            if self.contains (.writeOther) { result += "writeOther, " }
            if self.contains (.executeOther) { result += "executeOther, " }
            if self.contains (.setUserId) { result += "setUserId, " }
            if self.contains (.setGroupId) { result += "setGroupId, " }
            if self.contains (.restrictedDelete) { result += "restrictedDelete, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    
    /* Properties */
    
    /// If `true`, the file is read with big-endian <a href="https://en.wikipedia.org/wiki/Endianness">endianness</a>. If `false`, the file is read with little-endian endianness. If in doubt, leave this to `false` as most files are written with little-endian endianness.
    /// 
    /// > Note: ``bigEndian`` is only about the file format, not the CPU type. The CPU endianness doesn't affect the default endianness for files written.
    /// 
    /// > Note: This is always reset to `false` whenever you open the file. Therefore, you must set ``bigEndian`` _after_ opening the file, not before.
    /// 
    final public var bigEndian: Bool {
        get {
            return is_big_endian ()
        }
        
        set {
            set_big_endian (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_open: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1247358404)!
            }
            
        }
        
    }()
    
    /// Creates a new ``FileAccess`` object and opens the file for writing or reading, depending on the flags.
    /// 
    /// Returns `null` if opening the file failed. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func open(path: String, flags: FileAccess.ModeFlags) -> FileAccess? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: flags.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_open, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_open_encrypted: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open_encrypted")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 788003459)!
            }
            
        }
        
    }()
    
    /// Creates a new ``FileAccess`` object and opens an encrypted file in write or read mode. You need to pass a binary key to encrypt/decrypt it.
    /// 
    /// > Note: The provided key must be 32 bytes long.
    /// 
    /// Returns `null` if opening the file failed. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func openEncrypted(path: String, modeFlags: FileAccess.ModeFlags, key: PackedByteArray, iv: PackedByteArray = PackedByteArray()) -> FileAccess? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: modeFlags.rawValue) { pArg1 in
                withUnsafePointer(to: key.content) { pArg2 in
                    withUnsafePointer(to: iv.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_open_encrypted, nil, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_open_encrypted_with_pass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open_encrypted_with_pass")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 790283377)!
            }
            
        }
        
    }()
    
    /// Creates a new ``FileAccess`` object and opens an encrypted file in write or read mode. You need to pass a password to encrypt/decrypt it.
    /// 
    /// Returns `null` if opening the file failed. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func openEncryptedWithPass(path: String, modeFlags: FileAccess.ModeFlags, pass: String) -> FileAccess? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: modeFlags.rawValue) { pArg1 in
                let pass = GString(pass)
                withUnsafePointer(to: pass.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_open_encrypted_with_pass, nil, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_open_compressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open_compressed")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3686439335)!
            }
            
        }
        
    }()
    
    /// Creates a new ``FileAccess`` object and opens a compressed file for reading or writing.
    /// 
    /// > Note: ``openCompressed(path:modeFlags:compressionMode:)`` can only read files that were saved by Godot, not third-party compression formats. See <a href="https://github.com/godotengine/godot/issues/28999">GitHub issue #28999</a> for a workaround.
    /// 
    /// Returns `null` if opening the file failed. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func openCompressed(path: String, modeFlags: FileAccess.ModeFlags, compressionMode: FileAccess.CompressionMode = .fastlz) -> FileAccess? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: modeFlags.rawValue) { pArg1 in
                withUnsafePointer(to: compressionMode.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_open_compressed, nil, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_open_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_open_error")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Returns the result of the last ``open(path:flags:)`` call in the current thread.
    public static func getOpenError() -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(method_get_open_error, nil, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_create_temp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_temp")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3075606245)!
            }
            
        }
        
    }()
    
    /// Creates a temporary file. This file will be freed when the returned ``FileAccess`` is freed.
    /// 
    /// If `prefix` is not empty, it will be prefixed to the file name, separated by a `-`.
    /// 
    /// If `extension` is not empty, it will be appended to the temporary file name.
    /// 
    /// If `keep` is `true`, the file is not deleted when the returned ``FileAccess`` is freed.
    /// 
    /// Returns `null` if opening the file failed. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func createTemp(modeFlags: Int32, prefix: String = "", `extension`: String = "", keep: Bool = false) -> FileAccess? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: modeFlags) { pArg0 in
            let prefix = GString(prefix)
            withUnsafePointer(to: prefix.content) { pArg1 in
                let `extension` = GString(`extension`)
                withUnsafePointer(to: `extension`.content) { pArg2 in
                    withUnsafePointer(to: keep) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(method_create_temp, nil, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_file_as_bytes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_file_as_bytes")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659035735)!
            }
            
        }
        
    }()
    
    /// Returns the whole `path` file contents as a ``PackedByteArray`` without any decoding.
    /// 
    /// Returns an empty ``PackedByteArray`` if an error occurred while opening the file. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func getFileAsBytes(path: String) -> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_file_as_bytes, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_file_as_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_file_as_string")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1703090593)!
            }
            
        }
        
    }()
    
    /// Returns the whole `path` file contents as a ``String``. Text is interpreted as being UTF-8 encoded.
    /// 
    /// Returns an empty ``String`` if an error occurred while opening the file. You can use ``getOpenError()`` to check the error that occurred.
    /// 
    public static func getFileAsString(path: String) -> String {
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_file_as_string, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_resize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("resize")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844576869)!
            }
            
        }
        
    }()
    
    /// Resizes the file to a specified length. The file must be open in a mode that permits writing. If the file is extended, NUL characters are appended. If the file is truncated, all data from the end file to the original length of the file is lost.
    public final func resize(length: Int) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_resize, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_flush: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("flush")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Writes the file's buffer to disk. Flushing is automatically performed when the file is closed. This means you don't need to call ``flush()`` manually before closing a file. Still, calling ``flush()`` can be used to ensure the data is safe even if the project crashes instead of being closed gracefully.
    /// 
    /// > Note: Only call ``flush()`` when you actually need it. Otherwise, it will decrease performance due to constant disk writes.
    /// 
    public final func flush() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(FileAccess.method_flush, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the path as a ``String`` for the current open file.
    public final func getPath() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileAccess.method_get_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_path_absolute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_absolute")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the absolute path as a ``String`` for the current open file.
    public final func getPathAbsolute() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileAccess.method_get_path_absolute, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_is_open: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_open")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the file is currently opened.
    public final func isOpen() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FileAccess.method_is_open, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Changes the file reading/writing cursor to the specified position (in bytes from the beginning of the file).
    public final func seek(position: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_seek, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_seek_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek_end")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1995695955)!
            }
            
        }
        
    }()
    
    /// Changes the file reading/writing cursor to the specified position (in bytes from the end of the file).
    /// 
    /// > Note: This is an offset, so you should use negative numbers or the cursor will be at the end of the file.
    /// 
    public final func seekEnd(position: Int = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_seek_end, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_position")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the file cursor's position.
    public final func getPosition() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(FileAccess.method_get_position, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_length")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the size of the file in bytes. For a pipe, returns the number of bytes available for reading from the pipe.
    public final func getLength() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(FileAccess.method_get_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_eof_reached: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("eof_reached")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the file cursor has already read past the end of the file.
    /// 
    /// > Note: `eof_reached() == false` cannot be used to check whether there is more data available. To loop while there is more data available, use:
    /// 
    public final func eofReached() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FileAccess.method_eof_reached, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_8: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_8")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the next 8 bits from the file as an integer. See ``store8(value:)`` for details on what values can be stored and retrieved this way.
    public final func get8() -> UInt8 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt8 = 0
        gi.object_method_bind_ptrcall(FileAccess.method_get_8, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_16: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_16")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the next 16 bits from the file as an integer. See ``store16(value:)`` for details on what values can be stored and retrieved this way.
    public final func get16() -> UInt16 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt16 = 0
        gi.object_method_bind_ptrcall(FileAccess.method_get_16, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_32: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_32")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the next 32 bits from the file as an integer. See ``store32(value:)`` for details on what values can be stored and retrieved this way.
    public final func get32() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(FileAccess.method_get_32, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_64: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_64")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the next 64 bits from the file as an integer. See ``store64(value:)`` for details on what values can be stored and retrieved this way.
    public final func get64() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(FileAccess.method_get_64, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_half: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_half")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the next 16 bits from the file as a half-precision floating-point number.
    public final func getHalf() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FileAccess.method_get_half, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_float: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_float")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the next 32 bits from the file as a floating-point number.
    public final func getFloat() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FileAccess.method_get_float, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_double: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_double")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the next 64 bits from the file as a floating-point number.
    public final func getDouble() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FileAccess.method_get_double, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_real: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_real")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the next bits from the file as a floating-point number.
    public final func getReal() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(FileAccess.method_get_real, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_buffer")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4131300905)!
            }
            
        }
        
    }()
    
    /// Returns next `length` bytes of the file as a ``PackedByteArray``.
    public final func getBuffer(length: Int) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: length) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_get_buffer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_line")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the next line of the file as a ``String``. The returned string doesn't include newline (`\n`) or carriage return (`\r`) characters, but does include any other leading or trailing whitespace.
    /// 
    /// Text is interpreted as being UTF-8 encoded.
    /// 
    public final func getLine() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileAccess.method_get_line, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_csv_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_csv_line")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2358116058)!
            }
            
        }
        
    }()
    
    /// Returns the next value of the file in CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long, and cannot be a double quotation mark.
    /// 
    /// Text is interpreted as being UTF-8 encoded. Text values must be enclosed in double quotes if they include the delimiter character. Double quotes within a text value can be escaped by doubling their occurrence.
    /// 
    /// For example, the following CSV lines are valid and will be properly parsed as two strings each:
    /// 
    /// Note how the second line can omit the enclosing quotes as it does not include the delimiter. However it _could_ very well use quotes, it was only written without for demonstration purposes. The third line must use `""` for each quotation mark that needs to be interpreted as such instead of the end of a text value.
    /// 
    public final func getCsvLine(delim: String = ",") -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        let delim = GString(delim)
        withUnsafePointer(to: delim.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_get_csv_line, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_as_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_as_text")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1162154673)!
            }
            
        }
        
    }()
    
    /// Returns the whole file as a ``String``. Text is interpreted as being UTF-8 encoded.
    /// 
    /// If `skipCr` is `true`, carriage return characters (`\r`, CR) will be ignored when parsing the UTF-8, so that only line feed characters (`\n`, LF) represent a new line (Unix convention).
    /// 
    public final func getAsText(skipCr: Bool = false) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: skipCr) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_get_as_text, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_md5: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_md5")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1703090593)!
            }
            
        }
        
    }()
    
    /// Returns an MD5 String representing the file at the given path or an empty ``String`` on failure.
    public static func getMd5(path: String) -> String {
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_md5, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_sha256: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_sha256")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1703090593)!
            }
            
        }
        
    }()
    
    /// Returns an SHA-256 ``String`` representing the file at the given path or an empty ``String`` on failure.
    public static func getSha256(path: String) -> String {
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_sha256, nil, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_is_big_endian: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_big_endian")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_big_endian() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(FileAccess.method_is_big_endian, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_big_endian: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_big_endian")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_big_endian(_ bigEndian: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bigEndian) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_set_big_endian, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_error")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3185525595)!
            }
            
        }
        
    }()
    
    /// Returns the last error that happened when trying to perform operations. Compare with the `ERR_FILE_*` constants from ``GodotError``.
    public final func getError() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(FileAccess.method_get_error, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_var: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_var")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 189129690)!
            }
            
        }
        
    }()
    
    /// Returns the next ``Variant`` value from the file. If `allowObjects` is `true`, decoding objects is allowed.
    /// 
    /// Internally, this uses the same decoding mechanism as the ``@GlobalScope.bytes_to_var`` method.
    /// 
    /// > Warning: Deserialized objects can contain code which gets executed. Do not use this option if the serialized object comes from untrusted sources to avoid potential security threats such as remote code execution.
    /// 
    public final func getVar(allowObjects: Bool = false) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: allowObjects) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_get_var, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_store_8: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_8")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Stores an integer as 8 bits in the file.
    /// 
    /// > Note: The `value` should lie in the interval `[0, 255]`. Any other value will overflow and wrap around.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    /// To store a signed integer, use ``store64(value:)``, or convert it manually (see ``store16(value:)`` for an example).
    /// 
    public final func store8(value: UInt8) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_8, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_16: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_16")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Stores an integer as 16 bits in the file.
    /// 
    /// > Note: The `value` should lie in the interval `[0, 2^16 - 1]`. Any other value will overflow and wrap around.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    /// To store a signed integer, use ``store64(value:)`` or store a signed integer from the interval `[-2^15, 2^15 - 1]` (i.e. keeping one bit for the signedness) and compute its sign manually when reading. For example:
    /// 
    public final func store16(value: UInt16) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_16, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_32: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_32")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Stores an integer as 32 bits in the file.
    /// 
    /// > Note: The `value` should lie in the interval `[0, 2^32 - 1]`. Any other value will overflow and wrap around.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    /// To store a signed integer, use ``store64(value:)``, or convert it manually (see ``store16(value:)`` for an example).
    /// 
    public final func store32(value: UInt32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_32, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_64: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_64")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Stores an integer as 64 bits in the file.
    /// 
    /// > Note: The `value` must lie in the interval `[-2^63, 2^63 - 1]` (i.e. be a valid integer value).
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func store64(value: UInt) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_64, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_half: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_half")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 330693286)!
            }
            
        }
        
    }()
    
    /// Stores a half-precision floating-point number as 16 bits in the file.
    public final func storeHalf(value: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_half, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_float: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_float")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 330693286)!
            }
            
        }
        
    }()
    
    /// Stores a floating-point number as 32 bits in the file.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeFloat(value: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_float, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_double: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_double")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 330693286)!
            }
            
        }
        
    }()
    
    /// Stores a floating-point number as 64 bits in the file.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeDouble(value: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_double, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_real: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_real")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 330693286)!
            }
            
        }
        
    }()
    
    /// Stores a floating-point number in the file.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeReal(value: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_real, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_buffer")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 114037665)!
            }
            
        }
        
    }()
    
    /// Stores the given array of bytes in the file.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeBuffer(_ buffer: PackedByteArray) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: buffer.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_buffer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_line")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Stores `line` in the file followed by a newline character (`\n`), encoding the text as UTF-8.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeLine(_ line: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let line = GString(line)
        withUnsafePointer(to: line.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_line, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_csv_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_csv_line")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1611473434)!
            }
            
        }
        
    }()
    
    /// Store the given ``PackedStringArray`` in the file as a line formatted in the CSV (Comma-Separated Values) format. You can pass a different delimiter `delim` to use other than the default `","` (comma). This delimiter must be one-character long.
    /// 
    /// Text will be encoded as UTF-8.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeCsvLine(values: PackedStringArray, delim: String = ",") -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: values.content) { pArg0 in
            let delim = GString(delim)
            withUnsafePointer(to: delim.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(FileAccess.method_store_csv_line, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_string")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Stores `string` in the file without a newline character (`\n`), encoding the text as UTF-8.
    /// 
    /// > Note: This method is intended to be used to write text files. The string is stored as a UTF-8 encoded buffer without string length or terminating zero, which means that it can't be loaded back easily. If you want to store a retrievable string in a binary file, consider using ``storePascalString(_:)`` instead. For retrieving strings from a text file, you can use `get_buffer(length).get_string_from_utf8()` (if you know the length) or ``getAsText(skipCr:)``.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeString(_ string: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_var: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_var")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 117357437)!
            }
            
        }
        
    }()
    
    /// Stores any Variant value in the file. If `fullObjects` is `true`, encoding objects is allowed (and can potentially include code).
    /// 
    /// Internally, this uses the same encoding mechanism as the ``@GlobalScope.var_to_bytes`` method.
    /// 
    /// > Note: Not all properties are included. Only properties that are configured with the ``PropertyUsageFlags/propertyUsageStorage`` flag set will be serialized. You can add a new usage flag to a property by overriding the ``Object/_getPropertyList()`` method in your class. You can also check how property usage is configured by calling ``Object/_getPropertyList()``. See ``PropertyUsageFlags`` for the possible usage flags.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storeVar(value: Variant?, fullObjects: Bool = false) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: value.content) { pArg0 in
            withUnsafePointer(to: fullObjects) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(FileAccess.method_store_var, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_store_pascal_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("store_pascal_string")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Stores the given ``String`` as a line in the file in Pascal format (i.e. also store the length of the string).
    /// 
    /// Text will be encoded as UTF-8.
    /// 
    /// > Note: If an error occurs, the resulting value of the file position indicator is indeterminate.
    /// 
    public final func storePascalString(_ string: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(FileAccess.method_store_pascal_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_pascal_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_pascal_string")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns a ``String`` saved in Pascal format from the file.
    /// 
    /// Text is interpreted as being UTF-8 encoded.
    /// 
    public final func getPascalString() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(FileAccess.method_get_pascal_string, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Closes the currently opened file and prevents subsequent read/write operations. Use ``flush()`` to persist the data to disk without closing the file.
    /// 
    /// > Note: ``FileAccess`` will automatically close when it's freed, which happens when it goes out of scope or when it gets assigned with `null`. In C# the reference must be disposed after we are done using it, this can be done with the `using` statement or calling the `Dispose` method directly.
    /// 
    public final func close() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(FileAccess.method_close, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_file_exists: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("file_exists")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the file exists in the given path.
    /// 
    /// > Note: Many resources types are imported (e.g. textures or sound files), and their source asset will not be included in the exported game, as only the imported version is used. See ``ResourceLoader/exists(path:typeHint:)`` for an alternative approach that takes resource remapping into account.
    /// 
    /// For a non-static, relative equivalent, use ``DirAccess/fileExists(path:)``.
    /// 
    public static func fileExists(path: String) -> Bool {
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_file_exists, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_modified_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_modified_time")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1597066294)!
            }
            
        }
        
    }()
    
    /// Returns the last time the `file` was modified in Unix timestamp format, or `0` on error. This Unix timestamp can be converted to another format using the ``Time`` singleton.
    public static func getModifiedTime(file: String) -> UInt {
        var _result: UInt = 0
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_modified_time, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_unix_permissions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_unix_permissions")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 524341837)!
            }
            
        }
        
    }()
    
    /// Returns file UNIX permissions.
    /// 
    /// > Note: This method is implemented on iOS, Linux/BSD, and macOS.
    /// 
    public static func getUnixPermissions(file: String) -> FileAccess.UnixPermissionFlags {
        var _result: FileAccess.UnixPermissionFlags = FileAccess.UnixPermissionFlags ()
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_unix_permissions, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_unix_permissions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_unix_permissions")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 846038644)!
            }
            
        }
        
    }()
    
    /// Sets file UNIX permissions.
    /// 
    /// > Note: This method is implemented on iOS, Linux/BSD, and macOS.
    /// 
    public static func setUnixPermissions(file: String, permissions: FileAccess.UnixPermissionFlags) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: permissions.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_set_unix_permissions, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_hidden_attribute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_hidden_attribute")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if file `hidden` attribute is set.
    /// 
    /// > Note: This method is implemented on iOS, BSD, macOS, and Windows.
    /// 
    public static func getHiddenAttribute(file: String) -> Bool {
        var _result: Bool = false
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_hidden_attribute, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_hidden_attribute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_hidden_attribute")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2892558115)!
            }
            
        }
        
    }()
    
    /// Sets file **hidden** attribute.
    /// 
    /// > Note: This method is implemented on iOS, BSD, macOS, and Windows.
    /// 
    public static func setHiddenAttribute(file: String, hidden: Bool) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: hidden) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_set_hidden_attribute, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_set_read_only_attribute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_read_only_attribute")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2892558115)!
            }
            
        }
        
    }()
    
    /// Sets file **read only** attribute.
    /// 
    /// > Note: This method is implemented on iOS, BSD, macOS, and Windows.
    /// 
    public static func setReadOnlyAttribute(file: String, ro: Bool) -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: ro) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_set_read_only_attribute, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_read_only_attribute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_read_only_attribute")
        return withUnsafePointer(to: &FileAccess.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Returns `true`, if file `read only` attribute is set.
    /// 
    /// > Note: This method is implemented on iOS, BSD, macOS, and Windows.
    /// 
    public static func getReadOnlyAttribute(file: String) -> Bool {
        var _result: Bool = false
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_read_only_attribute, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

