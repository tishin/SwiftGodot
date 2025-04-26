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


/// A resource class for managing a palette of colors, which can be loaded and saved using ``ColorPicker``.
/// 
/// The ``ColorPalette`` resource is designed to store and manage a collection of colors. This resource is useful in scenarios where a predefined set of colors is required, such as for creating themes, designing user interfaces, or managing game assets. The built-in ``ColorPicker`` control can also make use of ``ColorPalette`` without additional code.
open class ColorPalette: Resource {
    private static var className = StringName("ColorPalette")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// A ``PackedColorArray`` containing the colors in the palette.
    final public var colors: PackedColorArray {
        get {
            return get_colors ()
        }
        
        set {
            set_colors (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_colors")
        return withUnsafePointer(to: &ColorPalette.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3546319833)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_colors(_ colors: PackedColorArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: colors.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(ColorPalette.method_set_colors, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_colors: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_colors")
        return withUnsafePointer(to: &ColorPalette.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1392750486)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_colors() -> PackedColorArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedColorArray = PackedColorArray ()
        gi.object_method_bind_ptrcall(ColorPalette.method_get_colors, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
}

