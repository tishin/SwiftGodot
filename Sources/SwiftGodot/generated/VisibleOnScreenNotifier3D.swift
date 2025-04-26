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


/// A box-shaped region of 3D space that detects whether it is visible on screen.
/// 
/// ``VisibleOnScreenNotifier3D`` represents a box-shaped region of 3D space. When any part of this region becomes visible on screen or in a ``Camera3D``'s view, it will emit a [signal screen_entered] signal, and likewise it will emit a [signal screen_exited] signal when no part of it remains visible.
/// 
/// If you want a node to be enabled automatically when this region is visible on screen, use ``VisibleOnScreenEnabler3D``.
/// 
/// > Note: ``VisibleOnScreenNotifier3D`` uses an approximate heuristic that doesn't take walls and other occlusion into account, unless occlusion culling is used. It also won't function unless ``Node3D/visible`` is set to `true`.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``screenEntered``
/// - ``screenExited``
open class VisibleOnScreenNotifier3D: VisualInstance3D {
    private static var className = StringName("VisibleOnScreenNotifier3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ``VisibleOnScreenNotifier3D``'s bounding box.
    final public var aabb: AABB {
        get {
            return getAabb ()
        }
        
        set {
            set_aabb (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_aabb: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_aabb")
        return withUnsafePointer(to: &VisibleOnScreenNotifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259215842)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_aabb(_ rect: AABB) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisibleOnScreenNotifier3D.method_set_aabb, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_on_screen: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_on_screen")
        return withUnsafePointer(to: &VisibleOnScreenNotifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the bounding box is on the screen.
    /// 
    /// > Note: It takes one frame for the ``VisibleOnScreenNotifier3D``'s visibility to be assessed once added to the scene tree, so this method will always return `false` right after it is instantiated.
    /// 
    public final func isOnScreen() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(VisibleOnScreenNotifier3D.method_is_on_screen, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the ``VisibleOnScreenNotifier3D`` enters the screen.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.screenEntered.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var screenEntered: SimpleSignal { SimpleSignal (target: self, signalName: "screen_entered") }
    
    /// Emitted when the ``VisibleOnScreenNotifier3D`` exits the screen.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.screenExited.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var screenExited: SimpleSignal { SimpleSignal (target: self, signalName: "screen_exited") }
    
}

