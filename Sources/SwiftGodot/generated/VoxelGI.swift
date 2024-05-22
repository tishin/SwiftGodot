// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Real-time global illumination (GI) probe.
/// 
/// ``VoxelGI``s are used to provide high-quality real-time indirect light and reflections to scenes. They precompute the effect of objects that emit light and the effect of static geometry to simulate the behavior of complex light in real-time. ``VoxelGI``s need to be baked before having a visible effect. However, once baked, dynamic objects will receive light from them. Furthermore, lights can be fully dynamic or baked.
/// 
/// > Note: ``VoxelGI`` is only supported in the Forward+ rendering method, not Mobile or Compatibility.
/// 
/// **Procedural generation:** ``VoxelGI`` can be baked in an exported project, which makes it suitable for procedurally generated or user-built levels as long as all the geometry is generated in advance. For games where geometry is generated at any time during gameplay, SDFGI is more suitable (see ``Environment/sdfgiEnabled``).
/// 
/// **Performance:** ``VoxelGI`` is relatively demanding on the GPU and is not suited to low-end hardware such as integrated graphics (consider ``LightmapGI`` instead). To improve performance, adjust ``ProjectSettings/rendering/globalIllumination/voxelGi/quality`` and enable ``ProjectSettings/rendering/globalIllumination/gi/useHalfResolution`` in the Project Settings. To provide a fallback for low-end hardware, consider adding an option to disable ``VoxelGI`` in your project's options menus. A ``VoxelGI`` node can be disabled by hiding it.
/// 
/// > Note: Meshes should have sufficiently thick walls to avoid light leaks (avoid one-sided walls). For interior levels, enclose your level geometry in a sufficiently large box and bridge the loops to close the mesh. To further prevent light leaks, you can also strategically place temporary ``MeshInstance3D`` nodes with their ``GeometryInstance3D/giMode`` set to ``GeometryInstance3D/GIMode/`static```. These temporary nodes can then be hidden after baking the ``VoxelGI`` node.
/// 
open class VoxelGI: VisualInstance3D {
    override open class var godotClassName: StringName { "VoxelGI" }
    public enum Subdiv: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Use 64 subdivisions. This is the lowest quality setting, but the fastest. Use it if you can, but especially use it on lower-end hardware.
        case subdiv64 = 0 // SUBDIV_64
        /// Use 128 subdivisions. This is the default quality setting.
        case subdiv128 = 1 // SUBDIV_128
        /// Use 256 subdivisions.
        case subdiv256 = 2 // SUBDIV_256
        /// Use 512 subdivisions. This is the highest quality setting, but the slowest. On lower-end hardware, this could cause the GPU to stall.
        case subdiv512 = 3 // SUBDIV_512
        /// Represents the size of the ``VoxelGI/Subdiv`` enum.
        case max = 4 // SUBDIV_MAX
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .subdiv64: return ".subdiv64"
                case .subdiv128: return ".subdiv128"
                case .subdiv256: return ".subdiv256"
                case .subdiv512: return ".subdiv512"
                case .max: return ".max"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// Number of times to subdivide the grid that the ``VoxelGI`` operates on. A higher number results in finer detail and thus higher visual quality, while lower numbers result in better performance.
    final public var subdiv: VoxelGI.Subdiv {
        get {
            return get_subdiv ()
        }
        
        set {
            set_subdiv (newValue)
        }
        
    }
    
    /// The size of the area covered by the ``VoxelGI``. If you make the size larger without increasing the subdivisions with ``subdiv``, the size of each cell will increase and result in lower detailed lighting.
    /// 
    /// > Note: Size is clamped to 1.0 unit or more on each axis.
    /// 
    final public var size: Vector3 {
        get {
            return get_size ()
        }
        
        set {
            set_size (newValue)
        }
        
    }
    
    /// The ``CameraAttributes`` resource that specifies exposure levels to bake at. Auto-exposure and non exposure properties will be ignored. Exposure settings should be used to reduce the dynamic range present when baking. If exposure is too high, the ``VoxelGI`` will have banding artifacts or may have over-exposure artifacts.
    final public var cameraAttributes: CameraAttributes? {
        get {
            return get_camera_attributes ()
        }
        
        set {
            set_camera_attributes (newValue)
        }
        
    }
    
    /// The ``VoxelGIData`` resource that holds the data for this ``VoxelGI``.
    final public var data: VoxelGIData? {
        get {
            return get_probe_data ()
        }
        
        set {
            set_probe_data (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_probe_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_probe_data")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1637849675)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_probe_data (_ data: VoxelGIData?) {
        #if true
        
        var copy_data_handle = data?.handle
        
        gi.object_method_bind_ptrcall_v (VoxelGI.method_set_probe_data, UnsafeMutableRawPointer (mutating: handle), nil, &copy_data_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: data?.handle) { p0 in
        _args.append (data == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (VoxelGI.method_set_probe_data, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_probe_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_probe_data")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1730645405)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_probe_data ()-> VoxelGIData? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (VoxelGI.method_get_probe_data, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_subdiv: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_subdiv")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240898472)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_subdiv (_ subdiv: VoxelGI.Subdiv) {
        #if true
        
        var copy_subdiv = Int64 (subdiv.rawValue)
        
        gi.object_method_bind_ptrcall_v (VoxelGI.method_set_subdiv, UnsafeMutableRawPointer (mutating: handle), nil, &copy_subdiv)
        
        #else
        
        var copy_subdiv = Int64 (subdiv.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_subdiv) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGI.method_set_subdiv, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_subdiv: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_subdiv")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4261647950)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_subdiv ()-> VoxelGI.Subdiv {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (VoxelGI.method_get_subdiv, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VoxelGI.Subdiv (rawValue: _result)!
    }
    
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_size (_ size: Vector3) {
        #if true
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (VoxelGI.method_set_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (VoxelGI.method_set_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_size ()-> Vector3 {
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall (VoxelGI.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_camera_attributes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_camera_attributes")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2817810567)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_camera_attributes (_ cameraAttributes: CameraAttributes?) {
        #if true
        
        var copy_camera_attributes_handle = cameraAttributes?.handle
        
        gi.object_method_bind_ptrcall_v (VoxelGI.method_set_camera_attributes, UnsafeMutableRawPointer (mutating: handle), nil, &copy_camera_attributes_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: cameraAttributes?.handle) { p0 in
        _args.append (cameraAttributes == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (VoxelGI.method_set_camera_attributes, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_camera_attributes: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_camera_attributes")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3921283215)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_camera_attributes ()-> CameraAttributes? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (VoxelGI.method_get_camera_attributes, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_bake: GDExtensionMethodBindPtr = {
        let methodName = StringName ("bake")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2781551026)!
            }
            
        }
        
    }()
    
    /// Bakes the effect from all ``GeometryInstance3D``s marked with ``GeometryInstance3D/GIMode/`static``` and ``Light3D``s marked with either ``Light3D/BakeMode/bakeStatic`` or ``Light3D/BakeMode/bakeDynamic``. If `createVisualDebug` is `true`, after baking the light, this will generate a ``MultiMesh`` that has a cube representing each solid cell with each cube colored to the cell's albedo color. This can be used to visualize the ``VoxelGI``'s data and debug any issues that may be occurring.
    /// 
    /// > Note: ``bake(fromNode:createVisualDebug:)`` works from the editor and in exported projects. This makes it suitable for procedurally generated or user-built levels. Baking a ``VoxelGI`` node generally takes from 5 to 20 seconds in most scenes. Reducing ``subdiv`` can speed up baking.
    /// 
    /// > Note: ``GeometryInstance3D``s and ``Light3D``s must be fully ready before ``bake(fromNode:createVisualDebug:)`` is called. If you are procedurally creating those and some meshes or lights are missing from your baked ``VoxelGI``, use `call_deferred("bake")` instead of calling ``bake(fromNode:createVisualDebug:)`` directly.
    /// 
    public final func bake (fromNode: Node? = nil, createVisualDebug: Bool = false) {
        #if true
        
        var copy_create_visual_debug = createVisualDebug
        var copy_from_node_handle = fromNode?.handle
        
        gi.object_method_bind_ptrcall_v (VoxelGI.method_bake, UnsafeMutableRawPointer (mutating: handle), nil, &copy_from_node_handle, &copy_create_visual_debug)
        
        #else
        
        var copy_create_visual_debug = createVisualDebug
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: fromNode?.handle) { p0 in
        _args.append (fromNode == nil ? nil : p0)
            withUnsafePointer (to: &copy_create_visual_debug) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (VoxelGI.method_bake, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_debug_bake: GDExtensionMethodBindPtr = {
        let methodName = StringName ("debug_bake")
        return withUnsafePointer (to: &VoxelGI.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Calls ``bake(fromNode:createVisualDebug:)`` with `create_visual_debug` enabled.
    public final func debugBake () {
        gi.object_method_bind_ptrcall (VoxelGI.method_debug_bake, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
}

