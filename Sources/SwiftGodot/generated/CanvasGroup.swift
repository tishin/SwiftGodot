// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Merges several 2D nodes into a single draw operation.
/// 
/// Child ``CanvasItem`` nodes of a ``CanvasGroup`` are drawn as a single object. It allows to e.g. draw overlapping translucent 2D nodes without blending (set ``CanvasItem/selfModulate`` property of ``CanvasGroup`` to achieve this effect).
/// 
/// > Note: The ``CanvasGroup`` uses a custom shader to read from the backbuffer to draw its children. Assigning a ``Material`` to the ``CanvasGroup`` overrides the builtin shader. To duplicate the behavior of the builtin shader in a custom ``Shader`` use the following:
/// 
/// > Note: Since ``CanvasGroup`` and ``CanvasItem/clipChildren`` both utilize the backbuffer, children of a ``CanvasGroup`` who have their ``CanvasItem/clipChildren`` set to anything other than ``CanvasItem/ClipChildrenMode/clipChildrenDisabled`` will not function correctly.
/// 
open class CanvasGroup: Node2D {
    override open class var godotClassName: StringName { "CanvasGroup" }
    
    /* Properties */
    
    /// Sets the size of a margin used to expand the drawable rect of this ``CanvasGroup``. The size of the ``CanvasGroup`` is determined by fitting a rect around its children then expanding that rect by ``fitMargin``. This increases both the backbuffer area used and the area covered by the ``CanvasGroup`` both of which can reduce performance. This should be kept as small as possible and should only be expanded when an increased size is needed (e.g. for custom shader effects).
    final public var fitMargin: Double {
        get {
            return get_fit_margin ()
        }
        
        set {
            set_fit_margin (newValue)
        }
        
    }
    
    /// Sets the size of the margin used to expand the clearing rect of this ``CanvasGroup``. This expands the area of the backbuffer that will be used by the ``CanvasGroup``. A smaller margin will reduce the area of the backbuffer used which can increase performance, however if ``useMipmaps`` is enabled, a small margin may result in mipmap errors at the edge of the ``CanvasGroup``. Accordingly, this should be left as small as possible, but should be increased if artifacts appear along the edges of the canvas group.
    final public var clearMargin: Double {
        get {
            return get_clear_margin ()
        }
        
        set {
            set_clear_margin (newValue)
        }
        
    }
    
    /// If `true`, calculates mipmaps for the backbuffer before drawing the ``CanvasGroup`` so that mipmaps can be used in a custom ``ShaderMaterial`` attached to the ``CanvasGroup``. Generating mipmaps has a performance cost so this should not be enabled unless required.
    final public var useMipmaps: Bool {
        get {
            return is_using_mipmaps ()
        }
        
        set {
            set_use_mipmaps (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_fit_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_fit_margin")
        return withUnsafePointer(to: &CanvasGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_fit_margin(_ fitMargin: Double) {
        withUnsafePointer(to: fitMargin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasGroup.method_set_fit_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_fit_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_fit_margin")
        return withUnsafePointer(to: &CanvasGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_fit_margin() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CanvasGroup.method_get_fit_margin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_clear_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_clear_margin")
        return withUnsafePointer(to: &CanvasGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_clear_margin(_ clearMargin: Double) {
        withUnsafePointer(to: clearMargin) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasGroup.method_set_clear_margin, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_clear_margin: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_clear_margin")
        return withUnsafePointer(to: &CanvasGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_clear_margin() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(CanvasGroup.method_get_clear_margin, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_use_mipmaps: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_use_mipmaps")
        return withUnsafePointer(to: &CanvasGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_use_mipmaps(_ useMipmaps: Bool) {
        withUnsafePointer(to: useMipmaps) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(CanvasGroup.method_set_use_mipmaps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_using_mipmaps: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_using_mipmaps")
        return withUnsafePointer(to: &CanvasGroup.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_using_mipmaps() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(CanvasGroup.method_is_using_mipmaps, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
}
