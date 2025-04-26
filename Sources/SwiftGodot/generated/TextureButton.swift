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


/// Texture-based button. Supports Pressed, Hover, Disabled and Focused states.
/// 
/// ``TextureButton`` has the same functionality as ``Button``, except it uses sprites instead of Godot's ``Theme`` resource. It is faster to create, but it doesn't support localization like more complex ``Control``s.
/// 
/// See also ``BaseButton`` which contains common properties and methods associated with this node.
/// 
/// > Note: Setting a texture for the "normal" state (``textureNormal``) is recommended. If ``textureNormal`` is not set, the ``TextureButton`` will still receive input events and be clickable, but the user will not be able to see it unless they activate another one of its states with a texture assigned (e.g., hover over it to show ``textureHover``).
/// 
open class TextureButton: BaseButton {
    private static var className = StringName("TextureButton")
    override open class var godotClassName: StringName { className }
    public enum StretchMode: Int64, CaseIterable {
        /// Scale to fit the node's bounding rectangle.
        case scale = 0 // STRETCH_SCALE
        /// Tile inside the node's bounding rectangle.
        case tile = 1 // STRETCH_TILE
        /// The texture keeps its original size and stays in the bounding rectangle's top-left corner.
        case keep = 2 // STRETCH_KEEP
        /// The texture keeps its original size and stays centered in the node's bounding rectangle.
        case keepCentered = 3 // STRETCH_KEEP_CENTERED
        /// Scale the texture to fit the node's bounding rectangle, but maintain the texture's aspect ratio.
        case keepAspect = 4 // STRETCH_KEEP_ASPECT
        /// Scale the texture to fit the node's bounding rectangle, center it, and maintain its aspect ratio.
        case keepAspectCentered = 5 // STRETCH_KEEP_ASPECT_CENTERED
        /// Scale the texture so that the shorter side fits the bounding rectangle. The other side clips to the node's limits.
        case keepAspectCovered = 6 // STRETCH_KEEP_ASPECT_COVERED
    }
    
    
    /* Properties */
    
    /// Texture to display by default, when the node is **not** in the disabled, hover or pressed state. This texture is still displayed in the focused state, with ``textureFocused`` drawn on top.
    final public var textureNormal: Texture2D? {
        get {
            return get_texture_normal ()
        }
        
        set {
            set_texture_normal (newValue)
        }
        
    }
    
    /// Texture to display on mouse down over the node, if the node has keyboard focus and the player presses the Enter key or if the player presses the ``BaseButton/shortcut`` key. If not assigned, the ``TextureButton`` displays ``textureHover`` instead when pressed.
    final public var texturePressed: Texture2D? {
        get {
            return get_texture_pressed ()
        }
        
        set {
            set_texture_pressed (newValue)
        }
        
    }
    
    /// Texture to display when the mouse hovers over the node. If not assigned, the ``TextureButton`` displays ``textureNormal`` instead when hovered over.
    final public var textureHover: Texture2D? {
        get {
            return get_texture_hover ()
        }
        
        set {
            set_texture_hover (newValue)
        }
        
    }
    
    /// Texture to display when the node is disabled. See ``BaseButton/disabled``. If not assigned, the ``TextureButton`` displays ``textureNormal`` instead.
    final public var textureDisabled: Texture2D? {
        get {
            return get_texture_disabled ()
        }
        
        set {
            set_texture_disabled (newValue)
        }
        
    }
    
    /// Texture to _overlay on the base texture_ when the node has mouse or keyboard focus. Because ``textureFocused`` is displayed on top of the base texture, a partially transparent texture should be used to ensure the base texture remains visible. A texture that represents an outline or an underline works well for this purpose. To disable the focus visual effect, assign a fully transparent texture of any size. Note that disabling the focus visual effect will harm keyboard/controller navigation usability, so this is not recommended for accessibility reasons.
    final public var textureFocused: Texture2D? {
        get {
            return get_texture_focused ()
        }
        
        set {
            set_texture_focused (newValue)
        }
        
    }
    
    /// Pure black and white ``BitMap`` image to use for click detection. On the mask, white pixels represent the button's clickable area. Use it to create buttons with curved shapes.
    final public var textureClickMask: BitMap? {
        get {
            return get_click_mask ()
        }
        
        set {
            set_click_mask (newValue)
        }
        
    }
    
    /// If `true`, the size of the texture won't be considered for minimum size calculation, so the ``TextureButton`` can be shrunk down past the texture size.
    final public var ignoreTextureSize: Bool {
        get {
            return get_ignore_texture_size ()
        }
        
        set {
            set_ignore_texture_size (newValue)
        }
        
    }
    
    /// Controls the texture's behavior when you resize the node's bounding rectangle. See the ``TextureButton/StretchMode`` constants for available options.
    final public var stretchMode: TextureButton.StretchMode {
        get {
            return get_stretch_mode ()
        }
        
        set {
            set_stretch_mode (newValue)
        }
        
    }
    
    /// If `true`, texture is flipped horizontally.
    final public var flipH: Bool {
        get {
            return is_flipped_h ()
        }
        
        set {
            set_flip_h (newValue)
        }
        
    }
    
    /// If `true`, texture is flipped vertically.
    final public var flipV: Bool {
        get {
            return is_flipped_v ()
        }
        
        set {
            set_flip_v (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_texture_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_normal")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_normal(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_texture_normal, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_texture_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_pressed")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_pressed(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_texture_pressed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_texture_hover: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_hover")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_hover(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_texture_hover, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_texture_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_disabled")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_disabled(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_texture_disabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_texture_focused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_texture_focused")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4051416890)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_texture_focused(_ texture: Texture2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_texture_focused, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_click_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_click_mask")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 698588216)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_click_mask(_ mask: BitMap?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mask?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_click_mask, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_ignore_texture_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ignore_texture_size")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ignore_texture_size(_ ignore: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ignore) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_ignore_texture_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_stretch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_stretch_mode")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 252530840)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stretch_mode(_ mode: TextureButton.StretchMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_stretch_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_flip_h: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flip_h")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_h(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_flip_h, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_flipped_h: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_flipped_h")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flipped_h() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextureButton.method_is_flipped_h, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_flip_v: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_flip_v")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_flip_v(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextureButton.method_set_flip_v, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_flipped_v: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_flipped_v")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_flipped_v() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextureButton.method_is_flipped_v, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_texture_normal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_normal")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_normal() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TextureButton.method_get_texture_normal, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_texture_pressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_pressed")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_pressed() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TextureButton.method_get_texture_pressed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_texture_hover: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_hover")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_hover() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TextureButton.method_get_texture_hover, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_texture_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_disabled")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_disabled() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TextureButton.method_get_texture_disabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_texture_focused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_texture_focused")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3635182373)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_texture_focused() -> Texture2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TextureButton.method_get_texture_focused, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_click_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_click_mask")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2459671998)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_click_mask() -> BitMap? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TextureButton.method_get_click_mask, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_ignore_texture_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_ignore_texture_size")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ignore_texture_size() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TextureButton.method_get_ignore_texture_size, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_stretch_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stretch_mode")
        return withUnsafePointer(to: &TextureButton.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 33815122)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stretch_mode() -> TextureButton.StretchMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(TextureButton.method_get_stretch_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TextureButton.StretchMode (rawValue: _result)!
    }
    
}

