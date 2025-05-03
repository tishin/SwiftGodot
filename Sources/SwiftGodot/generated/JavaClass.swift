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


/// Represents a class from the Java Native Interface.
/// 
/// Represents a class from the Java Native Interface. It is returned from ``JavaClassWrapper/wrap(name:)``.
/// 
/// > Note: This class only works on Android. On any other platform, this class does nothing.
/// 
/// > Note: This class is not to be confused with ``JavaScriptObject``.
/// 
open class JavaClass: RefCounted {
    private static var className = StringName("JavaClass")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_java_class_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_java_class_name")
        return withUnsafePointer(to: &JavaClass.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the Java class name.
    public final func getJavaClassName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(JavaClass.method_get_java_class_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_java_method_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_java_method_list")
        return withUnsafePointer(to: &JavaClass.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the object's Java methods and their signatures as an ``VariantArray`` of dictionaries, in the same format as ``Object/getMethodList()``.
    public final func getJavaMethodList() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(JavaClass.method_get_java_method_list, handle, nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method_get_java_parent_class: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_java_parent_class")
        return withUnsafePointer(to: &JavaClass.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 541536347)!
            }
            
        }
        
    }()
    
    /// Returns a ``JavaClass`` representing the Java parent class of this class.
    public final func getJavaParentClass() -> JavaClass? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(JavaClass.method_get_java_parent_class, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

