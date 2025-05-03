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


/// A ``StyleBox`` that displays a single line of a given color and thickness.
/// 
/// A ``StyleBox`` that displays a single line of a given color and thickness. The line can be either horizontal or vertical. Useful for separators.
open class StyleBoxLine: StyleBox {
    private static var className = StringName("StyleBoxLine")
    override open class var godotClassName: StringName { className }
    
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
    fileprivate static let method_set_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxLine.method_set_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(StyleBoxLine.method_get_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_thickness")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_thickness(_ thickness: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: thickness) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxLine.method_set_thickness, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_thickness")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_thickness() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(StyleBoxLine.method_get_thickness, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_grow_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_grow_begin")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_grow_begin(_ offset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxLine.method_set_grow_begin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_grow_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_grow_begin")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_grow_begin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(StyleBoxLine.method_get_grow_begin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_grow_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_grow_end")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_grow_end(_ offset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxLine.method_set_grow_end, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_grow_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_grow_end")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_grow_end() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(StyleBoxLine.method_get_grow_end, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_vertical: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertical")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical(_ vertical: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertical) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBoxLine.method_set_vertical, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_vertical: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_vertical")
        return withUnsafePointer(to: &StyleBoxLine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_vertical() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(StyleBoxLine.method_is_vertical, handle, nil, &_result)
        return _result
    }
    
}

