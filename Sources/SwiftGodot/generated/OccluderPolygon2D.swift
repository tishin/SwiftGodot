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


/// Defines a 2D polygon for LightOccluder2D.
/// 
/// Editor facility that helps you draw a 2D polygon used as resource for ``LightOccluder2D``.
open class OccluderPolygon2D: Resource {
    private static var className = StringName("OccluderPolygon2D")
    override open class var godotClassName: StringName { className }
    public enum CullMode: Int64, CaseIterable {
        /// Culling is disabled. See ``cullMode``.
        case disabled = 0 // CULL_DISABLED
        /// Culling is performed in the clockwise direction. See ``cullMode``.
        case clockwise = 1 // CULL_CLOCKWISE
        /// Culling is performed in the counterclockwise direction. See ``cullMode``.
        case counterClockwise = 2 // CULL_COUNTER_CLOCKWISE
    }
    
    
    /* Properties */
    
    /// If `true`, closes the polygon. A closed OccluderPolygon2D occludes the light coming from any direction. An opened OccluderPolygon2D occludes the light only at its outline's direction.
    final public var closed: Bool {
        get {
            return is_closed ()
        }
        
        set {
            set_closed (newValue)
        }
        
    }
    
    /// The culling mode to use.
    final public var cullMode: OccluderPolygon2D.CullMode {
        get {
            return get_cull_mode ()
        }
        
        set {
            set_cull_mode (newValue)
        }
        
    }
    
    /// A ``Vector2`` array with the index for polygon's vertices positions.
    final public var polygon: PackedVector2Array {
        get {
            return get_polygon ()
        }
        
        set {
            set_polygon (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_closed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_closed")
        return withUnsafePointer(to: &OccluderPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_closed(_ closed: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: closed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OccluderPolygon2D.method_set_closed, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_closed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_closed")
        return withUnsafePointer(to: &OccluderPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_closed() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OccluderPolygon2D.method_is_closed, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_cull_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cull_mode")
        return withUnsafePointer(to: &OccluderPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3500863002)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cull_mode(_ cullMode: OccluderPolygon2D.CullMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: cullMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OccluderPolygon2D.method_set_cull_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cull_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cull_mode")
        return withUnsafePointer(to: &OccluderPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 33931036)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cull_mode() -> OccluderPolygon2D.CullMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(OccluderPolygon2D.method_get_cull_mode, handle, nil, &_result)
        return OccluderPolygon2D.CullMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_polygon")
        return withUnsafePointer(to: &OccluderPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_polygon(_ polygon: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: polygon.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OccluderPolygon2D.method_set_polygon, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_polygon")
        return withUnsafePointer(to: &OccluderPolygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polygon() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(OccluderPolygon2D.method_get_polygon, handle, nil, &_result.content)
        return _result
    }
    
}

