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


/// A 2D polygon.
/// 
/// A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.
open class Polygon2D: Node2D {
    private static var className = StringName("Polygon2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The polygon's fill color. If ``texture`` is set, it will be multiplied by this color. It will also be the default color for vertices not set in ``vertexColors``.
    final public var color: Color {
        get {
            return get_color ()
        }
        
        set {
            set_color (newValue)
        }
        
    }
    
    /// The offset applied to each vertex.
    final public var offset: Vector2 {
        get {
            return get_offset ()
        }
        
        set {
            set_offset (newValue)
        }
        
    }
    
    /// If `true`, polygon edges will be anti-aliased.
    final public var antialiased: Bool {
        get {
            return get_antialiased ()
        }
        
        set {
            set_antialiased (newValue)
        }
        
    }
    
    /// The polygon's fill texture. Use ``uv`` to set texture coordinates.
    final public var texture: Texture2D? {
        get {
            return get_texture ()
        }
        
        set {
            set_texture (newValue)
        }
        
    }
    
    /// Amount to offset the polygon's ``texture``. If set to `Vector2(0, 0)`, the texture's origin (its top-left corner) will be placed at the polygon's position.
    final public var textureOffset: Vector2 {
        get {
            return get_texture_offset ()
        }
        
        set {
            set_texture_offset (newValue)
        }
        
    }
    
    /// Amount to multiply the ``uv`` coordinates when using ``texture``. Larger values make the texture smaller, and vice versa.
    final public var textureScale: Vector2 {
        get {
            return get_texture_scale ()
        }
        
        set {
            set_texture_scale (newValue)
        }
        
    }
    
    /// The texture's rotation in radians.
    final public var textureRotation: Double {
        get {
            return get_texture_rotation ()
        }
        
        set {
            set_texture_rotation (newValue)
        }
        
    }
    
    /// Path to a ``Skeleton2D`` node used for skeleton-based deformations of this polygon. If empty or invalid, skeletal deformations will not be used.
    final public var skeleton: NodePath {
        get {
            return get_skeleton ()
        }
        
        set {
            set_skeleton (newValue)
        }
        
    }
    
    /// If `true`, the polygon will be inverted, containing the area outside the defined points and extending to the ``invertBorder``.
    final public var invertEnabled: Bool {
        get {
            return get_invert_enabled ()
        }
        
        set {
            set_invert_enabled (newValue)
        }
        
    }
    
    /// Added padding applied to the bounding box when ``invertEnabled`` is set to `true`. Setting this value too small may result in a "Bad Polygon" error.
    final public var invertBorder: Double {
        get {
            return get_invert_border ()
        }
        
        set {
            set_invert_border (newValue)
        }
        
    }
    
    /// The polygon's list of vertices. The final point will be connected to the first.
    final public var polygon: PackedVector2Array {
        get {
            return get_polygon ()
        }
        
        set {
            set_polygon (newValue)
        }
        
    }
    
    /// Texture coordinates for each vertex of the polygon. There should be one UV value per polygon vertex. If there are fewer, undefined vertices will use `Vector2(0, 0)`.
    final public var uv: PackedVector2Array {
        get {
            return get_uv ()
        }
        
        set {
            set_uv (newValue)
        }
        
    }
    
    /// Color for each vertex. Colors are interpolated between vertices, resulting in smooth gradients. There should be one per polygon vertex. If there are fewer, undefined vertices will use ``color``.
    final public var vertexColors: PackedColorArray {
        get {
            return get_vertex_colors ()
        }
        
        set {
            set_vertex_colors (newValue)
        }
        
    }
    
    /// The list of polygons, in case more than one is being represented. Every individual polygon is stored as a ``PackedInt32Array`` where each integer is an index to a point in ``polygon``. If empty, this property will be ignored, and the resulting single polygon will be composed of all points in ``polygon``, using the order they are stored in.
    final public var polygons: VariantArray {
        get {
            return get_polygons ()
        }
        
        set {
            set_polygons (newValue)
        }
        
    }
    
    /// Number of internal vertices, used for UV mapping.
    final public var internalVertexCount: Int32 {
        get {
            return get_internal_vertex_count ()
        }
        
        set {
            set_internal_vertex_count (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_polygon")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_polygon, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_polygon")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polygon() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_polygon, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_uv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_uv")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_uv(_ uv: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: uv.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_uv, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_uv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_uv")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2961356807)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_uv() -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedVector2Array = PackedVector2Array ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_uv, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_color")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_color(_ color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: color) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_color, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_color")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_color() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_color, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_polygons")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_polygons(_ polygons: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: polygons.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_polygons, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_polygons")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_polygons() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_polygons, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_vertex_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertex_colors")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3546319833)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertex_colors(_ vertexColors: PackedColorArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertexColors.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_vertex_colors, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_vertex_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_vertex_colors")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1392750486)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_vertex_colors() -> PackedColorArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedColorArray = PackedColorArray ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_vertex_colors, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_texture, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Polygon2D.method_get_texture, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_texture_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_offset")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_offset(_ textureOffset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureOffset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_texture_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_offset")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_texture_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_texture_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_rotation")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_rotation(_ textureRotation: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureRotation) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_texture_rotation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_rotation")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_rotation() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Polygon2D.method_get_texture_rotation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_texture_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_scale")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_scale(_ textureScale: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: textureScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_texture_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_scale")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_scale() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_texture_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_invert_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_invert_enabled")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_invert_enabled(_ invert: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: invert) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_invert_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_invert_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_invert_enabled")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_invert_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Polygon2D.method_get_invert_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_antialiased: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_antialiased")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_antialiased(_ antialiased: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: antialiased) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_antialiased, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_antialiased: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_antialiased")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_antialiased() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Polygon2D.method_get_antialiased, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_invert_border: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_invert_border")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_invert_border(_ invertBorder: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: invertBorder) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_invert_border, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_invert_border: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_invert_border")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_invert_border() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Polygon2D.method_get_invert_border, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_offset")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_offset(_ offset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_offset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_bone")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 703042815)!
            }
            
        }
        
    }()
    
    /// Adds a bone with the specified `path` and `weights`.
    public final func addBone(path: NodePath, weights: PackedFloat32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: weights.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Polygon2D.method_add_bone, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bone_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_count")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of bones in this ``Polygon2D``.
    public final func getBoneCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Polygon2D.method_get_bone_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_bone_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_path")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Returns the path to the node associated with the specified bone.
    public final func getBonePath(index: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_get_bone_path, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_bone_weights: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bone_weights")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1542882410)!
            }
            
        }
        
    }()
    
    /// Returns the weight values of the specified bone.
    public final func getBoneWeights(index: Int32) -> PackedFloat32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedFloat32Array = PackedFloat32Array ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_get_bone_weights, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_erase_bone: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("erase_bone")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes the specified bone from this ``Polygon2D``.
    public final func eraseBone(index: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_erase_bone, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_bones: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_bones")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Removes all bones from this ``Polygon2D``.
    public final func clearBones() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Polygon2D.method_clear_bones, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_bone_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_path")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761262315)!
            }
            
        }
        
    }()
    
    /// Sets the path to the node associated with the specified bone.
    public final func setBonePath(index: Int32, path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Polygon2D.method_set_bone_path, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_bone_weights: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bone_weights")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1345852415)!
            }
            
        }
        
    }()
    
    /// Sets the weight values for the specified bone.
    public final func setBoneWeights(index: Int32, weights: PackedFloat32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: weights.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Polygon2D.method_set_bone_weights, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_skeleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_skeleton")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_skeleton(_ skeleton: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: skeleton.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_skeleton, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_skeleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_skeleton")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_skeleton() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(Polygon2D.method_get_skeleton, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_internal_vertex_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_internal_vertex_count")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_internal_vertex_count(_ internalVertexCount: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: internalVertexCount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Polygon2D.method_set_internal_vertex_count, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_internal_vertex_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_internal_vertex_count")
        return withUnsafePointer(to: &Polygon2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_internal_vertex_count() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Polygon2D.method_get_internal_vertex_count, handle, nil, &_result)
        return _result
    }
    
}

