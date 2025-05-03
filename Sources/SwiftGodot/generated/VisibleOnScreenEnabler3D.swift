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


/// A box-shaped region of 3D space that, when visible on screen, enables a target node.
/// 
/// ``VisibleOnScreenEnabler3D`` contains a box-shaped region of 3D space and a target node. The target node will be automatically enabled (via its ``Node/processMode`` property) when any part of this region becomes visible on the screen, and automatically disabled otherwise. This can for example be used to activate enemies only when the player approaches them.
/// 
/// See ``VisibleOnScreenNotifier3D`` if you only want to be notified when the region is visible on screen.
/// 
/// > Note: ``VisibleOnScreenEnabler3D`` uses an approximate heuristic that doesn't take walls and other occlusion into account, unless occlusion culling is used. It also won't function unless ``Node3D/visible`` is set to `true`.
/// 
open class VisibleOnScreenEnabler3D: VisibleOnScreenNotifier3D {
    private static var className = StringName("VisibleOnScreenEnabler3D")
    override open class var godotClassName: StringName { className }
    public enum EnableMode: Int64, CaseIterable {
        /// Corresponds to ``Node/ProcessMode/inherit``.
        case inherit = 0 // ENABLE_MODE_INHERIT
        /// Corresponds to ``Node/ProcessMode/always``.
        case always = 1 // ENABLE_MODE_ALWAYS
        /// Corresponds to ``Node/ProcessMode/whenPaused``.
        case whenPaused = 2 // ENABLE_MODE_WHEN_PAUSED
    }
    
    
    /* Properties */
    
    /// Determines how the target node is enabled. Corresponds to ``Node.ProcessMode``. When the node is disabled, it always uses ``Node/ProcessMode/disabled``.
    final public var enableMode: VisibleOnScreenEnabler3D.EnableMode {
        get {
            return get_enable_mode ()
        }
        
        set {
            set_enable_mode (newValue)
        }
        
    }
    
    /// The path to the target node, relative to the ``VisibleOnScreenEnabler3D``. The target node is cached; it's only assigned when setting this property (if the ``VisibleOnScreenEnabler3D`` is inside the scene tree) and every time the ``VisibleOnScreenEnabler3D`` enters the scene tree. If the path is empty, no node will be affected. If the path is invalid, an error is also generated.
    final public var enableNodePath: NodePath {
        get {
            return get_enable_node_path ()
        }
        
        set {
            set_enable_node_path (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_enable_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_mode")
        return withUnsafePointer(to: &VisibleOnScreenEnabler3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 320303646)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_mode(_ mode: VisibleOnScreenEnabler3D.EnableMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisibleOnScreenEnabler3D.method_set_enable_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enable_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enable_mode")
        return withUnsafePointer(to: &VisibleOnScreenEnabler3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3352990031)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_mode() -> VisibleOnScreenEnabler3D.EnableMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisibleOnScreenEnabler3D.method_get_enable_mode, handle, nil, &_result)
        return VisibleOnScreenEnabler3D.EnableMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_enable_node_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enable_node_path")
        return withUnsafePointer(to: &VisibleOnScreenEnabler3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enable_node_path(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisibleOnScreenEnabler3D.method_set_enable_node_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enable_node_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enable_node_path")
        return withUnsafePointer(to: &VisibleOnScreenEnabler3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 277076166)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enable_node_path() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(VisibleOnScreenEnabler3D.method_get_enable_node_path, handle, nil, &_result.content)
        return _result
    }
    
}

