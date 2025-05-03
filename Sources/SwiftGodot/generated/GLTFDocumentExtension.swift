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


/// ``GLTFDocument`` extension class.
/// 
/// Extends the functionality of the ``GLTFDocument`` class by allowing you to run arbitrary code at various stages of glTF import or export.
/// 
/// To use, make a new class extending GLTFDocumentExtension, override any methods you need, make an instance of your class, and register it using ``GLTFDocument/registerGltfDocumentExtension(_:firstPriority:)``.
/// 
/// > Note: Like GLTFDocument itself, all GLTFDocumentExtension classes must be stateless in order to function properly. If you need to store data, use the `set_additional_data` and `get_additional_data` methods in ``GLTFState`` or ``GLTFNode``.
/// 
open class GLTFDocumentExtension: Resource {
    private static var className = StringName("GLTFDocumentExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__import_preflight: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_import_preflight")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 412946943)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run first, before all other parts of the import process.
    /// 
    /// The return value is used to determine if this ``GLTFDocumentExtension`` instance should be used for importing a given glTF file. If ``GodotError/ok``, the import will use this ``GLTFDocumentExtension`` instance. If not overridden, ``GodotError/ok`` is returned.
    /// 
    @_documentation(visibility: public)
    open func _importPreflight(state: GLTFState?, extensions: PackedStringArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: extensions.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__import_preflight, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__get_supported_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_supported_extensions")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_importPreflight(state:extensions:)`` and before ``_parseNodeExtensions(state:gltfNode:extensions:)``.
    /// 
    /// Returns an array of the glTF extensions supported by this GLTFDocumentExtension class. This is used to validate if a glTF file with required extensions can be loaded.
    /// 
    @_documentation(visibility: public)
    open func _getSupportedExtensions() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__get_supported_extensions, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__parse_node_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_node_extensions")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2067053794)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_getSupportedExtensions()`` and before ``_importPostParse(state:)``.
    /// 
    /// Runs when parsing the node extensions of a GLTFNode. This method can be used to process the extension JSON data into a format that can be used by ``_generateSceneNode(state:gltfNode:sceneParent:)``. The return value should be a member of the ``GodotError`` enum.
    /// 
    @_documentation(visibility: public)
    open func _parseNodeExtensions(state: GLTFState?, gltfNode: GLTFNode?, extensions: VariantDictionary) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: gltfNode?.handle) { pArg1 in
                withUnsafePointer(to: extensions.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__parse_node_extensions, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__parse_image_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_image_data")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3201673288)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_parseNodeExtensions(state:gltfNode:extensions:)`` and before ``_parseTextureJson(state:textureJson:retGltfTexture:)``.
    /// 
    /// Runs when parsing image data from a glTF file. The data could be sourced from a separate file, a URI, or a buffer, and then is passed as a byte array.
    /// 
    @_documentation(visibility: public)
    open func _parseImageData(state: GLTFState?, imageData: PackedByteArray, mimeType: String, retImage: Image?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: imageData.content) { pArg1 in
                let mimeType = GString(mimeType)
                withUnsafePointer(to: mimeType.content) { pArg2 in
                    withUnsafePointer(to: retImage?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__parse_image_data, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__get_image_file_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_image_file_extension")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the file extension to use for saving image data into, for example, `".png"`. If defined, when this extension is used to handle images, and the images are saved to a separate file, the image bytes will be copied to a file with this extension. If this is set, there should be a ``ResourceImporter`` class able to import the file. If not defined or empty, Godot will save the image into a PNG file.
    @_documentation(visibility: public)
    open func _getImageFileExtension() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__get_image_file_extension, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__parse_texture_json: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_texture_json")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1624327185)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_parseImageData(state:imageData:mimeType:retImage:)`` and before ``_generateSceneNode(state:gltfNode:sceneParent:)``.
    /// 
    /// Runs when parsing the texture JSON from the glTF textures array. This can be used to set the source image index to use as the texture.
    /// 
    @_documentation(visibility: public)
    open func _parseTextureJson(state: GLTFState?, textureJson: VariantDictionary, retGltfTexture: GLTFTexture?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: textureJson.content) { pArg1 in
                withUnsafePointer(to: retGltfTexture?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__parse_texture_json, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__import_object_model_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_import_object_model_property")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1446147484)!
            }
            
        }
        
    }()
    
    /// Part of the import process. Allows GLTFDocumentExtension classes to provide mappings for JSON pointers to glTF properties, as defined by the glTF object model, to properties of nodes in the Godot scene tree.
    /// 
    /// Returns a ``GLTFObjectModelProperty`` instance that defines how the property should be mapped. If your extension can't handle the property, return `null` or an instance without any NodePaths (see ``GLTFObjectModelProperty/hasNodePaths()``). You should use ``GLTFObjectModelProperty/setTypes(variantType:objModelType:)`` to set the types, and ``GLTFObjectModelProperty/appendPathToProperty(nodePath:propName:)`` function is useful for most simple cases.
    /// 
    /// In many cases, `partialPaths` will contain the start of a path, allowing the extension to complete the path. For example, for `/nodes/3/extensions/MY_ext/prop`, Godot will pass you a NodePath that leads to node 3, so the GLTFDocumentExtension class only needs to resolve the last `MY_ext/prop` part of the path. In this example, the extension should check `split.size() > 4 and split[0] == "nodes" and split[2] == "extensions" and split[3] == "MY_ext"` at the start of the function to check if this JSON pointer applies to it, then it can use `partialPaths` and handle `split[4]`.
    /// 
    @_documentation(visibility: public)
    open func _importObjectModelProperty(state: GLTFState?, splitJsonPointer: PackedStringArray, partialPaths: TypedArray<NodePath>) -> GLTFObjectModelProperty? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: splitJsonPointer.content) { pArg1 in
                withUnsafePointer(to: partialPaths.array.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__import_object_model_property, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__import_post_parse: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_import_post_parse")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1704600462)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_parseNodeExtensions(state:gltfNode:extensions:)`` and before ``_importPreGenerate(state:)``.
    /// 
    /// This method can be used to modify any of the data imported so far after parsing each node, but before generating the scene or any of its nodes.
    /// 
    @_documentation(visibility: public)
    open func _importPostParse(state: GLTFState?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__import_post_parse, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__import_pre_generate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_import_pre_generate")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1704600462)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_importPostParse(state:)`` and before ``_generateSceneNode(state:gltfNode:sceneParent:)``.
    /// 
    /// This method can be used to modify or read from any of the processed data structures, before generating the nodes and then running the final per-node import step.
    /// 
    @_documentation(visibility: public)
    open func _importPreGenerate(state: GLTFState?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__import_pre_generate, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__generate_scene_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_generate_scene_node")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3810899026)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_importPreGenerate(state:)`` and before ``_importNode(state:gltfNode:json:node:)``.
    /// 
    /// Runs when generating a Godot scene node from a GLTFNode. The returned node will be added to the scene tree. Multiple nodes can be generated in this step if they are added as a child of the returned node.
    /// 
    /// > Note: The `sceneParent` parameter may be `null` if this is the single root node.
    /// 
    @_documentation(visibility: public)
    open func _generateSceneNode(state: GLTFState?, gltfNode: GLTFNode?, sceneParent: Node?) -> Node3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: gltfNode?.handle) { pArg1 in
                withUnsafePointer(to: sceneParent?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__generate_scene_node, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__import_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_import_node")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4064279746)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run after ``_generateSceneNode(state:gltfNode:sceneParent:)`` and before ``_importPost(state:root:)``.
    /// 
    /// This method can be used to make modifications to each of the generated Godot scene nodes.
    /// 
    @_documentation(visibility: public)
    open func _importNode(state: GLTFState?, gltfNode: GLTFNode?, json: VariantDictionary, node: Node?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: gltfNode?.handle) { pArg1 in
                withUnsafePointer(to: json.content) { pArg2 in
                    withUnsafePointer(to: node?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__import_node, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__import_post: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_import_post")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 295478427)!
            }
            
        }
        
    }()
    
    /// Part of the import process. This method is run last, after all other parts of the import process.
    /// 
    /// This method can be used to modify the final Godot scene generated by the import process.
    /// 
    @_documentation(visibility: public)
    open func _importPost(state: GLTFState?, root: Node?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: root?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__import_post, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_preflight: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_preflight")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 295478427)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run first, before all other parts of the export process.
    /// 
    /// The return value is used to determine if this ``GLTFDocumentExtension`` instance should be used for exporting a given glTF file. If ``GodotError/ok``, the export will use this ``GLTFDocumentExtension`` instance. If not overridden, ``GodotError/ok`` is returned.
    /// 
    @_documentation(visibility: public)
    open func _exportPreflight(state: GLTFState?, root: Node?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: root?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__export_preflight, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__convert_scene_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_convert_scene_node")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 147612932)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_exportPreflight(state:root:)`` and before ``_exportPostConvert(state:root:)``.
    /// 
    /// Runs when converting the data from a Godot scene node. This method can be used to process the Godot scene node data into a format that can be used by ``_exportNode(state:gltfNode:json:node:)``.
    /// 
    @_documentation(visibility: public)
    open func _convertSceneNode(state: GLTFState?, gltfNode: GLTFNode?, sceneNode: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: gltfNode?.handle) { pArg1 in
                withUnsafePointer(to: sceneNode?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__convert_scene_node, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__export_post_convert: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_post_convert")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 295478427)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_convertSceneNode(state:gltfNode:sceneNode:)`` and before ``_exportPreserialize(state:)``.
    /// 
    /// This method can be used to modify the converted node data structures before serialization with any additional data from the scene tree.
    /// 
    @_documentation(visibility: public)
    open func _exportPostConvert(state: GLTFState?, root: Node?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: root?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__export_post_convert, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_preserialize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_preserialize")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1704600462)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_exportPostConvert(state:root:)`` and before ``_getSaveableImageFormats()``.
    /// 
    /// This method can be used to alter the state before performing serialization. It runs every time when generating a buffer with ``GLTFDocument/generateBuffer(state:)`` or writing to the file system with ``GLTFDocument/writeToFilesystem(state:path:)``.
    /// 
    @_documentation(visibility: public)
    open func _exportPreserialize(state: GLTFState?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__export_preserialize, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_object_model_property: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_object_model_property")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4111022730)!
            }
            
        }
        
    }()
    
    /// Part of the export process. Allows GLTFDocumentExtension classes to provide mappings for properties of nodes in the Godot scene tree, to JSON pointers to glTF properties, as defined by the glTF object model.
    /// 
    /// Returns a ``GLTFObjectModelProperty`` instance that defines how the property should be mapped. If your extension can't handle the property, return `null` or an instance without any JSON pointers (see ``GLTFObjectModelProperty/hasJsonPointers()``). You should use ``GLTFObjectModelProperty/setTypes(variantType:objModelType:)`` to set the types, and set the JSON pointer(s) using the ``GLTFObjectModelProperty/jsonPointers`` property.
    /// 
    /// The parameters provide context for the property, including the NodePath, the Godot node, the GLTF node index, and the target object. The `targetObject` will be equal to `godotNode` if no sub-object can be found, otherwise it will point to a sub-object. For example, if the path is `^"A/B/C/MeshInstance3D:mesh:surface_0/material:emission_intensity"`, it will get the node, then the mesh, and then the material, so `targetObject` will be the ``Material`` resource, and `targetDepth` will be 2 because 2 levels were traversed to get to the target.
    /// 
    @_documentation(visibility: public)
    open func _exportObjectModelProperty(state: GLTFState?, nodePath: NodePath, godotNode: Node?, gltfNodeIndex: Int32, targetObject: Object?, targetDepth: Int32) -> GLTFObjectModelProperty? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: nodePath.content) { pArg1 in
                withUnsafePointer(to: godotNode?.handle) { pArg2 in
                    withUnsafePointer(to: gltfNodeIndex) { pArg3 in
                        withUnsafePointer(to: targetObject?.handle) { pArg4 in
                            withUnsafePointer(to: targetDepth) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__export_object_model_property, handle, pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_saveable_image_formats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_saveable_image_formats")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_convertSceneNode(state:gltfNode:sceneNode:)`` and before ``_exportNode(state:gltfNode:json:node:)``.
    /// 
    /// Returns an array of the image formats that can be saved/exported by this extension. This extension will only be selected as the image exporter if the ``GLTFDocument``'s ``GLTFDocument/imageFormat`` is in this array. If this ``GLTFDocumentExtension`` is selected as the image exporter, one of the ``_saveImageAtPath(state:image:filePath:imageFormat:lossyQuality:)`` or ``_serializeImageToBytes(state:image:imageDict:imageFormat:lossyQuality:)`` methods will run next, otherwise ``_exportNode(state:gltfNode:json:node:)`` will run next. If the format name contains `"Lossy"`, the lossy quality slider will be displayed.
    /// 
    @_documentation(visibility: public)
    open func _getSaveableImageFormats() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__get_saveable_image_formats, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__serialize_image_to_bytes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_serialize_image_to_bytes")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 276886664)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_getSaveableImageFormats()`` and before ``_serializeTextureJson(state:textureJson:gltfTexture:imageFormat:)``.
    /// 
    /// This method is run when embedding images in the glTF file. When images are saved separately, ``_saveImageAtPath(state:image:filePath:imageFormat:lossyQuality:)`` runs instead. Note that these methods only run when this ``GLTFDocumentExtension`` is selected as the image exporter.
    /// 
    /// This method must set the image MIME type in the `imageDict` with the `"mimeType"` key. For example, for a PNG image, it would be set to `"image/png"`. The return value must be a ``PackedByteArray`` containing the image data.
    /// 
    @_documentation(visibility: public)
    open func _serializeImageToBytes(state: GLTFState?, image: Image?, imageDict: VariantDictionary, imageFormat: String, lossyQuality: Double) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: image?.handle) { pArg1 in
                withUnsafePointer(to: imageDict.content) { pArg2 in
                    let imageFormat = GString(imageFormat)
                    withUnsafePointer(to: imageFormat.content) { pArg3 in
                        withUnsafePointer(to: lossyQuality) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__serialize_image_to_bytes, handle, pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__save_image_at_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_save_image_at_path")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1844337242)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_getSaveableImageFormats()`` and before ``_serializeTextureJson(state:textureJson:gltfTexture:imageFormat:)``.
    /// 
    /// This method is run when saving images separately from the glTF file. When images are embedded, ``_serializeImageToBytes(state:image:imageDict:imageFormat:lossyQuality:)`` runs instead. Note that these methods only run when this ``GLTFDocumentExtension`` is selected as the image exporter.
    /// 
    @_documentation(visibility: public)
    open func _saveImageAtPath(state: GLTFState?, image: Image?, filePath: String, imageFormat: String, lossyQuality: Double) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: image?.handle) { pArg1 in
                let filePath = GString(filePath)
                withUnsafePointer(to: filePath.content) { pArg2 in
                    let imageFormat = GString(imageFormat)
                    withUnsafePointer(to: imageFormat.content) { pArg3 in
                        withUnsafePointer(to: lossyQuality) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__save_image_at_path, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__serialize_texture_json: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_serialize_texture_json")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2565166506)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_saveImageAtPath(state:image:filePath:imageFormat:lossyQuality:)`` or ``_serializeImageToBytes(state:image:imageDict:imageFormat:lossyQuality:)``, and before ``_exportNode(state:gltfNode:json:node:)``. Note that this method only runs when this ``GLTFDocumentExtension`` is selected as the image exporter.
    /// 
    /// This method can be used to set up the extensions for the texture JSON by editing `textureJson`. The extension must also be added as used extension with ``GLTFState/addUsedExtension(extensionName:required:)``, be sure to set `required` to `true` if you are not providing a fallback.
    /// 
    @_documentation(visibility: public)
    open func _serializeTextureJson(state: GLTFState?, textureJson: VariantDictionary, gltfTexture: GLTFTexture?, imageFormat: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: textureJson.content) { pArg1 in
                withUnsafePointer(to: gltfTexture?.handle) { pArg2 in
                    let imageFormat = GString(imageFormat)
                    withUnsafePointer(to: imageFormat.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__serialize_texture_json, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_node")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4064279746)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run after ``_getSaveableImageFormats()`` and before ``_exportPost(state:)``. If this ``GLTFDocumentExtension`` is used for exporting images, this runs after ``_serializeTextureJson(state:textureJson:gltfTexture:imageFormat:)``.
    /// 
    /// This method can be used to modify the final JSON of each node. Data should be primarily stored in `gltfNode` prior to serializing the JSON, but the original Godot ``Node`` is also provided if available. `node` may be `null` if not available, such as when exporting glTF data not generated from a Godot scene.
    /// 
    @_documentation(visibility: public)
    open func _exportNode(state: GLTFState?, gltfNode: GLTFNode?, json: VariantDictionary, node: Node?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: gltfNode?.handle) { pArg1 in
                withUnsafePointer(to: json.content) { pArg2 in
                    withUnsafePointer(to: node?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__export_node, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method__export_post: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_export_post")
        return withUnsafePointer(to: &GLTFDocumentExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1704600462)!
            }
            
        }
        
    }()
    
    /// Part of the export process. This method is run last, after all other parts of the export process.
    /// 
    /// This method can be used to modify the final JSON of the generated glTF file.
    /// 
    @_documentation(visibility: public)
    open func _exportPost(state: GLTFState?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(GLTFDocumentExtension.method__export_post, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_convert_scene_node":
                return _GLTFDocumentExtension_proxy_convert_scene_node
            case "_export_node":
                return _GLTFDocumentExtension_proxy_export_node
            case "_export_object_model_property":
                return _GLTFDocumentExtension_proxy_export_object_model_property
            case "_export_post":
                return _GLTFDocumentExtension_proxy_export_post
            case "_export_post_convert":
                return _GLTFDocumentExtension_proxy_export_post_convert
            case "_export_preflight":
                return _GLTFDocumentExtension_proxy_export_preflight
            case "_export_preserialize":
                return _GLTFDocumentExtension_proxy_export_preserialize
            case "_generate_scene_node":
                return _GLTFDocumentExtension_proxy_generate_scene_node
            case "_get_image_file_extension":
                return _GLTFDocumentExtension_proxy_get_image_file_extension
            case "_get_saveable_image_formats":
                return _GLTFDocumentExtension_proxy_get_saveable_image_formats
            case "_get_supported_extensions":
                return _GLTFDocumentExtension_proxy_get_supported_extensions
            case "_import_node":
                return _GLTFDocumentExtension_proxy_import_node
            case "_import_object_model_property":
                return _GLTFDocumentExtension_proxy_import_object_model_property
            case "_import_post":
                return _GLTFDocumentExtension_proxy_import_post
            case "_import_post_parse":
                return _GLTFDocumentExtension_proxy_import_post_parse
            case "_import_pre_generate":
                return _GLTFDocumentExtension_proxy_import_pre_generate
            case "_import_preflight":
                return _GLTFDocumentExtension_proxy_import_preflight
            case "_parse_image_data":
                return _GLTFDocumentExtension_proxy_parse_image_data
            case "_parse_node_extensions":
                return _GLTFDocumentExtension_proxy_parse_node_extensions
            case "_parse_texture_json":
                return _GLTFDocumentExtension_proxy_parse_texture_json
            case "_save_image_at_path":
                return _GLTFDocumentExtension_proxy_save_image_at_path
            case "_serialize_image_to_bytes":
                return _GLTFDocumentExtension_proxy_serialize_image_to_bytes
            case "_serialize_texture_json":
                return _GLTFDocumentExtension_proxy_serialize_texture_json
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _GLTFDocumentExtension_proxy_convert_scene_node (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_2 = args [2]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._convertSceneNode (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, gltfNode: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? GLTFNode, sceneNode: resolved_2 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_2!, ownsRef: false) as? Node)
}

func _GLTFDocumentExtension_proxy_export_node (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_3 = args [3]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportNode (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, gltfNode: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? GLTFNode, json: VariantDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee), node: resolved_3 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_3!, ownsRef: false) as? Node)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_export_object_model_property (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_2 = args [2]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_4 = args [4]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportObjectModelProperty (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, nodePath: NodePath (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), godotNode: resolved_2 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_2!, ownsRef: false) as? Node, gltfNodeIndex: args [3]!.assumingMemoryBound (to: Int32.self).pointee, targetObject: resolved_4 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_4!, ownsRef: false) as? Object, targetDepth: args [5]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // GLTFObjectModelProperty
}

func _GLTFDocumentExtension_proxy_export_post (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportPost (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_export_post_convert (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportPostConvert (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, root: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? Node)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_export_preflight (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportPreflight (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, root: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? Node)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_export_preserialize (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._exportPreserialize (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_generate_scene_node (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_2 = args [2]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._generateSceneNode (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, gltfNode: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? GLTFNode, sceneParent: resolved_2 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_2!, ownsRef: false) as? Node)
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // Node3D
}

func _GLTFDocumentExtension_proxy_get_image_file_extension (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let ret = GString (swiftObject._getImageFileExtension ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _GLTFDocumentExtension_proxy_get_saveable_image_formats (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let ret = swiftObject._getSaveableImageFormats ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _GLTFDocumentExtension_proxy_get_supported_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let ret = swiftObject._getSupportedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _GLTFDocumentExtension_proxy_import_node (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_3 = args [3]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._importNode (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, gltfNode: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? GLTFNode, json: VariantDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee), node: resolved_3 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_3!, ownsRef: false) as? Node)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_import_object_model_property (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._importObjectModelProperty (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, splitJsonPointer: PackedStringArray (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), partialPaths: args [2]!.assumingMemoryBound (to: TypedArray<NodePath>.self).pointee)
    retPtr!.storeBytes (of: ret?.handle, as:  GodotNativeObjectPointer?.self) // GLTFObjectModelProperty
}

func _GLTFDocumentExtension_proxy_import_post (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._importPost (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, root: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? Node)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_import_post_parse (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._importPostParse (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_import_pre_generate (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._importPreGenerate (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_import_preflight (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._importPreflight (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, extensions: PackedStringArray (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_parse_image_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_3 = args [3]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._parseImageData (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, imageData: PackedByteArray (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), mimeType: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", retImage: resolved_3 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_3!, ownsRef: false) as? Image)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_parse_node_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._parseNodeExtensions (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, gltfNode: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? GLTFNode, extensions: VariantDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_parse_texture_json (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_2 = args [2]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._parseTextureJson (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, textureJson: VariantDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), retGltfTexture: resolved_2 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_2!, ownsRef: false) as? GLTFTexture)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_save_image_at_path (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._saveImageAtPath (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, image: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? Image, filePath: GString.stringFromGStringPtr (ptr: args [2]!) ?? "", imageFormat: GString.stringFromGStringPtr (ptr: args [3]!) ?? "", lossyQuality: args [4]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _GLTFDocumentExtension_proxy_serialize_image_to_bytes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_1 = args [1]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._serializeImageToBytes (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, image: resolved_1 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_1!, ownsRef: false) as? Image, imageDict: VariantDictionary (content: args [2]!.assumingMemoryBound (to: Int64.self).pointee), imageFormat: GString.stringFromGStringPtr (ptr: args [3]!) ?? "", lossyQuality: args [4]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedByteArray
    ret.content = PackedByteArray.zero
}

func _GLTFDocumentExtension_proxy_serialize_texture_json (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? GLTFDocumentExtension else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    let resolved_2 = args [2]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._serializeTextureJson (state: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? GLTFState, textureJson: VariantDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), gltfTexture: resolved_2 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_2!, ownsRef: false) as? GLTFTexture, imageFormat: GString.stringFromGStringPtr (ptr: args [3]!) ?? "")
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

