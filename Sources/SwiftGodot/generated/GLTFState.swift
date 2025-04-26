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


/// Represents all data of a glTF file.
/// 
/// Contains all nodes and resources of a glTF file. This is used by ``GLTFDocument`` as data storage, which allows ``GLTFDocument`` and all ``GLTFDocumentExtension`` classes to remain stateless.
/// 
/// GLTFState can be populated by ``GLTFDocument`` reading a file or by converting a Godot scene. Then the data can either be used to create a Godot scene or save to a glTF file. The code that converts to/from a Godot scene can be intercepted at arbitrary points by ``GLTFDocumentExtension`` classes. This allows for custom data to be stored in the glTF file or for custom data to be converted to/from Godot nodes.
/// 
open class GLTFState: Resource {
    private static var className = StringName("GLTFState")
    override open class var godotClassName: StringName { className }
    /* Constants */
    /// Discards all embedded textures and uses untextured materials.
    public static let handleBinaryDiscardTextures = 0
    /// Extracts embedded textures to be reimported and compressed. Editor only. Acts as uncompressed at runtime.
    public static let handleBinaryExtractTextures = 1
    /// Embeds textures VRAM compressed with Basis Universal into the generated scene.
    public static let handleBinaryEmbedAsBasisu = 2
    /// Embeds textures compressed losslessly into the generated scene, matching old behavior.
    public static let handleBinaryEmbedAsUncompressed = 3
    
    /* Properties */
    
    /// The original raw JSON document corresponding to this GLTFState.
    final public var json: VariantDictionary {
        get {
            return get_json ()
        }
        
        set {
            set_json (newValue)
        }
        
    }
    
    final public var majorVersion: Int32 {
        get {
            return get_major_version ()
        }
        
        set {
            set_major_version (newValue)
        }
        
    }
    
    final public var minorVersion: Int32 {
        get {
            return get_minor_version ()
        }
        
        set {
            set_minor_version (newValue)
        }
        
    }
    
    /// The copyright string in the asset header of the glTF file. This is set during import if present and export if non-empty. See the glTF asset header documentation for more information.
    final public var copyright: String {
        get {
            return get_copyright ()
        }
        
        set {
            set_copyright (newValue)
        }
        
    }
    
    /// The binary buffer attached to a .glb file.
    final public var glbData: PackedByteArray {
        get {
            return get_glb_data ()
        }
        
        set {
            set_glb_data (newValue)
        }
        
    }
    
    final public var useNamedSkinBinds: Bool {
        get {
            return get_use_named_skin_binds ()
        }
        
        set {
            set_use_named_skin_binds (newValue)
        }
        
    }
    
    final public var nodes: TypedArray<GLTFNode?> {
        get {
            return get_nodes ()
        }
        
        set {
            set_nodes (newValue)
        }
        
    }
    
    final public var buffers: TypedArray<PackedByteArray> {
        get {
            return get_buffers ()
        }
        
        set {
            set_buffers (newValue)
        }
        
    }
    
    final public var bufferViews: TypedArray<GLTFBufferView?> {
        get {
            return get_buffer_views ()
        }
        
        set {
            set_buffer_views (newValue)
        }
        
    }
    
    final public var accessors: TypedArray<GLTFAccessor?> {
        get {
            return get_accessors ()
        }
        
        set {
            set_accessors (newValue)
        }
        
    }
    
    final public var meshes: TypedArray<GLTFMesh?> {
        get {
            return get_meshes ()
        }
        
        set {
            set_meshes (newValue)
        }
        
    }
    
    final public var materials: TypedArray<Material?> {
        get {
            return get_materials ()
        }
        
        set {
            set_materials (newValue)
        }
        
    }
    
    /// The name of the scene. When importing, if not specified, this will be the file name. When exporting, if specified, the scene name will be saved to the glTF file.
    final public var sceneName: String {
        get {
            return get_scene_name ()
        }
        
        set {
            set_scene_name (newValue)
        }
        
    }
    
    /// The folder path associated with this glTF data. This is used to find other files the glTF file references, like images or binary buffers. This will be set during import when appending from a file, and will be set during export when writing to a file.
    final public var basePath: String {
        get {
            return get_base_path ()
        }
        
        set {
            set_base_path (newValue)
        }
        
    }
    
    /// The file name associated with this glTF data. If it ends with `.gltf`, this is text-based glTF, otherwise this is binary GLB. This will be set during import when appending from a file, and will be set during export when writing to a file. If writing to a buffer, this will be an empty string.
    final public var filename: String {
        get {
            return get_filename ()
        }
        
        set {
            set_filename (newValue)
        }
        
    }
    
    /// The root nodes of the glTF file. Typically, a glTF file will only have one scene, and therefore one root node. However, a glTF file may have multiple scenes and therefore multiple root nodes, which will be generated as siblings of each other and as children of the root node of the generated Godot scene.
    final public var rootNodes: PackedInt32Array {
        get {
            return get_root_nodes ()
        }
        
        set {
            set_root_nodes (newValue)
        }
        
    }
    
    final public var textures: TypedArray<GLTFTexture?> {
        get {
            return get_textures ()
        }
        
        set {
            set_textures (newValue)
        }
        
    }
    
    final public var textureSamplers: TypedArray<GLTFTextureSampler?> {
        get {
            return get_texture_samplers ()
        }
        
        set {
            set_texture_samplers (newValue)
        }
        
    }
    
    final public var images: TypedArray<Texture2D?> {
        get {
            return get_images ()
        }
        
        set {
            set_images (newValue)
        }
        
    }
    
    final public var skins: TypedArray<GLTFSkin?> {
        get {
            return get_skins ()
        }
        
        set {
            set_skins (newValue)
        }
        
    }
    
    final public var cameras: TypedArray<GLTFCamera?> {
        get {
            return get_cameras ()
        }
        
        set {
            set_cameras (newValue)
        }
        
    }
    
    final public var lights: TypedArray<GLTFLight?> {
        get {
            return get_lights ()
        }
        
        set {
            set_lights (newValue)
        }
        
    }
    
    final public var uniqueNames: TypedArray<String> {
        get {
            return get_unique_names ()
        }
        
        set {
            set_unique_names (newValue)
        }
        
    }
    
    final public var uniqueAnimationNames: TypedArray<String> {
        get {
            return get_unique_animation_names ()
        }
        
        set {
            set_unique_animation_names (newValue)
        }
        
    }
    
    final public var skeletons: TypedArray<GLTFSkeleton?> {
        get {
            return get_skeletons ()
        }
        
        set {
            set_skeletons (newValue)
        }
        
    }
    
    final public var createAnimations: Bool {
        get {
            return get_create_animations ()
        }
        
        set {
            set_create_animations (newValue)
        }
        
    }
    
    /// If `true`, forces all GLTFNodes in the document to be bones of a single ``Skeleton3D`` Godot node.
    final public var importAsSkeletonBones: Bool {
        get {
            return get_import_as_skeleton_bones ()
        }
        
        set {
            set_import_as_skeleton_bones (newValue)
        }
        
    }
    
    final public var animations: TypedArray<GLTFAnimation?> {
        get {
            return get_animations ()
        }
        
        set {
            set_animations (newValue)
        }
        
    }
    
    final public var handleBinaryImage: Int32 {
        get {
            return get_handle_binary_image ()
        }
        
        set {
            set_handle_binary_image (newValue)
        }
        
    }
    
    /// The baking fps of the animation for either import or export.
    final public var bakeFps: Double {
        get {
            return get_bake_fps ()
        }
        
        set {
            set_bake_fps (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_add_used_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_used_extension")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2678287736)!
            }
            
        }
        
    }()
    
    /// Appends an extension to the list of extensions used by this glTF file during serialization. If `required` is `true`, the extension will also be added to the list of required extensions. Do not run this in ``GLTFDocumentExtension/_exportPost(state:)``, as that stage is too late to add extensions. The final list is sorted alphabetically.
    public final func addUsedExtension(extensionName: String, required: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let extensionName = GString(extensionName)
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: required) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFState.method_add_used_extension, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_append_data_to_buffers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_data_to_buffers")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1460416665)!
            }
            
        }
        
    }()
    
    /// Appends the given byte array data to the buffers and creates a ``GLTFBufferView`` for it. The index of the destination ``GLTFBufferView`` is returned. If `deduplication` is `true`, the buffers will first be searched for duplicate data, otherwise new bytes will always be appended.
    public final func appendDataToBuffers(data: PackedByteArray, deduplication: Bool) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: deduplication) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFState.method_append_data_to_buffers, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_append_gltf_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_gltf_node")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3562288551)!
            }
            
        }
        
    }()
    
    /// Append the given ``GLTFNode`` to the state, and return its new index. This can be used to export one Godot node as multiple glTF nodes, or inject new glTF nodes at import time. On import, this must be called before ``GLTFDocumentExtension/_generateSceneNode(state:gltfNode:sceneParent:)`` finishes for the parent node. On export, this must be called before ``GLTFDocumentExtension/_exportNode(state:gltfNode:json:node:)`` runs for the parent node.
    /// 
    /// The `godotSceneNode` parameter is the Godot scene node that corresponds to this glTF node. This is highly recommended to be set to a valid node, but may be `null` if there is no corresponding Godot scene node. One Godot scene node may be used for multiple glTF nodes, so if exporting multiple glTF nodes for one Godot scene node, use the same Godot scene node for each.
    /// 
    /// The `parentNodeIndex` parameter is the index of the parent ``GLTFNode`` in the state. If `-1`, the node will be a root node, otherwise the new node will be added to the parent's list of children. The index will also be written to the ``GLTFNode/parent`` property of the new node.
    /// 
    public final func appendGltfNode(_ gltfNode: GLTFNode?, godotSceneNode: Node?, parentNodeIndex: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: gltfNode?.handle) { pArg0 in
            withUnsafePointer(to: godotSceneNode?.handle) { pArg1 in
                withUnsafePointer(to: parentNodeIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GLTFState.method_append_gltf_node, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_json: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_json")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_json() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(GLTFState.method_get_json, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_json: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_json")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155329257)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_json(_ json: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: json.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_json, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_major_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_major_version")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_major_version() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_major_version, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_major_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_major_version")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_major_version(_ majorVersion: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: majorVersion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_major_version, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_minor_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_minor_version")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_minor_version() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_minor_version, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_minor_version: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_minor_version")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_minor_version(_ minorVersion: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: minorVersion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_minor_version, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_copyright: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_copyright")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_copyright() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFState.method_get_copyright, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_copyright: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_copyright")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_copyright(_ copyright: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let copyright = GString(copyright)
        withUnsafePointer(to: copyright.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_copyright, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_glb_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_glb_data")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2115431945)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_glb_data() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(GLTFState.method_get_glb_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_glb_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_glb_data")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2971499966)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_glb_data(_ glbData: PackedByteArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: glbData.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_glb_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_named_skin_binds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_named_skin_binds")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_named_skin_binds() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFState.method_get_use_named_skin_binds, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_use_named_skin_binds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_named_skin_binds")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_named_skin_binds(_ useNamedSkinBinds: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: useNamedSkinBinds) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_use_named_skin_binds, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_nodes")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of all ``GLTFNode``s in the glTF file. These are the nodes that ``GLTFNode/children`` and ``rootNodes`` refer to. This includes nodes that may not be generated in the Godot scene, or nodes that may generate multiple Godot scene nodes.
    fileprivate final func get_nodes() -> TypedArray<GLTFNode?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFNode?>(takingOver: _result)
    }
    
    fileprivate static let method_set_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_nodes")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``GLTFNode``s in the state. These are the nodes that ``GLTFNode/children`` and ``rootNodes`` refer to. Some of the nodes set here may not be generated in the Godot scene, or may generate multiple Godot scene nodes.
    fileprivate final func set_nodes(_ nodes: TypedArray<GLTFNode?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: nodes.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_buffers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_buffers")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_buffers() -> TypedArray<PackedByteArray> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_buffers, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<PackedByteArray>(takingOver: _result)
    }
    
    fileprivate static let method_set_buffers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_buffers")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_buffers(_ buffers: TypedArray<PackedByteArray>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: buffers.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_buffers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_buffer_views: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_buffer_views")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_buffer_views() -> TypedArray<GLTFBufferView?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_buffer_views, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFBufferView?>(takingOver: _result)
    }
    
    fileprivate static let method_set_buffer_views: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_buffer_views")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_buffer_views(_ bufferViews: TypedArray<GLTFBufferView?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: bufferViews.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_buffer_views, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_accessors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_accessors")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_accessors() -> TypedArray<GLTFAccessor?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_accessors, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFAccessor?>(takingOver: _result)
    }
    
    fileprivate static let method_set_accessors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_accessors")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_accessors(_ accessors: TypedArray<GLTFAccessor?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: accessors.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_accessors, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_meshes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_meshes")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of all ``GLTFMesh``es in the glTF file. These are the meshes that the ``GLTFNode/mesh`` index refers to.
    fileprivate final func get_meshes() -> TypedArray<GLTFMesh?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_meshes, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFMesh?>(takingOver: _result)
    }
    
    fileprivate static let method_set_meshes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_meshes")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``GLTFMesh``es in the state. These are the meshes that the ``GLTFNode/mesh`` index refers to.
    fileprivate final func set_meshes(_ meshes: TypedArray<GLTFMesh?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: meshes.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_meshes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_animation_players_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation_players_count")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3744713108)!
            }
            
        }
        
    }()
    
    /// Returns the number of ``AnimationPlayer`` nodes in this ``GLTFState``. These nodes are only used during the export process when converting Godot ``AnimationPlayer`` nodes to glTF animations.
    public final func getAnimationPlayersCount(idx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_get_animation_players_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_animation_player: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation_player")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 925043400)!
            }
            
        }
        
    }()
    
    /// Returns the ``AnimationPlayer`` node with the given index. These nodes are only used during the export process when converting Godot ``AnimationPlayer`` nodes to glTF animations.
    public final func getAnimationPlayer(idx: Int32) -> AnimationPlayer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_get_animation_player, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_materials: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_materials")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_materials() -> TypedArray<Material?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_materials, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Material?>(takingOver: _result)
    }
    
    fileprivate static let method_set_materials: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_materials")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_materials(_ materials: TypedArray<Material?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: materials.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_materials, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scene_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scene_name")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scene_name() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFState.method_get_scene_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_scene_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scene_name")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scene_name(_ sceneName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let sceneName = GString(sceneName)
        withUnsafePointer(to: sceneName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_scene_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_base_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_base_path")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_base_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFState.method_get_base_path, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_base_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_base_path")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_base_path(_ basePath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let basePath = GString(basePath)
        withUnsafePointer(to: basePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_base_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_filename: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_filename")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_filename() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFState.method_get_filename, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_filename: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filename")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_filename(_ filename: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let filename = GString(filename)
        withUnsafePointer(to: filename.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_filename, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_nodes")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 969006518)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_nodes() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(GLTFState.method_get_root_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_root_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_nodes")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_nodes(_ rootNodes: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rootNodes.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_root_nodes, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_textures: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_textures")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_textures() -> TypedArray<GLTFTexture?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_textures, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFTexture?>(takingOver: _result)
    }
    
    fileprivate static let method_set_textures: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_textures")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_textures(_ textures: TypedArray<GLTFTexture?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textures.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_textures, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_samplers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_samplers")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Retrieves the array of texture samplers that are used by the textures contained in the glTF.
    fileprivate final func get_texture_samplers() -> TypedArray<GLTFTextureSampler?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_texture_samplers, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFTextureSampler?>(takingOver: _result)
    }
    
    fileprivate static let method_set_texture_samplers: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_samplers")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the array of texture samplers that are used by the textures contained in the glTF.
    fileprivate final func set_texture_samplers(_ textureSamplers: TypedArray<GLTFTextureSampler?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureSamplers.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_texture_samplers, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_images: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_images")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Gets the images of the glTF file as an array of ``Texture2D``s. These are the images that the ``GLTFTexture/srcImage`` index refers to.
    fileprivate final func get_images() -> TypedArray<Texture2D?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_images, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<Texture2D?>(takingOver: _result)
    }
    
    fileprivate static let method_set_images: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_images")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the images in the state stored as an array of ``Texture2D``s. This can be used during export. These are the images that the ``GLTFTexture/srcImage`` index refers to.
    fileprivate final func set_images(_ images: TypedArray<Texture2D?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: images.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_images, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skins: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skins")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of all ``GLTFSkin``s in the glTF file. These are the skins that the ``GLTFNode/skin`` index refers to.
    fileprivate final func get_skins() -> TypedArray<GLTFSkin?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_skins, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFSkin?>(takingOver: _result)
    }
    
    fileprivate static let method_set_skins: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skins")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``GLTFSkin``s in the state. These are the skins that the ``GLTFNode/skin`` index refers to.
    fileprivate final func set_skins(_ skins: TypedArray<GLTFSkin?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skins.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_skins, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cameras: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cameras")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of all ``GLTFCamera``s in the glTF file. These are the cameras that the ``GLTFNode/camera`` index refers to.
    fileprivate final func get_cameras() -> TypedArray<GLTFCamera?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_cameras, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFCamera?>(takingOver: _result)
    }
    
    fileprivate static let method_set_cameras: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cameras")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``GLTFCamera``s in the state. These are the cameras that the ``GLTFNode/camera`` index refers to.
    fileprivate final func set_cameras(_ cameras: TypedArray<GLTFCamera?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: cameras.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_cameras, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_lights: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_lights")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of all ``GLTFLight``s in the glTF file. These are the lights that the ``GLTFNode/light`` index refers to.
    fileprivate final func get_lights() -> TypedArray<GLTFLight?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_lights, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFLight?>(takingOver: _result)
    }
    
    fileprivate static let method_set_lights: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_lights")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``GLTFLight``s in the state. These are the lights that the ``GLTFNode/light`` index refers to.
    fileprivate final func set_lights(_ lights: TypedArray<GLTFLight?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lights.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_lights, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_unique_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_unique_names")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of unique node names. This is used in both the import process and export process.
    fileprivate final func get_unique_names() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_unique_names, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method_set_unique_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_unique_names")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the unique node names in the state. This is used in both the import process and export process.
    fileprivate final func set_unique_names(_ uniqueNames: TypedArray<String>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uniqueNames.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_unique_names, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_unique_animation_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_unique_animation_names")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of unique animation names. This is only used during the import process.
    fileprivate final func get_unique_animation_names() -> TypedArray<String> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_unique_animation_names, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<String>(takingOver: _result)
    }
    
    fileprivate static let method_set_unique_animation_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_unique_animation_names")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the unique animation names in the state. This is only used during the import process.
    fileprivate final func set_unique_animation_names(_ uniqueAnimationNames: TypedArray<String>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uniqueAnimationNames.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_unique_animation_names, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skeletons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skeletons")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of all ``GLTFSkeleton``s in the glTF file. These are the skeletons that the ``GLTFNode/skeleton`` index refers to.
    fileprivate final func get_skeletons() -> TypedArray<GLTFSkeleton?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_skeletons, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFSkeleton?>(takingOver: _result)
    }
    
    fileprivate static let method_set_skeletons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skeletons")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``GLTFSkeleton``s in the state. These are the skeletons that the ``GLTFNode/skeleton`` index refers to.
    fileprivate final func set_skeletons(_ skeletons: TypedArray<GLTFSkeleton?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skeletons.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_skeletons, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_create_animations: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_create_animations")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_create_animations() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFState.method_get_create_animations, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_create_animations: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_create_animations")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_create_animations(_ createAnimations: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: createAnimations) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_create_animations, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_import_as_skeleton_bones: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_import_as_skeleton_bones")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_import_as_skeleton_bones() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GLTFState.method_get_import_as_skeleton_bones, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_import_as_skeleton_bones: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_import_as_skeleton_bones")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_import_as_skeleton_bones(_ importAsSkeletonBones: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: importAsSkeletonBones) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_import_as_skeleton_bones, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_animations: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animations")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns an array of all ``GLTFAnimation``s in the glTF file. When importing, these will be generated as animations in an ``AnimationPlayer`` node. When exporting, these will be generated from Godot ``AnimationPlayer`` nodes.
    fileprivate final func get_animations() -> TypedArray<GLTFAnimation?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_animations, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<GLTFAnimation?>(takingOver: _result)
    }
    
    fileprivate static let method_set_animations: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_animations")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the ``GLTFAnimation``s in the state. When importing, these will be generated as animations in an ``AnimationPlayer`` node. When exporting, these will be generated from Godot ``AnimationPlayer`` nodes.
    fileprivate final func set_animations(_ animations: TypedArray<GLTFAnimation?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: animations.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_animations, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scene_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scene_node")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4253421667)!
            }
            
        }
        
    }()
    
    /// Returns the Godot scene node that corresponds to the same index as the ``GLTFNode`` it was generated from. This is the inverse of ``getNodeIndex(sceneNode:)``. Useful during the import process.
    /// 
    /// > Note: Not every ``GLTFNode`` will have a scene node generated, and not every generated scene node will have a corresponding ``GLTFNode``. If there is no scene node for this ``GLTFNode`` index, `null` is returned.
    /// 
    public final func getSceneNode(idx: Int32) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_get_scene_node, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_node_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_index")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1205807060)!
            }
            
        }
        
    }()
    
    /// Returns the index of the ``GLTFNode`` corresponding to this Godot scene node. This is the inverse of ``getSceneNode(idx:)``. Useful during the export process.
    /// 
    /// > Note: Not every Godot scene node will have a corresponding ``GLTFNode``, and not every ``GLTFNode`` will have a scene node generated. If there is no ``GLTFNode`` index for this scene node, `-1` is returned.
    /// 
    public final func getNodeIndex(sceneNode: Node?) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: sceneNode?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_get_node_index, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_additional_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_additional_data")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2138907829)!
            }
            
        }
        
    }()
    
    /// Gets additional arbitrary data in this ``GLTFState`` instance. This can be used to keep per-file state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the glTF file), and the return value can be anything you set. If nothing was set, the return value is `null`.
    /// 
    public final func getAdditionalData(extensionName: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_get_additional_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_additional_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_additional_data")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Sets additional arbitrary data in this ``GLTFState`` instance. This can be used to keep per-file state data in ``GLTFDocumentExtension`` classes, which is important because they are stateless.
    /// 
    /// The first argument should be the ``GLTFDocumentExtension`` name (does not have to match the extension name in the glTF file), and the second argument can be anything you want.
    /// 
    public final func setAdditionalData(extensionName: StringName, additionalData: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: extensionName.content) { pArg0 in
            withUnsafePointer(to: additionalData.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFState.method_set_additional_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_handle_binary_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_handle_binary_image")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func get_handle_binary_image() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GLTFState.method_get_handle_binary_image, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_handle_binary_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_handle_binary_image")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// 
    fileprivate final func set_handle_binary_image(_ method: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: method) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_handle_binary_image, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_bake_fps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bake_fps")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_bake_fps(_ value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: value) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFState.method_set_bake_fps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bake_fps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bake_fps")
        return withUnsafePointer(to: &GLTFState.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_bake_fps() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(GLTFState.method_get_bake_fps, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

