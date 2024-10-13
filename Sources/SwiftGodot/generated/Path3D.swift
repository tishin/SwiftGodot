// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Contains a ``Curve3D`` path for ``PathFollow3D`` nodes to follow.
/// 
/// Can have ``PathFollow3D`` child nodes moving along the ``Curve3D``. See ``PathFollow3D`` for more information on the usage.
/// 
/// Note that the path is considered as relative to the moved nodes (children of ``PathFollow3D``). As such, the curve should usually start with a zero vector `(0, 0, 0)`.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``curveChanged``
open class Path3D: Node3D {
    override open class var godotClassName: StringName { "Path3D" }
    
    /* Properties */
    
    /// A ``Curve3D`` describing the path.
    final public var curve: Curve3D? {
        get {
            return get_curve ()
        }
        
        set {
            set_curve (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_curve")
        return withUnsafePointer(to: &Path3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408955118)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve(_ curve: Curve3D?) {
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Path3D.method_set_curve, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_curve")
        return withUnsafePointer(to: &Path3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4244715212)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve() -> Curve3D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(Path3D.method_get_curve, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    // Signals 
    /// Emitted when the ``curve`` changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.curveChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var curveChanged: SimpleSignal { SimpleSignal (target: self, signalName: "curve_changed") }
    
}

