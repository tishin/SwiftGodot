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


/// Base input event type for mouse events.
/// 
/// Stores general information about mouse events.
open class InputEventMouse: InputEventWithModifiers {
    private static var className = StringName("InputEventMouse")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The mouse button mask identifier, one of or a bitwise combination of the ``MouseButton`` button masks.
    final public var buttonMask: MouseButtonMask {
        get {
            return get_button_mask ()
        }
        
        set {
            set_button_mask (newValue)
        }
        
    }
    
    /// When received in ``Node/_input(event:)`` or ``Node/_unhandledInput(event:)``, returns the mouse's position in the ``Viewport`` this ``Node`` is in using the coordinate system of this ``Viewport``.
    /// 
    /// When received in ``Control/_guiInput(event:)``, returns the mouse's position in the ``Control`` using the local coordinate system of the ``Control``.
    /// 
    final public var position: Vector2 {
        get {
            return get_position ()
        }
        
        set {
            set_position (newValue)
        }
        
    }
    
    /// When received in ``Node/_input(event:)`` or ``Node/_unhandledInput(event:)``, returns the mouse's position in the root ``Viewport`` using the coordinate system of the root ``Viewport``.
    /// 
    /// When received in ``Control/_guiInput(event:)``, returns the mouse's position in the ``CanvasLayer`` that the ``Control`` is in using the coordinate system of the ``CanvasLayer``.
    /// 
    final public var globalPosition: Vector2 {
        get {
            return get_global_position ()
        }
        
        set {
            set_global_position (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_button_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_button_mask")
        return withUnsafePointer(to: &InputEventMouse.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3950145251)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_button_mask(_ buttonMask: MouseButtonMask) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: buttonMask.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouse.method_set_button_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_button_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_button_mask")
        return withUnsafePointer(to: &InputEventMouse.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2512161324)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_button_mask() -> MouseButtonMask {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: MouseButtonMask = MouseButtonMask ()
        gi.object_method_bind_ptrcall(InputEventMouse.method_get_button_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_position")
        return withUnsafePointer(to: &InputEventMouse.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position(_ position: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouse.method_set_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_position")
        return withUnsafePointer(to: &InputEventMouse.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventMouse.method_get_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_position")
        return withUnsafePointer(to: &InputEventMouse.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_global_position(_ globalPosition: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: globalPosition) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(InputEventMouse.method_set_global_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_position")
        return withUnsafePointer(to: &InputEventMouse.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_global_position() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(InputEventMouse.method_get_global_position, handle, nil, &_result)
        return _result
    }
    
}

