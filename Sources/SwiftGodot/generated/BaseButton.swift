// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Abstract base class for GUI buttons.
/// 
/// ``BaseButton`` is an abstract base class for GUI buttons. It doesn't display anything by itself.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``pressed``
/// - ``buttonUp``
/// - ``buttonDown``
/// - ``toggled``
open class BaseButton: Control {
    override open class var godotClassName: StringName { "BaseButton" }
    public enum DrawMode: Int64, CustomDebugStringConvertible {
        /// The normal state (i.e. not pressed, not hovered, not toggled and enabled) of buttons.
        case normal = 0 // DRAW_NORMAL
        /// The state of buttons are pressed.
        case pressed = 1 // DRAW_PRESSED
        /// The state of buttons are hovered.
        case hover = 2 // DRAW_HOVER
        /// The state of buttons are disabled.
        case disabled = 3 // DRAW_DISABLED
        /// The state of buttons are both hovered and pressed.
        case hoverPressed = 4 // DRAW_HOVER_PRESSED
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .normal: return ".normal"
                case .pressed: return ".pressed"
                case .hover: return ".hover"
                case .disabled: return ".disabled"
                case .hoverPressed: return ".hoverPressed"
            }
            
        }
        
    }
    
    public enum ActionMode: Int64, CustomDebugStringConvertible {
        /// Require just a press to consider the button clicked.
        case press = 0 // ACTION_MODE_BUTTON_PRESS
        /// Require a press and a subsequent release before considering the button clicked.
        case release = 1 // ACTION_MODE_BUTTON_RELEASE
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .press: return ".press"
                case .release: return ".release"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// If `true`, the button is in disabled state and can't be clicked or toggled.
    final public var disabled: Bool {
        get {
            return is_disabled ()
        }
        
        set {
            set_disabled (newValue)
        }
        
    }
    
    /// If `true`, the button is in toggle mode. Makes the button flip state between pressed and unpressed each time its area is clicked.
    final public var toggleMode: Bool {
        get {
            return is_toggle_mode ()
        }
        
        set {
            set_toggle_mode (newValue)
        }
        
    }
    
    /// If `true`, the button's state is pressed. Means the button is pressed down or toggled (if ``toggleMode`` is active). Only works if ``toggleMode`` is `true`.
    /// 
    /// > Note: Setting ``buttonPressed`` will result in [signal toggled] to be emitted. If you want to change the pressed state without emitting that signal, use ``setPressedNoSignal(pressed:)``.
    /// 
    final public var buttonPressed: Bool {
        get {
            return is_pressed ()
        }
        
        set {
            set_pressed (newValue)
        }
        
    }
    
    /// Determines when the button is considered clicked, one of the ``BaseButton/ActionMode`` constants.
    final public var actionMode: BaseButton.ActionMode {
        get {
            return get_action_mode ()
        }
        
        set {
            set_action_mode (newValue)
        }
        
    }
    
    /// Binary mask to choose which mouse buttons this button will respond to.
    /// 
    /// To allow both left-click and right-click, use `MOUSE_BUTTON_MASK_LEFT | MOUSE_BUTTON_MASK_RIGHT`.
    /// 
    final public var buttonMask: MouseButtonMask {
        get {
            return get_button_mask ()
        }
        
        set {
            set_button_mask (newValue)
        }
        
    }
    
    /// If `true`, the button stays pressed when moving the cursor outside the button while pressing it.
    /// 
    /// > Note: This property only affects the button's visual appearance. Signals will be emitted at the same moment regardless of this property's value.
    /// 
    final public var keepPressedOutside: Bool {
        get {
            return is_keep_pressed_outside ()
        }
        
        set {
            set_keep_pressed_outside (newValue)
        }
        
    }
    
    /// The ``ButtonGroup`` associated with the button. Not to be confused with node groups.
    /// 
    /// > Note: The button will be configured as a radio button if a ``ButtonGroup`` is assigned to it.
    /// 
    final public var buttonGroup: ButtonGroup? {
        get {
            return get_button_group ()
        }
        
        set {
            set_button_group (newValue)
        }
        
    }
    
    /// ``Shortcut`` associated to the button.
    final public var shortcut: Shortcut? {
        get {
            return get_shortcut ()
        }
        
        set {
            set_shortcut (newValue)
        }
        
    }
    
    /// If `true`, the button will highlight for a short amount of time when its shortcut is activated. If `false` and ``toggleMode`` is `false`, the shortcut will activate without any visual feedback.
    final public var shortcutFeedback: Bool {
        get {
            return is_shortcut_feedback ()
        }
        
        set {
            set_shortcut_feedback (newValue)
        }
        
    }
    
    /// If `true`, the button will add information about its shortcut in the tooltip.
    final public var shortcutInTooltip: Bool {
        get {
            return is_shortcut_in_tooltip_enabled ()
        }
        
        set {
            set_shortcut_in_tooltip (newValue)
        }
        
    }
    
    /* Methods */
    /// Called when the button is pressed. If you need to know the button's pressed state (and ``toggleMode`` is active), use ``_toggled(toggledOn:)`` instead.
    @_documentation(visibility: public)
    open func _pressed () {
    }
    
    /// Called when the button is toggled (only if ``toggleMode`` is active).
    @_documentation(visibility: public)
    open func _toggled (toggledOn: Bool) {
    }
    
    fileprivate static var method_set_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pressed")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_pressed (_ pressed: Bool) {
        #if true
        
        var copy_pressed = pressed
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pressed)
        
        #else
        
        var copy_pressed = pressed
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pressed) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_pressed, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_pressed: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_pressed")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_pressed ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BaseButton.method_is_pressed, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_pressed_no_signal: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_pressed_no_signal")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Changes the ``buttonPressed`` state of the button, without emitting [signal toggled]. Use when you just want to change the state of the button without sending the pressed event (e.g. when initializing scene). Only works if ``toggleMode`` is `true`.
    /// 
    /// > Note: This method doesn't unpress other buttons in ``buttonGroup``.
    /// 
    public final func setPressedNoSignal (pressed: Bool) {
        #if true
        
        var copy_pressed = pressed
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_pressed_no_signal, UnsafeMutableRawPointer (mutating: handle), nil, &copy_pressed)
        
        #else
        
        var copy_pressed = pressed
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_pressed) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_pressed_no_signal, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_hovered: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_hovered")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the mouse has entered the button and has not left it yet.
    public final func isHovered ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BaseButton.method_is_hovered, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_toggle_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_toggle_mode")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_toggle_mode (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_toggle_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_toggle_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_toggle_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_toggle_mode")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_toggle_mode ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BaseButton.method_is_toggle_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shortcut_in_tooltip: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shortcut_in_tooltip")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shortcut_in_tooltip (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_shortcut_in_tooltip, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_shortcut_in_tooltip, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_shortcut_in_tooltip_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_shortcut_in_tooltip_enabled")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_shortcut_in_tooltip_enabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BaseButton.method_is_shortcut_in_tooltip_enabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_disabled")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_disabled (_ disabled: Bool) {
        #if true
        
        var copy_disabled = disabled
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_disabled, UnsafeMutableRawPointer (mutating: handle), nil, &copy_disabled)
        
        #else
        
        var copy_disabled = disabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_disabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_disabled, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_disabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_disabled")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_disabled ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BaseButton.method_is_disabled, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_action_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_action_mode")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1985162088)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_action_mode (_ mode: BaseButton.ActionMode) {
        #if true
        
        var copy_mode = Int64 (mode.rawValue)
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_action_mode, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mode)
        
        #else
        
        var copy_mode = Int64 (mode.rawValue)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mode) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_action_mode, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_action_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_action_mode")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2589712189)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_action_mode ()-> BaseButton.ActionMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (BaseButton.method_get_action_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return BaseButton.ActionMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_button_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_button_mask")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3950145251)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_button_mask (_ mask: MouseButtonMask) {
        #if true
        
        var copy_mask = mask
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_button_mask, UnsafeMutableRawPointer (mutating: handle), nil, &copy_mask)
        
        #else
        
        var copy_mask = mask
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_mask) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_button_mask, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_button_mask: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_button_mask")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2512161324)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_button_mask ()-> MouseButtonMask {
        var _result: MouseButtonMask = MouseButtonMask ()
        gi.object_method_bind_ptrcall (BaseButton.method_get_button_mask, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_draw_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_draw_mode")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2492721305)!
            }
            
        }
        
    }()
    
    /// Returns the visual state used to draw the button. This is useful mainly when implementing your own draw code by either overriding _draw() or connecting to "draw" signal. The visual state of the button is defined by the ``BaseButton/DrawMode`` enum.
    public final func getDrawMode ()-> BaseButton.DrawMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (BaseButton.method_get_draw_mode, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return BaseButton.DrawMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_keep_pressed_outside: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_keep_pressed_outside")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_keep_pressed_outside (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_keep_pressed_outside, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_keep_pressed_outside, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_keep_pressed_outside: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_keep_pressed_outside")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_keep_pressed_outside ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BaseButton.method_is_keep_pressed_outside, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shortcut_feedback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shortcut_feedback")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shortcut_feedback (_ enabled: Bool) {
        #if true
        
        var copy_enabled = enabled
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_shortcut_feedback, UnsafeMutableRawPointer (mutating: handle), nil, &copy_enabled)
        
        #else
        
        var copy_enabled = enabled
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_enabled) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_shortcut_feedback, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_is_shortcut_feedback: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_shortcut_feedback")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_shortcut_feedback ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (BaseButton.method_is_shortcut_feedback, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_shortcut: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_shortcut")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 857163497)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_shortcut (_ shortcut: Shortcut?) {
        #if true
        
        var copy_shortcut_handle = shortcut?.handle
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_shortcut, UnsafeMutableRawPointer (mutating: handle), nil, &copy_shortcut_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: shortcut?.handle) { p0 in
        _args.append (shortcut == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_shortcut, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_shortcut: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_shortcut")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3415666916)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_shortcut ()-> Shortcut? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (BaseButton.method_get_shortcut, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    fileprivate static var method_set_button_group: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_button_group")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1794463739)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_button_group (_ buttonGroup: ButtonGroup?) {
        #if true
        
        var copy_button_group_handle = buttonGroup?.handle
        
        gi.object_method_bind_ptrcall_v (BaseButton.method_set_button_group, UnsafeMutableRawPointer (mutating: handle), nil, &copy_button_group_handle)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: buttonGroup?.handle) { p0 in
        _args.append (buttonGroup == nil ? nil : p0)
        
            gi.object_method_bind_ptrcall (BaseButton.method_set_button_group, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_button_group: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_button_group")
        return withUnsafePointer (to: &BaseButton.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 281644053)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_button_group ()-> ButtonGroup? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall (BaseButton.method_get_button_group, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_pressed":
                return _BaseButton_proxy_pressed
            case "_toggled":
                return _BaseButton_proxy_toggled
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the button is toggled or pressed. This is on [signal button_down] if ``actionMode`` is .buttonPress and on [signal button_up] otherwise.
    /// 
    /// If you need to know the button's pressed state (and ``toggleMode`` is active), use [signal toggled] instead.
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
    /// obj.pressed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var pressed: SimpleSignal { SimpleSignal (target: self, signalName: "pressed") }
    
    /// Emitted when the button stops being held down.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.buttonUp.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var buttonUp: SimpleSignal { SimpleSignal (target: self, signalName: "button_up") }
    
    /// Emitted when the button starts being held down.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.buttonDown.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var buttonDown: SimpleSignal { SimpleSignal (target: self, signalName: "button_down") }
    
    /// Signal support.
    /// 
    /// 
    /// 
    /// Use the ``Signal1/connect(flags:_:)`` method to connect to the signal on the container object, and ``Signal1/disconnect(_:)`` to drop the connection.
    /// 
    /// You can also await the ``Signal1/emitted`` property for waiting for a single emission of the signal.
    /// 
    public class Signal1 {
        var target: Object
        var signalName: StringName
        init (target: Object, signalName: StringName) {
            self.target = target
            self.signalName = signalName
        }
        
        /// Connects the signal to the specified callback
        /// 
        /// 
        /// 
        /// To disconnect, call the disconnect method, with the returned token on success
        /// 
        /// - Parameters:
        /// 
        /// - callback: the method to invoke when this signal is raised
        /// 
        /// - flags: Optional, can be also added to configure the connection's behavior (see ``Object/ConnectFlags`` constants).
        /// 
        /// - Returns: an object token that can be used to disconnect the object from the target on success, or the error produced by Godot.
        /// 
        @discardableResult /* Signal1 */
        public func connect (flags: Object.ConnectFlags = [], _ callback: @escaping (_ toggledOn: Bool) -> ()) -> Object {
            let signalProxy = SignalProxy()
            signalProxy.proxy =  {
                args in
                let arg_0 = Bool (args [0])!
                
                callback (arg_0)
            }
            
            let callable = Callable(object: signalProxy, method: SignalProxy.proxyName)
            let r = target.connect(signal: signalName, callable: callable, flags: UInt32 (flags.rawValue))
            if r != .ok { print ("Warning, error connecting to signal, code: \(r)") }
            return signalProxy
        }
        
        /// Disconnects a signal that was previously connected, the return value from calling ``connect(flags:_:)``
        public func disconnect (_ token: Object) {
            target.disconnect(signal: signalName, callable: Callable (object: token, method: SignalProxy.proxyName))
        }
        
        /// You can await this property to wait for the signal to be emitted once
        public var emitted: Void  {
            get async {
                await withCheckedContinuation {
                    c in
                    connect (flags: .oneShot) { _ in c.resume () }
                }
                
            }
            
        }
        
    }
    
    /// Emitted when the button was just toggled between pressed and normal states (only if ``toggleMode`` is active). The new state is contained in the `toggledOn` argument.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.toggled.connect { toggledOn in
    ///    print ("caught signal")
    /// }
    /// ```
    public var toggled: Signal1 { Signal1 (target: self, signalName: "toggled") }
    
}

// Support methods for proxies
func _BaseButton_proxy_pressed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let swiftObject = Unmanaged<BaseButton>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._pressed ()
}

func _BaseButton_proxy_toggled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<BaseButton>.fromOpaque(instance).takeUnretainedValue()
    swiftObject._toggled (toggledOn: args [0]!.assumingMemoryBound (to: Bool.self).pointee)
}

