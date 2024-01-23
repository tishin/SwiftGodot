// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Describes a mapping of bone names for retargeting ``Skeleton3D`` into common names defined by a ``SkeletonProfile``.
/// 
/// This class contains a dictionary that uses a list of bone names in ``SkeletonProfile`` as key names.
/// 
/// By assigning the actual ``Skeleton3D`` bone name as the key value, it maps the ``Skeleton3D`` to the ``SkeletonProfile``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``boneMapUpdated``
/// - ``profileUpdated``
open class BoneMap: Resource {
    override open class var godotClassName: StringName { "BoneMap" }
    
    /* Properties */
    
    /// A ``SkeletonProfile`` of the mapping target. Key names in the ``BoneMap`` are synchronized with it.
    final public var profile: SkeletonProfile? {
        get {
            return get_profile ()
        }
        
        set {
            set_profile (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_get_profile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_profile")
        return withUnsafePointer (to: &BoneMap.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4291782652)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_profile ()-> SkeletonProfile? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (BoneMap.method_get_profile, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_profile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_profile")
        return withUnsafePointer (to: &BoneMap.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3870374136)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_profile (_ profile: SkeletonProfile?) {
        #if true
        
        var copy_profile_handle = profile?.handle
        
        gi.object_method_bind_ptrcall_v (BoneMap.method_set_profile, UnsafeMutableRawPointer (mutating: handle), nil, &copy_profile_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: profile?.handle) { p0 in
        _args.append (profile == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (BoneMap.method_set_profile, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_skeleton_bone_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_skeleton_bone_name")
        return withUnsafePointer (to: &BoneMap.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1965194235)!
            }
            
        }
        
    }()
    
    /// Returns a skeleton bone name is mapped to `profileBoneName`.
    /// 
    /// In the retargeting process, the returned bone name is the bone name of the source skeleton.
    /// 
    public final func getSkeletonBoneName (profileBoneName: StringName)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (BoneMap.method_get_skeleton_bone_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &profileBoneName.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &profileBoneName.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BoneMap.method_get_skeleton_bone_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_set_skeleton_bone_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_skeleton_bone_name")
        return withUnsafePointer (to: &BoneMap.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Maps a skeleton bone name to `profileBoneName`.
    /// 
    /// In the retargeting process, the setting bone name is the bone name of the source skeleton.
    /// 
    public final func setSkeletonBoneName (profileBoneName: StringName, skeletonBoneName: StringName) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (BoneMap.method_set_skeleton_bone_name, UnsafeMutableRawPointer (mutating: handle), nil, &profileBoneName.content, &skeletonBoneName.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &profileBoneName.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &skeletonBoneName.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (BoneMap.method_set_skeleton_bone_name, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_find_profile_bone_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("find_profile_bone_name")
        return withUnsafePointer (to: &BoneMap.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1965194235)!
            }
            
        }
        
    }()
    
    /// Returns a profile bone name having `skeletonBoneName`. If not found, an empty ``StringName`` will be returned.
    /// 
    /// In the retargeting process, the returned bone name is the bone name of the target skeleton.
    /// 
    public final func findProfileBoneName (skeletonBoneName: StringName)-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (BoneMap.method_find_profile_bone_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &skeletonBoneName.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &skeletonBoneName.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BoneMap.method_find_profile_bone_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result
        }
        
        #endif
    }
    
    // Signals 
    /// This signal is emitted when change the key value in the ``BoneMap``. This is used to validate mapping and to update ``BoneMap`` editor.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.boneMapUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var boneMapUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "bone_map_updated") }
    
    /// This signal is emitted when change the value in profile or change the reference of profile. This is used to update key names in the ``BoneMap`` and to redraw the ``BoneMap`` editor.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.profileUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var profileUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "profile_updated") }
    
}

