// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Holds a pattern to be copied from or pasted into ``TileMap``s.
/// 
/// This resource holds a set of cells to help bulk manipulations of ``TileMap``.
/// 
/// A pattern always start at the `(0,0)` coordinates and cannot have cells with negative coordinates.
/// 
open class TileMapPattern: Resource {
    override open class var godotClassName: StringName { "TileMapPattern" }
    /* Methods */
    fileprivate static var method_set_cell: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_cell")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2224802556)!
            }
            
        }
        
    }()
    
    /// Sets the tile identifiers for the cell at coordinates `coords`. See ``TileMap/setCell(layer:coords:sourceId:atlasCoords:alternativeTile:)``.
    public final func setCell (coords: Vector2i, sourceId: Int32 = -1, atlasCoords: Vector2i = Vector2i (x: -1, y: -1), alternativeTile: Int32 = -1) {
        #if true
        
        var copy_coords = coords
        var copy_source_id: Int = Int (sourceId)
        var copy_atlas_coords = atlasCoords
        var copy_alternative_tile: Int = Int (alternativeTile)
        
        gi.object_method_bind_ptrcall_v (TileMapPattern.method_set_cell, UnsafeMutableRawPointer (mutating: handle), nil, &copy_coords, &copy_source_id, &copy_atlas_coords, &copy_alternative_tile)
        
        #else
        
        var copy_coords = coords
        var copy_source_id: Int = Int (sourceId)
        var copy_atlas_coords = atlasCoords
        var copy_alternative_tile: Int = Int (alternativeTile)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_coords) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_source_id) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &copy_atlas_coords) { p2 in
                    _args.append (p2)
                    withUnsafePointer (to: &copy_alternative_tile) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (TileMapPattern.method_set_cell, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_has_cell: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_cell")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3900751641)!
            }
            
        }
        
    }()
    
    /// Returns whether the pattern has a tile at the given coordinates.
    public final func hasCell (coords: Vector2i)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_coords = coords
        
        gi.object_method_bind_ptrcall_v (TileMapPattern.method_has_cell, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_coords)
        return _result
        #else
        
        var copy_coords = coords
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_coords) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileMapPattern.method_has_cell, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_remove_cell: GDExtensionMethodBindPtr = {
        let methodName = StringName ("remove_cell")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 4153096796)!
            }
            
        }
        
    }()
    
    /// Remove the cell at the given coordinates.
    public final func removeCell (coords: Vector2i, updateSize: Bool) {
        #if true
        
        var copy_coords = coords
        var copy_update_size = updateSize
        
        gi.object_method_bind_ptrcall_v (TileMapPattern.method_remove_cell, UnsafeMutableRawPointer (mutating: handle), nil, &copy_coords, &copy_update_size)
        
        #else
        
        var copy_coords = coords
        var copy_update_size = updateSize
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_coords) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &copy_update_size) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (TileMapPattern.method_remove_cell, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_cell_source_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cell_source_id")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2485466453)!
            }
            
        }
        
    }()
    
    /// Returns the tile source ID of the cell at `coords`.
    public final func getCellSourceId (coords: Vector2i)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_coords = coords
        
        gi.object_method_bind_ptrcall_v (TileMapPattern.method_get_cell_source_id, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_coords)
        return _result
        #else
        
        var copy_coords = coords
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_coords) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileMapPattern.method_get_cell_source_id, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_cell_atlas_coords: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cell_atlas_coords")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3050897911)!
            }
            
        }
        
    }()
    
    /// Returns the tile atlas coordinates ID of the cell at `coords`.
    public final func getCellAtlasCoords (_ coords: Vector2i)-> Vector2i {
        var _result: Vector2i = Vector2i ()
        #if true
        
        var copy_coords = coords
        
        gi.object_method_bind_ptrcall_v (TileMapPattern.method_get_cell_atlas_coords, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_coords)
        return _result
        #else
        
        var copy_coords = coords
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_coords) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileMapPattern.method_get_cell_atlas_coords, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_cell_alternative_tile: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_cell_alternative_tile")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2485466453)!
            }
            
        }
        
    }()
    
    /// Returns the tile alternative ID of the cell at `coords`.
    public final func getCellAlternativeTile (coords: Vector2i)-> Int32 {
        var _result: Int32 = 0
        #if true
        
        var copy_coords = coords
        
        gi.object_method_bind_ptrcall_v (TileMapPattern.method_get_cell_alternative_tile, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_coords)
        return _result
        #else
        
        var copy_coords = coords
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_coords) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileMapPattern.method_get_cell_alternative_tile, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_used_cells: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_used_cells")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the list of used cell coordinates in the pattern.
    public final func getUsedCells ()-> VariantCollection<Vector2i> {
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall (TileMapPattern.method_get_used_cells, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return VariantCollection<Vector2i>(content: _result)
    }
    
    fileprivate static var method_get_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_size")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    /// Returns the size, in cells, of the pattern.
    public final func getSize ()-> Vector2i {
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall (TileMapPattern.method_get_size, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_size: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_size")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    /// Sets the size of the pattern.
    public final func setSize (_ size: Vector2i) {
        #if true
        
        var copy_size = size
        
        gi.object_method_bind_ptrcall_v (TileMapPattern.method_set_size, UnsafeMutableRawPointer (mutating: handle), nil, &copy_size)
        
        #else
        
        var copy_size = size
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_size) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (TileMapPattern.method_set_size, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_empty: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_empty")
        return withUnsafePointer (to: &TileMapPattern.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the pattern is empty or not.
    public final func isEmpty ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (TileMapPattern.method_is_empty, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

