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


/// An optimized translation, used by default for CSV Translations.
/// 
/// An optimized translation, used by default for CSV Translations. Uses real-time compressed translations, which results in very small dictionaries.
open class OptimizedTranslation: Translation {
    private static var className = StringName("OptimizedTranslation")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_generate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("generate")
        return withUnsafePointer(to: &OptimizedTranslation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Generates and sets an optimized translation from the given ``Translation`` resource.
    /// 
    /// > Note: This method is intended to be used in the editor. It does nothing when called from an exported project.
    /// 
    public final func generate(from: Translation?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OptimizedTranslation.method_generate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

