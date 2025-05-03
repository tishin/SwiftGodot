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


/// Base class for editing interaction profiles.
/// 
/// This is a base class for interaction profile editors used by the OpenXR action map editor. It can be used to create bespoke editors for specific interaction profiles.
open class OpenXRInteractionProfileEditorBase: HBoxContainer {
    private static var className = StringName("OpenXRInteractionProfileEditorBase")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_setup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("setup")
        return withUnsafePointer(to: &OpenXRInteractionProfileEditorBase.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 421962938)!
            }
            
        }
        
    }()
    
    /// Setup this editor for the provided `actionMap` and `interactionProfile`.
    public final func setup(actionMap: OpenXRActionMap?, interactionProfile: OpenXRInteractionProfile?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: actionMap?.handle) { pArg0 in
            withUnsafePointer(to: interactionProfile?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(OpenXRInteractionProfileEditorBase.method_setup, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
}

