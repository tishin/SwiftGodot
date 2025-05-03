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


/// Provides virtual methods that can be overridden to create custom ``PhysicsDirectSpaceState3D`` implementations.
/// 
/// This class extends ``PhysicsDirectSpaceState3D`` by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.
/// 
/// Intended for use with GDExtension to create custom implementations of ``PhysicsDirectSpaceState3D``.
/// 
open class PhysicsDirectSpaceState3DExtension: PhysicsDirectSpaceState3D {
    private static var className = StringName("PhysicsDirectSpaceState3DExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_closest_point_to_object_volume: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_closest_point_to_object_volume")
        return withUnsafePointer(to: &PhysicsDirectSpaceState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2056183332)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getClosestPointToObjectVolume(object: RID, point: Vector3) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: object.content) { pArg0 in
            withUnsafePointer(to: point) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(PhysicsDirectSpaceState3DExtension.method__get_closest_point_to_object_volume, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_body_excluded_from_query: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_body_excluded_from_query")
        return withUnsafePointer(to: &PhysicsDirectSpaceState3DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// 
    public final func isBodyExcludedFromQuery(body: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectSpaceState3DExtension.method_is_body_excluded_from_query, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_closest_point_to_object_volume":
                return _PhysicsDirectSpaceState3DExtension_proxy_get_closest_point_to_object_volume
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _PhysicsDirectSpaceState3DExtension_proxy_get_closest_point_to_object_volume (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? PhysicsDirectSpaceState3DExtension else { return }
    let ret = swiftObject._getClosestPointToObjectVolume (object: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), point: args [1]!.assumingMemoryBound (to: Vector3.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector3.self)
}

