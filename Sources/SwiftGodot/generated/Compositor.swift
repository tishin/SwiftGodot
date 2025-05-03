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


/// Stores attributes used to customize how a Viewport is rendered.
/// 
/// The compositor resource stores attributes used to customize how a ``Viewport`` is rendered.
open class Compositor: Resource {
    private static var className = StringName("Compositor")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The custom ``CompositorEffect``s that are applied during rendering of viewports using this compositor.
    final public var compositorEffects: TypedArray<CompositorEffect?> {
        get {
            return get_compositor_effects ()
        }
        
        set {
            set_compositor_effects (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_compositor_effects: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_compositor_effects")
        return withUnsafePointer(to: &Compositor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 381264803)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_compositor_effects(_ compositorEffects: TypedArray<CompositorEffect?>) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: compositorEffects.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Compositor.method_set_compositor_effects, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_compositor_effects: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_compositor_effects")
        return withUnsafePointer(to: &Compositor.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_compositor_effects() -> TypedArray<CompositorEffect?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Compositor.method_get_compositor_effects, handle, nil, &_result)
        return TypedArray<CompositorEffect?>(takingOver: _result)
    }
    
}

