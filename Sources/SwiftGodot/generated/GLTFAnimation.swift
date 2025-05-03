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


open class GLTFAnimation: Resource {
    private static var className = StringName("GLTFAnimation")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The original name of the animation.
    final public var originalName: String {
        get {
            return get_original_name ()
        }
        
        set {
            set_original_name (newValue)
        }
        
    }
    
    final public var loop: Bool {
        get {
            return get_loop ()
        }
        
        set {
            set_loop (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_original_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_original_name")
        return withUnsafePointer(to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_original_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFAnimation.method_get_original_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_original_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_original_name")
        return withUnsafePointer(to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_original_name(_ originalName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let originalName = GString(originalName)
        withUnsafePointer(to: originalName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAnimation.method_set_original_name, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop")
        return withUnsafePointer(to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFAnimation.method_get_loop, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_loop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop")
        return withUnsafePointer(to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop(_ loop: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loop) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAnimation.method_set_loop, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_additional_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_additional_data")
        return withUnsafePointer(to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2138907829)!
            }
            
        }
        
    }()
    
    /// Gets additional arbitrary data in this ``GLTFAnimation`` instance. This can be used to keep per-node state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is `null`.
    /// 
    public final func getAdditionalData(extensionName: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFAnimation.method_get_additional_data, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_additional_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_additional_data")
        return withUnsafePointer(to: &GLTFAnimation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Sets additional arbitrary data in this ``GLTFAnimation`` instance. This can be used to keep per-node state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The first argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.
    /// 
    public final func setAdditionalData(extensionName: StringName, additionalData: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: additionalData.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFAnimation.method_set_additional_data, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

