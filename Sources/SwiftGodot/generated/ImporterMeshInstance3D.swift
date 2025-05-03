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


open class ImporterMeshInstance3D: Node3D {
    private static var className = StringName("ImporterMeshInstance3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    final public var mesh: ImporterMesh? {
        get {
            return get_mesh ()
        }
        
        set {
            set_mesh (newValue)
        }
        
    }
    
    final public var skin: Skin? {
        get {
            return get_skin ()
        }
        
        set {
            set_skin (newValue)
        }
        
    }
    
    final public var skeletonPath: NodePath {
        get {
            return get_skeleton_path ()
        }
        
        set {
            set_skeleton_path (newValue)
        }
        
    }
    
    final public var layerMask: UInt32 {
        get {
            return get_layer_mask ()
        }
        
        set {
            set_layer_mask (newValue)
        }
        
    }
    
    final public var castShadow: GeometryInstance3D.ShadowCastingSetting {
        get {
            return get_cast_shadows_setting ()
        }
        
        set {
            set_cast_shadows_setting (newValue)
        }
        
    }
    
    final public var visibilityRangeBegin: Double {
        get {
            return get_visibility_range_begin ()
        }
        
        set {
            set_visibility_range_begin (newValue)
        }
        
    }
    
    final public var visibilityRangeBeginMargin: Double {
        get {
            return get_visibility_range_begin_margin ()
        }
        
        set {
            set_visibility_range_begin_margin (newValue)
        }
        
    }
    
    final public var visibilityRangeEnd: Double {
        get {
            return get_visibility_range_end ()
        }
        
        set {
            set_visibility_range_end (newValue)
        }
        
    }
    
    final public var visibilityRangeEndMargin: Double {
        get {
            return get_visibility_range_end_margin ()
        }
        
        set {
            set_visibility_range_end_margin (newValue)
        }
        
    }
    
    final public var visibilityRangeFadeMode: GeometryInstance3D.VisibilityRangeFadeMode {
        get {
            return get_visibility_range_fade_mode ()
        }
        
        set {
            set_visibility_range_fade_mode (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_mesh")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2255166972)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_mesh(_ mesh: ImporterMesh?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_mesh, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_mesh")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3161779525)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_mesh() -> ImporterMesh? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_mesh, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_skin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3971435618)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skin(_ skin: Skin?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skin?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_skin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2074563878)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skin() -> Skin? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_skin, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_skeleton_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skeleton_path")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skeleton_path(_ skeletonPath: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skeletonPath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_skeleton_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skeleton_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skeleton_path")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skeleton_path() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_skeleton_path, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_layer_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_layer_mask")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_layer_mask(_ layerMask: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerMask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_layer_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_layer_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_layer_mask")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_layer_mask() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_layer_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_cast_shadows_setting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cast_shadows_setting")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 856677339)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cast_shadows_setting(_ shadowCastingSetting: GeometryInstance3D.ShadowCastingSetting) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shadowCastingSetting.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_cast_shadows_setting, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cast_shadows_setting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cast_shadows_setting")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3383019359)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_cast_shadows_setting() -> GeometryInstance3D.ShadowCastingSetting {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_cast_shadows_setting, handle, nil, &_result)
        return GeometryInstance3D.ShadowCastingSetting (rawValue: _result)!
    }
    
    fileprivate static let method_set_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_range_end_margin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_end_margin(_ distance: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: distance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_visibility_range_end_margin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_range_end_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_range_end_margin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_end_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_visibility_range_end_margin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_visibility_range_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_range_end")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_end(_ distance: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: distance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_visibility_range_end, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_range_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_range_end")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_end() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_visibility_range_end, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_range_begin_margin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_begin_margin(_ distance: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: distance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_visibility_range_begin_margin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_range_begin_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_range_begin_margin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_begin_margin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_visibility_range_begin_margin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_visibility_range_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_range_begin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_begin(_ distance: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: distance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_visibility_range_begin, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_range_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_range_begin")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_begin() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_visibility_range_begin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_range_fade_mode")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1440117808)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_range_fade_mode(_ mode: GeometryInstance3D.VisibilityRangeFadeMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_set_visibility_range_fade_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_range_fade_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_range_fade_mode")
        return withUnsafePointer(to: &ImporterMeshInstance3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2067221882)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_range_fade_mode() -> GeometryInstance3D.VisibilityRangeFadeMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(ImporterMeshInstance3D.method_get_visibility_range_fade_mode, handle, nil, &_result)
        return GeometryInstance3D.VisibilityRangeFadeMode (rawValue: _result)!
    }
    
}

