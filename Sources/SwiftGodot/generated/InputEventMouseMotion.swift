// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a mouse or a pen movement.
/// 
/// Stores information about a mouse or a pen motion. This includes relative position, absolute position, and velocity. See ``Node/_input(event:)``.
/// 
/// > Note: By default, this event is only emitted once per frame rendered at most. If you need more precise input reporting, set ``Input/useAccumulatedInput`` to `false` to make events emitted as often as possible. If you use InputEventMouseMotion to draw lines, consider implementing [url=https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm]Bresenham's line algorithm[/url] as well to avoid visible gaps in lines if the user is moving the mouse quickly.
/// 
open class InputEventMouseMotion: InputEventMouse {
    override open class var godotClassName: StringName { "InputEventMouseMotion" }
    
    /* Properties */
    
    /// Represents the angles of tilt of the pen. Positive X-coordinate value indicates a tilt to the right. Positive Y-coordinate value indicates a tilt toward the user. Ranges from `-1.0` to `1.0` for both axes.
    final public var tilt: Vector2 {
        get {
            return get_tilt ()
        }
        
        set {
            set_tilt (newValue)
        }
        
    }
    
    /// Represents the pressure the user puts on the pen. Ranges from `0.0` to `1.0`.
    final public var pressure: Double {
        get {
            return get_pressure ()
        }
        
        set {
            set_pressure (newValue)
        }
        
    }
    
    /// Returns `true` when using the eraser end of a stylus pen.
    /// 
    /// > Note: This property is implemented on Linux, macOS and Windows.
    /// 
    final public var penInverted: Bool {
        get {
            return get_pen_inverted ()
        }
        
        set {
            set_pen_inverted (newValue)
        }
        
    }
    
    /// The mouse position relative to the previous position (position at the last frame).
    /// 
    /// > Note: Since ``InputEventMouseMotion`` is only emitted when the mouse moves, the last event won't have a relative position of `Vector2(0, 0)` when the user stops moving the mouse.
    /// 
    final public var relative: Vector2 {
        get {
            return get_relative ()
        }
        
        set {
            set_relative (newValue)
        }
        
    }
    
    /// The mouse velocity in pixels per second.
    final public var velocity: Vector2 {
        get {
            return get_velocity ()
        }
        
        set {
            set_velocity (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_tilt: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_tilt")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tilt (_ tilt: Vector2) {
        #if true
        
        var copy_tilt = tilt
        
        gi.object_method_bind_ptrcall_v (InputEventMouseMotion.method_set_tilt, UnsafeMutableRawPointer (mutating: handle), nil, &copy_tilt)
        
        #else
        
        var copy_tilt = tilt
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_tilt) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseMotion.method_set_tilt, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_tilt: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_tilt")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tilt ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventMouseMotion.method_get_tilt, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pressure: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pressure")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressure (_ pressure: Double) {
        #if true
        
        var copy_pressure = pressure
        
        gi.object_method_bind_ptrcall_v (InputEventMouseMotion.method_set_pressure, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pressure)
        
        #else
        
        var copy_pressure = pressure
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pressure) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseMotion.method_set_pressure, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pressure: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pressure")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pressure ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (InputEventMouseMotion.method_get_pressure, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pen_inverted: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pen_inverted")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pen_inverted (_ penInverted: Bool) {
        #if true
        
        var copy_pen_inverted = penInverted
        
        gi.object_method_bind_ptrcall_v (InputEventMouseMotion.method_set_pen_inverted, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pen_inverted)
        
        #else
        
        var copy_pen_inverted = penInverted
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pen_inverted) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseMotion.method_set_pen_inverted, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_pen_inverted: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_pen_inverted")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_pen_inverted ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (InputEventMouseMotion.method_get_pen_inverted, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_relative: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_relative")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_relative (_ relative: Vector2) {
        #if true
        
        var copy_relative = relative
        
        gi.object_method_bind_ptrcall_v (InputEventMouseMotion.method_set_relative, UnsafeMutableRawPointer (mutating: handle), nil, &copy_relative)
        
        #else
        
        var copy_relative = relative
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_relative) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseMotion.method_set_relative, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_relative: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_relative")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_relative ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventMouseMotion.method_get_relative, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_velocity")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_velocity (_ velocity: Vector2) {
        #if true
        
        var copy_velocity = velocity
        
        gi.object_method_bind_ptrcall_v (InputEventMouseMotion.method_set_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &copy_velocity)
        
        #else
        
        var copy_velocity = velocity
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_velocity) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (InputEventMouseMotion.method_set_velocity, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_velocity: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_velocity")
        return withUnsafePointer (to: &InputEventMouseMotion.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_velocity ()-> Vector2 {
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall (InputEventMouseMotion.method_get_velocity, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}
