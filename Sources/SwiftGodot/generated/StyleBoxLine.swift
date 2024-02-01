// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A ``StyleBox`` that displays a single line of a given color and thickness.
/// 
/// A ``StyleBox`` that displays a single line of a given color and thickness. The line can be either horizontal or vertical. Useful for separators.
open class StyleBoxLine: StyleBox {
    override open class var godotClassName: StringName { "StyleBoxLine" }
    
    /* Properties */
    
    /// The line's color.
    final public var color: Color {
        get {
            return get_color ()
        }
        
        set {
            set_color (newValue)
        }
        
    }
    
    /// The number of pixels the line will extend before the ``StyleBoxLine``'s bounds. If set to a negative value, the line will begin inside the ``StyleBoxLine``'s bounds.
    final public var growBegin: Double {
        get {
            return get_grow_begin ()
        }
        
        set {
            set_grow_begin (newValue)
        }
        
    }
    
    /// The number of pixels the line will extend past the ``StyleBoxLine``'s bounds. If set to a negative value, the line will end inside the ``StyleBoxLine``'s bounds.
    final public var growEnd: Double {
        get {
            return get_grow_end ()
        }
        
        set {
            set_grow_end (newValue)
        }
        
    }
    
    /// The line's thickness in pixels.
    final public var thickness: Int32 {
        get {
            return get_thickness ()
        }
        
        set {
            set_thickness (newValue)
        }
        
    }
    
    /// If `true`, the line will be vertical. If `false`, the line will be horizontal.
    final public var vertical: Bool {
        get {
            return is_vertical ()
        }
        
        set {
            set_vertical (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_color")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color (_ color: Color) {
        #if true
        
        var copy_color = color
        
        gi.object_method_bind_ptrcall_v (StyleBoxLine.method_set_color, UnsafeMutableRawPointer (mutating: handle), nil, &copy_color)
        
        #else
        
        var copy_color = color
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_color) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StyleBoxLine.method_set_color, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_color: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_color")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color ()-> Color {
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall (StyleBoxLine.method_get_color, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_thickness: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_thickness")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_thickness (_ thickness: Int32) {
        #if true
        
        var copy_thickness: Int = Int (thickness)
        
        gi.object_method_bind_ptrcall_v (StyleBoxLine.method_set_thickness, UnsafeMutableRawPointer (mutating: handle), nil, &copy_thickness)
        
        #else
        
        var copy_thickness: Int = Int (thickness)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_thickness) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StyleBoxLine.method_set_thickness, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_thickness: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_thickness")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_thickness ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (StyleBoxLine.method_get_thickness, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_grow_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_grow_begin")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_grow_begin (_ offset: Double) {
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (StyleBoxLine.method_set_grow_begin, UnsafeMutableRawPointer (mutating: handle), nil, &copy_offset)
        
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StyleBoxLine.method_set_grow_begin, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_grow_begin: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_grow_begin")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_grow_begin ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (StyleBoxLine.method_get_grow_begin, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_grow_end: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_grow_end")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_grow_end (_ offset: Double) {
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (StyleBoxLine.method_set_grow_end, UnsafeMutableRawPointer (mutating: handle), nil, &copy_offset)
        
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StyleBoxLine.method_set_grow_end, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_grow_end: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_grow_end")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_grow_end ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (StyleBoxLine.method_get_grow_end, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_vertical")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical (_ vertical: Bool) {
        #if true
        
        var copy_vertical = vertical
        
        gi.object_method_bind_ptrcall_v (StyleBoxLine.method_set_vertical, UnsafeMutableRawPointer (mutating: handle), nil, &copy_vertical)
        
        #else
        
        var copy_vertical = vertical
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_vertical) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (StyleBoxLine.method_set_vertical, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_vertical")
        return withUnsafePointer (to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_vertical ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (StyleBoxLine.method_is_vertical, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}
