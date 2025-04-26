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


/// Provides the content of a ``Viewport`` as a dynamic texture.
/// 
/// A ``ViewportTexture`` provides the content of a ``Viewport`` as a dynamic ``Texture2D``. This can be used to combine the rendering of ``Control``, ``Node2D`` and ``Node3D`` nodes. For example, you can use this texture to display a 3D scene inside a ``TextureRect``, or a 2D overlay in a ``Sprite3D``.
/// 
/// To get a ``ViewportTexture`` in code, use the ``Viewport/getTexture()`` method on the target viewport.
/// 
/// > Note: A ``ViewportTexture`` is always local to its scene (see ``Resource/resourceLocalToScene``). If the scene root is not ready, it may return incorrect data (see [signal Node.ready]).
/// 
/// > Note: Instantiating scenes containing a high-resolution ``ViewportTexture`` may cause noticeable stutter.
/// 
/// > Note: When using a ``Viewport`` with ``Viewport/useHdr2d`` set to `true`, the returned texture will be an HDR image encoded in linear space. This may look darker than normal when displayed directly on screen. To convert to gamma space, you can do the following:
/// 
/// > Note: Some nodes such as ``Decal``, ``Light3D``, and ``PointLight2D`` do not support using ``ViewportTexture`` directly. To use texture data from a ``ViewportTexture`` in these nodes, you need to create an ``ImageTexture`` by calling ``Texture2D/getImage()`` on the ``ViewportTexture`` and passing the result to ``ImageTexture/createFromImage(_:)``. This conversion is a slow operation, so it should not be performed every frame.
/// 
open class ViewportTexture: Texture2D {
    private static var className = StringName("ViewportTexture")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The path to the ``Viewport`` node to display. This is relative to the local scene root (see ``Resource/getLocalScene()``), **not** to the nodes that use this texture.
    /// 
    /// > Note: In the editor, this path is automatically updated when the target viewport or one of its ancestors is renamed or moved. At runtime, this path may not automatically update if the scene root cannot be found.
    /// 
    final public var viewportPath: NodePath {
        get {
            return get_viewport_path_in_scene ()
        }
        
        set {
            set_viewport_path_in_scene (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_viewport_path_in_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_viewport_path_in_scene")
        return withUnsafePointer(to: &ViewportTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_viewport_path_in_scene(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ViewportTexture.method_set_viewport_path_in_scene, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_viewport_path_in_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_viewport_path_in_scene")
        return withUnsafePointer(to: &ViewportTexture.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_viewport_path_in_scene() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(ViewportTexture.method_get_viewport_path_in_scene, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
}

