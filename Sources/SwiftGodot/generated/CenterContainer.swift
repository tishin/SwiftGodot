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


/// A container that keeps child controls in its center.
/// 
/// ``CenterContainer`` is a container that keeps all of its child controls in its center at their minimum size.
open class CenterContainer: Container {
    private static var className = StringName("CenterContainer")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, centers children relative to the ``CenterContainer``'s top left corner.
    final public var useTopLeft: Bool {
        get {
            return is_using_top_left ()
        }
        
        set {
            set_use_top_left (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_use_top_left: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_top_left")
        return withUnsafePointer(to: &CenterContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_top_left(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CenterContainer.method_set_use_top_left, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_using_top_left: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_using_top_left")
        return withUnsafePointer(to: &CenterContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_top_left() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CenterContainer.method_is_using_top_left, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

