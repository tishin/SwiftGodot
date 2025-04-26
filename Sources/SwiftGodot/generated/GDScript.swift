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


/// A script implemented in the GDScript programming language.
/// 
/// A script implemented in the GDScript programming language, saved with the `.gd` extension. The script extends the functionality of all objects that instantiate it.
/// 
/// Calling ``new()`` creates a new instance of the script. ``Object/setScript(_:)`` extends an existing object, if that object's class matches one of the script's base classes.
/// 
/// If you are looking for GDScript's built-in functions, see [@GDScript] instead.
/// 
open class GDScript: Script {
    private static var className = StringName("GDScript")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_new: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("new")
        return withUnsafePointer(to: &GDScript.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1545262638)!
            }
            
        }
        
    }()
    
    /// Returns a new instance of the script.
    /// 
    public final func new(_ arguments: Variant?...) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        if arguments.isEmpty {
            gi.object_method_bind_call(GDScript.method_new, UnsafeMutableRawPointer(mutating: handle), nil, 0, &_result, nil) // no arguments
        } else {
            // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
            withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: arguments.count) { pArgsBuffer in
                // We use entire buffer so can initialize every element in the end. It's not
                // necessary for UnsafeRawPointer and other POD types (which Variant.ContentType also is)
                // but we'll do it for the sake of correctness
                defer { pArgsBuffer.deinitialize() }
                guard let pArgs = pArgsBuffer.baseAddress else {
                    fatalError("pargsBuffer.baseAddress is nil")
                }
                // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                    defer { contentsBuffer.deinitialize() }
                    guard let contentsPtr = contentsBuffer.baseAddress else {
                        fatalError("contentsBuffer.baseAddress is nil")
                    }
        
                    for i in 0..<arguments.count {
                        // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                        contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                        // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`
                        pArgsBuffer.initializeElement(at: i, to: contentsPtr + i)
                    }
        
                    gi.object_method_bind_call(GDScript.method_new, UnsafeMutableRawPointer(mutating: handle), pArgs, Int64(arguments.count), &_result, nil)
                }
            }
        }
        return Variant(takingOver: _result)
    }
    
}

