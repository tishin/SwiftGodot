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


/// Uniform set cache manager for Rendering Device based renderers.
/// 
/// Uniform set cache manager for Rendering Device based renderers. Provides a way to create a uniform set and reuse it in subsequent calls for as long as the uniform set exists. Uniform set will automatically be cleaned up when dependent objects are freed.
open class UniformSetCacheRD: Object {
    private static var className = StringName("UniformSetCacheRD")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_get_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_cache")
        return withUnsafePointer(to: &UniformSetCacheRD.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 658571723)!
            }
            
        }
        
    }()
    
    /// Creates/returns a cached uniform set based on the provided uniforms for a given shader.
    public static func getCache(shader: RID, set: UInt32, uniforms: TypedArray<RDUniform?>) -> RID {
        let _result: RID = RID ()
        withUnsafePointer(to: shader.content) { pArg0 in
            withUnsafePointer(to: set) { pArg1 in
                withUnsafePointer(to: uniforms.array.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(method_get_cache, nil, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
}

