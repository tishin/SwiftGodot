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


/// Base class for resource importers.
/// 
/// This is the base class for Godot's resource importers. To implement your own resource importers using editor plugins, see ``EditorImportPlugin``.
open class ResourceImporter: RefCounted {
    private static var className = StringName("ResourceImporter")
    override open class var godotClassName: StringName { className }
    public enum ImportOrder: Int64, CaseIterable {
        /// The default import order.
        case `default` = 0 // IMPORT_ORDER_DEFAULT
        /// The import order for scenes, which ensures scenes are imported _after_ all other core resources such as textures. Custom importers should generally have an import order lower than `100` to avoid issues when importing scenes that rely on custom resources.
        case scene = 100 // IMPORT_ORDER_SCENE
    }
    
}

