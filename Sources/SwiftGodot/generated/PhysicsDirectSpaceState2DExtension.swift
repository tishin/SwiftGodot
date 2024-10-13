// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// This file is autogenerated, do not edit
@_implementationOnly import GDExtension

#if CUSTOM_BUILTIN_IMPLEMENTATIONS
import Foundation
#endif
// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides virtual methods that can be overridden to create custom ``PhysicsDirectSpaceState2D`` implementations.
/// 
/// This class extends ``PhysicsDirectSpaceState2D`` by providing additional virtual methods that can be overridden. When these methods are overridden, they will be called instead of the internal methods of the physics server.
/// 
/// Intended for use with GDExtension to create custom implementations of ``PhysicsDirectSpaceState2D``.
/// 
open class PhysicsDirectSpaceState2DExtension: PhysicsDirectSpaceState2D {
    override open class var godotClassName: StringName { "PhysicsDirectSpaceState2DExtension" }
    /* Methods */
    fileprivate static var method_is_body_excluded_from_query: GDExtensionMethodBindPtr = {
        let methodName = StringName("is_body_excluded_from_query")
        return withUnsafePointer(to: &PhysicsDirectSpaceState2DExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// 
    public final func isBodyExcludedFromQuery(body: RID) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: body.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(PhysicsDirectSpaceState2DExtension.method_is_body_excluded_from_query, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

