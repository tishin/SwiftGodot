// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Editor-only helper for setting up root motion in ``AnimationMixer``.
/// 
/// _Root motion_ refers to an animation technique where a mesh's skeleton is used to give impulse to a character. When working with 3D animations, a popular technique is for animators to use the root skeleton bone to give motion to the rest of the skeleton. This allows animating characters in a way where steps actually match the floor below. It also allows precise interaction with objects during cinematics. See also ``AnimationMixer``.
/// 
/// > Note: ``RootMotionView`` is only visible in the editor. It will be hidden automatically in the running project.
/// 
open class RootMotionView: VisualInstance3D {
    override open class var godotClassName: StringName { "RootMotionView" }
    
    /* Properties */
    
    /// Path to an ``AnimationMixer`` node to use as a basis for root motion.
    final public var animationPath: NodePath {
        get {
            return get_animation_path ()
        }
        
        set {
            set_animation_path (newValue)
        }
        
    }
    
    /// The grid's color.
    final public var color: Color {
        get {
            return get_color ()
        }
        
        set {
            set_color (newValue)
        }
        
    }
    
    /// The grid's cell size in 3D units.
    final public var cellSize: Double {
        get {
            return get_cell_size ()
        }
        
        set {
            set_cell_size (newValue)
        }
        
    }
    
    /// The grid's radius in 3D units. The grid's opacity will fade gradually as the distance from the origin increases until this ``radius`` is reached.
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// If `true`, the grid's points will all be on the same Y coordinate (_local_ Y = 0). If `false`, the points' original Y coordinate is preserved.
    final public var zeroY: Bool {
        get {
            return get_zero_y ()
        }
        
        set {
            set_zero_y (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_animation_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_animation_path")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_animation_path (_ path: NodePath) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (RootMotionView.method_set_animation_path, UnsafeMutableRawPointer (mutating: handle), nil, &path.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &path.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RootMotionView.method_set_animation_path, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_animation_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_animation_path")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_animation_path ()-> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall (RootMotionView.method_get_animation_path, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_color")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (RootMotionView.method_set_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RootMotionView.method_set_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_color")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (RootMotionView.method_get_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cell_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cell_size")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cell_size (_ size: Double) {
        #if true
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (RootMotionView.method_set_cell_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RootMotionView.method_set_cell_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_cell_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cell_size")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cell_size ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (RootMotionView.method_get_cell_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_radius")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius (_ size: Double) {
        #if true
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (RootMotionView.method_set_radius, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RootMotionView.method_set_radius, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_radius")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (RootMotionView.method_get_radius, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_zero_y: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_zero_y")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_zero_y (_ enable: Bool) {
        #if true
        
        var copy_enable = enable
        
        gi.object_method_bind_ptrcall_v (RootMotionView.method_set_zero_y, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enable)
        
        #else
        
        var copy_enable = enable
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enable) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (RootMotionView.method_set_zero_y, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_zero_y: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_zero_y")
        return withUnsafePointer (to: &RootMotionView.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_zero_y ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (RootMotionView.method_get_zero_y, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

