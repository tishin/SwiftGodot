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


/// Represents an object from the Java Native Interface.
/// 
/// Represents an object from the Java Native Interface. It can be returned from Java methods called on ``JavaClass`` or other ``JavaObject``s. See ``JavaClassWrapper`` for an example.
/// 
/// > Note: This class only works on Android. On any other platform, this class does nothing.
/// 
/// > Note: This class is not to be confused with ``JavaScriptObject``.
/// 
open class JavaObject: RefCounted {
    private static var className = StringName("JavaObject")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_java_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_java_class")
        return withUnsafePointer(to: &JavaObject.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 541536347)!
            }
            
        }
        
    }()
    
    /// Returns the ``JavaClass`` that this object is an instance of.
    public final func getJavaClass() -> JavaClass? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(JavaObject.method_get_java_class, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

