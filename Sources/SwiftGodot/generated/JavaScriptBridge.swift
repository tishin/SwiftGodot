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


/// Singleton that connects the engine with the browser's JavaScript context in Web export.
/// 
/// The JavaScriptBridge singleton is implemented only in the Web export. It's used to access the browser's JavaScript context. This allows interaction with embedding pages or calling third-party JavaScript APIs.
/// 
/// > Note: This singleton can be disabled at build-time to improve security. By default, the JavaScriptBridge singleton is enabled. Official export templates also have the JavaScriptBridge singleton enabled. See <a href="https://docs.godotengine.org/en//contributing/development/compiling/compiling_for_web.html">Compiling for the Web</a> in the documentation for more information.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``pwaUpdateAvailable``
open class JavaScriptBridge: Object {
    /// The shared instance of this class
    public static var shared: JavaScriptBridge {
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("JavaScriptBridge")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_eval: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("eval")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 218087648)!
            }
            
        }
        
    }()
    
    /// Execute the string `code` as JavaScript code within the browser window. This is a call to the actual global JavaScript function [code skip-lint]eval()`.
    /// 
    /// If `useGlobalExecutionContext` is `true`, the code will be evaluated in the global execution context. Otherwise, it is evaluated in the execution context of a function within the engine's runtime environment.
    /// 
    public static func eval(code: String, useGlobalExecutionContext: Bool = false) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            withUnsafePointer(to: useGlobalExecutionContext) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_eval, shared.handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_get_interface: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_interface")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1355533281)!
            }
            
        }
        
    }()
    
    /// Returns an interface to a JavaScript object that can be used by scripts. The `interface` must be a valid property of the JavaScript `window`. The callback must accept a single ``VariantArray`` argument, which will contain the JavaScript `arguments`. See ``JavaScriptObject`` for usage.
    public static func getInterface(_ interface: String) -> JavaScriptObject? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let interface = GString(interface)
        withUnsafePointer(to: interface.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_get_interface, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_create_callback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_callback")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 422818440)!
            }
            
        }
        
    }()
    
    /// Creates a reference to a ``Callable`` that can be used as a callback by JavaScript. The reference must be kept until the callback happens, or it won't be called at all. See ``JavaScriptObject`` for usage.
    /// 
    /// > Note: The callback function must take exactly one ``VariantArray`` argument, which is going to be the JavaScript <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/arguments">arguments object</a> converted to an array.
    /// 
    public static func createCallback(callable: Callable) -> JavaScriptObject? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: callable.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_create_callback, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_is_js_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_js_buffer")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 821968997)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `javascriptObject` is of type <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer">`ArrayBuffer`</a>, <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/DataView">`DataView`</a>, or one of the many <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypedArray">typed array objects</a>.
    public static func isJsBuffer(javascriptObject: JavaScriptObject?) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: javascriptObject?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_is_js_buffer, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_js_buffer_to_packed_byte_array: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("js_buffer_to_packed_byte_array")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 64409880)!
            }
            
        }
        
    }()
    
    /// Returns a copy of `javascriptBuffer`'s contents as a ``PackedByteArray``. See also ``isJsBuffer(javascriptObject:)``.
    public static func jsBufferToPackedByteArray(javascriptBuffer: JavaScriptObject?) -> PackedByteArray {
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: javascriptBuffer?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_js_buffer_to_packed_byte_array, shared.handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_create_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_object")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3093893586)!
            }
            
        }
        
    }()
    
    /// Creates a new JavaScript object using the `new` constructor. The `object` must a valid property of the JavaScript `window`. See ``JavaScriptObject`` for usage.
    public static func createObject(_ object: String, _ arguments: Variant?...) -> Variant? {
        var _result: Variant.ContentType = Variant.zero
        let object = object.toVariant()
        withUnsafePointer(to: object.content) { pArg0 in
            if arguments.isEmpty {
                withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                        gi.object_method_bind_call(method_create_object, shared.handle, pArgs, 1, &_result, nil)
                    }
                    
                }
                
            } else {
                // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 1 + arguments.count) { pArgsBuffer in
                    defer { pArgsBuffer.deinitialize() }
                    guard let pArgs = pArgsBuffer.baseAddress else {
                        fatalError("pArgsBuffer.baseAddress is nil")
                    }
                    pArgsBuffer.initializeElement(at: 0, to: pArg0)
                    // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                        defer { contentsBuffer.deinitialize() }
                        guard let contentsPtr = contentsBuffer.baseAddress else {
                            fatalError("contentsBuffer.baseAddress is nil")
                        }
                        
                        for i in 0..<arguments.count {
                            // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                            contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                            // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                            pArgsBuffer.initializeElement(at: 1 + i, to: contentsPtr + i)
                        }
                    
                        gi.object_method_bind_call(method_create_object, shared.handle, pArgs, Int64(1 + arguments.count), &_result, nil)
                    }                           
                }
                
            }
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_download_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("download_buffer")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3352272093)!
            }
            
        }
        
    }()
    
    /// Prompts the user to download a file containing the specified `buffer`. The file will have the given `name` and `mime` type.
    /// 
    /// > Note: The browser may override the <a href="https://en.wikipedia.org/wiki/Media_type">MIME type</a> provided based on the file `name`'s extension.
    /// 
    /// > Note: Browsers might block the download if ``downloadBuffer(_:name:mime:)`` is not being called from a user interaction (e.g. button click).
    /// 
    /// > Note: Browsers might ask the user for permission or block the download if multiple download requests are made in a quick succession.
    /// 
    public static func downloadBuffer(_ buffer: PackedByteArray, name: String, mime: String = "application/octet-stream") {
        withUnsafePointer(to: buffer.content) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                let mime = GString(mime)
                withUnsafePointer(to: mime.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_download_buffer, shared.handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_pwa_needs_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pwa_needs_update")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a new version of the progressive web app is waiting to be activated.
    /// 
    /// > Note: Only relevant when exported as a Progressive Web App.
    /// 
    public static func pwaNeedsUpdate() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(method_pwa_needs_update, shared.handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_pwa_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pwa_update")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Performs the live update of the progressive web app. Forcing the new version to be installed and the page to be reloaded.
    /// 
    /// > Note: Your application will be **reloaded in all browser tabs**.
    /// 
    /// > Note: Only relevant when exported as a Progressive Web App and ``pwaNeedsUpdate()`` returns `true`.
    /// 
    public static func pwaUpdate() -> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(method_pwa_update, shared.handle, nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_force_fs_sync: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("force_fs_sync")
        return withUnsafePointer(to: &JavaScriptBridge.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Force synchronization of the persistent file system (when enabled).
    /// 
    /// > Note: This is only useful for modules or extensions that can't use ``FileAccess`` to write files.
    /// 
    public static func forceFsSync() {
        gi.object_method_bind_ptrcall(method_force_fs_sync, shared.handle, nil, nil)
        
    }
    
    // Signals 
    /// Emitted when an update for this progressive web app has been detected but is waiting to be activated because a previous version is active. See ``pwaUpdate()`` to force the update to take place immediately.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.pwaUpdateAvailable.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var pwaUpdateAvailable: SimpleSignal { SimpleSignal (target: self, signalName: "pwa_update_available") }
    
}

