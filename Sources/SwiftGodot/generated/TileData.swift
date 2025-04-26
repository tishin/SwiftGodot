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


/// Settings for a single tile in a ``TileSet``.
/// 
/// ``TileData`` object represents a single tile in a ``TileSet``. It is usually edited using the tileset editor, but it can be modified at runtime using ``TileMap/_tileDataRuntimeUpdate(layer:coords:tileData:)``.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``changed``
open class TileData: Object {
    private static var className = StringName("TileData")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// If `true`, the tile will have its texture flipped horizontally.
    final public var flipH: Bool {
        get {
            return get_flip_h ()
        }
        
        set {
            set_flip_h (newValue)
        }
        
    }
    
    /// If `true`, the tile will have its texture flipped vertically.
    final public var flipV: Bool {
        get {
            return get_flip_v ()
        }
        
        set {
            set_flip_v (newValue)
        }
        
    }
    
    /// If `true`, the tile will display transposed, i.e. with horizontal and vertical texture UVs swapped.
    final public var transpose: Bool {
        get {
            return get_transpose ()
        }
        
        set {
            set_transpose (newValue)
        }
        
    }
    
    /// Offsets the position of where the tile is drawn.
    final public var textureOrigin: Vector2i {
        get {
            return get_texture_origin ()
        }
        
        set {
            set_texture_origin (newValue)
        }
        
    }
    
    /// Color modulation of the tile.
    final public var modulate: Color {
        get {
            return get_modulate ()
        }
        
        set {
            set_modulate (newValue)
        }
        
    }
    
    /// The ``Material`` to use for this ``TileData``. This can be a ``CanvasItemMaterial`` to use the default shader, or a ``ShaderMaterial`` to use a custom shader.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
        }
        
    }
    
    /// Ordering index of this tile, relative to ``TileMap``.
    final public var zIndex: Int32 {
        get {
            return get_z_index ()
        }
        
        set {
            set_z_index (newValue)
        }
        
    }
    
    /// Vertical point of the tile used for determining y-sorted order.
    final public var ySortOrigin: Int32 {
        get {
            return get_y_sort_origin ()
        }
        
        set {
            set_y_sort_origin (newValue)
        }
        
    }
    
    /// ID of the terrain set that the tile uses.
    final public var terrainSet: Int32 {
        get {
            return get_terrain_set ()
        }
        
        set {
            set_terrain_set (newValue)
        }
        
    }
    
    /// ID of the terrain from the terrain set that the tile uses.
    final public var terrain: Int32 {
        get {
            return get_terrain ()
        }
        
        set {
            set_terrain (newValue)
        }
        
    }
    
    /// Relative probability of this tile being selected when drawing a pattern of random tiles.
    final public var probability: Double {
        get {
            return get_probability ()
        }
        
        set {
            set_probability (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_flip_h: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flip_h")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_h(_ flipH: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flipH) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_flip_h, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_flip_h: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_flip_h")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_flip_h() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TileData.method_get_flip_h, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_flip_v: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flip_v")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_v(_ flipV: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flipV) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_flip_v, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_flip_v: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_flip_v")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_flip_v() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TileData.method_get_flip_v, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_transpose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_transpose")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transpose(_ transpose: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: transpose) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_transpose, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_transpose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transpose")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transpose() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TileData.method_get_transpose, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_material")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2757459619)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_material(_ material: Material?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: material?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_material, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_material")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material() -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TileData.method_get_material, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_texture_origin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_origin")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_origin(_ textureOrigin: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureOrigin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_texture_origin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_origin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_origin")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_origin() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(TileData.method_get_texture_origin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_modulate")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_modulate(_ modulate: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: modulate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_modulate, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_modulate")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_modulate() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(TileData.method_get_modulate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_z_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_z_index")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_z_index(_ zIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: zIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_z_index, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_z_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_z_index")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_z_index() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TileData.method_get_z_index, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_y_sort_origin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_y_sort_origin")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_y_sort_origin(_ ySortOrigin: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ySortOrigin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_y_sort_origin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_y_sort_origin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_y_sort_origin")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_y_sort_origin() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TileData.method_get_y_sort_origin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_occluder_polygons_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_occluder_polygons_count")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the occluder polygon count in the TileSet occlusion layer with index `layerId`.
    public final func setOccluderPolygonsCount(layerId: Int32, polygonsCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonsCount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_occluder_polygons_count, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_occluder_polygons_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_occluder_polygons_count")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of occluder polygons of the tile in the TileSet occlusion layer with index `layerId`.
    public final func getOccluderPolygonsCount(layerId: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_get_occluder_polygons_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_occluder_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_occluder_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Adds an occlusion polygon to the tile on the TileSet occlusion layer with index `layerId`.
    public final func addOccluderPolygon(layerId: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_add_occluder_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_occluder_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_occluder_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Removes the polygon at index `polygonIndex` for TileSet occlusion layer with index `layerId`.
    public final func removeOccluderPolygon(layerId: Int32, polygonIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_remove_occluder_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_occluder_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_occluder_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 164249167)!
            }
            
        }
        
    }()
    
    /// Sets the occluder for polygon with index `polygonIndex` in the TileSet occlusion layer with index `layerId`.
    public final func setOccluderPolygon(layerId: Int32, polygonIndex: Int32, polygon: OccluderPolygon2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: polygon?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TileData.method_set_occluder_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_occluder_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_occluder_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 971166743)!
            }
            
        }
        
    }()
    
    /// Returns the occluder polygon at index `polygonIndex` from the TileSet occlusion layer with index `layerId`.
    /// 
    /// The `flipH`, `flipV`, and `transpose` parameters can be `true` to transform the returned polygon.
    /// 
    public final func getOccluderPolygon(layerId: Int32, polygonIndex: Int32, flipH: Bool = false, flipV: Bool = false, transpose: Bool = false) -> OccluderPolygon2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: flipH) { pArg2 in
                    withUnsafePointer(to: flipV) { pArg3 in
                        withUnsafePointer(to: transpose) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TileData.method_get_occluder_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_occluder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_occluder")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 914399637)!
            }
            
        }
        
    }()
    
    /// Sets the occluder for the TileSet occlusion layer with index `layerId`.
    public final func setOccluder(layerId: Int32, occluderPolygon: OccluderPolygon2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: occluderPolygon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_occluder, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_occluder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_occluder")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2377324099)!
            }
            
        }
        
    }()
    
    /// Returns the occluder polygon of the tile for the TileSet occlusion layer with index `layerId`.
    /// 
    /// `flipH`, `flipV`, and `transpose` allow transforming the returned polygon.
    /// 
    public final func getOccluder(layerId: Int32, flipH: Bool = false, flipV: Bool = false, transpose: Bool = false) -> OccluderPolygon2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: flipH) { pArg1 in
                withUnsafePointer(to: flipV) { pArg2 in
                    withUnsafePointer(to: transpose) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TileData.method_get_occluder, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_constant_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_constant_linear_velocity")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 163021252)!
            }
            
        }
        
    }()
    
    /// Sets the constant linear velocity. This does not move the tile. This linear velocity is applied to objects colliding with this tile. This is useful to create conveyor belts.
    public final func setConstantLinearVelocity(layerId: Int32, velocity: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: velocity) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_constant_linear_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant_linear_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant_linear_velocity")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2299179447)!
            }
            
        }
        
    }()
    
    /// Returns the constant linear velocity applied to objects colliding with this tile.
    public final func getConstantLinearVelocity(layerId: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_get_constant_linear_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_constant_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_constant_angular_velocity")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Sets the constant angular velocity. This does not rotate the tile. This angular velocity is applied to objects colliding with this tile.
    public final func setConstantAngularVelocity(layerId: Int32, velocity: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: velocity) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_constant_angular_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_constant_angular_velocity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_constant_angular_velocity")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339986948)!
            }
            
        }
        
    }()
    
    /// Returns the constant angular velocity applied to objects colliding with this tile.
    public final func getConstantAngularVelocity(layerId: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_get_constant_angular_velocity, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_polygons_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_polygons_count")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Sets the polygons count for TileSet physics layer with index `layerId`.
    public final func setCollisionPolygonsCount(layerId: Int32, polygonsCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonsCount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_collision_polygons_count, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_polygons_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_polygons_count")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns how many polygons the tile has for TileSet physics layer with index `layerId`.
    public final func getCollisionPolygonsCount(layerId: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_get_collision_polygons_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_collision_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_collision_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Adds a collision polygon to the tile on the given TileSet physics layer.
    public final func addCollisionPolygon(layerId: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_add_collision_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_collision_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_collision_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Removes the polygon at index `polygonIndex` for TileSet physics layer with index `layerId`.
    public final func removeCollisionPolygon(layerId: Int32, polygonIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_remove_collision_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_collision_polygon_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_polygon_points")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3230546541)!
            }
            
        }
        
    }()
    
    /// Sets the points of the polygon at index `polygonIndex` for TileSet physics layer with index `layerId`.
    public final func setCollisionPolygonPoints(layerId: Int32, polygonIndex: Int32, polygon: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: polygon.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TileData.method_set_collision_polygon_points, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_polygon_points: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_polygon_points")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 103942801)!
            }
            
        }
        
    }()
    
    /// Returns the points of the polygon at index `polygonIndex` for TileSet physics layer with index `layerId`.
    public final func getCollisionPolygonPoints(layerId: Int32, polygonIndex: Int32) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_get_collision_polygon_points, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_polygon_one_way: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_polygon_one_way")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1383440665)!
            }
            
        }
        
    }()
    
    /// Enables/disables one-way collisions on the polygon at index `polygonIndex` for TileSet physics layer with index `layerId`.
    public final func setCollisionPolygonOneWay(layerId: Int32, polygonIndex: Int32, oneWay: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: oneWay) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TileData.method_set_collision_polygon_one_way, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_collision_polygon_one_way: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_collision_polygon_one_way")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2522259332)!
            }
            
        }
        
    }()
    
    /// Returns whether one-way collisions are enabled for the polygon at index `polygonIndex` for TileSet physics layer with index `layerId`.
    public final func isCollisionPolygonOneWay(layerId: Int32, polygonIndex: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_is_collision_polygon_one_way, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_collision_polygon_one_way_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_collision_polygon_one_way_margin")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the one-way margin (for one-way platforms) of the polygon at index `polygonIndex` for TileSet physics layer with index `layerId`.
    public final func setCollisionPolygonOneWayMargin(layerId: Int32, polygonIndex: Int32, oneWayMargin: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: oneWayMargin) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TileData.method_set_collision_polygon_one_way_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_collision_polygon_one_way_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_collision_polygon_one_way_margin")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the one-way margin (for one-way platforms) of the polygon at index `polygonIndex` for TileSet physics layer with index `layerId`.
    public final func getCollisionPolygonOneWayMargin(layerId: Int32, polygonIndex: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: polygonIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_get_collision_polygon_one_way_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_terrain_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_terrain_set")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_terrain_set(_ terrainSet: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: terrainSet) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_terrain_set, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_terrain_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_terrain_set")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_terrain_set() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TileData.method_get_terrain_set, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_terrain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_terrain")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_terrain(_ terrain: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: terrain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_terrain, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_terrain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_terrain")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_terrain() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TileData.method_get_terrain, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_terrain_peering_bit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_terrain_peering_bit")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1084452308)!
            }
            
        }
        
    }()
    
    /// Sets the tile's terrain bit for the given `peeringBit` direction. To check that a direction is valid, use ``isValidTerrainPeeringBit(_:)``.
    public final func setTerrainPeeringBit(_ peeringBit: TileSet.CellNeighbor, terrain: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: peeringBit.rawValue) { pArg0 in
            withUnsafePointer(to: terrain) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_terrain_peering_bit, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_terrain_peering_bit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_terrain_peering_bit")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3831796792)!
            }
            
        }
        
    }()
    
    /// Returns the tile's terrain bit for the given `peeringBit` direction. To check that a direction is valid, use ``isValidTerrainPeeringBit(_:)``.
    public final func getTerrainPeeringBit(_ peeringBit: TileSet.CellNeighbor) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: peeringBit.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_get_terrain_peering_bit, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_valid_terrain_peering_bit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_valid_terrain_peering_bit")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 845723972)!
            }
            
        }
        
    }()
    
    /// Returns whether the given `peeringBit` direction is valid for this tile.
    public final func isValidTerrainPeeringBit(_ peeringBit: TileSet.CellNeighbor) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: peeringBit.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_is_valid_terrain_peering_bit, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_navigation_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_navigation_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2224691167)!
            }
            
        }
        
    }()
    
    /// Sets the navigation polygon for the TileSet navigation layer with index `layerId`.
    public final func setNavigationPolygon(layerId: Int32, navigationPolygon: NavigationPolygon?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: navigationPolygon?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_navigation_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_navigation_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_navigation_polygon")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2907127272)!
            }
            
        }
        
    }()
    
    /// Returns the navigation polygon of the tile for the TileSet navigation layer with index `layerId`.
    /// 
    /// `flipH`, `flipV`, and `transpose` allow transforming the returned polygon.
    /// 
    public final func getNavigationPolygon(layerId: Int32, flipH: Bool = false, flipV: Bool = false, transpose: Bool = false) -> NavigationPolygon? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: flipH) { pArg1 in
                withUnsafePointer(to: flipV) { pArg2 in
                    withUnsafePointer(to: transpose) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TileData.method_get_navigation_polygon, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_probability: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_probability")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_probability(_ probability: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: probability) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_set_probability, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_probability: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_probability")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_probability() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TileData.method_get_probability, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_custom_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_data")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 402577236)!
            }
            
        }
        
    }()
    
    /// Sets the tile's custom data value for the TileSet custom data layer with name `layerName`.
    public final func setCustomData(layerName: String, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let layerName = GString(layerName)
        withUnsafePointer(to: layerName.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_custom_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_data")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1868160156)!
            }
            
        }
        
    }()
    
    /// Returns the custom data value for custom data layer named `layerName`. To check if a custom data layer exists, use ``hasCustomData(layerName:)``.
    public final func getCustomData(layerName: String) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let layerName = GString(layerName)
        withUnsafePointer(to: layerName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_get_custom_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_has_custom_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_custom_data")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns whether there exists a custom data layer named `layerName`.
    public final func hasCustomData(layerName: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let layerName = GString(layerName)
        withUnsafePointer(to: layerName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_has_custom_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_custom_data_by_layer_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_custom_data_by_layer_id")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2152698145)!
            }
            
        }
        
    }()
    
    /// Sets the tile's custom data value for the TileSet custom data layer with index `layerId`.
    public final func setCustomDataByLayerId(_ layerId: Int32, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileData.method_set_custom_data_by_layer_id, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_custom_data_by_layer_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_custom_data_by_layer_id")
        return withUnsafePointer(to: &TileData.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4227898402)!
            }
            
        }
        
    }()
    
    /// Returns the custom data value for custom data layer with index `layerId`.
    public final func getCustomDataByLayerId(_ layerId: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: layerId) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileData.method_get_custom_data_by_layer_id, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    // Signals 
    /// Emitted when any of the properties are changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.changed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var changed: SimpleSignal { SimpleSignal (target: self, signalName: "changed") }
    
}

