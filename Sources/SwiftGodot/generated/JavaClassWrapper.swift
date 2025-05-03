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


/// Provides access to the Java Native Interface.
/// 
/// The JavaClassWrapper singleton provides a way for the Godot application to send and receive data through the <a href="https://developer.android.com/training/articles/perf-jni">Java Native Interface</a> (JNI).
/// 
/// > Note: This singleton is only available in Android builds.
/// 
/// > Warning: When calling Java methods, be sure to check ``JavaClassWrapper/getException()`` to check if the method threw an exception.
/// 
open class JavaClassWrapper: Object {
    /// The shared instance of this class
    public static var shared: JavaClassWrapper {
        return withUnsafePointer(to: &JavaClassWrapper.godotClassName.content) { ptr in
            getOrInitSwiftObject(nativeHandle: gi.global_get_singleton(ptr)!, ownsRef: false)!
        }
        
    }
    
    private static var className = StringName("JavaClassWrapper")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_wrap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("wrap")
        return withUnsafePointer(to: &JavaClassWrapper.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1124367868)!
            }
            
        }
        
    }()
    
    /// Wraps a class defined in Java, and returns it as a ``JavaClass`` ``Object`` type that Godot can interact with.
    /// 
    /// When wrapping inner (nested) classes, use `$` instead of `.` to separate them. For example, `JavaClassWrapper.wrap("android.view.WindowManager$LayoutParams")` wraps the **WindowManager.LayoutParams** class.
    /// 
    /// > Note: This method only works on Android. On every other platform, this method does nothing and returns an empty ``JavaClass``.
    /// 
    public static func wrap(name: String) -> JavaClass? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_wrap, shared.handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_exception: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_exception")
        return withUnsafePointer(to: &JavaClassWrapper.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3277089691)!
            }
            
        }
        
    }()
    
    /// Returns the Java exception from the last call into a Java class. If there was no exception, it will return `null`.
    /// 
    /// > Note: This method only works on Android. On every other platform, this method will always return `null`.
    /// 
    public static func getException() -> JavaObject? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(method_get_exception, shared.handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

