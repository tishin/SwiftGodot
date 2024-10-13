// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Represents a straight tube-shaped ``PrimitiveMesh`` with variable width.
/// 
/// ``TubeTrailMesh`` represents a straight tube-shaped mesh with variable width. The tube is composed of a number of cylindrical sections, each with the same ``sectionLength`` and number of ``sectionRings``. A ``curve`` is sampled along the total length of the tube, meaning that the curve determines the radius of the tube along its length.
/// 
/// This primitive mesh is usually used for particle trails.
/// 
open class TubeTrailMesh: PrimitiveMesh {
    override open class var godotClassName: StringName { "TubeTrailMesh" }
    
    /* Properties */
    
    /// The baseline radius of the tube. The radius of a particular section ring is obtained by multiplying this radius by the value of the ``curve`` at the given distance.
    final public var radius: Double {
        get {
            return get_radius ()
        }
        
        set {
            set_radius (newValue)
        }
        
    }
    
    /// The number of sides on the tube. For example, a value of `5` means the tube will be pentagonal. Higher values result in a more detailed tube at the cost of performance.
    final public var radialSteps: Int32 {
        get {
            return get_radial_steps ()
        }
        
        set {
            set_radial_steps (newValue)
        }
        
    }
    
    /// The total number of sections on the tube.
    final public var sections: Int32 {
        get {
            return get_sections ()
        }
        
        set {
            set_sections (newValue)
        }
        
    }
    
    /// The length of a section of the tube.
    final public var sectionLength: Double {
        get {
            return get_section_length ()
        }
        
        set {
            set_section_length (newValue)
        }
        
    }
    
    /// The number of rings in a section. The ``curve`` is sampled on each ring to determine its radius. Higher values result in a more detailed tube at the cost of performance.
    final public var sectionRings: Int32 {
        get {
            return get_section_rings ()
        }
        
        set {
            set_section_rings (newValue)
        }
        
    }
    
    /// If `true`, generates a cap at the top of the tube. This can be set to `false` to speed up generation and rendering when the cap is never seen by the camera.
    final public var capTop: Bool {
        get {
            return is_cap_top ()
        }
        
        set {
            set_cap_top (newValue)
        }
        
    }
    
    /// If `true`, generates a cap at the bottom of the tube. This can be set to `false` to speed up generation and rendering when the cap is never seen by the camera.
    final public var capBottom: Bool {
        get {
            return is_cap_bottom ()
        }
        
        set {
            set_cap_bottom (newValue)
        }
        
    }
    
    /// Determines the radius of the tube along its length. The radius of a particular section ring is obtained by multiplying the baseline ``radius`` by the value of this curve at the given distance. For values smaller than `0`, the faces will be inverted.
    final public var curve: Curve? {
        get {
            return get_curve ()
        }
        
        set {
            set_curve (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static var method_set_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_radius")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radius(_ radius: Double) {
        withUnsafePointer(to: radius) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_radius, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_radius: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_radius")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radius() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_get_radius, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_radial_steps: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_radial_steps")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_radial_steps(_ radialSteps: Int32) {
        withUnsafePointer(to: radialSteps) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_radial_steps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_radial_steps: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_radial_steps")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_radial_steps() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_get_radial_steps, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_sections: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_sections")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_sections(_ sections: Int32) {
        withUnsafePointer(to: sections) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_sections, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_sections: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_sections")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_sections() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_get_sections, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_section_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_section_length")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_section_length(_ sectionLength: Double) {
        withUnsafePointer(to: sectionLength) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_section_length, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_section_length: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_section_length")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_section_length() -> Double {
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_get_section_length, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_section_rings: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_section_rings")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_section_rings(_ sectionRings: Int32) {
        withUnsafePointer(to: sectionRings) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_section_rings, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_section_rings: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_section_rings")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_section_rings() -> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_get_section_rings, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cap_top: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_cap_top")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cap_top(_ capTop: Bool) {
        withUnsafePointer(to: capTop) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_cap_top, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_cap_top: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_cap_top")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_cap_top() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_is_cap_top, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_cap_bottom: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_cap_bottom")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_cap_bottom(_ capBottom: Bool) {
        withUnsafePointer(to: capBottom) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_cap_bottom, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_is_cap_bottom: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_cap_bottom")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_cap_bottom() -> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_is_cap_bottom, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_set_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("set_curve")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 270443179)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_curve(_ curve: Curve?) {
        withUnsafePointer(to: curve?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TubeTrailMesh.method_set_curve, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static var method_get_curve: GDExtensionMethodBindPtr = {
        let methodName = StringName("get_curve")
        return withUnsafePointer(to: &TubeTrailMesh.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2460114913)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_curve() -> Curve? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TubeTrailMesh.method_get_curve, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result)!
    }
    
}
