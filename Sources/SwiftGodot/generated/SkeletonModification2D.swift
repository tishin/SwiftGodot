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


/// Base class for resources that operate on ``Bone2D``s in a ``Skeleton2D``.
/// 
/// This resource provides an interface that can be expanded so code that operates on ``Bone2D`` nodes in a ``Skeleton2D`` can be mixed and matched together to create complex interactions.
/// 
/// This is used to provide Godot with a flexible and powerful Inverse Kinematics solution that can be adapted for many different uses.
/// 
open class SkeletonModification2D: Resource {
    private static var className = StringName("SkeletonModification2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, the modification's ``_execute(delta:)`` function will be called by the ``SkeletonModificationStack2D``.
    final public var enabled: Bool {
        get {
            return get_enabled ()
        }
        
        set {
            set_enabled (newValue)
        }
        
    }
    
    /// The execution mode for the modification. This tells the modification stack when to execute the modification. Some modifications have settings that are only available in certain execution modes.
    final public var executionMode: Int32 {
        get {
            return get_execution_mode ()
        }
        
        set {
            set_execution_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__execute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_execute")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Executes the given modification. This is where the modification performs whatever function it is designed to do.
    @_documentation(visibility: public)
    open func _execute(delta: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: delta) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2D.method__execute, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__setup_modification: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_setup_modification")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3907307132)!
            }
            
        }
        
    }()
    
    /// Called when the modification is setup. This is where the modification performs initialization.
    @_documentation(visibility: public)
    open func _setupModification(modificationStack: SkeletonModificationStack2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: modificationStack?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2D.method__setup_modification, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__draw_editor_gizmo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_draw_editor_gizmo")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Used for drawing **editor-only** modification gizmos. This function will only be called in the Godot editor and can be overridden to draw custom gizmos.
    /// 
    /// > Note: You will need to use the Skeleton2D from ``SkeletonModificationStack2D/getSkeleton()`` and it's draw functions, as the ``SkeletonModification2D`` resource cannot draw on its own.
    /// 
    @_documentation(visibility: public)
    open func _drawEditorGizmo() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(SkeletonModification2D.method__draw_editor_gizmo, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_set_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_enabled")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2D.method_set_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_enabled")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonModification2D.method_get_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_modification_stack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_modification_stack")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2137761694)!
            }
            
        }
        
    }()
    
    /// Returns the ``SkeletonModificationStack2D`` that this modification is bound to. Through the modification stack, you can access the Skeleton2D the modification is operating on.
    public final func getModificationStack() -> SkeletonModificationStack2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SkeletonModification2D.method_get_modification_stack, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_is_setup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_is_setup")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Manually allows you to set the setup state of the modification. This function should only rarely be used, as the ``SkeletonModificationStack2D`` the modification is bound to should handle setting the modification up.
    public final func setIsSetup(_ isSetup: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: isSetup) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2D.method_set_is_setup, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_is_setup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_is_setup")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this modification has been successfully setup or not.
    public final func getIsSetup() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonModification2D.method_get_is_setup, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_execution_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_execution_mode")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_execution_mode(_ executionMode: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: executionMode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2D.method_set_execution_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_execution_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_execution_mode")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_execution_mode() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SkeletonModification2D.method_get_execution_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_clamp_angle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clamp_angle")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1229502682)!
            }
            
        }
        
    }()
    
    /// Takes an angle and clamps it so it is within the passed-in `min` and `max` range. `invert` will inversely clamp the angle, clamping it to the range outside of the given bounds.
    public final func clampAngle(_ angle: Double, min: Double, max: Double, invert: Bool) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: min) { pArg1 in
                withUnsafePointer(to: max) { pArg2 in
                    withUnsafePointer(to: invert) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(SkeletonModification2D.method_clamp_angle, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_editor_draw_gizmo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editor_draw_gizmo")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets whether this modification will call ``_drawEditorGizmo()`` in the Godot editor to draw modification-specific gizmos.
    public final func setEditorDrawGizmo(_ drawGizmo: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawGizmo) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2D.method_set_editor_draw_gizmo, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_editor_draw_gizmo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_editor_draw_gizmo")
        return withUnsafePointer(to: &SkeletonModification2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this modification will call ``_drawEditorGizmo()`` in the Godot editor to draw modification-specific gizmos.
    public final func getEditorDrawGizmo() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SkeletonModification2D.method_get_editor_draw_gizmo, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_draw_editor_gizmo":
                return _SkeletonModification2D_proxy_draw_editor_gizmo
            case "_execute":
                return _SkeletonModification2D_proxy_execute
            case "_setup_modification":
                return _SkeletonModification2D_proxy_setup_modification
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _SkeletonModification2D_proxy_draw_editor_gizmo (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? SkeletonModification2D else { return }
    swiftObject._drawEditorGizmo ()
}

func _SkeletonModification2D_proxy_execute (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? SkeletonModification2D else { return }
    swiftObject._execute (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _SkeletonModification2D_proxy_setup_modification (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? SkeletonModification2D else { return }
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._setupModification (modificationStack: resolved_0 == nil ? nil : lookupObject (nativeHandle: resolved_0!, ownsRef: false) as? SkeletonModificationStack2D)
}

