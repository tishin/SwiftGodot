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


/// Base class for creating custom profilers.
/// 
/// This class can be used to implement custom profilers that are able to interact with the engine and editor debugger.
/// 
/// See ``EngineDebugger`` and ``EditorDebuggerPlugin`` for more information.
/// 
open class EngineProfiler: RefCounted {
    private static var className = StringName("EngineProfiler")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__toggle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_toggle")
        return withUnsafePointer(to: &EngineProfiler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1157301103)!
            }
            
        }
        
    }()
    
    /// Called when the profiler is enabled/disabled, along with a set of `options`.
    @_documentation(visibility: public)
    open func _toggle(enable: Bool, options: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: options.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(EngineProfiler.method__toggle, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__add_frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_add_frame")
        return withUnsafePointer(to: &EngineProfiler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    /// Called when data is added to profiler using ``EngineDebugger/profilerAddFrameData(name:data:)``.
    @_documentation(visibility: public)
    open func _addFrame(data: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: data.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EngineProfiler.method__add_frame, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__tick: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_tick")
        return withUnsafePointer(to: &EngineProfiler.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3948312143)!
            }
            
        }
        
    }()
    
    /// Called once every engine iteration when the profiler is active with information about the current frame. All time values are in seconds. Lower values represent faster processing times and are therefore considered better.
    @_documentation(visibility: public)
    open func _tick(frameTime: Double, processTime: Double, physicsTime: Double, physicsFrameTime: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: frameTime) { pArg0 in
            withUnsafePointer(to: processTime) { pArg1 in
                withUnsafePointer(to: physicsTime) { pArg2 in
                    withUnsafePointer(to: physicsFrameTime) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(EngineProfiler.method__tick, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_add_frame":
                return _EngineProfiler_proxy_add_frame
            case "_tick":
                return _EngineProfiler_proxy_tick
            case "_toggle":
                return _EngineProfiler_proxy_toggle
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _EngineProfiler_proxy_add_frame (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EngineProfiler else { return }
    swiftObject._addFrame (data: VariantArray (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _EngineProfiler_proxy_tick (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EngineProfiler else { return }
    swiftObject._tick (frameTime: args [0]!.assumingMemoryBound (to: Double.self).pointee, processTime: args [1]!.assumingMemoryBound (to: Double.self).pointee, physicsTime: args [2]!.assumingMemoryBound (to: Double.self).pointee, physicsFrameTime: args [3]!.assumingMemoryBound (to: Double.self).pointee)
}

func _EngineProfiler_proxy_toggle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? EngineProfiler else { return }
    swiftObject._toggle (enable: args [0]!.assumingMemoryBound (to: Bool.self).pointee, options: VariantArray (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

