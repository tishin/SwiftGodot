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


/// A control used for visual representation of a percentage.
/// 
/// A control used for visual representation of a percentage. Shows fill percentage from right to left.
open class ProgressBar: Range {
    private static var className = StringName("ProgressBar")
    override open class var godotClassName: StringName { className }
    public enum FillMode: Int64, CaseIterable {
        /// The progress bar fills from begin to end horizontally, according to the language direction. If ``Control/isLayoutRtl()`` returns `false`, it fills from left to right, and if it returns `true`, it fills from right to left.
        case beginToEnd = 0 // FILL_BEGIN_TO_END
        /// The progress bar fills from end to begin horizontally, according to the language direction. If ``Control/isLayoutRtl()`` returns `false`, it fills from right to left, and if it returns `true`, it fills from left to right.
        case endToBegin = 1 // FILL_END_TO_BEGIN
        /// The progress fills from top to bottom.
        case topToBottom = 2 // FILL_TOP_TO_BOTTOM
        /// The progress fills from bottom to top.
        case bottomToTop = 3 // FILL_BOTTOM_TO_TOP
    }
    
    
    /* Properties */
    
    /// The fill direction. See ``ProgressBar/FillMode`` for possible values.
    final public var fillMode: Int32 {
        get {
            return get_fill_mode ()
        }
        
        set {
            set_fill_mode (newValue)
        }
        
    }
    
    /// If `true`, the fill percentage is displayed on the bar.
    final public var showPercentage: Bool {
        get {
            return is_percentage_shown ()
        }
        
        set {
            set_show_percentage (newValue)
        }
        
    }
    
    /// When set to `true`, the progress bar indicates that something is happening with an animation, but does not show the fill percentage or value.
    final public var indeterminate: Bool {
        get {
            return is_indeterminate ()
        }
        
        set {
            set_indeterminate (newValue)
        }
        
    }
    
    /// If `false`, the ``indeterminate`` animation will be paused in the editor.
    final public var editorPreviewIndeterminate: Bool {
        get {
            return is_editor_preview_indeterminate_enabled ()
        }
        
        set {
            set_editor_preview_indeterminate (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_fill_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_fill_mode")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fill_mode(_ mode: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProgressBar.method_set_fill_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_fill_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_fill_mode")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fill_mode() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(ProgressBar.method_get_fill_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_show_percentage: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_show_percentage")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_show_percentage(_ visible: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProgressBar.method_set_show_percentage, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_percentage_shown: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_percentage_shown")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_percentage_shown() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ProgressBar.method_is_percentage_shown, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_indeterminate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_indeterminate")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_indeterminate(_ indeterminate: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: indeterminate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProgressBar.method_set_indeterminate, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_indeterminate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_indeterminate")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_indeterminate() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ProgressBar.method_is_indeterminate, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_editor_preview_indeterminate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editor_preview_indeterminate")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editor_preview_indeterminate(_ previewIndeterminate: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: previewIndeterminate) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ProgressBar.method_set_editor_preview_indeterminate, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_editor_preview_indeterminate_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editor_preview_indeterminate_enabled")
        return withUnsafePointer(to: &ProgressBar.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_editor_preview_indeterminate_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(ProgressBar.method_is_editor_preview_indeterminate_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}

