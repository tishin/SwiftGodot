// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Contains baked lightmap and dynamic object probe data for ``LightmapGI``.
/// 
/// ``LightmapGIData`` contains baked lightmap and dynamic object probe data for ``LightmapGI``. It is replaced every time lightmaps are baked in ``LightmapGI``.
open class LightmapGIData: Resource {
    override open class var godotClassName: StringName { "LightmapGIData" }
    
    /* Properties */
    
    /// The lightmap atlas textures generated by the lightmapper.
    final public var lightmapTextures: ObjectCollection<TextureLayered> {
        get {
            return get_lightmap_textures ()
        }
        
        set {
            set_lightmap_textures (newValue)
        }
        
    }
    
    final public var usesSphericalHarmonics: Bool {
        get {
            return is_using_spherical_harmonics ()
        }
        
        set {
            set_uses_spherical_harmonics (newValue)
        }
        
    }
    
    /// The lightmap atlas texture generated by the lightmapper.
    /// 
    /// _Deprecated._ The lightmap atlas can now have multiple textures. See ``lightmapTextures``.
    /// 
    final public var lightTexture: TextureLayered? {
        get {
            return get_light_texture ()
        }
        
        set {
            set_light_texture (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_lightmap_textures: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_lightmap_textures")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_lightmap_textures (_ lightTextures: ObjectCollection<TextureLayered>) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (LightmapGIData.method_set_lightmap_textures, UnsafeMutableRawPointer (mutating: handle), nil, &lightTextures.array.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &lightTextures.array.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (LightmapGIData.method_set_lightmap_textures, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_lightmap_textures: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_lightmap_textures")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_lightmap_textures ()-> ObjectCollection<TextureLayered> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (LightmapGIData.method_get_lightmap_textures, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return ObjectCollection<TextureLayered>(content: _result)
    }
    
    fileprivate static var method_set_uses_spherical_harmonics: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_uses_spherical_harmonics")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// If `usesSphericalHarmonics` is `true`, tells the engine to treat the lightmap data as if it was baked with directional information.
    /// 
    /// > Note: Changing this value on already baked lightmaps will not cause them to be baked again. This means the material appearance will look incorrect until lightmaps are baked again, in which case the value set here is discarded as the entire ``LightmapGIData`` resource is replaced by the lightmapper.
    /// 
    fileprivate final func set_uses_spherical_harmonics (_ usesSphericalHarmonics: Bool) {
        #if true
        
        var copy_uses_spherical_harmonics = usesSphericalHarmonics
        
        gi.object_method_bind_ptrcall_v (LightmapGIData.method_set_uses_spherical_harmonics, UnsafeMutableRawPointer (mutating: handle), nil, &copy_uses_spherical_harmonics)
        
        #else
        
        var copy_uses_spherical_harmonics = usesSphericalHarmonics
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_uses_spherical_harmonics) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (LightmapGIData.method_set_uses_spherical_harmonics, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_using_spherical_harmonics: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_using_spherical_harmonics")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// If `true`, lightmaps were baked with directional information. See also ``LightmapGI/directional``.
    fileprivate final func is_using_spherical_harmonics ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (LightmapGIData.method_is_using_spherical_harmonics, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_add_user: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_user")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4272570515)!
            }
            
        }
        
    }()
    
    /// Adds an object that is considered baked within this ``LightmapGIData``.
    public final func addUser (path: NodePath, uvScale: Rect2, sliceIndex: Int32, subInstance: Int32) {
        #if true
        
        var copy_uv_scale = uvScale
        var copy_slice_index: Int = Int (sliceIndex)
        var copy_sub_instance: Int = Int (subInstance)
        
        gi.object_method_bind_ptrcall_v (LightmapGIData.method_add_user, UnsafeMutableRawPointer (mutating: handle), nil, &path.content, &copy_uv_scale, &copy_slice_index, &copy_sub_instance)
        
        #else
        
        var copy_uv_scale = uvScale
        var copy_slice_index: Int = Int (sliceIndex)
        var copy_sub_instance: Int = Int (subInstance)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &path.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_uv_scale) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_slice_index) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_sub_instance) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (LightmapGIData.method_add_user, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_user_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_user_count")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of objects that are considered baked within this ``LightmapGIData``.
    public final func getUserCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (LightmapGIData.method_get_user_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_user_path: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_user_path")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the ``NodePath`` of the baked object at index `userIdx`.
    public final func getUserPath (userIdx: Int32)-> NodePath {
        let _result: NodePath = NodePath ()
        #if true
        
        var copy_user_idx: Int = Int (userIdx)
        
        gi.object_method_bind_ptrcall_v (LightmapGIData.method_get_user_path, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_user_idx)
        return _result
        #else
        
        var copy_user_idx: Int = Int (userIdx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_user_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (LightmapGIData.method_get_user_path, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_clear_users: GDExtensionMethodBindPtr = {
        let methodName = StringName ("clear_users")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear all objects that are considered baked within this ``LightmapGIData``.
    public final func clearUsers () {
        gi.object_method_bind_ptrcall (LightmapGIData.method_clear_users, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_set_light_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_light_texture")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1278366092)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_light_texture (_ lightTexture: TextureLayered?) {
        #if true
        
        var copy_light_texture_handle = lightTexture?.handle
        
        gi.object_method_bind_ptrcall_v (LightmapGIData.method_set_light_texture, UnsafeMutableRawPointer (mutating: handle), nil, &copy_light_texture_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: lightTexture?.handle) { p0 in
        _args.append (lightTexture == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (LightmapGIData.method_set_light_texture, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_light_texture: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_light_texture")
        return withUnsafePointer (to: &LightmapGIData.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3984243839)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_light_texture ()-> TextureLayered? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (LightmapGIData.method_get_light_texture, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}

