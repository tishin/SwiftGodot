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


/// Application status indicator (aka notification area icon).
/// 
/// > Note: Status indicator is implemented on macOS and Windows.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``pressed``
open class StatusIndicator: Node {
    fileprivate static var className = StringName("StatusIndicator")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// Status indicator tooltip.
    final public var tooltip: String {
        get {
            return get_tooltip ()
        }
        
        set {
            set_tooltip (newValue)
        }
        
    }
    
    /// Status indicator icon.
    final public var icon: Texture2D? {
        get {
            return get_icon ()
        }
        
        set {
            set_icon (newValue)
        }
        
    }
    
    /// Status indicator native popup menu. If this is set, the [signal pressed] signal is not emitted.
    /// 
    /// > Note: Native popup is only supported if ``NativeMenu`` supports ``NativeMenu/Feature/popupMenu`` feature.
    /// 
    final public var menu: NodePath {
        get {
            return get_menu ()
        }
        
        set {
            set_menu (newValue)
        }
        
    }
    
    /// If `true`, the status indicator is visible.
    final public var visible: Bool {
        get {
            return is_visible ()
        }
        
        set {
            set_visible (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_tooltip: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_tooltip")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tooltip(_ tooltip: String) {
        let tooltip = GString(tooltip)
        withUnsafePointer(to: tooltip.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StatusIndicator.method_set_tooltip, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_tooltip: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_tooltip")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tooltip() -> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall(StatusIndicator.method_get_tooltip, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_set_icon: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_icon")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_icon(_ texture: Texture2D?) {
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StatusIndicator.method_set_icon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_icon: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_icon")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_icon() -> Texture2D? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(StatusIndicator.method_get_icon, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_visible: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_visible")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible(_ visible: Bool) {
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StatusIndicator.method_set_visible, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_visible: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_visible")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visible() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(StatusIndicator.method_is_visible, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_menu: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_menu")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_menu(_ menu: NodePath) {
        withUnsafePointer(to: menu.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StatusIndicator.method_set_menu, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_menu: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_menu")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_menu() -> NodePath {
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(StatusIndicator.method_get_menu, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_rect: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_rect")
        return withUnsafePointer(to: &StatusIndicator.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    /// Returns the status indicator rectangle in screen coordinates. If this status indicator is not visible, returns an empty ``Rect2``.
    public final func getRect() -> Rect2 {
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(StatusIndicator.method_get_rect, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the status indicator is pressed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.pressed.connect { mouseButton, mousePosition in
    ///    print ("caught signal")
    /// }
    /// ```
    public var pressed: SignalWithArguments<Int64, Vector2i> { SignalWithArguments<Int64, Vector2i> (target: self, signalName: "pressed") }
    
}

