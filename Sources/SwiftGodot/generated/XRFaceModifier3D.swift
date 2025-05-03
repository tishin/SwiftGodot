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


/// A node for driving standard face meshes from ``XRFaceTracker`` weights.
/// 
/// This node applies weights from a ``XRFaceTracker`` to a mesh with supporting face blend shapes.
/// 
/// The <a href="https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/unified-blendshapes">Unified Expressions</a> blend shapes are supported, as well as ARKit and SRanipal blend shapes.
/// 
/// The node attempts to identify blend shapes based on name matching. Blend shapes should match the names listed in the <a href="https://docs.vrcft.io/docs/tutorial-avatars/tutorial-avatars-extras/compatibility/overview">Unified Expressions Compatibility</a> chart.
/// 
open class XRFaceModifier3D: Node3D {
    private static var className = StringName("XRFaceModifier3D")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The ``XRFaceTracker`` path.
    final public var faceTracker: StringName {
        get {
            return get_face_tracker ()
        }
        
        set {
            set_face_tracker (newValue)
        }
        
    }
    
    /// The ``NodePath`` of the face ``MeshInstance3D``.
    final public var target: NodePath {
        get {
            return get_target ()
        }
        
        set {
            set_target (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_face_tracker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_face_tracker")
        return withUnsafePointer(to: &XRFaceModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_face_tracker(_ trackerName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackerName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRFaceModifier3D.method_set_face_tracker, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_face_tracker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_face_tracker")
        return withUnsafePointer(to: &XRFaceModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_face_tracker() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(XRFaceModifier3D.method_get_face_tracker, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_target")
        return withUnsafePointer(to: &XRFaceModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_target(_ target: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: target.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRFaceModifier3D.method_set_target, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_target: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_target")
        return withUnsafePointer(to: &XRFaceModifier3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_target() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(XRFaceModifier3D.method_get_target, handle, nil, &_result.content)
        return _result
    }
    
}

