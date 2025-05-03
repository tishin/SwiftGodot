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


/// Provides access to GDExtension functionality.
/// 
/// The GDExtensionManager loads, initializes, and keeps track of all available ``GDExtension`` libraries in the project.
/// 
/// > Note: Do not worry about GDExtension unless you know what you are doing.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``extensionsReloaded``
/// - ``extensionLoaded``
/// - ``extensionUnloading``
open class GDExtensionManager: Object {
    /// The shared instance of this class
    public static var shared: GDExtensionManager {
        return withUnsafePointer(to: &GDExtensionManager.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("GDExtensionManager")
    override open class var godotClassName: StringName { className }
    public enum LoadStatus: Int64, CaseIterable {
        /// The extension has loaded successfully.
        case ok = 0 // LOAD_STATUS_OK
        /// The extension has failed to load, possibly because it does not exist or has missing dependencies.
        case failed = 1 // LOAD_STATUS_FAILED
        /// The extension has already been loaded.
        case alreadyLoaded = 2 // LOAD_STATUS_ALREADY_LOADED
        /// The extension has not been loaded.
        case notLoaded = 3 // LOAD_STATUS_NOT_LOADED
        /// The extension requires the application to restart to fully load.
        case needsRestart = 4 // LOAD_STATUS_NEEDS_RESTART
    }
    
    /* Methods */
    fileprivate static let method_load_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("load_extension")
        return withUnsafePointer(to: &GDExtensionManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4024158731)!
            }
            
        }
        
    }()
    
    /// Loads an extension by absolute file path. The `path` needs to point to a valid ``GDExtension``. Returns ``LoadStatus/ok`` if successful.
    public static func loadExtension(path: String) -> GDExtensionManager.LoadStatus {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_load_extension, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GDExtensionManager.LoadStatus (rawValue: _result)!
    }
    
    fileprivate static let method_reload_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reload_extension")
        return withUnsafePointer(to: &GDExtensionManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4024158731)!
            }
            
        }
        
    }()
    
    /// Reloads the extension at the given file path. The `path` needs to point to a valid ``GDExtension``, otherwise this method may return either ``LoadStatus/notLoaded`` or ``LoadStatus/failed``.
    /// 
    /// > Note: You can only reload extensions in the editor. In release builds, this method always fails and returns ``LoadStatus/failed``.
    /// 
    public static func reloadExtension(path: String) -> GDExtensionManager.LoadStatus {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_reload_extension, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GDExtensionManager.LoadStatus (rawValue: _result)!
    }
    
    fileprivate static let method_unload_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unload_extension")
        return withUnsafePointer(to: &GDExtensionManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4024158731)!
            }
            
        }
        
    }()
    
    /// Unloads an extension by file path. The `path` needs to point to an already loaded ``GDExtension``, otherwise this method returns ``LoadStatus/notLoaded``.
    public static func unloadExtension(path: String) -> GDExtensionManager.LoadStatus {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_unload_extension, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GDExtensionManager.LoadStatus (rawValue: _result)!
    }
    
    fileprivate static let method_is_extension_loaded: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_extension_loaded")
        return withUnsafePointer(to: &GDExtensionManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the extension at the given file `path` has already been loaded successfully. See also ``getLoadedExtensions()``.
    public static func isExtensionLoaded(path: String) -> Bool {
        var _result: Bool = false
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_is_extension_loaded, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_loaded_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loaded_extensions")
        return withUnsafePointer(to: &GDExtensionManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the file paths of all currently loaded extensions.
    public static func getLoadedExtensions() -> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(method_get_loaded_extensions, shared.handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_extension")
        return withUnsafePointer(to: &GDExtensionManager.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 49743343)!
            }
            
        }
        
    }()
    
    /// Returns the ``GDExtension`` at the given file `path`, or `null` if it has not been loaded or does not exist.
    public static func getExtension(path: String) -> GDExtension? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_extension, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    // Signals 
    /// Emitted after the editor has finished reloading one or more extensions.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.extensionsReloaded.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var extensionsReloaded: SimpleSignal { SimpleSignal (target: self, signalName: "extensions_reloaded") }
    
    /// Emitted after the editor has finished loading a new extension.
    /// 
    /// > Note: This signal is only emitted in editor builds.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.extensionLoaded.connect { `extension` in
    ///    print ("caught signal")
    /// }
    /// ```
    public var extensionLoaded: SignalWithArguments<GDExtension?> { SignalWithArguments<GDExtension?> (target: self, signalName: "extension_loaded") }
    
    /// Emitted before the editor starts unloading an extension.
    /// 
    /// > Note: This signal is only emitted in editor builds.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.extensionUnloading.connect { `extension` in
    ///    print ("caught signal")
    /// }
    /// ```
    public var extensionUnloading: SignalWithArguments<GDExtension?> { SignalWithArguments<GDExtension?> (target: self, signalName: "extension_unloading") }
    
}

