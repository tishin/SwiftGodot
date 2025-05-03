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


/// Imports scenes from third-parties' 3D files.
/// 
/// ``EditorSceneFormatImporter`` allows to define an importer script for a third-party 3D format.
/// 
/// To use ``EditorSceneFormatImporter``, register it using the ``EditorPlugin/addSceneFormatImporterPlugin(sceneFormatImporter:firstPriority:)`` method first.
/// 
open class EditorSceneFormatImporter: RefCounted {
    private static var className = StringName("EditorSceneFormatImporter")
    override open class var godotClassName: StringName { className }
    /* Constants */
    /// 
    public static let importScene = 1
    /// 
    public static let importAnimation = 2
    /// 
    public static let importFailOnMissingDependencies = 4
    /// 
    public static let importGenerateTangentArrays = 8
    /// 
    public static let importUseNamedSkinBinds = 16
    /// 
    public static let importDiscardMeshesAndMaterials = 32
    /// 
    public static let importForceDisableMeshCompression = 64
    /* Methods */
    fileprivate static let method__get_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_extensions")
        return withUnsafePointer(to: &EditorSceneFormatImporter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Return supported file extensions for this scene importer.
    @_documentation(visibility: public)
    open func _getExtensions() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(EditorSceneFormatImporter.method__get_extensions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__import_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_import_scene")
        return withUnsafePointer(to: &EditorSceneFormatImporter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3749238728)!
            }
            
        }
        
    }()
    
    /// Perform the bulk of the scene import logic here, for example using ``GLTFDocument`` or ``FBXDocument``.
    @_documentation(visibility: public)
    open func _importScene(path: String, flags: UInt32, options: VariantDictionary) -> Object? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: flags) { pArg1 in
                withUnsafePointer(to: options.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorSceneFormatImporter.method__import_scene, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_import_options: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_import_options")
        return withUnsafePointer(to: &EditorSceneFormatImporter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Override to add general import options. These will appear in the main import dock on the editor. Add options via ``addImportOption(name:value:)`` and ``addImportOptionAdvanced(type:name:defaultValue:hint:hintString:usageFlags:)``.
    /// 
    /// > Note: All ``EditorSceneFormatImporter`` and ``EditorScenePostImportPlugin`` instances will add options for all files. It is good practice to check the file extension when `path` is non-empty.
    /// 
    /// When the user is editing project settings, `path` will be empty. It is recommended to add all options when `path` is empty to allow the user to customize Import Defaults.
    /// 
    @_documentation(visibility: public)
    open func _getImportOptions(path: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorSceneFormatImporter.method__get_import_options, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_option_visibility: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_option_visibility")
        return withUnsafePointer(to: &EditorSceneFormatImporter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 298836892)!
            }
            
        }
        
    }()
    
    /// Should return `true` to show the given option, `false` to hide the given option, or `null` to ignore.
    @_documentation(visibility: public)
    open func _getOptionVisibility(path: String, forAnimation: Bool, option: String) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: forAnimation) { pArg1 in
                let option = GString(option)
                withUnsafePointer(to: option.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(EditorSceneFormatImporter.method__get_option_visibility, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_add_import_option: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_import_option")
        return withUnsafePointer(to: &EditorSceneFormatImporter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 402577236)!
            }
            
        }
        
    }()
    
    /// Add a specific import option (name and default value only). This function can only be called from ``_getImportOptions(path:)``.
    public final func addImportOption(name: String, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EditorSceneFormatImporter.method_add_import_option, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_import_option_advanced: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_import_option_advanced")
        return withUnsafePointer(to: &EditorSceneFormatImporter.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3674075649)!
            }
            
        }
        
    }()
    
    /// Add a specific import option. This function can only be called from ``_getImportOptions(path:)``.
    public final func addImportOptionAdvanced(type: Variant.GType, name: String, defaultValue: Variant?, hint: PropertyHint = .none, hintString: String = "", usageFlags: Int32 = 6) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: defaultValue.content) { pArg2 in
                    withUnsafePointer(to: hint.rawValue) { pArg3 in
                        let hintString = GString(hintString)
                        withUnsafePointer(to: hintString.content) { pArg4 in
                            withUnsafePointer(to: usageFlags) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(EditorSceneFormatImporter.method_add_import_option_advanced, handle, pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_extensions":
                return _EditorSceneFormatImporter_proxy_get_extensions
            case "_get_import_options":
                return _EditorSceneFormatImporter_proxy_get_import_options
            case "_get_option_visibility":
                return _EditorSceneFormatImporter_proxy_get_option_visibility
            case "_import_scene":
                return _EditorSceneFormatImporter_proxy_import_scene
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EditorSceneFormatImporter_proxy_get_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorSceneFormatImporter else { return }
    let ret = swiftObject._getExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _EditorSceneFormatImporter_proxy_get_import_options (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorSceneFormatImporter else { return }
    swiftObject._getImportOptions (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
}

func _EditorSceneFormatImporter_proxy_get_option_visibility (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorSceneFormatImporter else { return }
    let ret = swiftObject._getOptionVisibility (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", forAnimation: args [1]!.assumingMemoryBound (to: Bool.self).pointee, option: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _EditorSceneFormatImporter_proxy_import_scene (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EditorSceneFormatImporter else { return }
    let ret = swiftObject._importScene (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", flags: args [1]!.assumingMemoryBound (to: UInt32.self).pointee, options: VariantDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Object
}

