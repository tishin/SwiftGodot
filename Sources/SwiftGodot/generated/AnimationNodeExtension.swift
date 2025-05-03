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


/// Base class for extending ``AnimationRootNode``s from GDScript, C#, or C++.
/// 
/// ``AnimationNodeExtension`` exposes the APIs of ``AnimationRootNode`` to allow users to extend it from GDScript, C#, or C++. This class is not meant to be used directly, but to be extended by other classes. It is used to create custom nodes for the ``AnimationTree`` system.
open class AnimationNodeExtension: AnimationNode {
    private static var className = StringName("AnimationNodeExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__process_animation_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process_animation_node")
        return withUnsafePointer(to: &AnimationNodeExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 912931771)!
            }
            
        }
        
    }()
    
    /// A version of the ``AnimationNode/_process(time:seek:isExternalSeeking:testOnly:)`` method that is meant to be overridden by custom nodes. It returns a ``PackedFloat32Array`` with the processed animation data.
    /// 
    /// The ``PackedFloat64Array`` parameter contains the playback information, containing the following values encoded as floating point numbers (in order): playback time and delta, start and end times, whether a seek was requested (encoded as a float greater than `0`), whether the seek request was externally requested (encoded as a float greater than `0`), the current ``Animation.LoopedFlag`` (encoded as a float), and the current blend weight.
    /// 
    /// The function must return a ``PackedFloat32Array`` of the node's time info, containing the following values (in order): animation length, time position, delta, ``Animation.LoopMode`` (encoded as a float), whether the animation is about to end (encoded as a float greater than `0`) and whether the animation is infinite (encoded as a float greater than `0`). All values must be included in the returned array.
    /// 
    @_documentation(visibility: public)
    open func _processAnimationNode(playbackInfo: PackedFloat64Array, testOnly: Bool) -> PackedFloat32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedFloat32Array = PackedFloat32Array ()
        withUnsafePointer(to: playbackInfo.content) { pArg0 in
            withUnsafePointer(to: testOnly) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeExtension.method__process_animation_node, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_looping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_looping")
        return withUnsafePointer(to: &AnimationNodeExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2035584311)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the animation for the given `nodeInfo` is looping.
    public static func isLooping(nodeInfo: PackedFloat32Array) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: nodeInfo.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_is_looping, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_remaining_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_remaining_time")
        return withUnsafePointer(to: &AnimationNodeExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2851904656)!
            }
            
        }
        
    }()
    
    /// Returns the animation's remaining time for the given node info. For looping animations, it will only return the remaining time if `breakLoop` is `true`, a large integer value will be returned otherwise.
    public static func getRemainingTime(nodeInfo: PackedFloat32Array, breakLoop: Bool) -> Double {
        var _result: Double = 0.0
        withUnsafePointer(to: nodeInfo.content) { pArg0 in
            withUnsafePointer(to: breakLoop) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(method_get_remaining_time, nil, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_process_animation_node":
                return _AnimationNodeExtension_proxy_process_animation_node
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _AnimationNodeExtension_proxy_process_animation_node (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNodeExtension else { return }
    let ret = swiftObject._processAnimationNode (playbackInfo: PackedFloat64Array (content: args [0]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), testOnly: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedFloat32Array
    ret.content = PackedFloat32Array.zero
}

