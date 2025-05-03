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


/// Container for parsed source geometry data used in navigation mesh baking.
/// 
/// Container for parsed source geometry data used in navigation mesh baking.
open class NavigationMeshSourceGeometryData2D: Resource {
    private static var className = StringName("NavigationMeshSourceGeometryData2D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    final public var traversableOutlines: TypedArray<PackedVector2Array> {
        get {
            return get_traversable_outlines ()
        }
        
        set {
            set_traversable_outlines (newValue)
        }
        
    }
    
    final public var obstructionOutlines: TypedArray<PackedVector2Array> {
        get {
            return get_obstruction_outlines ()
        }
        
        set {
            set_obstruction_outlines (newValue)
        }
        
    }
    
    final public var projectedObstructions: VariantArray {
        get {
            return get_projected_obstructions ()
        }
        
        set {
            set_projected_obstructions (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears the internal data.
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_has_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_data")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` when parsed source geometry data exists.
    public final func hasData() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_has_data, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_traversable_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_traversable_outlines")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets all the traversable area outlines arrays.
    fileprivate final func set_traversable_outlines(_ traversableOutlines: TypedArray<PackedVector2Array>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: traversableOutlines.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_set_traversable_outlines, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_traversable_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_traversable_outlines")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns all the traversable area outlines arrays.
    fileprivate final func get_traversable_outlines() -> TypedArray<PackedVector2Array> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_get_traversable_outlines, handle, nil, &_result)
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_set_obstruction_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_obstruction_outlines")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets all the obstructed area outlines arrays.
    fileprivate final func set_obstruction_outlines(_ obstructionOutlines: TypedArray<PackedVector2Array>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: obstructionOutlines.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_set_obstruction_outlines, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_obstruction_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_obstruction_outlines")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns all the obstructed area outlines arrays.
    fileprivate final func get_obstruction_outlines() -> TypedArray<PackedVector2Array> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_get_obstruction_outlines, handle, nil, &_result)
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
    fileprivate static let method_append_traversable_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_traversable_outlines")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    /// Appends another array of `traversableOutlines` at the end of the existing traversable outlines array.
    public final func appendTraversableOutlines(_ traversableOutlines: TypedArray<PackedVector2Array>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: traversableOutlines.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_append_traversable_outlines, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_append_obstruction_outlines: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("append_obstruction_outlines")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    /// Appends another array of `obstructionOutlines` at the end of the existing obstruction outlines array.
    public final func appendObstructionOutlines(_ obstructionOutlines: TypedArray<PackedVector2Array>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: obstructionOutlines.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_append_obstruction_outlines, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_traversable_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_traversable_outline")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    /// Adds the outline points of a shape as traversable area.
    public final func addTraversableOutline(shapeOutline: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shapeOutline.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_add_traversable_outline, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_obstruction_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_obstruction_outline")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1509147220)!
            }
            
        }
        
    }()
    
    /// Adds the outline points of a shape as obstructed area.
    public final func addObstructionOutline(shapeOutline: PackedVector2Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shapeOutline.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_add_obstruction_outline, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_merge: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("merge")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 742424872)!
            }
            
        }
        
    }()
    
    /// Adds the geometry data of another ``NavigationMeshSourceGeometryData2D`` to the navigation mesh baking data.
    public final func merge(otherGeometry: NavigationMeshSourceGeometryData2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: otherGeometry?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_merge, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_projected_obstruction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_projected_obstruction")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3882407395)!
            }
            
        }
        
    }()
    
    /// Adds a projected obstruction shape to the source geometry. If `carve` is `true` the carved shape will not be affected by additional offsets (e.g. agent radius) of the navigation mesh baking process.
    public final func addProjectedObstruction(vertices: PackedVector2Array, carve: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertices.content) { pArg0 in
            withUnsafePointer(to: carve) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_add_projected_obstruction, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_projected_obstructions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_projected_obstructions")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears all projected obstructions.
    public final func clearProjectedObstructions() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_clear_projected_obstructions, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_projected_obstructions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_projected_obstructions")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the projected obstructions with an Array of Dictionaries with the following key value pairs:
    /// 
    fileprivate final func set_projected_obstructions(_ projectedObstructions: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: projectedObstructions.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_set_projected_obstructions, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_projected_obstructions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_projected_obstructions")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the projected obstructions as an ``VariantArray`` of dictionaries. Each ``VariantDictionary`` contains the following entries:
    /// 
    /// - `vertices` - A ``PackedFloat32Array`` that defines the outline points of the projected shape.
    /// 
    /// - `carve` - A [bool] that defines how the projected shape affects the navigation mesh baking. If `true` the projected shape will not be affected by addition offsets, e.g. agent radius.
    /// 
    fileprivate final func get_projected_obstructions() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_get_projected_obstructions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_bounds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bounds")
        return withUnsafePointer(to: &NavigationMeshSourceGeometryData2D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3248174)!
            }
            
        }
        
    }()
    
    /// Returns an axis-aligned bounding box that covers all the stored geometry data. The bounds are calculated when calling this function with the result cached until further geometry changes are made.
    public final func getBounds() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(NavigationMeshSourceGeometryData2D.method_get_bounds, handle, nil, &_result)
        return _result
    }
    
}

