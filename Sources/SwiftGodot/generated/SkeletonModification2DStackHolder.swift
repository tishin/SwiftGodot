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


/// A modification that holds and executes a ``SkeletonModificationStack2D``.
/// 
/// This ``SkeletonModification2D`` holds a reference to a ``SkeletonModificationStack2D``, allowing you to use multiple modification stacks on a single ``Skeleton2D``.
/// 
/// > Note: The modifications in the held ``SkeletonModificationStack2D`` will only be executed if their execution mode matches the execution mode of the SkeletonModification2DStackHolder.
/// 
open class SkeletonModification2DStackHolder: SkeletonModification2D {
    private static var className = StringName("SkeletonModification2DStackHolder")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_held_modification_stack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_held_modification_stack")
        return withUnsafePointer(to: &SkeletonModification2DStackHolder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3907307132)!
            }
            
        }
        
    }()
    
    /// Sets the ``SkeletonModificationStack2D`` that this modification is holding. This modification stack will then be executed when this modification is executed.
    public final func setHeldModificationStack(_ heldModificationStack: SkeletonModificationStack2D?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: heldModificationStack?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(SkeletonModification2DStackHolder.method_set_held_modification_stack, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_held_modification_stack: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_held_modification_stack")
        return withUnsafePointer(to: &SkeletonModification2DStackHolder.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2107508396)!
            }
            
        }
        
    }()
    
    /// Returns the ``SkeletonModificationStack2D`` that this modification is holding.
    public final func getHeldModificationStack() -> SkeletonModificationStack2D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(SkeletonModification2DStackHolder.method_get_held_modification_stack, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
}

