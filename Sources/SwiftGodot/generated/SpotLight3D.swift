// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A spotlight, such as a reflector spotlight or a lantern.
/// 
/// A Spotlight is a type of ``Light3D`` node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance. This attenuation can be configured by changing the energy, radius and attenuation parameters of ``Light3D``.
/// 
/// > Note: When using the Mobile rendering method, only 8 spot lights can be displayed on each mesh resource. Attempting to display more than 8 spot lights on a single mesh resource will result in spot lights flickering in and out as the camera moves. When using the Compatibility rendering method, only 8 spot lights can be displayed on each mesh resource by default, but this can be increased by adjusting ``ProjectSettings/rendering/limits/opengl/maxLightsPerObject``.
/// 
/// > Note: When using the Mobile or Compatibility rendering methods, spot lights will only correctly affect meshes whose visibility AABB intersects with the light's AABB. If using a shader to deform the mesh in a way that makes it go outside its AABB, ``GeometryInstance3D/extraCullMargin`` must be increased on the mesh. Otherwise, the light may not be visible on the mesh.
/// 
open class SpotLight3D: Light3D {
    override open class var godotClassName: StringName { "SpotLight3D" }
    
    /* Properties */
    
    /// The maximal range that can be reached by the spotlight. Note that the effectively lit area may appear to be smaller depending on the ``spotAttenuation`` in use. No matter the ``spotAttenuation`` in use, the light will never reach anything outside this range.
    /// 
    /// > Note: ``spotRange`` is not affected by ``Node3D/scale`` (the light's scale or its parent's scale).
    /// 
    final public var spotRange: Double {
        get {
            return get_param (Light3D.Param (rawValue: 4)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 4)!, newValue)
        }
        
    }
    
    /// Controls the distance attenuation function for spotlights.
    /// 
    /// A value of `0.0` will maintain a constant brightness through most of the range, but smoothly attenuate the light at the edge of the range. Use a value of `2.0` for physically accurate lights as it results in the proper inverse square attenutation.
    /// 
    /// > Note: Setting attenuation to `2.0` or higher may result in distant objects receiving minimal light, even within range. For example, with a range of `4096`, an object at `100` units is attenuated by a factor of `0.0001`. With a default brightness of `1`, the light would not be visible at that distance.
    /// 
    /// > Note: Using negative or values higher than `10.0` may lead to unexpected results.
    /// 
    final public var spotAttenuation: Double {
        get {
            return get_param (Light3D.Param (rawValue: 6)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 6)!, newValue)
        }
        
    }
    
    /// The spotlight's angle in degrees.
    /// 
    /// > Note: ``spotAngle`` is not affected by ``Node3D/scale`` (the light's scale or its parent's scale).
    /// 
    final public var spotAngle: Double {
        get {
            return get_param (Light3D.Param (rawValue: 7)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 7)!, newValue)
        }
        
    }
    
    /// The spotlight's _angular_ attenuation curve. See also ``spotAttenuation``.
    final public var spotAngleAttenuation: Double {
        get {
            return get_param (Light3D.Param (rawValue: 8)!)
        }
        
        set {
            set_param (Light3D.Param (rawValue: 8)!, newValue)
        }
        
    }
    
}

