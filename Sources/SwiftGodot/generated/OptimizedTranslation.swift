// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// An optimized translation, used by default for CSV Translations.
/// 
/// An optimized translation, used by default for CSV Translations. Uses real-time compressed translations, which results in very small dictionaries.
open class OptimizedTranslation: Translation {
    override open class var godotClassName: StringName { "OptimizedTranslation" }
    /* Methods */
    fileprivate static var method_generate: GDExtensionMethodBindPtr = {
        let methodName = StringName("generate")
        return withUnsafePointer(to: &OptimizedTranslation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1466479800)!
            }
            
        }
        
    }()
    
    /// Generates and sets an optimized translation from the given ``Translation`` resource.
    public final func generate(from: Translation?) {
        withUnsafePointer(to: from?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OptimizedTranslation.method_generate, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}
