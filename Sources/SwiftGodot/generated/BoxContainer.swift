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


/// A container that arranges its child controls horizontally or vertically.
/// 
/// A container that arranges its child controls horizontally or vertically, rearranging them automatically when their minimum size changes.
open class BoxContainer: Container {
    private static var className = StringName("BoxContainer")
    override open class var godotClassName: StringName { className }
    public enum AlignmentMode: Int64, CaseIterable {
        /// The child controls will be arranged at the beginning of the container, i.e. top if orientation is vertical, left if orientation is horizontal (right for RTL layout).
        case begin = 0 // ALIGNMENT_BEGIN
        /// The child controls will be centered in the container.
        case center = 1 // ALIGNMENT_CENTER
        /// The child controls will be arranged at the end of the container, i.e. bottom if orientation is vertical, right if orientation is horizontal (left for RTL layout).
        case end = 2 // ALIGNMENT_END
    }
    
    
    /* Properties */
    
    /// The alignment of the container's children (must be one of ``AlignmentMode/begin``, ``AlignmentMode/center``, or ``AlignmentMode/end``).
    final public var alignment: BoxContainer.AlignmentMode {
        get {
            return get_alignment ()
        }
        
        set {
            set_alignment (newValue)
        }
        
    }
    
    /// If `true`, the ``BoxContainer`` will arrange its children vertically, rather than horizontally.
    /// 
    /// Can't be changed when using ``HBoxContainer`` and ``VBoxContainer``.
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
    fileprivate static let method_add_spacer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_spacer")
        return withUnsafePointer(to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1326660695)!
            }
            
        }
        
    }()
    
    /// Adds a ``Control`` node to the box as a spacer. If `begin` is `true`, it will insert the ``Control`` node in front of all other children.
    public final func addSpacer(begin: Bool) -> Control? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: begin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BoxContainer.method_add_spacer, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_alignment")
        return withUnsafePointer(to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2456745134)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alignment(_ alignment: BoxContainer.AlignmentMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: alignment.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BoxContainer.method_set_alignment, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_alignment: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_alignment")
        return withUnsafePointer(to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1915476527)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_alignment() -> BoxContainer.AlignmentMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(BoxContainer.method_get_alignment, handle, nil, &_result)
        return BoxContainer.AlignmentMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_vertical: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_vertical")
        return withUnsafePointer(to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_vertical(_ vertical: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: vertical) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BoxContainer.method_set_vertical, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_vertical: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_vertical")
        return withUnsafePointer(to: &BoxContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_vertical() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(BoxContainer.method_is_vertical, handle, nil, &_result)
        return _result
    }
    
}

