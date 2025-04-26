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


/// A node that provides a ``Shape2D`` to a ``CollisionObject2D`` parent.
/// 
/// A node that provides a ``Shape2D`` to a ``CollisionObject2D`` parent and allows to edit it. This can give a detection shape to an ``Area2D`` or turn a ``PhysicsBody2D`` into a solid object.
open class CollisionShape2D: Node2D {
    private static var className = StringName("CollisionShape2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The actual shape owned by this collision shape.
    final public var shape: Shape2D? {
        get {
            return get_shape ()
        }
        
        set {
            set_shape (newValue)
        }
        
    }
    
    /// A disabled collision shape has no effect in the world. This property should be changed with ``Object/setDeferred(property:value:)``.
    final public var disabled: Bool {
        get {
            return is_disabled ()
        }
        
        set {
            set_disabled (newValue)
        }
        
    }
    
    /// Sets whether this collision shape should only detect collision on one side (top or bottom).
    /// 
    /// > Note: This property has no effect if this ``CollisionShape2D`` is a child of an ``Area2D`` node.
    /// 
    final public var oneWayCollision: Bool {
        get {
            return is_one_way_collision_enabled ()
        }
        
        set {
            set_one_way_collision (newValue)
        }
        
    }
    
    /// The margin used for one-way collision (in pixels). Higher values will make the shape thicker, and work better for colliders that enter the shape at a high velocity.
    final public var oneWayCollisionMargin: Double {
        get {
            return get_one_way_collision_margin ()
        }
        
        set {
            set_one_way_collision_margin (newValue)
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
    
    /* Methods */
    fileprivate static let method_set_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_shape")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 771364740)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shape(_ shape: Shape2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shape?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_shape")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 522005891)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shape() -> Shape2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(CollisionShape2D.method_get_shape, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_disabled")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disabled(_ disabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: disabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_disabled")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_disabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionShape2D.method_is_disabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_one_way_collision: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_one_way_collision")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_one_way_collision(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_one_way_collision, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_one_way_collision_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_one_way_collision_enabled")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_one_way_collision_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CollisionShape2D.method_is_one_way_collision_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_one_way_collision_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_one_way_collision_margin")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_one_way_collision_margin(_ margin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_one_way_collision_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_one_way_collision_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_one_way_collision_margin")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_one_way_collision_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CollisionShape2D.method_get_one_way_collision_margin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_debug_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_debug_color")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CollisionShape2D.method_set_debug_color, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_debug_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_debug_color")
        return withUnsafePointer(to: &CollisionShape2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_debug_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CollisionShape2D.method_get_debug_color, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

