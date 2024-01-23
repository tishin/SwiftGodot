// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a screen touch event.
/// 
/// Stores information about multi-touch press/release input events. Supports touch press, touch release and ``index`` for multi-touch count and order.
open class InputEventScreenTouch: InputEventFromWindow {
    override open class var godotClassName: StringName { "InputEventScreenTouch" }
    
    /* Properties */
    
    /// The touch index in the case of a multi-touch event. One index = one finger.
    final public var index: Int32 {
        get {
            return get_index ()
        }
        
        set {
            set_index (newValue)
        }
        
    }
    
    /// The touch position, in screen (global) coordinates.
    final public var position: Vector2 {
        get {
            return get_position ()
        }
        
        set {
            set_position (newValue)
        }
        
    }
    
    /// If `true`, the touch event has been canceled.
    final public var canceled: Bool {
        get {
            return isCanceled ()
        }
        
        set {
            set_canceled (newValue)
        }
        
    }
    
    /// If `true`, the touch's state is pressed. If `false`, the touch's state is released.
    final public var pressed: Bool {
        get {
            return isPressed ()
        }
        
        set {
            set_pressed (newValue)
        }
        
    }
    
    /// If `true`, the touch's state is a double tap.
    final public var doubleTap: Bool {
        get {
            return is_double_tap ()
        }
        
        set {
            set_double_tap (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_index")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_index (_ index: Int32) {
        #if true
        
        var copy_index: Int = Int (index)
        
        gi.object_method_bind_ptrcall_v (InputEventScreenTouch.method_set_index, UnsafeMutableRawPointer (mutating: handle), nil, &copy_index)
        
        #else
        
        var copy_index: Int = Int (index)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_index) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenTouch.method_set_index, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_index: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_index")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_index ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (InputEventScreenTouch.method_get_index, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_position")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position (_ position: Vector2) {
        #if true
        
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (InputEventScreenTouch.method_set_position, UnsafeMutableRawPointer (mutating: handle), nil, &copy_position)
        
        #else
        
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenTouch.method_set_position, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_position: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_position")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventScreenTouch.method_get_position, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pressed")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressed (_ pressed: Bool) {
        #if true
        
        var copy_pressed = pressed
        
        gi.object_method_bind_ptrcall_v (InputEventScreenTouch.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pressed)
        
        #else
        
        var copy_pressed = pressed
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pressed) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenTouch.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_canceled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_canceled")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_canceled (_ canceled: Bool) {
        #if true
        
        var copy_canceled = canceled
        
        gi.object_method_bind_ptrcall_v (InputEventScreenTouch.method_set_canceled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_canceled)
        
        #else
        
        var copy_canceled = canceled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_canceled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenTouch.method_set_canceled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_set_double_tap: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_double_tap")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_double_tap (_ doubleTap: Bool) {
        #if true
        
        var copy_double_tap = doubleTap
        
        gi.object_method_bind_ptrcall_v (InputEventScreenTouch.method_set_double_tap, UnsafeMutableRawPointer (mutating: handle), nil, &copy_double_tap)
        
        #else
        
        var copy_double_tap = doubleTap
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_double_tap) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventScreenTouch.method_set_double_tap, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_double_tap: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_double_tap")
        return withUnsafePointer (to: &InputEventScreenTouch.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_double_tap ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEventScreenTouch.method_is_double_tap, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

