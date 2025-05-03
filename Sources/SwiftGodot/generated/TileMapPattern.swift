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


/// Holds a pattern to be copied from or pasted into ``TileMap``s.
/// 
/// This resource holds a set of cells to help bulk manipulations of ``TileMap``.
/// 
/// A pattern always start at the `(0,0)` coordinates and cannot have cells with negative coordinates.
/// 
open class TileMapPattern: Resource {
    private static var className = StringName("TileMapPattern")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_cell: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_cell")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2224802556)!
            }
            
        }
        
    }()
    
    /// Sets the tile identifiers for the cell at coordinates `coords`. See ``TileMap/setCell(layer:coords:sourceId:atlasCoords:alternativeTile:)``.
    public final func setCell(coords: Vector2i, sourceId: Int32 = -1, atlasCoords: Vector2i = Vector2i (x: -1, y: -1), alternativeTile: Int32 = -1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: sourceId) { pArg1 in
                withUnsafePointer(to: atlasCoords) { pArg2 in
                    withUnsafePointer(to: alternativeTile) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TileMapPattern.method_set_cell, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_cell: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_cell")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3900751641)!
            }
            
        }
        
    }()
    
    /// Returns whether the pattern has a tile at the given coordinates.
    public final func hasCell(coords: Vector2i) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileMapPattern.method_has_cell, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_remove_cell: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_cell")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4153096796)!
            }
            
        }
        
    }()
    
    /// Remove the cell at the given coordinates.
    public final func removeCell(coords: Vector2i, updateSize: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: updateSize) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TileMapPattern.method_remove_cell, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_cell_source_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cell_source_id")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2485466453)!
            }
            
        }
        
    }()
    
    /// Returns the tile source ID of the cell at `coords`.
    public final func getCellSourceId(coords: Vector2i) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileMapPattern.method_get_cell_source_id, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_cell_atlas_coords: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cell_atlas_coords")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3050897911)!
            }
            
        }
        
    }()
    
    /// Returns the tile atlas coordinates ID of the cell at `coords`.
    public final func getCellAtlasCoords(_ coords: Vector2i) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileMapPattern.method_get_cell_atlas_coords, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_cell_alternative_tile: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cell_alternative_tile")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2485466453)!
            }
            
        }
        
    }()
    
    /// Returns the tile alternative ID of the cell at `coords`.
    public final func getCellAlternativeTile(coords: Vector2i) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: coords) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileMapPattern.method_get_cell_alternative_tile, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_used_cells: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_used_cells")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the list of used cell coordinates in the pattern.
    public final func getUsedCells() -> TypedArray<Vector2i> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(TileMapPattern.method_get_used_cells, handle, nil, &_result)
        return TypedArray<Vector2i>(takingOver: _result)
    }
    
    fileprivate static let method_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    /// Returns the size, in cells, of the pattern.
    public final func getSize() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(TileMapPattern.method_get_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_size")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    /// Sets the size of the pattern.
    public final func setSize(_ size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TileMapPattern.method_set_size, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_empty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_empty")
        return withUnsafePointer(to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the pattern is empty or not.
    public final func isEmpty() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TileMapPattern.method_is_empty, handle, nil, &_result)
        return _result
    }
    
}

