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


/// A synchronization mechanism used to control access to a shared resource by ``Thread``s.
/// 
/// A synchronization semaphore that can be used to synchronize multiple ``Thread``s. Initialized to zero on creation. For a binary version, see ``Mutex``.
/// 
/// > Warning: Semaphores must be used carefully to avoid deadlocks.
/// 
/// > Warning: To guarantee that the operating system is able to perform proper cleanup (no crashes, no deadlocks), these conditions must be met:
/// 
/// - When a ``Semaphore``'s reference count reaches zero and it is therefore destroyed, no threads must be waiting on it.
/// 
/// - When a ``Thread``'s reference count reaches zero and it is therefore destroyed, it must not be waiting on any semaphore.
/// 
open class Semaphore: RefCounted {
    private static var className = StringName("Semaphore")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_wait: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("wait")
        return withUnsafePointer(to: &Semaphore.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Waits for the ``Semaphore``, if its value is zero, blocks until non-zero.
    public final func wait() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Semaphore.method_wait, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_try_wait: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("try_wait")
        return withUnsafePointer(to: &Semaphore.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Like ``wait()``, but won't block, so if the value is zero, fails immediately and returns `false`. If non-zero, it returns `true` to report success.
    public final func tryWait() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Semaphore.method_try_wait, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_post: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("post")
        return withUnsafePointer(to: &Semaphore.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1667783136)!
            }
            
        }
        
    }()
    
    /// Lowers the ``Semaphore``, allowing one thread in, or more if `count` is specified.
    public final func post(count: Int32 = 1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: count) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Semaphore.method_post, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

