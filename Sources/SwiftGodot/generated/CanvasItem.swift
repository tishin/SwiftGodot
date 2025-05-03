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


/// Abstract base class for everything in 2D space.
/// 
/// Abstract base class for everything in 2D space. Canvas items are laid out in a tree; children inherit and extend their parent's transform. ``CanvasItem`` is extended by ``Control`` for GUI-related nodes, and by ``Node2D`` for 2D game objects.
/// 
/// Any ``CanvasItem`` can draw. For this, ``queueRedraw()`` is called by the engine, then ``notificationDraw`` will be received on idle time to request a redraw. Because of this, canvas items don't need to be redrawn on every frame, improving the performance significantly. Several functions for drawing on the ``CanvasItem`` are provided (see `draw_*` functions). However, they can only be used inside ``_draw()``, its corresponding ``Wrapper._notification(code:reverse)`` or methods connected to the [signal draw] signal.
/// 
/// Canvas items are drawn in tree order on their canvas layer. By default, children are on top of their parents, so a root ``CanvasItem`` will be drawn behind everything. This behavior can be changed on a per-item basis.
/// 
/// A ``CanvasItem`` can be hidden, which will also hide its children. By adjusting various other properties of a ``CanvasItem``, you can also modulate its color (via ``modulate`` or ``selfModulate``), change its Z-index, blend mode, and more.
/// 
/// Note that properties like transform, modulation, and visibility are only propagated to _direct_ ``CanvasItem`` child nodes. If there is a non-``CanvasItem`` node in between, like ``Node`` or ``AnimationPlayer``, the ``CanvasItem`` nodes below will have an independent position and ``modulate`` chain. See also ``topLevel``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``draw``
/// - ``visibilityChanged``
/// - ``hidden``
/// - ``itemRectChanged``
open class CanvasItem: Node {
    private static var className = StringName("CanvasItem")
    override open class var godotClassName: StringName { className }
    public enum TextureFilter: Int64, CaseIterable {
        /// The ``CanvasItem`` will inherit the filter from its parent.
        case parentNode = 0 // TEXTURE_FILTER_PARENT_NODE
        /// The texture filter reads from the nearest pixel only. This makes the texture look pixelated from up close, and grainy from a distance (due to mipmaps not being sampled).
        case nearest = 1 // TEXTURE_FILTER_NEAREST
        /// The texture filter blends between the nearest 4 pixels. This makes the texture look smooth from up close, and grainy from a distance (due to mipmaps not being sampled).
        case linear = 2 // TEXTURE_FILTER_LINEAR
        /// The texture filter reads from the nearest pixel and blends between the nearest 2 mipmaps (or uses the nearest mipmap if ``ProjectSettings/rendering/textures/defaultFilters/useNearestMipmapFilter`` is `true`). This makes the texture look pixelated from up close, and smooth from a distance.
        /// 
        /// Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to ``Camera2D`` zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.
        /// 
        case nearestWithMipmaps = 3 // TEXTURE_FILTER_NEAREST_WITH_MIPMAPS
        /// The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps (or uses the nearest mipmap if ``ProjectSettings/rendering/textures/defaultFilters/useNearestMipmapFilter`` is `true`). This makes the texture look smooth from up close, and smooth from a distance.
        /// 
        /// Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to ``Camera2D`` zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.
        /// 
        case linearWithMipmaps = 4 // TEXTURE_FILTER_LINEAR_WITH_MIPMAPS
        /// The texture filter reads from the nearest pixel and blends between 2 mipmaps (or uses the nearest mipmap if ``ProjectSettings/rendering/textures/defaultFilters/useNearestMipmapFilter`` is `true`) based on the angle between the surface and the camera view. This makes the texture look pixelated from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting ``ProjectSettings/rendering/textures/defaultFilters/anisotropicFilteringLevel``.
        /// 
        /// > Note: This texture filter is rarely useful in 2D projects. ``TextureFilter/nearestWithMipmaps`` is usually more appropriate in this case.
        /// 
        case nearestWithMipmapsAnisotropic = 5 // TEXTURE_FILTER_NEAREST_WITH_MIPMAPS_ANISOTROPIC
        /// The texture filter blends between the nearest 4 pixels and blends between 2 mipmaps (or uses the nearest mipmap if ``ProjectSettings/rendering/textures/defaultFilters/useNearestMipmapFilter`` is `true`) based on the angle between the surface and the camera view. This makes the texture look smooth from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting ``ProjectSettings/rendering/textures/defaultFilters/anisotropicFilteringLevel``.
        /// 
        /// > Note: This texture filter is rarely useful in 2D projects. ``TextureFilter/linearWithMipmaps`` is usually more appropriate in this case.
        /// 
        case linearWithMipmapsAnisotropic = 6 // TEXTURE_FILTER_LINEAR_WITH_MIPMAPS_ANISOTROPIC
        /// Represents the size of the ``CanvasItem/TextureFilter`` enum.
        case max = 7 // TEXTURE_FILTER_MAX
    }
    
    public enum TextureRepeat: Int64, CaseIterable {
        /// The ``CanvasItem`` will inherit the filter from its parent.
        case parentNode = 0 // TEXTURE_REPEAT_PARENT_NODE
        /// Texture will not repeat.
        case disabled = 1 // TEXTURE_REPEAT_DISABLED
        /// Texture will repeat normally.
        case enabled = 2 // TEXTURE_REPEAT_ENABLED
        /// Texture will repeat in a 2×2 tiled mode, where elements at even positions are mirrored.
        case mirror = 3 // TEXTURE_REPEAT_MIRROR
        /// Represents the size of the ``CanvasItem/TextureRepeat`` enum.
        case max = 4 // TEXTURE_REPEAT_MAX
    }
    
    public enum ClipChildrenMode: Int64, CaseIterable {
        /// Child draws over parent and is not clipped.
        case disabled = 0 // CLIP_CHILDREN_DISABLED
        /// Parent is used for the purposes of clipping only. Child is clipped to the parent's visible area, parent is not drawn.
        case only = 1 // CLIP_CHILDREN_ONLY
        /// Parent is used for clipping child, but parent is also drawn underneath child as normal before clipping child to its visible area.
        case andDraw = 2 // CLIP_CHILDREN_AND_DRAW
        /// Represents the size of the ``CanvasItem/ClipChildrenMode`` enum.
        case max = 3 // CLIP_CHILDREN_MAX
    }
    
    /* Constants */
    /// The ``CanvasItem``'s global transform has changed. This notification is only received if enabled by ``setNotifyTransform(enable:)``.
    public static let notificationTransformChanged = 2000
    /// The ``CanvasItem``'s local transform has changed. This notification is only received if enabled by ``setNotifyLocalTransform(enable:)``.
    public static let notificationLocalTransformChanged = 35
    /// The ``CanvasItem`` is requested to draw (see ``_draw()``).
    public static let notificationDraw = 30
    /// The ``CanvasItem``'s visibility has changed.
    public static let notificationVisibilityChanged = 31
    /// The ``CanvasItem`` has entered the canvas.
    public static let notificationEnterCanvas = 32
    /// The ``CanvasItem`` has exited the canvas.
    public static let notificationExitCanvas = 33
    /// The ``CanvasItem``'s active ``World2D`` changed.
    public static let notificationWorld2dChanged = 36
    
    /* Properties */
    
    /// If `true`, this ``CanvasItem`` may be drawn. Whether this ``CanvasItem`` is actually drawn depends on the visibility of all of its ``CanvasItem`` ancestors. In other words: this ``CanvasItem`` will be drawn when ``isVisibleInTree()`` returns `true` and all ``CanvasItem`` ancestors share at least one ``visibilityLayer`` with this ``CanvasItem``.
    /// 
    /// > Note: For controls that inherit ``Popup``, the correct way to make them visible is to call one of the multiple `popup*()` functions instead.
    /// 
    final public var visible: Bool {
        get {
            return is_visible ()
        }
        
        set {
            set_visible (newValue)
        }
        
    }
    
    /// The color applied to this ``CanvasItem``. This property does affect child ``CanvasItem``s, unlike ``selfModulate`` which only affects the node itself.
    final public var modulate: Color {
        get {
            return get_modulate ()
        }
        
        set {
            set_modulate (newValue)
        }
        
    }
    
    /// The color applied to this ``CanvasItem``. This property does **not** affect child ``CanvasItem``s, unlike ``modulate`` which affects both the node itself and its children.
    /// 
    /// > Note: Internal children (e.g. sliders in ``ColorPicker`` or tab bar in ``TabContainer``) are also not affected by this property (see `include_internal` parameter of ``Node/getChild(idx:includeInternal:)`` and other similar methods).
    /// 
    final public var selfModulate: Color {
        get {
            return get_self_modulate ()
        }
        
        set {
            set_self_modulate (newValue)
        }
        
    }
    
    /// If `true`, the object draws behind its parent.
    final public var showBehindParent: Bool {
        get {
            return is_draw_behind_parent_enabled ()
        }
        
        set {
            set_draw_behind_parent (newValue)
        }
        
    }
    
    /// If `true`, this ``CanvasItem`` will _not_ inherit its transform from parent ``CanvasItem``s. Its draw order will also be changed to make it draw on top of other ``CanvasItem``s that do not have ``topLevel`` set to `true`. The ``CanvasItem`` will effectively act as if it was placed as a child of a bare ``Node``.
    final public var topLevel: Bool {
        get {
            return is_set_as_top_level ()
        }
        
        set {
            set_as_top_level (newValue)
        }
        
    }
    
    /// Allows the current node to clip child nodes, essentially acting as a mask.
    /// 
    /// > Note: Clipping nodes cannot be nested or placed within ``CanvasGroup``s. If an ancestor of this node clips its children or is a ``CanvasGroup``, then this node's clip mode should be set to ``ClipChildrenMode/disabled`` to avoid unexpected behavior.
    /// 
    final public var clipChildren: CanvasItem.ClipChildrenMode {
        get {
            return get_clip_children_mode ()
        }
        
        set {
            set_clip_children_mode (newValue)
        }
        
    }
    
    /// The rendering layers in which this ``CanvasItem`` responds to ``Light2D`` nodes.
    final public var lightMask: Int32 {
        get {
            return get_light_mask ()
        }
        
        set {
            set_light_mask (newValue)
        }
        
    }
    
    /// The rendering layer in which this ``CanvasItem`` is rendered by ``Viewport`` nodes. A ``Viewport`` will render a ``CanvasItem`` if it and all its parents share a layer with the ``Viewport``'s canvas cull mask.
    final public var visibilityLayer: UInt32 {
        get {
            return get_visibility_layer ()
        }
        
        set {
            set_visibility_layer (newValue)
        }
        
    }
    
    /// Controls the order in which the nodes render. A node with a higher Z index will display in front of others. Must be between ``RenderingServer/canvasItemZMin`` and ``RenderingServer/canvasItemZMax`` (inclusive).
    /// 
    /// > Note: Changing the Z index of a ``Control`` only affects the drawing order, not the order in which input events are handled. This can be useful to implement certain UI animations, e.g. a menu where hovered items are scaled and should overlap others.
    /// 
    final public var zIndex: Int32 {
        get {
            return get_z_index ()
        }
        
        set {
            set_z_index (newValue)
        }
        
    }
    
    /// If `true`, the node's Z index is relative to its parent's Z index. If this node's Z index is 2 and its parent's effective Z index is 3, then this node's effective Z index will be 2 + 3 = 5.
    final public var zAsRelative: Bool {
        get {
            return is_z_relative ()
        }
        
        set {
            set_z_as_relative (newValue)
        }
        
    }
    
    /// If `true`, this and child ``CanvasItem`` nodes with a higher Y position are rendered in front of nodes with a lower Y position. If `false`, this and child ``CanvasItem`` nodes are rendered normally in scene tree order.
    /// 
    /// With Y-sorting enabled on a parent node ('A') but disabled on a child node ('B'), the child node ('B') is sorted but its children ('C1', 'C2', etc.) render together on the same Y position as the child node ('B'). This allows you to organize the render order of a scene without changing the scene tree.
    /// 
    /// Nodes sort relative to each other only if they are on the same ``zIndex``.
    /// 
    final public var ySortEnabled: Bool {
        get {
            return is_y_sort_enabled ()
        }
        
        set {
            set_y_sort_enabled (newValue)
        }
        
    }
    
    /// The texture filtering mode to use on this ``CanvasItem``.
    final public var textureFilter: CanvasItem.TextureFilter {
        get {
            return get_texture_filter ()
        }
        
        set {
            set_texture_filter (newValue)
        }
        
    }
    
    /// The texture repeating mode to use on this ``CanvasItem``.
    final public var textureRepeat: CanvasItem.TextureRepeat {
        get {
            return get_texture_repeat ()
        }
        
        set {
            set_texture_repeat (newValue)
        }
        
    }
    
    /// The material applied to this ``CanvasItem``.
    final public var material: Material? {
        get {
            return get_material ()
        }
        
        set {
            set_material (newValue)
        }
        
    }
    
    /// If `true`, the parent ``CanvasItem``'s ``material`` property is used as this one's material.
    final public var useParentMaterial: Bool {
        get {
            return get_use_parent_material ()
        }
        
        set {
            set_use_parent_material (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_draw")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when ``CanvasItem`` has been requested to redraw (after ``queueRedraw()`` is called, either manually or by the engine).
    /// 
    /// Corresponds to the ``notificationDraw`` notification in ``Wrapper._notification(code:reverse)``.
    /// 
    @_documentation(visibility: public)
    open func _draw() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CanvasItem.method__draw, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_canvas_item: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_canvas_item")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the canvas item RID used by ``RenderingServer`` for this item.
    public final func getCanvasItem() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_canvas_item, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visible")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible(_ visible: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visible")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_visible_in_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visible_in_tree")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is present in the ``SceneTree``, its ``visible`` property is `true` and all its ancestors are also visible. If any ancestor is hidden, this node will not be visible in the scene tree, and is therefore not drawn (see ``_draw()``).
    /// 
    /// Visibility is checked only in parent nodes that inherit from ``CanvasItem``, ``CanvasLayer``, and ``Window``. If the parent is of any other type (such as ``Node``, ``AnimationPlayer``, or ``Node3D``), it is assumed to be visible.
    /// 
    /// > Note: This method does not take ``visibilityLayer`` into account, so even if this method returns `true`, the node might end up not being rendered.
    /// 
    public final func isVisibleInTree() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_visible_in_tree, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_show: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("show")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Show the ``CanvasItem`` if it's currently hidden. This is equivalent to setting ``visible`` to `true`. For controls that inherit ``Popup``, the correct way to make them visible is to call one of the multiple `popup*()` functions instead.
    public final func show() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CanvasItem.method_show, handle, nil, nil)
        
    }
    
    fileprivate static let method_hide: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("hide")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Hide the ``CanvasItem`` if it's currently visible. This is equivalent to setting ``visible`` to `false`.
    public final func hide() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CanvasItem.method_hide, handle, nil, nil)
        
    }
    
    fileprivate static let method_queue_redraw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("queue_redraw")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Queues the ``CanvasItem`` to redraw. During idle time, if ``CanvasItem`` is visible, ``notificationDraw`` is sent and ``_draw()`` is called. This only occurs **once** per frame, even if this method has been called multiple times.
    public final func queueRedraw() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CanvasItem.method_queue_redraw, handle, nil, nil)
        
    }
    
    fileprivate static let method_move_to_front: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_to_front")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Moves this node to display on top of its siblings.
    /// 
    /// Internally, the node is moved to the bottom of parent's child list. The method has no effect on nodes without a parent.
    /// 
    public final func moveToFront() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CanvasItem.method_move_to_front, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_as_top_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_as_top_level")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_as_top_level(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_as_top_level, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_set_as_top_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_set_as_top_level")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_set_as_top_level() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_set_as_top_level, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_light_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_light_mask")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_light_mask(_ lightMask: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: lightMask) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_light_mask, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_light_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_light_mask")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_light_mask() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CanvasItem.method_get_light_mask, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_modulate")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_modulate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_modulate")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_modulate() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_modulate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_self_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_self_modulate")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920490490)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_self_modulate(_ selfModulate: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: selfModulate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_self_modulate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_self_modulate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_self_modulate")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3444240500)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_self_modulate() -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_self_modulate, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_z_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_z_index")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_z_index, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_z_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_z_index")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_z_index() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(CanvasItem.method_get_z_index, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_z_as_relative: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_z_as_relative")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_z_as_relative(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_z_as_relative, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_z_relative: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_z_relative")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_z_relative() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_z_relative, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_y_sort_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_y_sort_enabled")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_y_sort_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_y_sort_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_y_sort_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_y_sort_enabled")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_y_sort_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_y_sort_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_draw_behind_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_draw_behind_parent")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_draw_behind_parent(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_draw_behind_parent, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_draw_behind_parent_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_draw_behind_parent_enabled")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_draw_behind_parent_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_draw_behind_parent_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_draw_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_line")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1562330099)!
            }
            
        }
        
    }()
    
    /// Draws a line from a 2D point to another, with a given color and width. It can be optionally antialiased. See also ``drawDashedLine(from:to:color:width:dash:aligned:antialiased:)``, ``drawMultiline(points:color:width:antialiased:)``, and ``drawPolyline(points:color:width:antialiased:)``.
    /// 
    /// If `width` is negative, then a two-point primitive will be drawn instead of a four-point one. This means that when the CanvasItem is scaled, the line will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    public final func drawLine(from: Vector2, to: Vector2, color: Color, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: width) { pArg3 in
                        withUnsafePointer(to: antialiased) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(CanvasItem.method_draw_line, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_dashed_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_dashed_line")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3653831622)!
            }
            
        }
        
    }()
    
    /// Draws a dashed line from a 2D point to another, with a given color and width. See also ``drawLine(from:to:color:width:antialiased:)``, ``drawMultiline(points:color:width:antialiased:)``, and ``drawPolyline(points:color:width:antialiased:)``.
    /// 
    /// If `width` is negative, then a two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the line parts will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    /// `dash` is the length of each dash in pixels, with the gap between each dash being the same length. If `aligned` is `true`, the length of the first and last dashes may be shortened or lengthened to allow the line to begin and end at the precise points defined by `from` and `to`. Both ends are always symmetrical when `aligned` is `true`. If `aligned` is `false`, all dashes will have the same length, but the line may appear incomplete at the end due to the dash length not dividing evenly into the line length. Only full dashes are drawn when `aligned` is `false`.
    /// 
    /// If `antialiased` is `true`, half transparent "feathers" will be attached to the boundary, making outlines smooth.
    /// 
    /// > Note: `antialiased` is only effective if `width` is greater than `0.0`.
    /// 
    public final func drawDashedLine(from: Vector2, to: Vector2, color: Color, width: Double = -1.0, dash: Double = 2.0, aligned: Bool = true, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: to) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: width) { pArg3 in
                        withUnsafePointer(to: dash) { pArg4 in
                            withUnsafePointer(to: aligned) { pArg5 in
                                withUnsafePointer(to: antialiased) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(CanvasItem.method_draw_dashed_line, handle, pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_polyline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_polyline")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3797364428)!
            }
            
        }
        
    }()
    
    /// Draws interconnected line segments with a uniform `color` and `width` and optional antialiasing (supported only for positive `width`). When drawing large amounts of lines, this is faster than using individual ``drawLine(from:to:color:width:antialiased:)`` calls. To draw disconnected lines, use ``drawMultiline(points:color:width:antialiased:)`` instead. See also ``drawPolygon(points:colors:uvs:texture:)``.
    /// 
    /// If `width` is negative, it will be ignored and the polyline will be drawn using ``RenderingServer/PrimitiveType/lineStrip``. This means that when the CanvasItem is scaled, the polyline will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    public final func drawPolyline(points: PackedVector2Array, color: Color, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: width) { pArg2 in
                    withUnsafePointer(to: antialiased) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_polyline, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_polyline_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_polyline_colors")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2311979562)!
            }
            
        }
        
    }()
    
    /// Draws interconnected line segments with a uniform `width`, point-by-point coloring, and optional antialiasing (supported only for positive `width`). Colors assigned to line points match by index between `points` and `colors`, i.e. each line segment is filled with a gradient between the colors of the endpoints. When drawing large amounts of lines, this is faster than using individual ``drawLine(from:to:color:width:antialiased:)`` calls. To draw disconnected lines, use ``drawMultilineColors(points:colors:width:antialiased:)`` instead. See also ``drawPolygon(points:colors:uvs:texture:)``.
    /// 
    /// If `width` is negative, it will be ignored and the polyline will be drawn using ``RenderingServer/PrimitiveType/lineStrip``. This means that when the CanvasItem is scaled, the polyline will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    public final func drawPolylineColors(points: PackedVector2Array, colors: PackedColorArray, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: colors.content) { pArg1 in
                withUnsafePointer(to: width) { pArg2 in
                    withUnsafePointer(to: antialiased) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_polyline_colors, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_arc: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_arc")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4140652635)!
            }
            
        }
        
    }()
    
    /// Draws an unfilled arc between the given angles with a uniform `color` and `width` and optional antialiasing (supported only for positive `width`). The larger the value of `pointCount`, the smoother the curve. See also ``drawCircle(position:radius:color:filled:width:antialiased:)``.
    /// 
    /// If `width` is negative, it will be ignored and the arc will be drawn using ``RenderingServer/PrimitiveType/lineStrip``. This means that when the CanvasItem is scaled, the arc will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    /// The arc is drawn from `startAngle` towards the value of `endAngle` so in clockwise direction if `start_angle < end_angle` and counter-clockwise otherwise. Passing the same angles but in reversed order will produce the same arc. If absolute difference of `startAngle` and `endAngle` is greater than ``@GDScript.TAU`` radians, then a full circle arc is drawn (i.e. arc will not overlap itself).
    /// 
    public final func drawArc(center: Vector2, radius: Double, startAngle: Double, endAngle: Double, pointCount: Int32, color: Color, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: center) { pArg0 in
            withUnsafePointer(to: radius) { pArg1 in
                withUnsafePointer(to: startAngle) { pArg2 in
                    withUnsafePointer(to: endAngle) { pArg3 in
                        withUnsafePointer(to: pointCount) { pArg4 in
                            withUnsafePointer(to: color) { pArg5 in
                                withUnsafePointer(to: width) { pArg6 in
                                    withUnsafePointer(to: antialiased) { pArg7 in
                                        withUnsafePointer(to: UnsafeRawPointersN8(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7)) { pArgs in
                                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 8) { pArgs in
                                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_arc, handle, pArgs, nil)
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_multiline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_multiline")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3797364428)!
            }
            
        }
        
    }()
    
    /// Draws multiple disconnected lines with a uniform `width` and `color`. Each line is defined by two consecutive points from `points` array, i.e. i-th segment consists of `points[2 * i]`, `points[2 * i + 1]` endpoints. When drawing large amounts of lines, this is faster than using individual ``drawLine(from:to:color:width:antialiased:)`` calls. To draw interconnected lines, use ``drawPolyline(points:color:width:antialiased:)`` instead.
    /// 
    /// If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    /// > Note: `antialiased` is only effective if `width` is greater than `0.0`.
    /// 
    public final func drawMultiline(points: PackedVector2Array, color: Color, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: width) { pArg2 in
                    withUnsafePointer(to: antialiased) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_multiline, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_multiline_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_multiline_colors")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2311979562)!
            }
            
        }
        
    }()
    
    /// Draws multiple disconnected lines with a uniform `width` and segment-by-segment coloring. Each segment is defined by two consecutive points from `points` array and a corresponding color from `colors` array, i.e. i-th segment consists of `points[2 * i]`, `points[2 * i + 1]` endpoints and has `colors_` color. When drawing large amounts of lines, this is faster than using individual ``drawLine(from:to:color:width:antialiased:)`` calls. To draw interconnected lines, use ``drawPolylineColors(points:colors:width:antialiased:)`` instead.
    /// 
    /// If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    /// > Note: `antialiased` is only effective if `width` is greater than `0.0`.
    /// 
    public final func drawMultilineColors(points: PackedVector2Array, colors: PackedColorArray, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: colors.content) { pArg1 in
                withUnsafePointer(to: width) { pArg2 in
                    withUnsafePointer(to: antialiased) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_multiline_colors, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_rect")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2773573813)!
            }
            
        }
        
    }()
    
    /// Draws a rectangle. If `filled` is `true`, the rectangle will be filled with the `color` specified. If `filled` is `false`, the rectangle will be drawn as a stroke with the `color` and `width` specified. See also ``drawTextureRect(texture:rect:tile:modulate:transpose:)``.
    /// 
    /// If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    /// If `antialiased` is `true`, half transparent "feathers" will be attached to the boundary, making outlines smooth.
    /// 
    /// > Note: `width` is only effective if `filled` is `false`.
    /// 
    /// > Note: Unfilled rectangles drawn with a negative `width` may not display perfectly. For example, corners may be missing or brighter due to overlapping lines (for a translucent `color`).
    /// 
    public final func drawRect(_ rect: Rect2, color: Color, filled: Bool = true, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: filled) { pArg2 in
                    withUnsafePointer(to: width) { pArg3 in
                        withUnsafePointer(to: antialiased) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(CanvasItem.method_draw_rect, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_circle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_circle")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3153026596)!
            }
            
        }
        
    }()
    
    /// Draws a circle. See also ``drawArc(center:radius:startAngle:endAngle:pointCount:color:width:antialiased:)``, ``drawPolyline(points:color:width:antialiased:)``, and ``drawPolygon(points:colors:uvs:texture:)``.
    /// 
    /// If `filled` is `true`, the circle will be filled with the `color` specified. If `filled` is `false`, the circle will be drawn as a stroke with the `color` and `width` specified.
    /// 
    /// If `width` is negative, then two-point primitives will be drawn instead of a four-point ones. This means that when the CanvasItem is scaled, the lines will remain thin. If this behavior is not desired, then pass a positive `width` like `1.0`.
    /// 
    /// If `antialiased` is `true`, half transparent "feathers" will be attached to the boundary, making outlines smooth.
    /// 
    /// > Note: `width` is only effective if `filled` is `false`.
    /// 
    public final func drawCircle(position: Vector2, radius: Double, color: Color, filled: Bool = true, width: Double = -1.0, antialiased: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: radius) { pArg1 in
                withUnsafePointer(to: color) { pArg2 in
                    withUnsafePointer(to: filled) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: antialiased) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(CanvasItem.method_draw_circle, handle, pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_texture")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 520200117)!
            }
            
        }
        
    }()
    
    /// Draws a texture at a given position.
    public final func drawTexture(_ texture: Texture2D?, position: Vector2, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: modulate) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(CanvasItem.method_draw_texture, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_texture_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_texture_rect")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3832805018)!
            }
            
        }
        
    }()
    
    /// Draws a textured rectangle at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped. See also ``drawRect(_:color:filled:width:antialiased:)`` and ``drawTextureRectRegion(texture:rect:srcRect:modulate:transpose:clipUv:)``.
    public final func drawTextureRect(texture: Texture2D?, rect: Rect2, tile: Bool, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), transpose: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: tile) { pArg2 in
                    withUnsafePointer(to: modulate) { pArg3 in
                        withUnsafePointer(to: transpose) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(CanvasItem.method_draw_texture_rect, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_texture_rect_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_texture_rect_region")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3883821411)!
            }
            
        }
        
    }()
    
    /// Draws a textured rectangle from a texture's region (specified by `srcRect`) at a given position, optionally modulated by a color. If `transpose` is `true`, the texture will have its X and Y coordinates swapped. See also ``drawTextureRect(texture:rect:tile:modulate:transpose:)``.
    public final func drawTextureRectRegion(texture: Texture2D?, rect: Rect2, srcRect: Rect2, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), transpose: Bool = false, clipUv: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: srcRect) { pArg2 in
                    withUnsafePointer(to: modulate) { pArg3 in
                        withUnsafePointer(to: transpose) { pArg4 in
                            withUnsafePointer(to: clipUv) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(CanvasItem.method_draw_texture_rect_region, handle, pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_msdf_texture_rect_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_msdf_texture_rect_region")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4219163252)!
            }
            
        }
        
    }()
    
    /// Draws a textured rectangle region of the multi-channel signed distance field texture at a given position, optionally modulated by a color. See ``FontFile/multichannelSignedDistanceField`` for more information and caveats about MSDF font rendering.
    /// 
    /// If `outline` is positive, each alpha channel value of pixel in region is set to maximum value of true distance in the `outline` radius.
    /// 
    /// Value of the `pixelRange` should the same that was used during distance field texture generation.
    /// 
    public final func drawMsdfTextureRectRegion(texture: Texture2D?, rect: Rect2, srcRect: Rect2, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), outline: Double = 0.0, pixelRange: Double = 4.0, scale: Double = 1.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: srcRect) { pArg2 in
                    withUnsafePointer(to: modulate) { pArg3 in
                        withUnsafePointer(to: outline) { pArg4 in
                            withUnsafePointer(to: pixelRange) { pArg5 in
                                withUnsafePointer(to: scale) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(CanvasItem.method_draw_msdf_texture_rect_region, handle, pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_lcd_texture_rect_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_lcd_texture_rect_region")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3212350954)!
            }
            
        }
        
    }()
    
    /// Draws a textured rectangle region of the font texture with LCD subpixel anti-aliasing at a given position, optionally modulated by a color.
    /// 
    /// Texture is drawn using the following blend operation, blend mode of the ``CanvasItemMaterial`` is ignored:
    /// 
    public final func drawLcdTextureRectRegion(texture: Texture2D?, rect: Rect2, srcRect: Rect2, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: srcRect) { pArg2 in
                    withUnsafePointer(to: modulate) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_lcd_texture_rect_region, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_style_box: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_style_box")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 388176283)!
            }
            
        }
        
    }()
    
    /// Draws a styled rectangle.
    public final func drawStyleBox(_ styleBox: StyleBox?, rect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: styleBox?.handle) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CanvasItem.method_draw_style_box, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_primitive: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_primitive")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3288481815)!
            }
            
        }
        
    }()
    
    /// Draws a custom primitive. 1 point for a point, 2 points for a line, 3 points for a triangle, and 4 points for a quad. If 0 points or more than 4 points are specified, nothing will be drawn and an error message will be printed. See also ``drawLine(from:to:color:width:antialiased:)``, ``drawPolyline(points:color:width:antialiased:)``, ``drawPolygon(points:colors:uvs:texture:)``, and ``drawRect(_:color:filled:width:antialiased:)``.
    public final func drawPrimitive(points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array, texture: Texture2D? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: colors.content) { pArg1 in
                withUnsafePointer(to: uvs.content) { pArg2 in
                    withUnsafePointer(to: texture?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_primitive, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_polygon")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 974537912)!
            }
            
        }
        
    }()
    
    /// Draws a solid polygon of any number of points, convex or concave. Unlike ``drawColoredPolygon(points:color:uvs:texture:)``, each point's color can be changed individually. See also ``drawPolyline(points:color:width:antialiased:)`` and ``drawPolylineColors(points:colors:width:antialiased:)``. If you need more flexibility (such as being able to use bones), use ``RenderingServer/canvasItemAddTriangleArray(item:indices:points:colors:uvs:bones:weights:texture:count:)`` instead.
    /// 
    /// > Note: If you frequently redraw the same polygon with a large number of vertices, consider pre-calculating the triangulation with ``Geometry2D/triangulatePolygon(_:)`` and using ``drawMesh(_:texture:transform:modulate:)``, ``drawMultimesh(_:texture:)``, or ``RenderingServer/canvasItemAddTriangleArray(item:indices:points:colors:uvs:bones:weights:texture:count:)``.
    /// 
    public final func drawPolygon(points: PackedVector2Array, colors: PackedColorArray, uvs: PackedVector2Array = PackedVector2Array(), texture: Texture2D? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: colors.content) { pArg1 in
                withUnsafePointer(to: uvs.content) { pArg2 in
                    withUnsafePointer(to: texture?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_polygon, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_colored_polygon: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_colored_polygon")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 15245644)!
            }
            
        }
        
    }()
    
    /// Draws a colored polygon of any number of points, convex or concave. Unlike ``drawPolygon(points:colors:uvs:texture:)``, a single color must be specified for the whole polygon.
    /// 
    /// > Note: If you frequently redraw the same polygon with a large number of vertices, consider pre-calculating the triangulation with ``Geometry2D/triangulatePolygon(_:)`` and using ``drawMesh(_:texture:transform:modulate:)``, ``drawMultimesh(_:texture:)``, or ``RenderingServer/canvasItemAddTriangleArray(item:indices:points:colors:uvs:bones:weights:texture:count:)``.
    /// 
    public final func drawColoredPolygon(points: PackedVector2Array, color: Color, uvs: PackedVector2Array = PackedVector2Array(), texture: Texture2D? = nil) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: points.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: uvs.content) { pArg2 in
                    withUnsafePointer(to: texture?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_colored_polygon, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_string")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 728290553)!
            }
            
        }
        
    }()
    
    /// Draws `text` using the specified `font` at the `pos` (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
    /// 
    /// **Example:** Draw "Hello world", using the project's default font:
    /// 
    /// See also ``Font/drawString(canvasItem:pos:text:alignment:width:fontSize:modulate:justificationFlags:direction:orientation:)``.
    /// 
    public final func drawString(font: Font?, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: modulate) { pArg6 in
                                    withUnsafePointer(to: justificationFlags.rawValue) { pArg7 in
                                        withUnsafePointer(to: direction.rawValue) { pArg8 in
                                            withUnsafePointer(to: orientation.rawValue) { pArg9 in
                                                withUnsafePointer(to: UnsafeRawPointersN10(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9)) { pArgs in
                                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 10) { pArgs in
                                                        gi.object_method_bind_ptrcall(CanvasItem.method_draw_string, handle, pArgs, nil)
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_multiline_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_multiline_string")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1927038192)!
            }
            
        }
        
    }()
    
    /// Breaks `text` into lines and draws it using the specified `font` at the `pos` (top-left corner). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
    public final func drawMultilineString(font: Font?, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), brkFlags: TextServer.LineBreakFlag = [.mandatory, .wordBound], justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: maxLines) { pArg6 in
                                    withUnsafePointer(to: modulate) { pArg7 in
                                        withUnsafePointer(to: brkFlags.rawValue) { pArg8 in
                                            withUnsafePointer(to: justificationFlags.rawValue) { pArg9 in
                                                withUnsafePointer(to: direction.rawValue) { pArg10 in
                                                    withUnsafePointer(to: orientation.rawValue) { pArg11 in
                                                        withUnsafePointer(to: UnsafeRawPointersN12(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10, pArg11)) { pArgs in
                                                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 12) { pArgs in
                                                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_multiline_string, handle, pArgs, nil)
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_string_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_string_outline")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 340562381)!
            }
            
        }
        
    }()
    
    /// Draws `text` outline using the specified `font` at the `pos` (bottom-left corner using the baseline of the font). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
    public final func drawStringOutline(font: Font?, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, size: Int32 = 1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: size) { pArg6 in
                                    withUnsafePointer(to: modulate) { pArg7 in
                                        withUnsafePointer(to: justificationFlags.rawValue) { pArg8 in
                                            withUnsafePointer(to: direction.rawValue) { pArg9 in
                                                withUnsafePointer(to: orientation.rawValue) { pArg10 in
                                                    withUnsafePointer(to: UnsafeRawPointersN11(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10)) { pArgs in
                                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 11) { pArgs in
                                                            gi.object_method_bind_ptrcall(CanvasItem.method_draw_string_outline, handle, pArgs, nil)
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_multiline_string_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_multiline_string_outline")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1912318525)!
            }
            
        }
        
    }()
    
    /// Breaks `text` to the lines and draws text outline using the specified `font` at the `pos` (top-left corner). The text will have its color multiplied by `modulate`. If `width` is greater than or equal to 0, the text will be clipped if it exceeds the specified width.
    public final func drawMultilineStringOutline(font: Font?, pos: Vector2, text: String, alignment: HorizontalAlignment = .left, width: Double = -1, fontSize: Int32 = 16, maxLines: Int32 = -1, size: Int32 = 1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1), brkFlags: TextServer.LineBreakFlag = [.mandatory, .wordBound], justificationFlags: TextServer.JustificationFlag = [.kashida, .wordBound], direction: TextServer.Direction = .auto, orientation: TextServer.Orientation = .horizontal) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: alignment.rawValue) { pArg3 in
                        withUnsafePointer(to: width) { pArg4 in
                            withUnsafePointer(to: fontSize) { pArg5 in
                                withUnsafePointer(to: maxLines) { pArg6 in
                                    withUnsafePointer(to: size) { pArg7 in
                                        withUnsafePointer(to: modulate) { pArg8 in
                                            withUnsafePointer(to: brkFlags.rawValue) { pArg9 in
                                                withUnsafePointer(to: justificationFlags.rawValue) { pArg10 in
                                                    withUnsafePointer(to: direction.rawValue) { pArg11 in
                                                        withUnsafePointer(to: orientation.rawValue) { pArg12 in
                                                            withUnsafePointer(to: UnsafeRawPointersN13(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10, pArg11, pArg12)) { pArgs in
                                                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 13) { pArgs in
                                                                    gi.object_method_bind_ptrcall(CanvasItem.method_draw_multiline_string_outline, handle, pArgs, nil)
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_char")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3339793283)!
            }
            
        }
        
    }()
    
    /// Draws a string first character using a custom font.
    public final func drawChar(font: Font?, pos: Vector2, char: String, fontSize: Int32 = 16, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let char = GString(char)
                withUnsafePointer(to: char.content) { pArg2 in
                    withUnsafePointer(to: fontSize) { pArg3 in
                        withUnsafePointer(to: modulate) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(CanvasItem.method_draw_char, handle, pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_char_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_char_outline")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3302344391)!
            }
            
        }
        
    }()
    
    /// Draws a string first character outline using a custom font.
    public final func drawCharOutline(font: Font?, pos: Vector2, char: String, fontSize: Int32 = 16, size: Int32 = -1, modulate: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: font?.handle) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                let char = GString(char)
                withUnsafePointer(to: char.content) { pArg2 in
                    withUnsafePointer(to: fontSize) { pArg3 in
                        withUnsafePointer(to: size) { pArg4 in
                            withUnsafePointer(to: modulate) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(CanvasItem.method_draw_char_outline, handle, pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_mesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_mesh")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 153818295)!
            }
            
        }
        
    }()
    
    /// Draws a ``Mesh`` in 2D, using the provided texture. See ``MeshInstance2D`` for related documentation.
    public final func drawMesh(_ mesh: Mesh?, texture: Texture2D?, transform: Transform2D = Transform2D (xAxis: Vector2 (x: 1, y: 0), yAxis: Vector2 (x: 0, y: 1), origin: Vector2 (x: 0, y: 0)), modulate: Color = Color (r: 1, g: 1, b: 1, a: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mesh?.handle) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: modulate) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_mesh, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_multimesh: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_multimesh")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 937992368)!
            }
            
        }
        
    }()
    
    /// Draws a ``MultiMesh`` in 2D with the provided texture. See ``MultiMeshInstance2D`` for related documentation.
    public final func drawMultimesh(_ multimesh: MultiMesh?, texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: multimesh?.handle) { pArg0 in
            withUnsafePointer(to: texture?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CanvasItem.method_draw_multimesh, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_set_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 288975085)!
            }
            
        }
        
    }()
    
    /// Sets a custom transform for drawing via components. Anything drawn afterwards will be transformed by this.
    /// 
    /// > Note: ``FontFile/oversampling`` does _not_ take `scale` into account. This means that scaling up/down will cause bitmap fonts and rasterized (non-MSDF) dynamic fonts to appear blurry or pixelated. To ensure text remains crisp regardless of scale, you can enable MSDF font rendering by enabling ``ProjectSettings/gui/theme/defaultFontMultichannelSignedDistanceField`` (applies to the default project font only), or enabling **Multichannel Signed Distance Field** in the import options of a DynamicFont for custom fonts. On system fonts, ``SystemFont/multichannelSignedDistanceField`` can be enabled in the inspector.
    /// 
    public final func drawSetTransform(position: Vector2, rotation: Double = 0.0, scale: Vector2 = Vector2 (x: 1, y: 1)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: rotation) { pArg1 in
                withUnsafePointer(to: scale) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(CanvasItem.method_draw_set_transform, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_set_transform_matrix: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_set_transform_matrix")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761652528)!
            }
            
        }
        
    }()
    
    /// Sets a custom transform for drawing via matrix. Anything drawn afterwards will be transformed by this.
    public final func drawSetTransformMatrix(xform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: xform) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_draw_set_transform_matrix, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_animation_slice: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_animation_slice")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3112831842)!
            }
            
        }
        
    }()
    
    /// Subsequent drawing commands will be ignored unless they fall within the specified animation slice. This is a faster way to implement animations that loop on background rather than redrawing constantly.
    public final func drawAnimationSlice(animationLength: Double, sliceBegin: Double, sliceEnd: Double, offset: Double = 0.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: animationLength) { pArg0 in
            withUnsafePointer(to: sliceBegin) { pArg1 in
                withUnsafePointer(to: sliceEnd) { pArg2 in
                    withUnsafePointer(to: offset) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(CanvasItem.method_draw_animation_slice, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_end_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_end_animation")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// After submitting all animations slices via ``drawAnimationSlice(animationLength:sliceBegin:sliceEnd:offset:)``, this function can be used to revert drawing to its default state (all subsequent drawing commands will be visible). If you don't care about this particular use case, usage of this function after submitting the slices is not required.
    public final func drawEndAnimation() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CanvasItem.method_draw_end_animation, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the transform matrix of this item.
    public final func getTransform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_global_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the global transform matrix of this item, i.e. the combined transform up to the topmost ``CanvasItem`` node. The topmost item is a ``CanvasItem`` that either has no parent, has non-``CanvasItem`` parent or it has ``topLevel`` enabled.
    public final func getGlobalTransform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_global_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_global_transform_with_canvas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_transform_with_canvas")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the transform from the local coordinate system of this ``CanvasItem`` to the ``Viewport``s coordinate system.
    public final func getGlobalTransformWithCanvas() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_global_transform_with_canvas, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_viewport_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_viewport_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the transform from the coordinate system of the canvas, this item is in, to the ``Viewport``s embedders coordinate system.
    public final func getViewportTransform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_viewport_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_viewport_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_viewport_rect")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1639390495)!
            }
            
        }
        
    }()
    
    /// Returns the viewport's boundaries as a ``Rect2``.
    public final func getViewportRect() -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_viewport_rect, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_canvas_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_canvas_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the transform from the coordinate system of the canvas, this item is in, to the ``Viewport``s coordinate system.
    public final func getCanvasTransform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_canvas_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_screen_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_screen_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814499831)!
            }
            
        }
        
    }()
    
    /// Returns the transform of this ``CanvasItem`` in global screen coordinates (i.e. taking window position into account). Mostly useful for editor plugins.
    /// 
    /// Equals to ``getGlobalTransform()`` if the window is embedded (see ``Viewport/guiEmbedSubwindows``).
    /// 
    public final func getScreenTransform() -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_screen_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_local_mouse_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_mouse_position")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the mouse's position in this ``CanvasItem`` using the local coordinate system of this ``CanvasItem``.
    public final func getLocalMousePosition() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_local_mouse_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_global_mouse_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_mouse_position")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the mouse's position in the ``CanvasLayer`` that this ``CanvasItem`` is in using the coordinate system of the ``CanvasLayer``.
    /// 
    /// > Note: For screen-space coordinates (e.g. when using a non-embedded ``Popup``), you can use ``DisplayServer/mouseGetPosition()``.
    /// 
    public final func getGlobalMousePosition() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_global_mouse_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_canvas: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_canvas")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2944877500)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` of the ``World2D`` canvas where this item is in.
    public final func getCanvas() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(CanvasItem.method_get_canvas, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_canvas_layer_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_canvas_layer_node")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2602762519)!
            }
            
        }
        
    }()
    
    /// Returns the ``CanvasLayer`` that contains this node, or `null` if the node is not in any ``CanvasLayer``.
    public final func getCanvasLayerNode() -> CanvasLayer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CanvasItem.method_get_canvas_layer_node, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_world_2d: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_world_2d")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2339128592)!
            }
            
        }
        
    }()
    
    /// Returns the ``World2D`` where this item is in.
    public final func getWorld2d() -> World2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CanvasItem.method_get_world_2d, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_material")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_material, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_material")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5934680)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_material() -> Material? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(CanvasItem.method_get_material, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_instance_shader_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_instance_shader_parameter")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Set the value of a shader uniform for this instance only (<a href="https://docs.godotengine.org/en//tutorials/shaders/shader_reference/shading_language.html#per-instance-uniforms">per-instance uniform</a>). See also ``ShaderMaterial/setShaderParameter(param:value:)`` to assign a uniform on all instances using the same ``ShaderMaterial``.
    /// 
    /// > Note: For a shader uniform to be assignable on a per-instance basis, it _must_ be defined with `instance uniform ...` rather than `uniform ...` in the shader code.
    /// 
    /// > Note: `name` is case-sensitive and must match the name of the uniform in the code exactly (not the capitalized name in the inspector).
    /// 
    public final func setInstanceShaderParameter(name: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CanvasItem.method_set_instance_shader_parameter, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_instance_shader_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_instance_shader_parameter")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Get the value of a shader parameter as set on this instance.
    public final func getInstanceShaderParameter(name: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_get_instance_shader_parameter, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_use_parent_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_use_parent_material")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_parent_material(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_use_parent_material, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_use_parent_material: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_use_parent_material")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_use_parent_material() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_get_use_parent_material, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_notify_local_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_notify_local_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `enable` is `true`, this node will receive ``notificationLocalTransformChanged`` when its local transform changes.
    public final func setNotifyLocalTransform(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_notify_local_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_local_transform_notification_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_local_transform_notification_enabled")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if local transform notifications are communicated to children.
    public final func isLocalTransformNotificationEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_local_transform_notification_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_notify_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_notify_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If `enable` is `true`, this node will receive ``notificationTransformChanged`` when its global transform changes.
    public final func setNotifyTransform(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_notify_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_transform_notification_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_transform_notification_enabled")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if global transform notifications are communicated to children.
    public final func isTransformNotificationEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasItem.method_is_transform_notification_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_force_update_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("force_update_transform")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces the transform to update. Transform changes in physics are not instant for performance reasons. Transforms are accumulated and then set. Use this if you need an up-to-date transform when doing physics operations.
    public final func forceUpdateTransform() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(CanvasItem.method_force_update_transform, handle, nil, nil)
        
    }
    
    fileprivate static let method_make_canvas_position_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_canvas_position_local")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2656412154)!
            }
            
        }
        
    }()
    
    /// Transforms `viewportPoint` from the viewport's coordinates to this node's local coordinates.
    /// 
    /// For the opposite operation, use ``getGlobalTransformWithCanvas()``.
    /// 
    public final func makeCanvasPositionLocal(viewportPoint: Vector2) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: viewportPoint) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_make_canvas_position_local, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_make_input_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_input_local")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 811130057)!
            }
            
        }
        
    }()
    
    /// Transformations issued by `event`'s inputs are applied in local space instead of global space.
    public final func makeInputLocal(event: InputEvent?) -> InputEvent? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: event?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_make_input_local, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_visibility_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_layer")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_layer(_ layer: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_visibility_layer, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_layer")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_layer() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(CanvasItem.method_get_visibility_layer, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_visibility_layer_bit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_layer_bit")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Set/clear individual bits on the rendering visibility layer. This simplifies editing this ``CanvasItem``'s visibility layer.
    public final func setVisibilityLayerBit(layer: UInt32, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(CanvasItem.method_set_visibility_layer_bit, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_layer_bit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_layer_bit")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns an individual bit on the rendering visibility layer.
    public final func getVisibilityLayerBit(layer: UInt32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_get_visibility_layer_bit, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_texture_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_filter")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1037999706)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_filter(_ mode: CanvasItem.TextureFilter) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_texture_filter, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_filter")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 121960042)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_filter() -> CanvasItem.TextureFilter {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CanvasItem.method_get_texture_filter, handle, nil, &_result)
        return CanvasItem.TextureFilter (rawValue: _result)!
    }
    
    fileprivate static let method_set_texture_repeat: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_repeat")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1716472974)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_repeat(_ mode: CanvasItem.TextureRepeat) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_texture_repeat, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_texture_repeat: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_repeat")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2667158319)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_repeat() -> CanvasItem.TextureRepeat {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CanvasItem.method_get_texture_repeat, handle, nil, &_result)
        return CanvasItem.TextureRepeat (rawValue: _result)!
    }
    
    fileprivate static let method_set_clip_children_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_clip_children_mode")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1319393776)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_clip_children_mode(_ mode: CanvasItem.ClipChildrenMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasItem.method_set_clip_children_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_clip_children_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_clip_children_mode")
        return withUnsafePointer(to: &CanvasItem.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3581808349)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_clip_children_mode() -> CanvasItem.ClipChildrenMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(CanvasItem.method_get_clip_children_mode, handle, nil, &_result)
        return CanvasItem.ClipChildrenMode (rawValue: _result)!
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_draw":
                return _CanvasItem_proxy_draw
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the ``CanvasItem`` must redraw, _after_ the related ``notificationDraw`` notification, and _before_ ``_draw()`` is called.
    /// 
    /// > Note: Deferred connections do not allow drawing through the `draw_*` methods.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.draw.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var draw: SimpleSignal { SimpleSignal (target: self, signalName: "draw") }
    
    /// Emitted when the ``CanvasItem``'s visibility changes, either because its own ``visible`` property changed or because its visibility in the tree changed (see ``isVisibleInTree()``).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.visibilityChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var visibilityChanged: SimpleSignal { SimpleSignal (target: self, signalName: "visibility_changed") }
    
    /// Emitted when the ``CanvasItem`` is hidden, i.e. it's no longer visible in the tree (see ``isVisibleInTree()``).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.hidden.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var hidden: SimpleSignal { SimpleSignal (target: self, signalName: "hidden") }
    
    /// Emitted when the ``CanvasItem``'s boundaries (position or size) change, or when an action took place that may have affected these boundaries (e.g. changing ``Sprite2D/texture``).
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.itemRectChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var itemRectChanged: SimpleSignal { SimpleSignal (target: self, signalName: "item_rect_changed") }
    
}

// Support methods for proxies
func _CanvasItem_proxy_draw (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? CanvasItem else { return }
    swiftObject._draw ()
}

