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


/// A node that copies a region of the screen to a buffer for access in shader code.
/// 
/// Node for back-buffering the currently-displayed screen. The region defined in the ``BackBufferCopy`` node is buffered with the content of the screen it covers, or the entire screen according to the ``copyMode``. It can be accessed in shader scripts using the screen texture (i.e. a uniform sampler with `hint_screen_texture`).
/// 
/// > Note: Since this node inherits from ``Node2D`` (and not ``Control``), anchors and margins won't apply to child ``Control``-derived nodes. This can be problematic when resizing the window. To avoid this, add ``Control``-derived nodes as _siblings_ to the ``BackBufferCopy`` node instead of adding them as children.
/// 
open class BackBufferCopy: Node2D {
    private static var className = StringName("BackBufferCopy")
    override open class var godotClassName: StringName { className }
    public enum CopyMode: Int64, CaseIterable {
        /// Disables the buffering mode. This means the ``BackBufferCopy`` node will directly use the portion of screen it covers.
        case disabled = 0 // COPY_MODE_DISABLED
        /// ``BackBufferCopy`` buffers a rectangular region.
        case rect = 1 // COPY_MODE_RECT
        /// ``BackBufferCopy`` buffers the entire screen.
        case viewport = 2 // COPY_MODE_VIEWPORT
    }
    
    
    /* Properties */
    
    /// Buffer mode. See ``BackBufferCopy/CopyMode`` constants.
    final public var copyMode: BackBufferCopy.CopyMode {
        get {
            return get_copy_mode ()
        }
        
        set {
            set_copy_mode (newValue)
        }
        
    }
    
    /// The area covered by the ``BackBufferCopy``. Only used if ``copyMode`` is ``CopyMode/rect``.
    final public var rect: Rect2 {
        get {
            return get_rect ()
        }
        
        set {
            set_rect (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rect")
        return withUnsafePointer(to: &BackBufferCopy.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2046264180)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rect(_ rect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BackBufferCopy.method_set_rect, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rect")
        return withUnsafePointer(to: &BackBufferCopy.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rect() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(BackBufferCopy.method_get_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_copy_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_copy_mode")
        return withUnsafePointer(to: &BackBufferCopy.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1713538590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_copy_mode(_ copyMode: BackBufferCopy.CopyMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: copyMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BackBufferCopy.method_set_copy_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_copy_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_copy_mode")
        return withUnsafePointer(to: &BackBufferCopy.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3271169440)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_copy_mode() -> BackBufferCopy.CopyMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(BackBufferCopy.method_get_copy_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return BackBufferCopy.CopyMode (rawValue: _result)!
    }
    
}

