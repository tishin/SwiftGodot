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


/// A container that arranges its child controls in a grid layout.
/// 
/// ``GridContainer`` arranges its child controls in a grid layout. The number of columns is specified by the ``columns`` property, whereas the number of rows depends on how many are needed for the child controls. The number of rows and columns is preserved for every size of the container.
/// 
/// > Note: ``GridContainer`` only works with child nodes inheriting from ``Control``. It won't rearrange child nodes inheriting from ``Node2D``.
/// 
open class GridContainer: Container {
    private static var className = StringName("GridContainer")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The number of columns in the ``GridContainer``. If modified, ``GridContainer`` reorders its Control-derived children to accommodate the new layout.
    final public var columns: Int32 {
        get {
            return get_columns ()
        }
        
        set {
            set_columns (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_columns: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_columns")
        return withUnsafePointer(to: &GridContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_columns(_ columns: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: columns) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GridContainer.method_set_columns, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_columns: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_columns")
        return withUnsafePointer(to: &GridContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_columns() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GridContainer.method_get_columns, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

