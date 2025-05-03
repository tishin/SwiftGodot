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


/// A node that provides a ``Shape3D`` to a ``CollisionObject3D`` parent.
/// 
/// A node that provides a ``Shape3D`` to a ``CollisionObject3D`` parent and allows to edit it. This can give a detection shape to an ``Area3D`` or turn a ``PhysicsBody3D`` into a solid object.
/// 
/// > Warning: A non-uniformly scaled ``CollisionShape3D`` will likely not behave as expected. Make sure to keep its scale the same on all axes and adjust its ``shape`` resource instead.
/// 
open class CollisionShape3D: Node3D {
    private static var className = StringName("CollisionShape3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The actual shape owned by this collision shape.
    final public var shape: Shape3D? {
        get {
            return get_shape ()
        }
        
        set {
            set_shape (newValue)
        }
        
    }
    
    /// A disabled collision shape has no effect in the world.
    final public var disabled: Bool {
        get {
            return is_disabled ()
        }
        
        set {
            set_disabled (newValue)
        }
        
    }
    
    /// The collision shape color that is displayed in the editor, or in the running project if **Debug > Visible Collision Shapes** is checked at the top of the editor.
    /// 
    /// > Note: The default value is ``ProjectSettings/debug/shapes/collision/shapeColor``. The `Color(0, 0, 0, 0)` value documented here is a placeholder, and not the actual default debug color.
    /// 
    final public var debugColor: Color {
        get {
            return get_debug_color ()
        }
        
        set {
            set_debug_color (newValue)
        }
        
    }
    
    /// If `true`, when the shape is displayed, it will show a solid fill color in addition to its wireframe.
    final public var debugFill: Bool {
        get {
            return get_enable_debug_fill ()
        }
        
        set {
            set_enable_debug_fill (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_resource_changed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("resource_changed")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 968641751)!
            }
            
        }
        
    }()
    
    /// This method does nothing.
    public final func resourceChanged(resource: Resource?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: resource?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape3D.method_resource_changed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shape")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1549710052)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape(_ shape: Shape3D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape3D.method_set_shape, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shape")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3214262478)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape() -> Shape3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CollisionShape3D.method_get_shape, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_disabled")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape3D.method_set_disabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_disabled")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_disabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionShape3D.method_is_disabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_make_convex_from_siblings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_convex_from_siblings")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Sets the collision shape's shape to the addition of all its convexed ``MeshInstance3D`` siblings geometry.
    public final func makeConvexFromSiblings() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CollisionShape3D.method_make_convex_from_siblings, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_debug_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_debug_color")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_debug_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape3D.method_set_debug_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_debug_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_debug_color")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_debug_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CollisionShape3D.method_get_debug_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_enable_debug_fill: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_debug_fill")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_debug_fill(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape3D.method_set_enable_debug_fill, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enable_debug_fill: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enable_debug_fill")
        return withUnsafePointer(to: &CollisionShape3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_debug_fill() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionShape3D.method_get_enable_debug_fill, handle, nil, &_result)
        return _result
    }
    
}

