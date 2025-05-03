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


/// Saves a specific resource type to a file.
/// 
/// The engine can save resources when you do it from the editor, or when you use the ``ResourceSaver`` singleton. This is accomplished thanks to multiple ``ResourceFormatSaver``s, each handling its own format and called automatically by the engine.
/// 
/// By default, Godot saves resources as `.tres` (text-based), `.res` (binary) or another built-in format, but you can choose to create your own format by extending this class. Be sure to respect the documented return types and values. You should give it a global class name with `class_name` for it to be registered. Like built-in ResourceFormatSavers, it will be called automatically when saving resources of its recognized type(s). You may also implement a ``ResourceFormatLoader``.
/// 
open class ResourceFormatSaver: RefCounted {
    private static var className = StringName("ResourceFormatSaver")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__save: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_save")
        return withUnsafePointer(to: &ResourceFormatSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2794699034)!
            }
            
        }
        
    }()
    
    /// Saves the given resource object to a file at the target `path`. `flags` is a bitmask composed with ``ResourceSaver.SaverFlags`` constants.
    /// 
    /// Returns ``GodotError/ok`` on success, or an ``GodotError`` constant in case of failure.
    /// 
    @_documentation(visibility: public)
    open func _save(resource: Resource?, path: String, flags: UInt32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: resource?.handle) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: flags) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(ResourceFormatSaver.method__save, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__set_uid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_set_uid")
        return withUnsafePointer(to: &ResourceFormatSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 993915709)!
            }
            
        }
        
    }()
    
    /// Sets a new UID for the resource at the given `path`. Returns ``GodotError/ok`` on success, or an ``GodotError`` constant in case of failure.
    @_documentation(visibility: public)
    open func _setUid(path: String, uid: Int) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let path = GString(path)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: uid) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ResourceFormatSaver.method__set_uid, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__recognize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_recognize")
        return withUnsafePointer(to: &ResourceFormatSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3190994482)!
            }
            
        }
        
    }()
    
    /// Returns whether the given resource object can be saved by this saver.
    @_documentation(visibility: public)
    open func _recognize(resource: Resource?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatSaver.method__recognize, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_recognized_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_recognized_extensions")
        return withUnsafePointer(to: &ResourceFormatSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1567505034)!
            }
            
        }
        
    }()
    
    /// Returns the list of extensions available for saving the resource object, provided it is recognized (see ``_recognize(resource:)``).
    @_documentation(visibility: public)
    open func _getRecognizedExtensions(resource: Resource?) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ResourceFormatSaver.method__get_recognized_extensions, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__recognize_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_recognize_path")
        return withUnsafePointer(to: &ResourceFormatSaver.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 710996192)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this saver handles a given save path and `false` otherwise.
    /// 
    /// If this method is not implemented, the default behavior returns whether the path's extension is within the ones provided by ``_getRecognizedExtensions(resource:)``.
    /// 
    @_documentation(visibility: public)
    open func _recognizePath(resource: Resource?, path: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: resource?.handle) { pArg0 in
            let path = GString(path)
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(ResourceFormatSaver.method__recognize_path, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_recognized_extensions":
                return _ResourceFormatSaver_proxy_get_recognized_extensions
            case "_recognize":
                return _ResourceFormatSaver_proxy_recognize
            case "_recognize_path":
                return _ResourceFormatSaver_proxy_recognize_path
            case "_save":
                return _ResourceFormatSaver_proxy_save
            case "_set_uid":
                return _ResourceFormatSaver_proxy_set_uid
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _ResourceFormatSaver_proxy_get_recognized_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatSaver else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._getRecognizedExtensions (resource: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _ResourceFormatSaver_proxy_recognize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatSaver else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._recognize (resource: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatSaver_proxy_recognize_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatSaver else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._recognizePath (resource: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource, path: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _ResourceFormatSaver_proxy_save (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatSaver else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._save (resource: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Resource, path: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", flags: args [2]!.assumingMemoryBound (to: UInt32.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _ResourceFormatSaver_proxy_set_uid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? ResourceFormatSaver else { return }
    let ret = swiftObject._setUid (path: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", uid: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

