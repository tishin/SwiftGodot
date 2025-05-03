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


open class GodotInstance: Object {
    private static var className = StringName("GodotInstance")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_start: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("start")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// 
    public final func start() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GodotInstance.method_start, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_started: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_started")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// 
    public final func isStarted() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GodotInstance.method_is_started, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_iteration: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("iteration")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// 
    public final func iteration() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GodotInstance.method_iteration, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_focus_in: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("focus_in")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    public final func focusIn() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GodotInstance.method_focus_in, handle, nil, nil)
        
    }
    
    fileprivate static let method_focus_out: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("focus_out")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    public final func focusOut() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GodotInstance.method_focus_out, handle, nil, nil)
        
    }
    
    fileprivate static let method_pause: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("pause")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    public final func pause() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GodotInstance.method_pause, handle, nil, nil)
        
    }
    
    fileprivate static let method_resume: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("resume")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// 
    public final func resume() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GodotInstance.method_resume, handle, nil, nil)
        
    }
    
    fileprivate static let method_execute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("execute")
        return withUnsafePointer(to: &GodotInstance.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3158409417)!
            }
            
        }
        
    }()
    
    /// 
    public final func execute(callback: Callable, async: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: callback.content) { pArg0 in
            withUnsafePointer(to: async) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GodotInstance.method_execute, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

