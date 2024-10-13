// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A container used for displaying the contents of a ``SubViewport``.
/// 
/// A container that displays the contents of underlying ``SubViewport`` child nodes. It uses the combined size of the ``SubViewport``s as minimum size, unless ``stretch`` is enabled.
/// 
/// > Note: Changing a ``SubViewportContainer``'s ``Control/scale`` will cause its contents to appear distorted. To change its visual size without causing distortion, adjust the node's margins instead (if it's not already in a container).
/// 
/// > Note: The ``SubViewportContainer`` forwards mouse-enter and mouse-exit notifications to its sub-viewports.
/// 
open class SubViewportContainer: Container {
    override open class var godotClassName: StringName { "SubViewportContainer" }
    
    /* Properties */
    
    /// If `true`, the sub-viewport will be automatically resized to the control's size.
    /// 
    /// > Note: If `true`, this will prohibit changing ``SubViewport/size`` of its children manually.
    /// 
    final public var stretch: Bool {
        get {
            return is_stretch_enabled ()
        }
        
        set {
            set_stretch (newValue)
        }
        
    }
    
    /// Divides the sub-viewport's effective resolution by this value while preserving its scale. This can be used to speed up rendering.
    /// 
    /// For example, a 1280×720 sub-viewport with ``stretchShrink`` set to `2` will be rendered at 640×360 while occupying the same size in the container.
    /// 
    /// > Note: ``stretch`` must be `true` for this property to work.
    /// 
    final public var stretchShrink: Int32 {
        get {
            return get_stretch_shrink ()
        }
        
        set {
            set_stretch_shrink (newValue)
        }
        
    }
    
    /* Methods */
    /// Virtual method to be implemented by the user. If it returns `true`, the `event` is propagated to ``SubViewport`` children. Propagation doesn't happen if it returns `false`. If the function is not implemented, all events are propagated to SubViewports.
    @_documentation(visibility: public)
    open func _propagateInputEvent(_ event: InputEvent?) -> Bool {
        return false
    }
    
    fileprivate static var method_set_stretch: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_stretch")
        return withUnsafePointer(to: &SubViewportContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stretch(_ enable: Bool) {
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SubViewportContainer.method_set_stretch, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_stretch_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_stretch_enabled")
        return withUnsafePointer(to: &SubViewportContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_stretch_enabled() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SubViewportContainer.method_is_stretch_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_stretch_shrink: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_stretch_shrink")
        return withUnsafePointer(to: &SubViewportContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stretch_shrink(_ amount: Int32) {
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SubViewportContainer.method_set_stretch_shrink, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_stretch_shrink: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_stretch_shrink")
        return withUnsafePointer(to: &SubViewportContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stretch_shrink() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SubViewportContainer.method_get_stretch_shrink, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_propagate_input_event":
                return _SubViewportContainer_proxy_propagate_input_event
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _SubViewportContainer_proxy_propagate_input_event (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<SubViewportContainer>.fromOpaque(instance).takeUnretainedValue()
    let resolved_0 = args [0]!.load (as: UnsafeRawPointer.self)
    
    let ret = swiftObject._propagateInputEvent (lookupLiveObject (handleAddress: resolved_0) as? InputEvent ?? InputEvent (nativeHandle: resolved_0))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

