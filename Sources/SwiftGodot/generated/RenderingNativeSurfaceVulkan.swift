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


open class RenderingNativeSurfaceVulkan: RenderingNativeSurface {
    private static var className = StringName("RenderingNativeSurfaceVulkan")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create")
        return withUnsafePointer(to: &RenderingNativeSurfaceVulkan.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1056151817)!
            }
            
        }
        
    }()
    
    /// 
    public static func create(vulkanSurface: OpaquePointer?) -> RenderingNativeSurfaceVulkan? {
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: vulkanSurface) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_create, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

