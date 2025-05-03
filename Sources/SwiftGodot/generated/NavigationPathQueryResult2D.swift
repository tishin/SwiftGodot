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


/// Represents the result of a 2D pathfinding query.
/// 
/// This class stores the result of a 2D navigation path query from the ``NavigationServer2D``.
open class NavigationPathQueryResult2D: RefCounted {
    private static var className = StringName("NavigationPathQueryResult2D")
    override open class var godotClassName: StringName { className }
    public enum PathSegmentType: Int64, CaseIterable {
        /// This segment of the path goes through a region.
        case region = 0 // PATH_SEGMENT_TYPE_REGION
        /// This segment of the path goes through a link.
        case link = 1 // PATH_SEGMENT_TYPE_LINK
    }
    
    
    /* Properties */
    
    /// The resulting path array from the navigation query. All path array positions are in global coordinates. Without customized query parameters this is the same path as returned by ``NavigationServer2D/mapGetPath(map:origin:destination:optimize:navigationLayers:)``.
    final public var path: PackedVector2Array {
        get {
            return get_path ()
        }
        
        set {
            set_path (newValue)
        }
        
    }
    
    /// The type of navigation primitive (region or link) that each point of the path goes through.
    final public var pathTypes: PackedInt32Array {
        get {
            return get_path_types ()
        }
        
        set {
            set_path_types (newValue)
        }
        
    }
    
    /// The ``RID``s of the regions and links that each point of the path goes through.
    final public var pathRids: TypedArray<RID> {
        get {
            return get_path_rids ()
        }
        
        set {
            set_path_rids (newValue)
        }
        
    }
    
    /// The `ObjectID`s of the ``Object``s which manage the regions and links each point of the path goes through.
    final public var pathOwnerIds: PackedInt64Array {
        get {
            return get_path_owner_ids ()
        }
        
        set {
            set_path_owner_ids (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path(_ path: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_set_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_get_path, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_path_types: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_types")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3614634198)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_types(_ pathTypes: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pathTypes.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_set_path_types, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_types: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_types")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1930428628)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_types() -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt32Array = PackedInt32Array ()
        gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_get_path_types, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_path_rids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_rids")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_rids(_ pathRids: TypedArray<RID>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pathRids.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_set_path_rids, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_rids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_rids")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_rids() -> TypedArray<RID> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_get_path_rids, handle, nil, &_result)
        return TypedArray<RID>(takingOver: _result)
    }
    
    fileprivate static let method_set_path_owner_ids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_path_owner_ids")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3709968205)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_path_owner_ids(_ pathOwnerIds: PackedInt64Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pathOwnerIds.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_set_path_owner_ids, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_path_owner_ids: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_owner_ids")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 235988956)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_path_owner_ids() -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_get_path_owner_ids, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_reset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reset")
        return withUnsafePointer(to: &NavigationPathQueryResult2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Reset the result object to its initial state. This is useful to reuse the object across multiple queries.
    public final func reset() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationPathQueryResult2D.method_reset, handle, nil, nil)
        
    }
    
}

