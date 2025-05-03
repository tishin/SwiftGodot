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


/// Editor for ``GridMap`` nodes.
/// 
/// GridMapEditorPlugin provides access to the ``GridMap`` editor functionality.
open class GridMapEditorPlugin: EditorPlugin {
    private static var className = StringName("GridMapEditorPlugin")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_current_grid_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_grid_map")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1184264483)!
            }
            
        }
        
    }()
    
    /// Returns the ``GridMap`` node currently edited by the grid map editor.
    public final func getCurrentGridMap() -> GridMap? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_get_current_grid_map, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selection")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3659408297)!
            }
            
        }
        
    }()
    
    /// Selects the cells inside the given bounds from `begin` to `end`.
    public final func setSelection(begin: Vector3i, end: Vector3i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: begin) { pArg0 in
            withUnsafePointer(to: end) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_set_selection, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_selection")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Deselects any currently selected cells.
    public final func clearSelection() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_clear_selection, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selection")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1068685055)!
            }
            
        }
        
    }()
    
    /// Returns the cell coordinate bounds of the current selection. Use ``hasSelection()`` to check if there is an active selection.
    public final func getSelection() -> AABB {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: AABB = AABB ()
        gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_get_selection, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_has_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_selection")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if there are selected cells.
    public final func hasSelection() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_has_selection, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_selected_cells: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_cells")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an array of ``Vector3i``s with the selected cells' coordinates.
    public final func getSelectedCells() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_get_selected_cells, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_selected_palette_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_selected_palette_item")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 998575451)!
            }
            
        }
        
    }()
    
    /// Selects the ``MeshLibrary`` item with the given index in the grid map editor's palette. If a negative index is given, no item will be selected. If a value greater than the last index is given, the last item will be selected.
    /// 
    /// > Note: The indices might not be in the same order as they appear in the editor's interface.
    /// 
    public final func setSelectedPaletteItem(_ item: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: item) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_set_selected_palette_item, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_selected_palette_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_selected_palette_item")
        return withUnsafePointer(to: &GridMapEditorPlugin.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the index of the selected ``MeshLibrary`` item in the grid map editor's palette or `-1` if no item is selected.
    /// 
    /// > Note: The indices might not be in the same order as they appear in the editor's interface.
    /// 
    public final func getSelectedPaletteItem() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(GridMapEditorPlugin.method_get_selected_palette_item, handle, nil, &_result)
        return _result
    }
    
}

