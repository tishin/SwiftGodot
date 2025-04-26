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


/// Importer for the `.fbx` scene file format.
/// 
/// Imports Autodesk FBX 3D scenes by way of converting them to glTF 2.0 using the FBX2glTF command line tool.
/// 
/// The location of the FBX2glTF binary is set via the ``EditorSettings/filesystem/import/fbx/fbx2gltfPath`` editor setting.
/// 
/// This importer is only used if ``ProjectSettings/filesystem/import/fbx2gltf/enabled`` is set to `true`.
/// 
open class EditorSceneFormatImporterFBX2GLTF: EditorSceneFormatImporter {
    private static var className = StringName("EditorSceneFormatImporterFBX2GLTF")
    override open class var godotClassName: StringName { className }
}

