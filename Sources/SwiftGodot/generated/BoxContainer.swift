// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A container that arranges its child controls horizontally or vertically.
/// 
/// A container that arranges its child controls horizontally or vertically, rearranging them automatically when their minimum size changes.
open class BoxContainer: Container {
    override open class var godotClassName: StringName { "BoxContainer" }
    public enum AlignmentMode: Int64 {
        /// The child controls will be arranged at the beginning of the container, i.e. top if orientation is vertical, left if orientation is horizontal (right for RTL layout).
        case begin = 0 // ALIGNMENT_BEGIN
        /// The child controls will be centered in the container.
        case center = 1 // ALIGNMENT_CENTER
        /// The child controls will be arranged at the end of the container, i.e. bottom if orientation is vertical, right if orientation is horizontal (left for RTL layout).
        case end = 2 // ALIGNMENT_END
    }
    
    
    /* Properties */
    
    /// The alignment of the container's children (must be one of .alignmentBegin, .alignmentCenter, or .alignmentEnd).
    final public var alignment: BoxContainer.AlignmentMode {
        get {
            return get_alignment ()
        }
        
        set {
            set_alignment (newValue)
        }
        
    }
    
    /// If `true`, the ``BoxContainer`` will arrange its children vertically, rather than horizontally.
    /// 
    /// Can't be changed when using ``HBoxContainer`` and ``VBoxContainer``.
    /// 
    final public var vertical: Bool {
        get {
            return is_vertical ()
        }
        
        set {
            set_vertical (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_add_spacer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_spacer")
        return withUnsafePointer (to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1326660695)!
            }
            
        }
        
    }()
    
    /// Adds a ``Control`` node to the box as a spacer. If `begin` is `true`, it will insert the ``Control`` node in front of all other children.
    public final func addSpacer (begin: Bool)-> Control? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        #if true
        
        var copy_begin = begin
        
        gi.object_method_bind_ptrcall_v (BoxContainer.method_add_spacer, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_begin)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        #else
        
        var copy_begin = begin
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_begin) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BoxContainer.method_add_spacer, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_set_alignment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_alignment")
        return withUnsafePointer (to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2456745134)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alignment (_ alignment: BoxContainer.AlignmentMode) {
        #if true
        
        var copy_alignment = Int64 (alignment.rawValue)
        
        gi.object_method_bind_ptrcall_v (BoxContainer.method_set_alignment, UnsafeMutableRawPointer (mutating: handle), nil, &copy_alignment)
        
        #else
        
        var copy_alignment = Int64 (alignment.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_alignment) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BoxContainer.method_set_alignment, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_alignment: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_alignment")
        return withUnsafePointer (to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1915476527)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_alignment ()-> BoxContainer.AlignmentMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (BoxContainer.method_get_alignment, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return BoxContainer.AlignmentMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_vertical")
        return withUnsafePointer (to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical (_ vertical: Bool) {
        #if true
        
        var copy_vertical = vertical
        
        gi.object_method_bind_ptrcall_v (BoxContainer.method_set_vertical, UnsafeMutableRawPointer (mutating: handle), nil, &copy_vertical)
        
        #else
        
        var copy_vertical = vertical
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_vertical) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BoxContainer.method_set_vertical, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_vertical")
        return withUnsafePointer (to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_vertical ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BoxContainer.method_is_vertical, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

