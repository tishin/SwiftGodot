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


/// Resource filesystem, as the editor sees it.
/// 
/// This object holds information of all resources in the filesystem, their types, etc.
/// 
/// > Note: This class shouldn't be instantiated directly. Instead, access the singleton using ``EditorInterface/getResourceFilesystem()``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``filesystemChanged``
/// - ``scriptClassesUpdated``
/// - ``sourcesChanged``
/// - ``resourcesReimported``
/// - ``resourcesReload``
open class EditorFileSystem: Node {
    fileprivate static var className = StringName("EditorFileSystem")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static var method_get_filesystem: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_filesystem")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 842323275)!
            }
            
        }
        
    }()
    
    /// Gets the root directory object.
    public final func getFilesystem() -> EditorFileSystemDirectory? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorFileSystem.method_get_filesystem, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_is_scanning: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_scanning")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the filesystem is being scanned.
    public final func isScanning() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(EditorFileSystem.method_is_scanning, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_scanning_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_scanning_progress")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the scan progress for 0 to 1 if the FS is being scanned.
    public final func getScanningProgress() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(EditorFileSystem.method_get_scanning_progress, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_scan: GDExtensionMethodBindPtr = {
        let methodName = StringName("scan")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Scan the filesystem for changes.
    public final func scan() {
        gi.object_method_bind_ptrcall(EditorFileSystem.method_scan, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_scan_sources: GDExtensionMethodBindPtr = {
        let methodName = StringName("scan_sources")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Check if the source of any imported resource changed.
    public final func scanSources() {
        gi.object_method_bind_ptrcall(EditorFileSystem.method_scan_sources, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_update_file: GDExtensionMethodBindPtr = {
        let methodName = StringName("update_file")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Add a file in an existing directory, or schedule file information to be updated on editor restart. Can be used to update text files saved by an external program.
    /// 
    /// This will not import the file. To reimport, call ``reimportFiles(_:)`` or ``scan()`` methods.
    /// 
    public final func updateFile(path: String) {
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystem.method_update_file, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_filesystem_path: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_filesystem_path")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3188521125)!
            }
            
        }
        
    }()
    
    /// Returns a view into the filesystem at `path`.
    public final func getFilesystemPath(_ path: String) -> EditorFileSystemDirectory? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystem.method_get_filesystem_path, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_get_file_type: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_file_type")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the resource type of the file, given the full path. This returns a string such as `"Resource"` or `"GDScript"`, _not_ a file extension such as `".gd"`.
    public final func getFileType(path: String) -> String {
        let _result = GString ()
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystem.method_get_file_type, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static var method_reimport_files: GDExtensionMethodBindPtr = {
        let methodName = StringName("reimport_files")
        return withUnsafePointer(to: &EditorFileSystem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4015028928)!
            }
            
        }
        
    }()
    
    /// Reimports a set of files. Call this if these files or their `.import` files were directly edited by script or an external program.
    /// 
    /// If the file type changed or the file was newly created, use ``updateFile(path:)`` or ``scan()``.
    /// 
    /// > Note: This function blocks until the import is finished. However, the main loop iteration, including timers and ``Node/_process(delta:)``, will occur during the import process due to progress bar updates. Avoid calls to ``reimportFiles(_:)`` or ``scan()`` while an import is in progress.
    /// 
    public final func reimportFiles(_ files: PackedStringArray) {
        withUnsafePointer(to: files.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorFileSystem.method_reimport_files, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    // Signals 
    /// Emitted if the filesystem changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.filesystemChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var filesystemChanged: SimpleSignal { SimpleSignal (target: self, signalName: "filesystem_changed") }
    
    /// Emitted when the list of global script classes gets updated.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.scriptClassesUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var scriptClassesUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "script_classes_updated") }
    
    /// Emitted if the source of any imported file changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sourcesChanged.connect { exist in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sourcesChanged: SignalWithArguments<Bool> { SignalWithArguments<Bool> (target: self, signalName: "sources_changed") }
    
    /// Emitted if a resource is reimported.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourcesReimported.connect { resources in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourcesReimported: SignalWithArguments<PackedStringArray> { SignalWithArguments<PackedStringArray> (target: self, signalName: "resources_reimported") }
    
    /// Emitted if at least one resource is reloaded when the filesystem is scanned.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.resourcesReload.connect { resources in
    ///    print ("caught signal")
    /// }
    /// ```
    public var resourcesReload: SignalWithArguments<PackedStringArray> { SignalWithArguments<PackedStringArray> (target: self, signalName: "resources_reload") }
    
}

