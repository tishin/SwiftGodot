// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Parent of all visual 3D nodes.
/// 
/// The ``VisualInstance3D`` is used to connect a resource to a visual representation. All visual 3D nodes inherit from the ``VisualInstance3D``. In general, you should not access the ``VisualInstance3D`` properties directly as they are accessed and managed by the nodes that inherit from ``VisualInstance3D``. ``VisualInstance3D`` is the node representation of the ``RenderingServer`` instance.
open class VisualInstance3D: Node3D {
    override open class var godotClassName: StringName { "VisualInstance3D" }
    
    /* Properties */
    
    /// The render layer(s) this ``VisualInstance3D`` is drawn on.
    /// 
    /// This object will only be visible for ``Camera3D``s whose cull mask includes any of the render layers this ``VisualInstance3D`` is set to.
    /// 
    /// For ``Light3D``s, this can be used to control which ``VisualInstance3D``s are affected by a specific light. For ``GPUParticles3D``, this can be used to control which particles are effected by a specific attractor. For ``Decal``s, this can be used to control which ``VisualInstance3D``s are affected by a specific decal.
    /// 
    /// To adjust ``layers`` more easily using a script, use ``getLayerMaskValue(layerNumber:)`` and ``setLayerMaskValue(layerNumber:value:)``.
    /// 
    /// > Note: ``VoxelGI``, SDFGI and ``LightmapGI`` will always take all layers into account to determine what contributes to global illumination. If this is an issue, set ``GeometryInstance3D/giMode`` to ``GeometryInstance3D/GIMode/disabled`` for meshes and ``Light3D/lightBakeMode`` to ``Light3D/BakeMode/bakeDisabled`` for lights to exclude them from global illumination.
    /// 
    final public var layers: UInt32 {
        get {
            return get_layer_mask ()
        }
        
        set {
            set_layer_mask (newValue)
        }
        
    }
    
    /// The amount by which the depth of this ``VisualInstance3D`` will be adjusted when sorting by depth. Uses the same units as the engine (which are typically meters). Adjusting it to a higher value will make the ``VisualInstance3D`` reliably draw on top of other ``VisualInstance3D``s that are otherwise positioned at the same spot. To ensure it always draws on top of other objects around it (not positioned at the same spot), set the value to be greater than the distance between this ``VisualInstance3D`` and the other nearby ``VisualInstance3D``s.
    final public var sortingOffset: Double {
        get {
            return get_sorting_offset ()
        }
        
        set {
            set_sorting_offset (newValue)
        }
        
    }
    
    /// If `true`, the object is sorted based on the ``AABB`` center. The object will be sorted based on the global position otherwise.
    /// 
    /// The ``AABB`` center based sorting is generally more accurate for 3D models. The position based sorting instead allows to better control the drawing order when working with ``GPUParticles3D`` and ``CPUParticles3D``.
    /// 
    final public var sortingUseAabbCenter: Bool {
        get {
            return is_sorting_use_aabb_center ()
        }
        
        set {
            set_sorting_use_aabb_center (newValue)
        }
        
    }
    
    /* Methods */
    /// 
    @_documentation(visibility: public)
    open func _getAabb ()-> AABB {
        return AABB ()
    }
    
    fileprivate static var method_set_base: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_base")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Sets the resource that is instantiated by this ``VisualInstance3D``, which changes how the engine handles the ``VisualInstance3D`` under the hood. Equivalent to ``RenderingServer/instanceSetBase(instance:base:)``.
    public final func setBase (_ base: RID) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (VisualInstance3D.method_set_base, UnsafeMutableRawPointer (mutating: handle), nil, &base.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &base.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualInstance3D.method_set_base, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_base: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_base")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the RID of the resource associated with this ``VisualInstance3D``. For example, if the Node is a ``MeshInstance3D``, this will return the RID of the associated ``Mesh``.
    public final func getBase ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (VisualInstance3D.method_get_base, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_instance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the RID of this instance. This RID is the same as the RID returned by ``RenderingServer/instanceCreate()``. This RID is needed if you want to call ``RenderingServer`` functions directly on this ``VisualInstance3D``.
    public final func getInstance ()-> RID {
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall (VisualInstance3D.method_get_instance, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_set_layer_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_layer_mask")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_layer_mask (_ mask: UInt32) {
        #if true
        
        var copy_mask: Int = Int (mask)
        
        gi.object_method_bind_ptrcall_v (VisualInstance3D.method_set_layer_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask: Int = Int (mask)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualInstance3D.method_set_layer_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_layer_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layer_mask")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_layer_mask ()-> UInt32 {
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall (VisualInstance3D.method_get_layer_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_layer_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_layer_mask_value")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Based on `value`, enables or disables the specified layer in the ``layers``, given a `layerNumber` between 1 and 20.
    public final func setLayerMaskValue (layerNumber: Int32, value: Bool) {
        #if true
        
        var copy_layer_number: Int = Int (layerNumber)
        var copy_value = value
        
        gi.object_method_bind_ptrcall_v (VisualInstance3D.method_set_layer_mask_value, UnsafeMutableRawPointer (mutating: handle), nil, &copy_layer_number, &copy_value)
        
        #else
        
        var copy_layer_number: Int = Int (layerNumber)
        var copy_value = value
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_layer_number) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_value) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (VisualInstance3D.method_set_layer_mask_value, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_layer_mask_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_layer_mask_value")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns whether or not the specified layer of the ``layers`` is enabled, given a `layerNumber` between 1 and 20.
    public final func getLayerMaskValue (layerNumber: Int32)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_layer_number: Int = Int (layerNumber)
        
        gi.object_method_bind_ptrcall_v (VisualInstance3D.method_get_layer_mask_value, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_layer_number)
        return _result
        #else
        
        var copy_layer_number: Int = Int (layerNumber)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_layer_number) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualInstance3D.method_get_layer_mask_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_sorting_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sorting_offset")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sorting_offset (_ offset: Double) {
        #if true
        
        var copy_offset = offset
        
        gi.object_method_bind_ptrcall_v (VisualInstance3D.method_set_sorting_offset, UnsafeMutableRawPointer (mutating: handle), nil, &copy_offset)
        
        #else
        
        var copy_offset = offset
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_offset) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualInstance3D.method_set_sorting_offset, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_sorting_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_sorting_offset")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sorting_offset ()-> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall (VisualInstance3D.method_get_sorting_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sorting_use_aabb_center: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_sorting_use_aabb_center")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sorting_use_aabb_center (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (VisualInstance3D.method_set_sorting_use_aabb_center, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VisualInstance3D.method_set_sorting_use_aabb_center, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_sorting_use_aabb_center: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_sorting_use_aabb_center")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_sorting_use_aabb_center ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (VisualInstance3D.method_is_sorting_use_aabb_center, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_aabb: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_aabb")
        return withUnsafePointer (to: &VisualInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    /// Returns the ``AABB`` (also known as the bounding box) for this ``VisualInstance3D``.
    public final func getAabb ()-> AABB {
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall (VisualInstance3D.method_get_aabb, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_aabb":
                return _VisualInstance3D_proxy_get_aabb
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _VisualInstance3D_proxy_get_aabb (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<VisualInstance3D>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getAabb ()
    retPtr!.storeBytes (of: ret, as: AABB.self)
}

