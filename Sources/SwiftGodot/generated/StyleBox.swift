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


/// Abstract base class for defining stylized boxes for UI elements.
/// 
/// ``StyleBox`` is an abstract base class for drawing stylized boxes for UI elements. It is used for panels, buttons, ``LineEdit`` backgrounds, ``Tree`` backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a ``StyleBox`` assigned as mask to a control, clicks and motion signals will go through it to the one below.
/// 
/// > Note: For control nodes that have _Theme Properties_, the `focus` ``StyleBox`` is displayed over the `normal`, `hover` or `pressed` ``StyleBox``. This makes the `focus` ``StyleBox`` more reusable across different nodes.
/// 
open class StyleBox: Resource {
    private static var className = StringName("StyleBox")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The left margin for the contents of this style box. Increasing this value reduces the space available to the contents from the left.
    /// 
    /// Refer to ``contentMarginBottom`` for extra considerations.
    /// 
    final public var contentMarginLeft: Double {
        get {
            return get_content_margin (Side (rawValue: 0)!)
        }
        
        set {
            set_content_margin (Side (rawValue: 0)!, newValue)
        }
        
    }
    
    /// The top margin for the contents of this style box. Increasing this value reduces the space available to the contents from the top.
    /// 
    /// Refer to ``contentMarginBottom`` for extra considerations.
    /// 
    final public var contentMarginTop: Double {
        get {
            return get_content_margin (Side (rawValue: 1)!)
        }
        
        set {
            set_content_margin (Side (rawValue: 1)!, newValue)
        }
        
    }
    
    /// The right margin for the contents of this style box. Increasing this value reduces the space available to the contents from the right.
    /// 
    /// Refer to ``contentMarginBottom`` for extra considerations.
    /// 
    final public var contentMarginRight: Double {
        get {
            return get_content_margin (Side (rawValue: 2)!)
        }
        
        set {
            set_content_margin (Side (rawValue: 2)!, newValue)
        }
        
    }
    
    /// The bottom margin for the contents of this style box. Increasing this value reduces the space available to the contents from the bottom.
    /// 
    /// If this value is negative, it is ignored and a child-specific margin is used instead. For example, for ``StyleBoxFlat``, the border thickness (if any) is used instead.
    /// 
    /// It is up to the code using this style box to decide what these contents are: for example, a ``Button`` respects this content margin for the textual contents of the button.
    /// 
    /// ``getMargin(_:)`` should be used to fetch this value as consumer instead of reading these properties directly. This is because it correctly respects negative values and the fallback mentioned above.
    /// 
    final public var contentMarginBottom: Double {
        get {
            return get_content_margin (Side (rawValue: 3)!)
        }
        
        set {
            set_content_margin (Side (rawValue: 3)!, newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_draw")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2275962004)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _draw(toCanvasItem: RID, rect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: toCanvasItem.content) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StyleBox.method__draw, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_draw_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_draw_rect")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408950903)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _getDrawRect(_ rect: Rect2) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBox.method__get_draw_rect, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_minimum_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_minimum_size")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Virtual method to be implemented by the user. Returns a custom minimum size that the stylebox must respect when drawing. By default ``getMinimumSize()`` only takes content margins into account. This method can be overridden to add another size restriction. A combination of the default behavior and the output of this method will be used, to account for both sizes.
    @_documentation(visibility: public)
    open func _getMinimumSize() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(StyleBox.method__get_minimum_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method__test_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_test_mask")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3735564539)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _testMask(point: Vector2, rect: Rect2) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StyleBox.method__test_mask, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_minimum_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_minimum_size")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the minimum size that this stylebox can be shrunk to.
    public final func getMinimumSize() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(StyleBox.method_get_minimum_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_content_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_content_margin")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4290182280)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Sets the default value of the specified ``Side`` to `offset` pixels.
    fileprivate final func set_content_margin(_ margin: Side, _ offset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StyleBox.method_set_content_margin, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_content_margin_all: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_content_margin_all")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Sets the default margin to `offset` pixels for all sides.
    public final func setContentMarginAll(offset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBox.method_set_content_margin_all, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_content_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_content_margin")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2869120046)!
            }
            
        }
        
    }()
    
    @inline(__always)
    /// Returns the default margin of the specified ``Side``.
    fileprivate final func get_content_margin(_ margin: Side) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBox.method_get_content_margin, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_margin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_margin")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2869120046)!
            }
            
        }
        
    }()
    
    /// Returns the content margin offset for the specified ``Side``.
    /// 
    /// Positive values reduce size inwards, unlike ``Control``'s margin values.
    /// 
    public final func getMargin(_ margin: Side) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: margin.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(StyleBox.method_get_margin, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_offset")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the "offset" of a stylebox. This helper function returns a value equivalent to `Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))`.
    public final func getOffset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(StyleBox.method_get_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2275962004)!
            }
            
        }
        
    }()
    
    /// Draws this stylebox using a canvas item identified by the given ``RID``.
    /// 
    /// The ``RID`` value can either be the result of ``CanvasItem/getCanvasItem()`` called on an existing ``CanvasItem``-derived node, or directly from creating a canvas item in the ``RenderingServer`` with ``RenderingServer/canvasItemCreate()``.
    /// 
    public final func draw(canvasItem: RID, rect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvasItem.content) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StyleBox.method_draw, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_current_item_drawn: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_item_drawn")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3213695180)!
            }
            
        }
        
    }()
    
    /// Returns the ``CanvasItem`` that handles its ``CanvasItem/notificationDraw`` or ``CanvasItem/_draw()`` callback at this moment.
    public final func getCurrentItemDrawn() -> CanvasItem? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(StyleBox.method_get_current_item_drawn, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_test_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("test_mask")
        return withUnsafePointer(to: &StyleBox.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3735564539)!
            }
            
        }
        
    }()
    
    /// Test a position in a rectangle, return whether it passes the mask test.
    public final func testMask(point: Vector2, rect: Rect2) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: point) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StyleBox.method_test_mask, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_draw":
                return _StyleBox_proxy_draw
            case "_get_draw_rect":
                return _StyleBox_proxy_get_draw_rect
            case "_get_minimum_size":
                return _StyleBox_proxy_get_minimum_size
            case "_test_mask":
                return _StyleBox_proxy_test_mask
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _StyleBox_proxy_draw (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? StyleBox else { return }
    swiftObject._draw (toCanvasItem: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), rect: args [1]!.assumingMemoryBound (to: Rect2.self).pointee)
}

func _StyleBox_proxy_get_draw_rect (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? StyleBox else { return }
    let ret = swiftObject._getDrawRect (args [0]!.assumingMemoryBound (to: Rect2.self).pointee)
    retPtr!.storeBytes (of: ret, as: Rect2.self)
}

func _StyleBox_proxy_get_minimum_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? StyleBox else { return }
    let ret = swiftObject._getMinimumSize ()
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _StyleBox_proxy_test_mask (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? StyleBox else { return }
    let ret = swiftObject._testMask (point: args [0]!.assumingMemoryBound (to: Vector2.self).pointee, rect: args [1]!.assumingMemoryBound (to: Rect2.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

