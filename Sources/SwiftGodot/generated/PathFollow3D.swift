// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Point sampler for a ``Path3D``.
/// 
/// This node takes its parent ``Path3D``, and returns the coordinates of a point within it, given a distance from the first vertex.
/// 
/// It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be children of this node. The descendant nodes will then move accordingly when setting the ``progress`` in this node.
/// 
open class PathFollow3D: Node3D {
    override open class var godotClassName: StringName { "PathFollow3D" }
    public enum RotationMode: Int64, CustomDebugStringConvertible {
        /// Forbids the PathFollow3D to rotate.
        case none = 0 // ROTATION_NONE
        /// Allows the PathFollow3D to rotate in the Y axis only.
        case y = 1 // ROTATION_Y
        /// Allows the PathFollow3D to rotate in both the X, and Y axes.
        case xy = 2 // ROTATION_XY
        /// Allows the PathFollow3D to rotate in any axis.
        case xyz = 3 // ROTATION_XYZ
        /// Uses the up vector information in a ``Curve3D`` to enforce orientation. This rotation mode requires the ``Path3D``'s ``Curve3D/upVectorEnabled`` property to be set to `true`.
        case oriented = 4 // ROTATION_ORIENTED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .none: return ".none"
                case .y: return ".y"
                case .xy: return ".xy"
                case .xyz: return ".xyz"
                case .oriented: return ".oriented"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The distance from the first vertex, measured in 3D units along the path. Changing this value sets this node's position to a point within the path.
    final public var progress: Double {
        get {
            return get_progress ()
        }
        
        set {
            set_progress (newValue)
        }
        
    }
    
    /// The distance from the first vertex, considering 0.0 as the first vertex and 1.0 as the last. This is just another way of expressing the progress within the path, as the progress supplied is multiplied internally by the path's length.
    final public var progressRatio: Double {
        get {
            return get_progress_ratio ()
        }
        
        set {
            set_progress_ratio (newValue)
        }
        
    }
    
    /// The node's offset along the curve.
    final public var hOffset: Double {
        get {
            return get_h_offset ()
        }
        
        set {
            set_h_offset (newValue)
        }
        
    }
    
    /// The node's offset perpendicular to the curve.
    final public var vOffset: Double {
        get {
            return get_v_offset ()
        }
        
        set {
            set_v_offset (newValue)
        }
        
    }
    
    /// Allows or forbids rotation on one or more axes, depending on the ``PathFollow3D/RotationMode`` constants being used.
    final public var rotationMode: PathFollow3D.RotationMode {
        get {
            return get_rotation_mode ()
        }
        
        set {
            set_rotation_mode (newValue)
        }
        
    }
    
    /// If `true`, the node moves on the travel path with orienting the +Z axis as forward. See also ``Vector3.FORWARD`` and ``Vector3.MODEL_FRONT``.
    final public var useModelFront: Bool {
        get {
            return is_using_model_front ()
        }
        
        set {
            set_use_model_front (newValue)
        }
        
    }
    
    /// If `true`, the position between two cached points is interpolated cubically, and linearly otherwise.
    /// 
    /// The points along the ``Curve3D`` of the ``Path3D`` are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
    /// 
    /// There are two answers to this problem: either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.
    /// 
    final public var cubicInterp: Bool {
        get {
            return get_cubic_interpolation ()
        }
        
        set {
            set_cubic_interpolation (newValue)
        }
        
    }
    
    /// If `true`, any offset outside the path's length will wrap around, instead of stopping at the ends. Use it for cyclic paths.
    final public var loop: Bool {
        get {
            return has_loop ()
        }
        
        set {
            set_loop (newValue)
        }
        
    }
    
    /// If `true`, the tilt property of ``Curve3D`` takes effect.
    final public var tiltEnabled: Bool {
        get {
            return is_tilt_enabled ()
        }
        
        set {
            set_tilt_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_progress")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_progress (_ progress: Double) {
        #if true
        
        var copy_progress = progress
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_progress, UnsafeMutableRawPointer (mutating: handle), nil, &copy_progress)
        
        #else
        
        var copy_progress = progress
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_progress) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_progress, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_progress: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_progress")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_progress ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PathFollow3D.method_get_progress, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_h_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_h_offset")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_h_offset (_ hOffset: Double) {
        #if true
        
        var copy_h_offset = hOffset
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_h_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_h_offset)
        
        #else
        
        var copy_h_offset = hOffset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_h_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_h_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_h_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_h_offset")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_h_offset ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PathFollow3D.method_get_h_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_v_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_v_offset")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_v_offset (_ vOffset: Double) {
        #if true
        
        var copy_v_offset = vOffset
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_v_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_v_offset)
        
        #else
        
        var copy_v_offset = vOffset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_v_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_v_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_v_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_v_offset")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_v_offset ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PathFollow3D.method_get_v_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_progress_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_progress_ratio")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_progress_ratio (_ ratio: Double) {
        #if true
        
        var copy_ratio = ratio
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_progress_ratio, UnsafeMutableRawPointer (mutating: handle), nil, &copy_ratio)
        
        #else
        
        var copy_ratio = ratio
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_ratio) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_progress_ratio, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_progress_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_progress_ratio")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_progress_ratio ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (PathFollow3D.method_get_progress_ratio, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_rotation_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_rotation_mode")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1640311967)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotation_mode (_ rotationMode: PathFollow3D.RotationMode) {
        #if true
        
        var copy_rotation_mode = Int64 (rotationMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_rotation_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_rotation_mode)
        
        #else
        
        var copy_rotation_mode = Int64 (rotationMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_rotation_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_rotation_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_rotation_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_rotation_mode")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3814010545)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rotation_mode ()-> PathFollow3D.RotationMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (PathFollow3D.method_get_rotation_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return PathFollow3D.RotationMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_cubic_interpolation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cubic_interpolation")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cubic_interpolation (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_cubic_interpolation, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_cubic_interpolation, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cubic_interpolation: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cubic_interpolation")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cubic_interpolation ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PathFollow3D.method_get_cubic_interpolation, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_model_front: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_use_model_front")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_model_front (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_use_model_front, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_use_model_front, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_using_model_front: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_using_model_front")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_model_front ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PathFollow3D.method_is_using_model_front, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_loop")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop (_ loop: Bool) {
        #if true
        
        var copy_loop = loop
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_loop, UnsafeMutableRawPointer (mutating: handle), nil, &copy_loop)
        
        #else
        
        var copy_loop = loop
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_loop) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_loop, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_has_loop: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_loop")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func has_loop ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PathFollow3D.method_has_loop, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_tilt_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_tilt_enabled")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tilt_enabled (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_set_tilt_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (PathFollow3D.method_set_tilt_enabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_tilt_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_tilt_enabled")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_tilt_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (PathFollow3D.method_is_tilt_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_correct_posture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("correct_posture")
        return withUnsafePointer (to: &PathFollow3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2686588690)!
            }
            
        }
        
    }()
    
    /// Correct the `transform`. `rotationMode` implicitly specifies how posture (forward, up and sideway direction) is calculated.
    public static func correctPosture (transform: Transform3D, rotationMode: PathFollow3D.RotationMode)-> Transform3D {
        var _result: Transform3D = Transform3D ()
        #if true
        
        var copy_transform = transform
        var copy_rotation_mode = Int64 (rotationMode.rawValue)
        
        gi.object_method_bind_ptrcall_v (PathFollow3D.method_correct_posture, nil, &_result, &copy_transform, &copy_rotation_mode)
        return _result
        #else
        
        var copy_transform = transform
        var copy_rotation_mode = Int64 (rotationMode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_transform) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_rotation_mode) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (PathFollow3D.method_correct_posture, nil, &_args, &_result)
                return _result
            }
        }
        
        #endif
    }
    
}

