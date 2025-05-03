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


/// A rectangle hint for designing UIs.
/// 
/// A rectangle box that displays only a colored border around its rectangle. It is used to visualize the extents of a ``Control``.
open class ReferenceRect: Control {
    private static var className = StringName("ReferenceRect")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Sets the border color of the ``ReferenceRect``.
    final public var borderColor: Color {
        get {
            return get_border_color ()
        }
        
        set {
            set_border_color (newValue)
        }
        
    }
    
    /// Sets the border width of the ``ReferenceRect``. The border grows both inwards and outwards with respect to the rectangle box.
    final public var borderWidth: Double {
        get {
            return get_border_width ()
        }
        
        set {
            set_border_width (newValue)
        }
        
    }
    
    /// If `true`, the ``ReferenceRect`` will only be visible while in editor. Otherwise, ``ReferenceRect`` will be visible in the running project.
    final public var editorOnly: Bool {
        get {
            return get_editor_only ()
        }
        
        set {
            set_editor_only (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_border_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_border_color")
        return withUnsafePointer(to: &ReferenceRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_border_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(ReferenceRect.method_get_border_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_border_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_border_color")
        return withUnsafePointer(to: &ReferenceRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_border_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ReferenceRect.method_set_border_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_border_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_border_width")
        return withUnsafePointer(to: &ReferenceRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_border_width() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ReferenceRect.method_get_border_width, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_border_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_border_width")
        return withUnsafePointer(to: &ReferenceRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_border_width(_ width: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: width) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ReferenceRect.method_set_border_width, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_editor_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_editor_only")
        return withUnsafePointer(to: &ReferenceRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_editor_only() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ReferenceRect.method_get_editor_only, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_editor_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editor_only")
        return withUnsafePointer(to: &ReferenceRect.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editor_only(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ReferenceRect.method_set_editor_only, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

