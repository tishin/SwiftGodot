// This file is auto-generated, do not edit.
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
#if canImport(Darwin)
import Darwin
#elseif os(Windows)
import ucrt
import WinSDK
#elseif canImport(Glibc)
import Glibc
#elseif canImport(Musl)
import Musl
#else
#error("Unable to identify your C library.")
#endif
#endif


/// A container that splits two child controls horizontally or vertically and provides a grabber for adjusting the split ratio.
/// 
/// A container that accepts only two child controls, then arranges them horizontally or vertically and creates a divisor between them. The divisor can be dragged around to change the size relation between the child controls.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``dragged``
open class SplitContainer: Container {
    override open class var godotClassName: StringName { "SplitContainer" }
    public enum DraggerVisibility: Int64, CaseIterable {
        /// The split dragger is visible when the cursor hovers it.
        case visible = 0 // DRAGGER_VISIBLE
        /// The split dragger is never visible.
        case hidden = 1 // DRAGGER_HIDDEN
        /// The split dragger is never visible and its space collapsed.
        case hiddenCollapsed = 2 // DRAGGER_HIDDEN_COLLAPSED
    }
    
    
    /* Properties */
    
    /// The initial offset of the splitting between the two ``Control``s, with `0` being at the end of the first ``Control``.
    final public var splitOffset: Int32 {
        get {
            return get_split_offset ()
        }
        
        set {
            set_split_offset (newValue)
        }
        
    }
    
    /// If `true`, the area of the first ``Control`` will be collapsed and the dragger will be disabled.
    final public var collapsed: Bool {
        get {
            return is_collapsed ()
        }
        
        set {
            set_collapsed (newValue)
        }
        
    }
    
    /// Determines the dragger's visibility. See ``SplitContainer/DraggerVisibility`` for details.
    final public var draggerVisibility: SplitContainer.DraggerVisibility {
        get {
            return get_dragger_visibility ()
        }
        
        set {
            set_dragger_visibility (newValue)
        }
        
    }
    
    /// If `true`, the ``SplitContainer`` will arrange its children vertically, rather than horizontally.
    /// 
    /// Can't be changed when using ``HSplitContainer`` and ``VSplitContainer``.
    /// 
    final public var vertical: Bool {
        get {
            return is_vertical ()
        }
        
        set {
            set_vertical (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_split_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_split_offset(_ offset: Int32) {
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_split_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_split_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_split_offset() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(SplitContainer.method_get_split_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_clamp_split_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName("clamp_split_offset")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clamps the ``splitOffset`` value to not go outside the currently possible minimal and maximum values.
    public final func clampSplitOffset() {
        gi.object_method_bind_ptrcall(SplitContainer.method_clamp_split_offset, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static var method_set_collapsed: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_collapsed")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_collapsed(_ collapsed: Bool) {
        withUnsafePointer(to: collapsed) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_collapsed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_collapsed: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_collapsed")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_collapsed() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_collapsed, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_dragger_visibility: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_dragger_visibility")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1168273952)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_dragger_visibility(_ mode: SplitContainer.DraggerVisibility) {
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_dragger_visibility, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_dragger_visibility: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_dragger_visibility")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 967297479)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_dragger_visibility() -> SplitContainer.DraggerVisibility {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(SplitContainer.method_get_dragger_visibility, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return SplitContainer.DraggerVisibility (rawValue: _result)!
    }
    
    fileprivate static var method_set_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_vertical")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical(_ vertical: Bool) {
        withUnsafePointer(to: vertical) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SplitContainer.method_set_vertical, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_vertical")
        return withUnsafePointer(to: &SplitContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_vertical() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(SplitContainer.method_is_vertical, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when the dragger is dragged by user.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dragged.connect { offset in
    ///    print ("caught signal")
    /// }
    /// ```
    public var dragged: SignalWithArguments<Int64> { SignalWithArguments<Int64> (target: self, signalName: "dragged") }
    
}

