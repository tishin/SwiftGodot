// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A container that preserves the proportions of its child controls.
/// 
/// A container type that arranges its child controls in a way that preserves their proportions automatically when the container is resized. Useful when a container has a dynamic size and the child nodes must adjust their sizes accordingly without losing their aspect ratios.
open class AspectRatioContainer: Container {
    override open class var godotClassName: StringName { "AspectRatioContainer" }
    public enum StretchMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// The height of child controls is automatically adjusted based on the width of the container.
        case widthControlsHeight = 0 // STRETCH_WIDTH_CONTROLS_HEIGHT
        /// The width of child controls is automatically adjusted based on the height of the container.
        case heightControlsWidth = 1 // STRETCH_HEIGHT_CONTROLS_WIDTH
        /// The bounding rectangle of child controls is automatically adjusted to fit inside the container while keeping the aspect ratio.
        case fit = 2 // STRETCH_FIT
        /// The width and height of child controls is automatically adjusted to make their bounding rectangle cover the entire area of the container while keeping the aspect ratio.
        /// 
        /// When the bounding rectangle of child controls exceed the container's size and ``Control/clipContents`` is enabled, this allows to show only the container's area restricted by its own bounding rectangle.
        /// 
        case cover = 3 // STRETCH_COVER
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .widthControlsHeight: return ".widthControlsHeight"
                case .heightControlsWidth: return ".heightControlsWidth"
                case .fit: return ".fit"
                case .cover: return ".cover"
            }
            
        }
        
    }
    
    public enum AlignmentMode: Int64, CaseIterable, CustomDebugStringConvertible {
        /// Aligns child controls with the beginning (left or top) of the container.
        case begin = 0 // ALIGNMENT_BEGIN
        /// Aligns child controls with the center of the container.
        case center = 1 // ALIGNMENT_CENTER
        /// Aligns child controls with the end (right or bottom) of the container.
        case end = 2 // ALIGNMENT_END
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .begin: return ".begin"
                case .center: return ".center"
                case .end: return ".end"
            }
            
        }
        
    }
    
    
    /* Properties */
    
    /// The aspect ratio to enforce on child controls. This is the width divided by the height. The ratio depends on the ``stretchMode``.
    final public var ratio: Double {
        get {
            return get_ratio ()
        }
        
        set {
            set_ratio (newValue)
        }
        
    }
    
    /// The stretch mode used to align child controls.
    final public var stretchMode: AspectRatioContainer.StretchMode {
        get {
            return get_stretch_mode ()
        }
        
        set {
            set_stretch_mode (newValue)
        }
        
    }
    
    /// Specifies the horizontal relative position of child controls.
    final public var alignmentHorizontal: AspectRatioContainer.AlignmentMode {
        get {
            return get_alignment_horizontal ()
        }
        
        set {
            set_alignment_horizontal (newValue)
        }
        
    }
    
    /// Specifies the vertical relative position of child controls.
    final public var alignmentVertical: AspectRatioContainer.AlignmentMode {
        get {
            return get_alignment_vertical ()
        }
        
        set {
            set_alignment_vertical (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_ratio")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_ratio(_ ratio: Double) {
        withUnsafePointer(to: ratio) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AspectRatioContainer.method_set_ratio, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_ratio: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_ratio")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_ratio() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(AspectRatioContainer.method_get_ratio, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_stretch_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_stretch_mode")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1876743467)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_stretch_mode(_ stretchMode: AspectRatioContainer.StretchMode) {
        withUnsafePointer(to: stretchMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AspectRatioContainer.method_set_stretch_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_stretch_mode: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_stretch_mode")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3416449033)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_stretch_mode() -> AspectRatioContainer.StretchMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AspectRatioContainer.method_get_stretch_mode, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AspectRatioContainer.StretchMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_alignment_horizontal: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_alignment_horizontal")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2147829016)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alignment_horizontal(_ alignmentHorizontal: AspectRatioContainer.AlignmentMode) {
        withUnsafePointer(to: alignmentHorizontal.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AspectRatioContainer.method_set_alignment_horizontal, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_alignment_horizontal: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_alignment_horizontal")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3838875429)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_alignment_horizontal() -> AspectRatioContainer.AlignmentMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AspectRatioContainer.method_get_alignment_horizontal, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AspectRatioContainer.AlignmentMode (rawValue: _result)!
    }
    
    fileprivate static var method_set_alignment_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_alignment_vertical")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2147829016)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_alignment_vertical(_ alignmentVertical: AspectRatioContainer.AlignmentMode) {
        withUnsafePointer(to: alignmentVertical.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AspectRatioContainer.method_set_alignment_vertical, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_alignment_vertical: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_alignment_vertical")
        return withUnsafePointer(to: &AspectRatioContainer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3838875429)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_alignment_vertical() -> AspectRatioContainer.AlignmentMode {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AspectRatioContainer.method_get_alignment_vertical, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return AspectRatioContainer.AlignmentMode (rawValue: _result)!
    }
    
}

