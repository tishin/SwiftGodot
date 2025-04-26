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


/// Base class for custom ``TextServer`` implementations (plugins).
/// 
/// External ``TextServer`` implementations should inherit from this class.
open class TextServerExtension: TextServer {
    private static var className = StringName("TextServerExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__has_feature: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_feature")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3967367083)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns `true` if the server supports a feature.
    /// 
    @_documentation(visibility: public)
    open func _hasFeature(_ feature: TextServer.Feature) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: feature.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__has_feature, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_name")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the name of the server interface.
    /// 
    @_documentation(visibility: public)
    open func _getName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextServerExtension.method__get_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_features: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_features")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns text server features, see ``TextServer.Feature``.
    /// 
    @_documentation(visibility: public)
    open func _getFeatures() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(TextServerExtension.method__get_features, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__free_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_free_rid")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Frees an object created by this ``TextServer``.
    /// 
    @_documentation(visibility: public)
    open func _freeRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__free_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__has: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns `true` if `rid` is valid resource owned by this text server.
    /// 
    @_documentation(visibility: public)
    open func _has(rid: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__has, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__load_support_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_load_support_data")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Loads optional TextServer database (e.g. ICU break iterators and dictionaries).
    /// 
    @_documentation(visibility: public)
    open func _loadSupportData(filename: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let filename = GString(filename)
        withUnsafePointer(to: filename.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__load_support_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_support_data_filename: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_support_data_filename")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns default TextServer database (e.g. ICU break iterators and dictionaries) filename.
    /// 
    @_documentation(visibility: public)
    open func _getSupportDataFilename() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextServerExtension.method__get_support_data_filename, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__get_support_data_info: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_support_data_info")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns TextServer database (e.g. ICU break iterators and dictionaries) description.
    /// 
    @_documentation(visibility: public)
    open func _getSupportDataInfo() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(TextServerExtension.method__get_support_data_info, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__save_support_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_save_support_data")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Saves optional TextServer database (e.g. ICU break iterators and dictionaries) to the file.
    /// 
    @_documentation(visibility: public)
    open func _saveSupportData(filename: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let filename = GString(filename)
        withUnsafePointer(to: filename.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__save_support_data, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_support_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_support_data")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2362200018)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns default TextServer database (e.g. ICU break iterators and dictionaries).
    /// 
    @_documentation(visibility: public)
    open func _getSupportData() -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedByteArray = PackedByteArray ()
        gi.object_method_bind_ptrcall(TextServerExtension.method__get_support_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__is_locale_right_to_left: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_locale_right_to_left")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns `true` if locale is right-to-left.
    /// 
    @_documentation(visibility: public)
    open func _isLocaleRightToLeft(locale: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let locale = GString(locale)
        withUnsafePointer(to: locale.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__is_locale_right_to_left, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__name_to_tag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_name_to_tag")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Converts readable feature, variation, script, or language name to OpenType tag.
    /// 
    @_documentation(visibility: public)
    open func _nameToTag(name: String) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__name_to_tag, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__tag_to_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_tag_to_name")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Converts OpenType tag to readable feature, variation, script, or language name.
    /// 
    @_documentation(visibility: public)
    open func _tagToName(tag: Int) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: tag) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__tag_to_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__create_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_font")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Creates a new, empty font cache entry resource.
    /// 
    @_documentation(visibility: public)
    open func _createFont() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        gi.object_method_bind_ptrcall(TextServerExtension.method__create_font, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__create_font_linked_variation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_font_linked_variation")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 41030802)!
            }
            
        }
        
    }()
    
    /// Optional, implement if font supports extra spacing or baseline offset.
    /// 
    /// Creates a new variation existing font which is reusing the same glyph cache and font data.
    /// 
    @_documentation(visibility: public)
    open func _createFontLinkedVariation(fontRid: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__create_font_linked_variation, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_data")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1355495400)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets font source data, e.g contents of the dynamic font source file.
    /// 
    @_documentation(visibility: public)
    open func _fontSetData(fontRid: RID, data: PackedByteArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_data, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_set_face_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_face_index")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets an active face index in the TrueType / OpenType collection.
    /// 
    @_documentation(visibility: public)
    open func _fontSetFaceIndex(fontRid: RID, faceIndex: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: faceIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_face_index, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_face_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_face_index")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns an active face index in the TrueType / OpenType collection.
    /// 
    @_documentation(visibility: public)
    open func _fontGetFaceIndex(fontRid: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_face_index, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_face_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_face_count")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns number of faces in the TrueType / OpenType collection.
    /// 
    @_documentation(visibility: public)
    open func _fontGetFaceCount(fontRid: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_face_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_style: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_style")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 898466325)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets the font style flags, see ``TextServer.FontStyle``.
    /// 
    @_documentation(visibility: public)
    open func _fontSetStyle(fontRid: RID, style: TextServer.FontStyle) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: style.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_style, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_style: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_style")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3082502592)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font style flags, see ``TextServer.FontStyle``.
    /// 
    @_documentation(visibility: public)
    open func _fontGetStyle(fontRid: RID) -> TextServer.FontStyle {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: TextServer.FontStyle = TextServer.FontStyle ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_style, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_name")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2726140452)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets the font family name.
    /// 
    @_documentation(visibility: public)
    open func _fontSetName(fontRid: RID, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_name")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 642473191)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font family name.
    /// 
    @_documentation(visibility: public)
    open func _fontGetName(fontRid: RID) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__font_get_ot_name_strings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_ot_name_strings")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1882737106)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns ``VariantDictionary`` with OpenType font name strings (localized font names, version, description, license information, sample text, etc.).
    /// 
    @_documentation(visibility: public)
    open func _fontGetOtNameStrings(fontRid: RID) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_ot_name_strings, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_style_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_style_name")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2726140452)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets the font style name.
    /// 
    @_documentation(visibility: public)
    open func _fontSetStyleName(fontRid: RID, nameStyle: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let nameStyle = GString(nameStyle)
            withUnsafePointer(to: nameStyle.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_style_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_style_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_style_name")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 642473191)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font style name.
    /// 
    @_documentation(visibility: public)
    open func _fontGetStyleName(fontRid: RID) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_style_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__font_set_weight: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_weight")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.
    /// 
    @_documentation(visibility: public)
    open func _fontSetWeight(fontRid: RID, weight: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: weight) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_weight, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_weight: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_weight")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns weight (boldness) of the font. A value in the `100...999` range, normal font weight is `400`, bold font weight is `700`.
    /// 
    @_documentation(visibility: public)
    open func _fontGetWeight(fontRid: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_weight, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_stretch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_stretch")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.
    /// 
    @_documentation(visibility: public)
    open func _fontSetStretch(fontRid: RID, stretch: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: stretch) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_stretch, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_stretch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_stretch")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font stretch amount, compared to a normal width. A percentage value between `50%` and `200%`.
    /// 
    @_documentation(visibility: public)
    open func _fontGetStretch(fontRid: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_stretch, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_antialiasing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_antialiasing")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 958337235)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets font anti-aliasing mode.
    /// 
    @_documentation(visibility: public)
    open func _fontSetAntialiasing(fontRid: RID, antialiasing: TextServer.FontAntialiasing) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: antialiasing.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_antialiasing, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_antialiasing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_antialiasing")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3389420495)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font anti-aliasing mode.
    /// 
    @_documentation(visibility: public)
    open func _fontGetAntialiasing(fontRid: RID) -> TextServer.FontAntialiasing {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_antialiasing, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.FontAntialiasing (rawValue: _result)!
    }
    
    fileprivate static let method__font_set_disable_embedded_bitmaps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_disable_embedded_bitmaps")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// If set to `true`, embedded font bitmap loading is disabled.
    /// 
    @_documentation(visibility: public)
    open func _fontSetDisableEmbeddedBitmaps(fontRid: RID, disableEmbeddedBitmaps: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: disableEmbeddedBitmaps) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_disable_embedded_bitmaps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_disable_embedded_bitmaps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_disable_embedded_bitmaps")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns whether the font's embedded bitmap loading is disabled.
    /// 
    @_documentation(visibility: public)
    open func _fontGetDisableEmbeddedBitmaps(fontRid: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_disable_embedded_bitmaps, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_generate_mipmaps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_generate_mipmaps")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// If set to `true` font texture mipmap generation is enabled.
    /// 
    @_documentation(visibility: public)
    open func _fontSetGenerateMipmaps(fontRid: RID, generateMipmaps: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: generateMipmaps) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_generate_mipmaps, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_generate_mipmaps: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_generate_mipmaps")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if font texture mipmap generation is enabled.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGenerateMipmaps(fontRid: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_generate_mipmaps, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_multichannel_signed_distance_field")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// If set to `true`, glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data. MSDF rendering allows displaying the font at any scaling factor without blurriness, and without incurring a CPU cost when the font size changes (since the font no longer needs to be rasterized on the CPU). As a downside, font hinting is not available with MSDF. The lack of font hinting may result in less crisp and less readable fonts at small sizes.
    /// 
    @_documentation(visibility: public)
    open func _fontSetMultichannelSignedDistanceField(fontRid: RID, msdf: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: msdf) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_multichannel_signed_distance_field, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_is_multichannel_signed_distance_field: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_is_multichannel_signed_distance_field")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if glyphs of all sizes are rendered using single multichannel signed distance field generated from the dynamic font vector data.
    /// 
    @_documentation(visibility: public)
    open func _fontIsMultichannelSignedDistanceField(fontRid: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_is_multichannel_signed_distance_field, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_msdf_pixel_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_msdf_pixel_range")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets the width of the range around the shape between the minimum and maximum representable signed distance.
    /// 
    @_documentation(visibility: public)
    open func _fontSetMsdfPixelRange(fontRid: RID, msdfPixelRange: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: msdfPixelRange) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_msdf_pixel_range, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_msdf_pixel_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_msdf_pixel_range")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the width of the range around the shape between the minimum and maximum representable signed distance.
    /// 
    @_documentation(visibility: public)
    open func _fontGetMsdfPixelRange(fontRid: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_msdf_pixel_range, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_msdf_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_msdf_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets source font size used to generate MSDF textures.
    /// 
    @_documentation(visibility: public)
    open func _fontSetMsdfSize(fontRid: RID, msdfSize: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: msdfSize) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_msdf_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_msdf_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_msdf_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns source font size used to generate MSDF textures.
    /// 
    @_documentation(visibility: public)
    open func _fontGetMsdfSize(fontRid: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_msdf_size, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_fixed_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_fixed_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets bitmap font fixed size. If set to value greater than zero, same cache entry will be used for all font sizes.
    /// 
    @_documentation(visibility: public)
    open func _fontSetFixedSize(fontRid: RID, fixedSize: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: fixedSize) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_fixed_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_fixed_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_fixed_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns bitmap font fixed size.
    /// 
    @_documentation(visibility: public)
    open func _fontGetFixedSize(fontRid: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_fixed_size, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_fixed_size_scale_mode")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1029390307)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets bitmap font scaling mode. This property is used only if `fixed_size` is greater than zero.
    /// 
    @_documentation(visibility: public)
    open func _fontSetFixedSizeScaleMode(fontRid: RID, fixedSizeScaleMode: TextServer.FixedSizeScaleMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: fixedSizeScaleMode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_fixed_size_scale_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_fixed_size_scale_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_fixed_size_scale_mode")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4113120379)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns bitmap font scaling mode.
    /// 
    @_documentation(visibility: public)
    open func _fontGetFixedSizeScaleMode(fontRid: RID) -> TextServer.FixedSizeScaleMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_fixed_size_scale_mode, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.FixedSizeScaleMode (rawValue: _result)!
    }
    
    fileprivate static let method__font_set_allow_system_fallback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_allow_system_fallback")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// If set to `true`, system fonts can be automatically used as fallbacks.
    /// 
    @_documentation(visibility: public)
    open func _fontSetAllowSystemFallback(fontRid: RID, allowSystemFallback: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: allowSystemFallback) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_allow_system_fallback, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_is_allow_system_fallback: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_is_allow_system_fallback")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if system fonts can be automatically used as fallbacks.
    /// 
    @_documentation(visibility: public)
    open func _fontIsAllowSystemFallback(fontRid: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_is_allow_system_fallback, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_force_autohinter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_force_autohinter")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// If set to `true` auto-hinting is preferred over font built-in hinting.
    /// 
    @_documentation(visibility: public)
    open func _fontSetForceAutohinter(fontRid: RID, forceAutohinter: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: forceAutohinter) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_force_autohinter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_is_force_autohinter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_is_force_autohinter")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if auto-hinting is supported and preferred over font built-in hinting.
    /// 
    @_documentation(visibility: public)
    open func _fontIsForceAutohinter(fontRid: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_is_force_autohinter, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_hinting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_hinting")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1520010864)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets font hinting mode. Used by dynamic fonts only.
    /// 
    @_documentation(visibility: public)
    open func _fontSetHinting(fontRid: RID, hinting: TextServer.Hinting) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: hinting.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_hinting, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_hinting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_hinting")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3971592737)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the font hinting mode. Used by dynamic fonts only.
    /// 
    @_documentation(visibility: public)
    open func _fontGetHinting(fontRid: RID) -> TextServer.Hinting {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_hinting, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.Hinting (rawValue: _result)!
    }
    
    fileprivate static let method__font_set_subpixel_positioning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_subpixel_positioning")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3830459669)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets font subpixel glyph positioning mode.
    /// 
    @_documentation(visibility: public)
    open func _fontSetSubpixelPositioning(fontRid: RID, subpixelPositioning: TextServer.SubpixelPositioning) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: subpixelPositioning.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_subpixel_positioning, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_subpixel_positioning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_subpixel_positioning")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2752233671)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font subpixel glyph positioning mode.
    /// 
    @_documentation(visibility: public)
    open func _fontGetSubpixelPositioning(fontRid: RID) -> TextServer.SubpixelPositioning {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_subpixel_positioning, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.SubpixelPositioning (rawValue: _result)!
    }
    
    fileprivate static let method__font_set_keep_rounding_remainders: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_keep_rounding_remainders")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets glyph position rounding behavior. If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.
    /// 
    @_documentation(visibility: public)
    open func _fontSetKeepRoundingRemainders(fontRid: RID, keepRoundingRemainders: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: keepRoundingRemainders) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_keep_rounding_remainders, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_keep_rounding_remainders: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_keep_rounding_remainders")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns glyph position rounding behavior. If set to `true`, when aligning glyphs to the pixel boundaries rounding remainders are accumulated to ensure more uniform glyph distribution. This setting has no effect if subpixel positioning is enabled.
    /// 
    @_documentation(visibility: public)
    open func _fontGetKeepRoundingRemainders(fontRid: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_keep_rounding_remainders, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_embolden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_embolden")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// Sets font embolden strength. If `strength` is not equal to zero, emboldens the font outlines. Negative values reduce the outline thickness.
    @_documentation(visibility: public)
    open func _fontSetEmbolden(fontRid: RID, strength: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: strength) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_embolden, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_embolden: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_embolden")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font embolden strength.
    /// 
    @_documentation(visibility: public)
    open func _fontGetEmbolden(fontRid: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_embolden, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_spacing")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1307259930)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets the spacing for `spacing` (see ``TextServer.SpacingType``) to `value` in pixels (not relative to the font size).
    /// 
    @_documentation(visibility: public)
    open func _fontSetSpacing(fontRid: RID, spacing: TextServer.SpacingType, value: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: spacing.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_spacing, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_spacing")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1213653558)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the spacing for `spacing` (see ``TextServer.SpacingType``) in pixels (not relative to the font size).
    /// 
    @_documentation(visibility: public)
    open func _fontGetSpacing(fontRid: RID, spacing: TextServer.SpacingType) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: spacing.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_spacing, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_baseline_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_baseline_offset")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets extra baseline offset (as a fraction of font height).
    /// 
    @_documentation(visibility: public)
    open func _fontSetBaselineOffset(fontRid: RID, baselineOffset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: baselineOffset) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_baseline_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_baseline_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_baseline_offset")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns extra baseline offset (as a fraction of font height).
    /// 
    @_documentation(visibility: public)
    open func _fontGetBaselineOffset(fontRid: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_baseline_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_transform")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1246044741)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets 2D transform, applied to the font outlines, can be used for slanting, flipping, and rotating glyphs.
    /// 
    @_documentation(visibility: public)
    open func _fontSetTransform(fontRid: RID, transform: Transform2D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: transform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_transform")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 213527486)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns 2D transform applied to the font outlines.
    /// 
    @_documentation(visibility: public)
    open func _fontGetTransform(fontRid: RID) -> Transform2D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform2D = Transform2D ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_transform, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_variation_coordinates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_variation_coordinates")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1217542888)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets variation coordinates for the specified font cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontSetVariationCoordinates(fontRid: RID, variationCoordinates: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: variationCoordinates.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_variation_coordinates, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_variation_coordinates: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_variation_coordinates")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1882737106)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns variation coordinates for the specified font cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontGetVariationCoordinates(fontRid: RID) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_variation_coordinates, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_oversampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_oversampling")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1794382983)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets font oversampling factor, if set to `0.0` global oversampling factor is used instead. Used by dynamic fonts only.
    /// 
    @_documentation(visibility: public)
    open func _fontSetOversampling(fontRid: RID, oversampling: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: oversampling) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_oversampling, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_oversampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_oversampling")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font oversampling factor, if set to `0.0` global oversampling factor is used instead. Used by dynamic fonts only.
    /// 
    @_documentation(visibility: public)
    open func _fontGetOversampling(fontRid: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_oversampling, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_size_cache_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_size_cache_list")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2684255073)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns list of the font sizes in the cache. Each size is ``Vector2i`` with font size and outline size.
    /// 
    @_documentation(visibility: public)
    open func _fontGetSizeCacheList(fontRid: RID) -> TypedArray<Vector2i> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_size_cache_list, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<Vector2i>(takingOver: _result)
    }
    
    fileprivate static let method__font_clear_size_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_clear_size_cache")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Removes all font sizes from the cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontClearSizeCache(fontRid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_clear_size_cache, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_remove_size_cache: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_remove_size_cache")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2450610377)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Removes specified font size from the cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontRemoveSizeCache(fontRid: RID, size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_remove_size_cache, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_set_ascent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_ascent")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1892459533)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets the font ascent (number of pixels above the baseline).
    /// 
    @_documentation(visibility: public)
    open func _fontSetAscent(fontRid: RID, size: Int, ascent: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: ascent) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_ascent, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_ascent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_ascent")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 755457166)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the font ascent (number of pixels above the baseline).
    /// 
    @_documentation(visibility: public)
    open func _fontGetAscent(fontRid: RID, size: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_ascent, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_descent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_descent")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1892459533)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets the font descent (number of pixels below the baseline).
    /// 
    @_documentation(visibility: public)
    open func _fontSetDescent(fontRid: RID, size: Int, descent: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: descent) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_descent, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_descent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_descent")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 755457166)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the font descent (number of pixels below the baseline).
    /// 
    @_documentation(visibility: public)
    open func _fontGetDescent(fontRid: RID, size: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_descent, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_underline_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_underline_position")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1892459533)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets pixel offset of the underline below the baseline.
    /// 
    @_documentation(visibility: public)
    open func _fontSetUnderlinePosition(fontRid: RID, size: Int, underlinePosition: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: underlinePosition) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_underline_position, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_underline_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_underline_position")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 755457166)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns pixel offset of the underline below the baseline.
    /// 
    @_documentation(visibility: public)
    open func _fontGetUnderlinePosition(fontRid: RID, size: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_underline_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_underline_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_underline_thickness")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1892459533)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets thickness of the underline in pixels.
    /// 
    @_documentation(visibility: public)
    open func _fontSetUnderlineThickness(fontRid: RID, size: Int, underlineThickness: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: underlineThickness) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_underline_thickness, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_underline_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_underline_thickness")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 755457166)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns thickness of the underline in pixels.
    /// 
    @_documentation(visibility: public)
    open func _fontGetUnderlineThickness(fontRid: RID, size: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_underline_thickness, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_scale")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1892459533)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets scaling factor of the color bitmap font.
    /// 
    @_documentation(visibility: public)
    open func _fontSetScale(fontRid: RID, size: Int, scale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: scale) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_scale")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 755457166)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns scaling factor of the color bitmap font.
    /// 
    @_documentation(visibility: public)
    open func _fontGetScale(fontRid: RID, size: Int) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_texture_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_texture_count")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1311001310)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns number of textures used by font cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontGetTextureCount(fontRid: RID, size: Vector2i) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_texture_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_clear_textures: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_clear_textures")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2450610377)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Removes all textures from font cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontClearTextures(fontRid: RID, size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_clear_textures, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_remove_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_remove_texture")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3810512262)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Removes specified texture from the cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontRemoveTexture(fontRid: RID, size: Vector2i, textureIndex: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: textureIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_remove_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_set_texture_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_texture_image")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2354485091)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets font cache texture image data.
    /// 
    @_documentation(visibility: public)
    open func _fontSetTextureImage(fontRid: RID, size: Vector2i, textureIndex: Int, image: Image?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: textureIndex) { pArg2 in
                    withUnsafePointer(to: image?.handle) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_texture_image, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_texture_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_texture_image")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2451761155)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns font cache texture image data.
    /// 
    @_documentation(visibility: public)
    open func _fontGetTextureImage(fontRid: RID, size: Vector2i, textureIndex: Int) -> Image? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: textureIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_texture_image, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__font_set_texture_offsets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_texture_offsets")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3005398047)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets array containing glyph packing data.
    /// 
    @_documentation(visibility: public)
    open func _fontSetTextureOffsets(fontRid: RID, size: Vector2i, textureIndex: Int, offset: PackedInt32Array) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: textureIndex) { pArg2 in
                    withUnsafePointer(to: offset.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_texture_offsets, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_texture_offsets: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_texture_offsets")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3420028887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns array containing glyph packing data.
    /// 
    @_documentation(visibility: public)
    open func _fontGetTextureOffsets(fontRid: RID, size: Vector2i, textureIndex: Int) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: textureIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_texture_offsets, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_glyph_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_list")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 46086620)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns list of rendered glyphs in the cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphList(fontRid: RID, size: Vector2i) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_list, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_clear_glyphs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_clear_glyphs")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2450610377)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Removes all rendered glyph information from the cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontClearGlyphs(fontRid: RID, size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_clear_glyphs, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_remove_glyph: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_remove_glyph")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3810512262)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Removes specified rendered glyph information from the cache entry.
    /// 
    @_documentation(visibility: public)
    open func _fontRemoveGlyph(fontRid: RID, size: Vector2i, glyph: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_remove_glyph, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_glyph_advance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_advance")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2555689501)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns glyph advance (offset of the next glyph).
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphAdvance(fontRid: RID, size: Int, glyph: Int) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_advance, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_glyph_advance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_glyph_advance")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3219397315)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets glyph advance (offset of the next glyph).
    /// 
    @_documentation(visibility: public)
    open func _fontSetGlyphAdvance(fontRid: RID, size: Int, glyph: Int, advance: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: advance) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_glyph_advance, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_glyph_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_offset")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 513728628)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns glyph offset from the baseline.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphOffset(fontRid: RID, size: Vector2i, glyph: Int) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_glyph_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_glyph_offset")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1812632090)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets glyph offset from the baseline.
    /// 
    @_documentation(visibility: public)
    open func _fontSetGlyphOffset(fontRid: RID, size: Vector2i, glyph: Int, offset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: offset) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_glyph_offset, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_glyph_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 513728628)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns size of the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphSize(fontRid: RID, size: Vector2i, glyph: Int) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_size, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_glyph_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_glyph_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1812632090)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets size of the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontSetGlyphSize(fontRid: RID, size: Vector2i, glyph: Int, glSize: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: glSize) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_glyph_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_glyph_uv_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_uv_rect")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2274268786)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns rectangle in the cache texture containing the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphUvRect(fontRid: RID, size: Vector2i, glyph: Int) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_uv_rect, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_glyph_uv_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_glyph_uv_rect")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1973324081)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets rectangle in the cache texture containing the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontSetGlyphUvRect(fontRid: RID, size: Vector2i, glyph: Int, uvRect: Rect2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: uvRect) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_glyph_uv_rect, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_glyph_texture_idx: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_texture_idx")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4292800474)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns index of the cache texture containing the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphTextureIdx(fontRid: RID, size: Vector2i, glyph: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_texture_idx, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_glyph_texture_idx: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_glyph_texture_idx")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4254580980)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets index of the cache texture containing the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontSetGlyphTextureIdx(fontRid: RID, size: Vector2i, glyph: Int, textureIdx: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: textureIdx) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_glyph_texture_idx, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_glyph_texture_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_texture_rid")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1451696141)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns resource ID of the cache texture containing the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphTextureRid(fontRid: RID, size: Vector2i, glyph: Int) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_texture_rid, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_glyph_texture_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_texture_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 513728628)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns size of the cache texture containing the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphTextureSize(fontRid: RID, size: Vector2i, glyph: Int) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyph) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_texture_size, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_glyph_contours: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_contours")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2903964473)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns outline contours of the glyph.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphContours(fontRid: RID, size: Int, index: Int) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: index) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_contours, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_kerning_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_kerning_list")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1778388067)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns list of the kerning overrides.
    /// 
    @_documentation(visibility: public)
    open func _fontGetKerningList(fontRid: RID, size: Int) -> TypedArray<Vector2i> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_kerning_list, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<Vector2i>(takingOver: _result)
    }
    
    fileprivate static let method__font_clear_kerning_map: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_clear_kerning_map")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Removes all kerning overrides.
    /// 
    @_documentation(visibility: public)
    open func _fontClearKerningMap(fontRid: RID, size: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_clear_kerning_map, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_remove_kerning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_remove_kerning")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2141860016)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Removes kerning override for the pair of glyphs.
    /// 
    @_documentation(visibility: public)
    open func _fontRemoveKerning(fontRid: RID, size: Int, glyphPair: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyphPair) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_remove_kerning, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_set_kerning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_kerning")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3630965883)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets kerning for the pair of glyphs.
    /// 
    @_documentation(visibility: public)
    open func _fontSetKerning(fontRid: RID, size: Int, glyphPair: Vector2i, kerning: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyphPair) { pArg2 in
                    withUnsafePointer(to: kerning) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_kerning, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_kerning: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_kerning")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1019980169)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns kerning for the pair of glyphs.
    /// 
    @_documentation(visibility: public)
    open func _fontGetKerning(fontRid: RID, size: Int, glyphPair: Vector2i) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyphPair) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_kerning, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_glyph_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_glyph_index")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1765635060)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the glyph index of a `char`, optionally modified by the `variationSelector`.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlyphIndex(fontRid: RID, size: Int, char: Int, variationSelector: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: char) { pArg2 in
                    withUnsafePointer(to: variationSelector) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_glyph_index, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_char_from_glyph_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_char_from_glyph_index")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2156738276)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns character code associated with `glyphIndex`, or `0` if `glyphIndex` is invalid.
    /// 
    @_documentation(visibility: public)
    open func _fontGetCharFromGlyphIndex(fontRid: RID, size: Int, glyphIndex: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: glyphIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_char_from_glyph_index, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_has_char: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_has_char")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3120086654)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns `true` if a Unicode `char` is available in the font.
    /// 
    @_documentation(visibility: public)
    open func _fontHasChar(fontRid: RID, char: Int) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: char) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_has_char, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_supported_chars: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_supported_chars")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 642473191)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns a string containing all the characters available in the font.
    /// 
    @_documentation(visibility: public)
    open func _fontGetSupportedChars(fontRid: RID) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_supported_chars, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__font_get_supported_glyphs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_supported_glyphs")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 788230395)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns an array containing all glyph indices in the font.
    /// 
    @_documentation(visibility: public)
    open func _fontGetSupportedGlyphs(fontRid: RID) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_supported_glyphs, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_render_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_render_range")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4254580980)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Renders the range of characters to the font cache texture.
    /// 
    @_documentation(visibility: public)
    open func _fontRenderRange(fontRid: RID, size: Vector2i, start: Int, end: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: start) { pArg2 in
                    withUnsafePointer(to: end) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__font_render_range, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_render_glyph: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_render_glyph")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3810512262)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Renders specified glyph to the font cache texture.
    /// 
    @_documentation(visibility: public)
    open func _fontRenderGlyph(fontRid: RID, size: Vector2i, index: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: index) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_render_glyph, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_draw_glyph: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_draw_glyph")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 309868464)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Draws single glyph into a canvas item at the position, using `fontRid` at the size `size`.
    /// 
    @_documentation(visibility: public)
    open func _fontDrawGlyph(fontRid: RID, canvas: RID, size: Int, pos: Vector2, index: Int, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: canvas.content) { pArg1 in
                withUnsafePointer(to: size) { pArg2 in
                    withUnsafePointer(to: pos) { pArg3 in
                        withUnsafePointer(to: index) { pArg4 in
                            withUnsafePointer(to: color) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_draw_glyph, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_draw_glyph_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_draw_glyph_outline")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3090733778)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Draws single glyph outline of size `outlineSize` into a canvas item at the position, using `fontRid` at the size `size`.
    /// 
    @_documentation(visibility: public)
    open func _fontDrawGlyphOutline(fontRid: RID, canvas: RID, size: Int, outlineSize: Int, pos: Vector2, index: Int, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: canvas.content) { pArg1 in
                withUnsafePointer(to: size) { pArg2 in
                    withUnsafePointer(to: outlineSize) { pArg3 in
                        withUnsafePointer(to: pos) { pArg4 in
                            withUnsafePointer(to: index) { pArg5 in
                                withUnsafePointer(to: color) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_draw_glyph_outline, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_is_language_supported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_is_language_supported")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3199320846)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true`, if font supports given language (<a href="https://en.wikipedia.org/wiki/ISO_639-1">ISO 639</a> code).
    /// 
    @_documentation(visibility: public)
    open func _fontIsLanguageSupported(fontRid: RID, language: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_is_language_supported, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_language_support_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_language_support_override")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2313957094)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Adds override for ``_fontIsLanguageSupported(fontRid:language:)``.
    /// 
    @_documentation(visibility: public)
    open func _fontSetLanguageSupportOverride(fontRid: RID, language: String, supported: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: supported) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_language_support_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_language_support_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_language_support_override")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2829184646)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if support override is enabled for the `language`.
    /// 
    @_documentation(visibility: public)
    open func _fontGetLanguageSupportOverride(fontRid: RID, language: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_language_support_override, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_remove_language_support_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_remove_language_support_override")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2726140452)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Remove language support override.
    /// 
    @_documentation(visibility: public)
    open func _fontRemoveLanguageSupportOverride(fontRid: RID, language: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_remove_language_support_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_language_support_overrides: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_language_support_overrides")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2801473409)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns list of language support overrides.
    /// 
    @_documentation(visibility: public)
    open func _fontGetLanguageSupportOverrides(fontRid: RID) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_language_support_overrides, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_is_script_supported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_is_script_supported")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3199320846)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true`, if font supports given script (ISO 15924 code).
    /// 
    @_documentation(visibility: public)
    open func _fontIsScriptSupported(fontRid: RID, script: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let script = GString(script)
            withUnsafePointer(to: script.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_is_script_supported, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_script_support_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_script_support_override")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2313957094)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Adds override for ``_fontIsScriptSupported(fontRid:script:)``.
    /// 
    @_documentation(visibility: public)
    open func _fontSetScriptSupportOverride(fontRid: RID, script: String, supported: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let script = GString(script)
            withUnsafePointer(to: script.content) { pArg1 in
                withUnsafePointer(to: supported) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_script_support_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_script_support_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_script_support_override")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2829184646)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if support override is enabled for the `script`.
    /// 
    @_documentation(visibility: public)
    open func _fontGetScriptSupportOverride(fontRid: RID, script: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let script = GString(script)
            withUnsafePointer(to: script.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_script_support_override, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_remove_script_support_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_remove_script_support_override")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2726140452)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Removes script support override.
    /// 
    @_documentation(visibility: public)
    open func _fontRemoveScriptSupportOverride(fontRid: RID, script: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            let script = GString(script)
            withUnsafePointer(to: script.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_remove_script_support_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_script_support_overrides: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_script_support_overrides")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2801473409)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns list of script support overrides.
    /// 
    @_documentation(visibility: public)
    open func _fontGetScriptSupportOverrides(fontRid: RID) -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_script_support_overrides, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_set_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_opentype_feature_overrides")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1217542888)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets font OpenType feature set override.
    /// 
    @_documentation(visibility: public)
    open func _fontSetOpentypeFeatureOverrides(fontRid: RID, overrides: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: overrides.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_opentype_feature_overrides, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__font_get_opentype_feature_overrides: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_opentype_feature_overrides")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1882737106)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns font OpenType feature set override.
    /// 
    @_documentation(visibility: public)
    open func _fontGetOpentypeFeatureOverrides(fontRid: RID) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_opentype_feature_overrides, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_supported_feature_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_supported_feature_list")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1882737106)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the dictionary of the supported OpenType features.
    /// 
    @_documentation(visibility: public)
    open func _fontSupportedFeatureList(fontRid: RID) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_supported_feature_list, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_supported_variation_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_supported_variation_list")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1882737106)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the dictionary of the supported OpenType variation coordinates.
    /// 
    @_documentation(visibility: public)
    open func _fontSupportedVariationList(fontRid: RID) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: fontRid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_supported_variation_list, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__font_get_global_oversampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_get_global_oversampling")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the font oversampling factor, shared by all fonts in the TextServer.
    /// 
    @_documentation(visibility: public)
    open func _fontGetGlobalOversampling() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(TextServerExtension.method__font_get_global_oversampling, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__font_set_global_oversampling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_font_set_global_oversampling")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets oversampling factor, shared by all font in the TextServer.
    /// 
    @_documentation(visibility: public)
    open func _fontSetGlobalOversampling(_ oversampling: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: oversampling) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__font_set_global_oversampling, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__get_hex_code_box_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_hex_code_box_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3016396712)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns size of the replacement character (box with character hexadecimal code that is drawn in place of invalid characters).
    /// 
    @_documentation(visibility: public)
    open func _getHexCodeBoxSize(_ size: Int, index: Int) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: index) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__get_hex_code_box_size, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__draw_hex_code_box: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_draw_hex_code_box")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602046441)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Draws box displaying character hexadecimal code.
    /// 
    @_documentation(visibility: public)
    open func _drawHexCodeBox(canvas: RID, size: Int, pos: Vector2, index: Int, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: canvas.content) { pArg0 in
            withUnsafePointer(to: size) { pArg1 in
                withUnsafePointer(to: pos) { pArg2 in
                    withUnsafePointer(to: index) { pArg3 in
                        withUnsafePointer(to: color) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextServerExtension.method__draw_hex_code_box, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__create_shaped_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_create_shaped_text")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1431128392)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Creates a new buffer for complex text layout, with the given `direction` and `orientation`.
    /// 
    @_documentation(visibility: public)
    open func _createShapedText(direction: TextServer.Direction, orientation: TextServer.Orientation) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: direction.rawValue) { pArg0 in
            withUnsafePointer(to: orientation.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__create_shaped_text, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_clear")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Clears text buffer (removes text and inline objects).
    /// 
    @_documentation(visibility: public)
    open func _shapedTextClear(shaped: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_clear, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_set_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_direction")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4276135416)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets desired text direction. If set to ``TextServer/Direction/auto``, direction will be detected based on the buffer contents and current locale.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetDirection(shaped: RID, direction: TextServer.Direction) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: direction.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_direction, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_direction")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3065904362)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns direction of the text.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetDirection(shaped: RID) -> TextServer.Direction {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_direction, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.Direction (rawValue: _result)!
    }
    
    fileprivate static let method__shaped_text_get_inferred_direction: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_inferred_direction")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3065904362)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns direction of the text, inferred by the BiDi algorithm.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetInferredDirection(shaped: RID) -> TextServer.Direction {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_inferred_direction, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.Direction (rawValue: _result)!
    }
    
    fileprivate static let method__shaped_text_set_bidi_override: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_bidi_override")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 684822712)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Overrides BiDi for the structured text.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetBidiOverride(shaped: RID, override: VariantArray) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: override.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_bidi_override, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_set_custom_punctuation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_custom_punctuation")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2726140452)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetCustomPunctuation(shaped: RID, punct: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            let punct = GString(punct)
            withUnsafePointer(to: punct.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_custom_punctuation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_custom_punctuation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_custom_punctuation")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 642473191)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns custom punctuation character list, used for word breaking. If set to empty string, server defaults are used.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetCustomPunctuation(shaped: RID) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_custom_punctuation, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__shaped_text_set_custom_ellipsis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_custom_ellipsis")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3411492887)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets ellipsis character used for text clipping.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetCustomEllipsis(shaped: RID, char: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: char) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_custom_ellipsis, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_custom_ellipsis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_custom_ellipsis")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns ellipsis character used for text clipping.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetCustomEllipsis(shaped: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_custom_ellipsis, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_set_orientation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_orientation")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2306444742)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets desired text orientation.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetOrientation(shaped: RID, orientation: TextServer.Orientation) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: orientation.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_orientation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_orientation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_orientation")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3142708106)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns text orientation.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetOrientation(shaped: RID) -> TextServer.Orientation {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_orientation, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return TextServer.Orientation (rawValue: _result)!
    }
    
    fileprivate static let method__shaped_text_set_preserve_invalid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_preserve_invalid")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// If set to `true` text buffer will display invalid characters as hexadecimal codes, otherwise nothing is displayed.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetPreserveInvalid(shaped: RID, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_preserve_invalid, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_preserve_invalid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_preserve_invalid")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if text buffer is configured to display hexadecimal codes in place of invalid characters.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetPreserveInvalid(shaped: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_preserve_invalid, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_set_preserve_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_preserve_control")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// If set to `true` text buffer will display control characters.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetPreserveControl(shaped: RID, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_preserve_control, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_preserve_control: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_preserve_control")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if text buffer is configured to display control characters.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetPreserveControl(shaped: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_preserve_control, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_set_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_set_spacing")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1307259930)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Sets extra spacing added between glyphs or lines in pixels.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSetSpacing(shaped: RID, spacing: TextServer.SpacingType, value: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: spacing.rawValue) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_set_spacing, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_spacing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_spacing")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1213653558)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns extra spacing added between glyphs or lines in pixels.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetSpacing(shaped: RID, spacing: TextServer.SpacingType) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: spacing.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_spacing, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_add_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_add_string")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 875249313)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Adds text span and font to draw it to the text buffer.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextAddString(shaped: RID, text: String, fonts: TypedArray<RID>, size: Int, opentypeFeatures: VariantDictionary, language: String, meta: Variant?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            let text = GString(text)
            withUnsafePointer(to: text.content) { pArg1 in
                withUnsafePointer(to: fonts.array.content) { pArg2 in
                    withUnsafePointer(to: size) { pArg3 in
                        withUnsafePointer(to: opentypeFeatures.content) { pArg4 in
                            let language = GString(language)
                            withUnsafePointer(to: language.content) { pArg5 in
                                withUnsafePointer(to: meta.content) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_add_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_add_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_add_object")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2452224230)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Adds inline object to the text buffer, `key` must be unique. In the text, object is represented as `length` object replacement characters.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextAddObject(shaped: RID, key: Variant?, size: Vector2, inlineAlign: InlineAlignment, length: Int, baseline: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: size) { pArg2 in
                    withUnsafePointer(to: inlineAlign.rawValue) { pArg3 in
                        withUnsafePointer(to: length) { pArg4 in
                            withUnsafePointer(to: baseline) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_add_object, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_resize_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_resize_object")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2747466775)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Sets new size and alignment of embedded object.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextResizeObject(shaped: RID, key: Variant?, size: Vector2, inlineAlign: InlineAlignment, baseline: Double) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: size) { pArg2 in
                    withUnsafePointer(to: inlineAlign.rawValue) { pArg3 in
                        withUnsafePointer(to: baseline) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_resize_object, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_get_span_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_get_span_count")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns number of text spans added using ``_shapedTextAddString(shaped:text:fonts:size:opentypeFeatures:language:meta:)`` or ``_shapedTextAddObject(shaped:key:size:inlineAlign:length:baseline:)``.
    /// 
    @_documentation(visibility: public)
    open func _shapedGetSpanCount(shaped: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_get_span_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_get_span_meta: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_get_span_meta")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4069510997)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns text span metadata.
    /// 
    @_documentation(visibility: public)
    open func _shapedGetSpanMeta(shaped: RID, index: Int) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: index) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_get_span_meta, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__shaped_get_span_embedded_object: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_get_span_embedded_object")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4069510997)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns text embedded object key.
    /// 
    @_documentation(visibility: public)
    open func _shapedGetSpanEmbeddedObject(shaped: RID, index: Int) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: index) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_get_span_embedded_object, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__shaped_set_span_update_font: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_set_span_update_font")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2569459151)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Changes text span font, font size, and OpenType features, without changing the text.
    /// 
    @_documentation(visibility: public)
    open func _shapedSetSpanUpdateFont(shaped: RID, index: Int, fonts: TypedArray<RID>, size: Int, opentypeFeatures: VariantDictionary) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: index) { pArg1 in
                withUnsafePointer(to: fonts.array.content) { pArg2 in
                    withUnsafePointer(to: size) { pArg3 in
                        withUnsafePointer(to: opentypeFeatures.content) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_set_span_update_font, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_substr: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_substr")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1937682086)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns text buffer for the substring of the text in the `shaped` text buffer (including inline objects).
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSubstr(shaped: RID, start: Int, length: Int) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: start) { pArg1 in
                withUnsafePointer(to: length) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_substr, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_parent")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3814569979)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the parent buffer from which the substring originates.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetParent(shaped: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: RID = RID ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_parent, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_fit_to_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_fit_to_width")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1426448222)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Adjusts text width to fit to specified width, returns new text width.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextFitToWidth(shaped: RID, width: Double, justificationFlags: TextServer.JustificationFlag) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: width) { pArg1 in
                withUnsafePointer(to: justificationFlags.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_fit_to_width, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_tab_align: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_tab_align")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1283669550)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Aligns shaped text to the given tab-stops.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextTabAlign(shaped: RID, tabStops: PackedFloat32Array) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: tabStops.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_tab_align, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_shape: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_shape")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Shapes buffer if it's not shaped. Returns `true` if the string is shaped successfully.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextShape(shaped: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_shape, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_update_breaks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_update_breaks")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Updates break points in the shaped text. This method is called by default implementation of text breaking functions.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextUpdateBreaks(shaped: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_update_breaks, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_update_justification_ops: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_update_justification_ops")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Updates justification points in the shaped text. This method is called by default implementation of text justification functions.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextUpdateJustificationOps(shaped: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_update_justification_ops, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_is_ready: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_is_ready")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns `true` if buffer is successfully shaped.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextIsReady(shaped: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_is_ready, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_glyphs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_glyphs")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns an array of glyphs in the visual order.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetGlyphs(shaped: RID) -> OpaquePointer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: OpaquePointer? = nil
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_glyphs, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_sort_logical: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_sort_logical")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3917799429)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns text glyphs in the logical order.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextSortLogical(shaped: RID) -> OpaquePointer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: OpaquePointer? = nil
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_sort_logical, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_glyph_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_glyph_count")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns number of glyphs in the buffer.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetGlyphCount(shaped: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_glyph_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_range")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 733700038)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns substring buffer character range in the parent buffer.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetRange(shaped: RID) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_range, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_line_breaks_adv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_line_breaks_adv")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1488467363)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Breaks text to the lines and columns. Returns character ranges for each segment.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetLineBreaksAdv(shaped: RID, width: PackedFloat32Array, start: Int, once: Bool, breakFlags: TextServer.LineBreakFlag) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: width.content) { pArg1 in
                withUnsafePointer(to: start) { pArg2 in
                    withUnsafePointer(to: once) { pArg3 in
                        withUnsafePointer(to: breakFlags.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_line_breaks_adv, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_line_breaks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_line_breaks")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3131311977)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Breaks text to the lines and returns character ranges for each line.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetLineBreaks(shaped: RID, width: Double, start: Int, breakFlags: TextServer.LineBreakFlag) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: width) { pArg1 in
                withUnsafePointer(to: start) { pArg2 in
                    withUnsafePointer(to: breakFlags.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_line_breaks, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_word_breaks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_word_breaks")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2423529412)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Breaks text into words and returns array of character ranges. Use `graphemeFlags` to set what characters are used for breaking (see ``TextServer.GraphemeFlag``).
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetWordBreaks(shaped: RID, graphemeFlags: TextServer.GraphemeFlag, skipGraphemeFlags: TextServer.GraphemeFlag) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: graphemeFlags.rawValue) { pArg1 in
                withUnsafePointer(to: skipGraphemeFlags.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_word_breaks, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_trim_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_trim_pos")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the position of the overrun trim.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetTrimPos(shaped: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_trim_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_ellipsis_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_ellipsis_pos")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns position of the ellipsis.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetEllipsisPos(shaped: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_ellipsis_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_ellipsis_glyph_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_ellipsis_glyph_count")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns number of glyphs in the ellipsis.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetEllipsisGlyphCount(shaped: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_ellipsis_glyph_count, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_ellipsis_glyphs: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_ellipsis_glyphs")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2198884583)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns array of the glyphs in the ellipsis.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetEllipsisGlyphs(shaped: RID) -> OpaquePointer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: OpaquePointer? = nil
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_ellipsis_glyphs, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_overrun_trim_to_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_overrun_trim_to_width")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3364950921)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Trims text if it exceeds the given width.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextOverrunTrimToWidth(shaped: RID, width: Double, trimFlags: TextServer.TextOverrunFlag) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: width) { pArg1 in
                withUnsafePointer(to: trimFlags.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_overrun_trim_to_width, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_objects: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_objects")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2684255073)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns array of inline objects.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetObjects(shaped: RID) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantArray = VariantArray ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_objects, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_object_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_object_rect")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 447978354)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns bounding rectangle of the inline object.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetObjectRect(shaped: RID, key: Variant?) -> Rect2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Rect2 = Rect2 ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_object_rect, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_object_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_object_range")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2524675647)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the character range of the inline object.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetObjectRange(shaped: RID, key: Variant?) -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_object_range, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_object_glyph: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_object_glyph")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1260085030)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the glyph index of the inline object.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetObjectGlyph(shaped: RID, key: Variant?) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: key.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_object_glyph, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_size")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2440833711)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns size of the text.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetSize(shaped: RID) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_size, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_ascent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_ascent")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the text ascent (number of pixels above the baseline for horizontal layout or to the left of baseline for vertical).
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetAscent(shaped: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_ascent, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_descent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_descent")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns the text descent (number of pixels below the baseline for horizontal layout or to the right of baseline for vertical).
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetDescent(shaped: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_descent, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_width")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns width (for horizontal layout) or height (for vertical) of the text.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetWidth(shaped: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_width, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_underline_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_underline_position")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns pixel offset of the underline below the baseline.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetUnderlinePosition(shaped: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_underline_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_underline_thickness: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_underline_thickness")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 866169185)!
            }
            
        }
        
    }()
    
    /// **Required.**
    /// 
    /// Returns thickness of the underline.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetUnderlineThickness(shaped: RID) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_underline_thickness, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_dominant_direction_in_range: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_dominant_direction_in_range")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2156738276)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns dominant direction of in the range of text.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetDominantDirectionInRange(shaped: RID, start: Int, end: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: start) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_dominant_direction_in_range, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_selection")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3714187733)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns selection rectangles for the specified character range.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetSelection(shaped: RID, start: Int, end: Int) -> PackedVector2Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedVector2Array = PackedVector2Array ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: start) { pArg1 in
                withUnsafePointer(to: end) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_selection, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_hit_test_grapheme: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_hit_test_grapheme")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3149310417)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns grapheme index at the specified pixel offset at the baseline, or `-1` if none is found.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextHitTestGrapheme(shaped: RID, coord: Double) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: coord) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_hit_test_grapheme, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_hit_test_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_hit_test_position")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3149310417)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns caret character offset at the specified pixel offset at the baseline. This function always returns a valid position.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextHitTestPosition(shaped: RID, coord: Double) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: coord) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_hit_test_position, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_draw")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2453262187)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Draw shaped text into a canvas item at a given position, with `color`. `pos` specifies the leftmost point of the baseline (for horizontal layout) or topmost point of the baseline (for vertical layout).
    /// 
    @_documentation(visibility: public)
    open func _shapedTextDraw(shaped: RID, canvas: RID, pos: Vector2, clipL: Double, clipR: Double, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: canvas.content) { pArg1 in
                withUnsafePointer(to: pos) { pArg2 in
                    withUnsafePointer(to: clipL) { pArg3 in
                        withUnsafePointer(to: clipR) { pArg4 in
                            withUnsafePointer(to: color) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_draw, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_draw_outline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_draw_outline")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1686767567)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Draw the outline of the shaped text into a canvas item at a given position, with `color`. `pos` specifies the leftmost point of the baseline (for horizontal layout) or topmost point of the baseline (for vertical layout).
    /// 
    @_documentation(visibility: public)
    open func _shapedTextDrawOutline(shaped: RID, canvas: RID, pos: Vector2, clipL: Double, clipR: Double, outlineSize: Int, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: canvas.content) { pArg1 in
                withUnsafePointer(to: pos) { pArg2 in
                    withUnsafePointer(to: clipL) { pArg3 in
                        withUnsafePointer(to: clipR) { pArg4 in
                            withUnsafePointer(to: outlineSize) { pArg5 in
                                withUnsafePointer(to: color) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_draw_outline, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shaped_text_get_grapheme_bounds: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_grapheme_bounds")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2546185844)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns composite character's bounds as offsets from the start of the line.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetGraphemeBounds(shaped: RID, pos: Int) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_grapheme_bounds, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_next_grapheme_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_next_grapheme_pos")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1120910005)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns grapheme end position closest to the `pos`.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextNextGraphemePos(shaped: RID, pos: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_next_grapheme_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_prev_grapheme_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_prev_grapheme_pos")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1120910005)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns grapheme start position closest to the `pos`.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextPrevGraphemePos(shaped: RID, pos: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_prev_grapheme_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_get_character_breaks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_get_character_breaks")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 788230395)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns array of the composite character boundaries.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextGetCharacterBreaks(shaped: RID) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_get_character_breaks, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_next_character_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_next_character_pos")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1120910005)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns composite character end position closest to the `pos`.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextNextCharacterPos(shaped: RID, pos: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_next_character_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_prev_character_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_prev_character_pos")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1120910005)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns composite character start position closest to the `pos`.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextPrevCharacterPos(shaped: RID, pos: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_prev_character_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__shaped_text_closest_character_pos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shaped_text_closest_character_pos")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1120910005)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns composite character position closest to the `pos`.
    /// 
    @_documentation(visibility: public)
    open func _shapedTextClosestCharacterPos(shaped: RID, pos: Int) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: shaped.content) { pArg0 in
            withUnsafePointer(to: pos) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__shaped_text_closest_character_pos, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__format_number: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_format_number")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 315676799)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Converts a number from the Western Arabic (0..9) to the numeral systems used in `language`.
    /// 
    @_documentation(visibility: public)
    open func _formatNumber(_ number: String, language: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let number = GString(number)
        withUnsafePointer(to: number.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__format_number, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__parse_number: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_number")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 315676799)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Converts `number` from the numeral systems used in `language` to Western Arabic (0..9).
    /// 
    @_documentation(visibility: public)
    open func _parseNumber(_ number: String, language: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let number = GString(number)
        withUnsafePointer(to: number.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__parse_number, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__percent_sign: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_percent_sign")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns percent sign used in the `language`.
    /// 
    @_documentation(visibility: public)
    open func _percentSign(language: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let language = GString(language)
        withUnsafePointer(to: language.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__percent_sign, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__strip_diacritics: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_strip_diacritics")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Strips diacritics from the string.
    /// 
    @_documentation(visibility: public)
    open func _stripDiacritics(string: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__strip_diacritics, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__is_valid_identifier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_valid_identifier")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if `string` is a valid identifier.
    /// 
    @_documentation(visibility: public)
    open func _isValidIdentifier(string: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__is_valid_identifier, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__is_valid_letter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_valid_letter")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// 
    @_documentation(visibility: public)
    open func _isValidLetter(unicode: UInt) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: unicode) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__is_valid_letter, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__string_get_word_breaks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_string_get_word_breaks")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3658450588)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns an array of the word break boundaries. Elements in the returned array are the offsets of the start and end of words. Therefore the length of the array is always even.
    /// 
    @_documentation(visibility: public)
    open func _stringGetWordBreaks(string: String, language: String, charsPerLine: Int) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: charsPerLine) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__string_get_word_breaks, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__string_get_character_breaks: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_string_get_character_breaks")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2509056759)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns array of the composite character boundaries.
    /// 
    @_documentation(visibility: public)
    open func _stringGetCharacterBreaks(string: String, language: String) -> PackedInt32Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedInt32Array = PackedInt32Array ()
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__string_get_character_breaks, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__is_confusable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_confusable")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1433197768)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns index of the first string in `dict` which is visually confusable with the `string`, or `-1` if none is found.
    /// 
    @_documentation(visibility: public)
    open func _isConfusable(string: String, dict: PackedStringArray) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            withUnsafePointer(to: dict.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__is_confusable, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__spoof_check: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_spoof_check")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns `true` if `string` is likely to be an attempt at confusing the reader.
    /// 
    @_documentation(visibility: public)
    open func _spoofCheck(string: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(TextServerExtension.method__spoof_check, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__string_to_upper: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_string_to_upper")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 315676799)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the string converted to uppercase.
    /// 
    @_documentation(visibility: public)
    open func _stringToUpper(string: String, language: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__string_to_upper, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__string_to_lower: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_string_to_lower")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 315676799)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the string converted to lowercase.
    /// 
    @_documentation(visibility: public)
    open func _stringToLower(string: String, language: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__string_to_lower, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__string_to_title: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_string_to_title")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 315676799)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Returns the string converted to title case.
    /// 
    @_documentation(visibility: public)
    open func _stringToTitle(string: String, language: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let string = GString(string)
        withUnsafePointer(to: string.content) { pArg0 in
            let language = GString(language)
            withUnsafePointer(to: language.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TextServerExtension.method__string_to_title, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method__parse_structured_text: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_parse_structured_text")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3310685015)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// Default implementation of the BiDi algorithm override function. See ``TextServer.StructuredTextParser`` for more info.
    /// 
    @_documentation(visibility: public)
    open func _parseStructuredText(parserType: TextServer.StructuredTextParser, args: VariantArray, text: String) -> TypedArray<Vector3i> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: parserType.rawValue) { pArg0 in
            withUnsafePointer(to: args.content) { pArg1 in
                let text = GString(text)
                withUnsafePointer(to: text.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(TextServerExtension.method__parse_structured_text, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<Vector3i>(takingOver: _result)
    }
    
    fileprivate static let method__cleanup: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_cleanup")
        return withUnsafePointer(to: &TextServerExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// **Optional.**
    /// 
    /// This method is called before text server is unregistered.
    /// 
    @_documentation(visibility: public)
    open func _cleanup() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TextServerExtension.method__cleanup, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_cleanup":
                return _TextServerExtension_proxy_cleanup
            case "_create_font":
                return _TextServerExtension_proxy_create_font
            case "_create_font_linked_variation":
                return _TextServerExtension_proxy_create_font_linked_variation
            case "_create_shaped_text":
                return _TextServerExtension_proxy_create_shaped_text
            case "_draw_hex_code_box":
                return _TextServerExtension_proxy_draw_hex_code_box
            case "_font_clear_glyphs":
                return _TextServerExtension_proxy_font_clear_glyphs
            case "_font_clear_kerning_map":
                return _TextServerExtension_proxy_font_clear_kerning_map
            case "_font_clear_size_cache":
                return _TextServerExtension_proxy_font_clear_size_cache
            case "_font_clear_textures":
                return _TextServerExtension_proxy_font_clear_textures
            case "_font_draw_glyph":
                return _TextServerExtension_proxy_font_draw_glyph
            case "_font_draw_glyph_outline":
                return _TextServerExtension_proxy_font_draw_glyph_outline
            case "_font_get_antialiasing":
                return _TextServerExtension_proxy_font_get_antialiasing
            case "_font_get_ascent":
                return _TextServerExtension_proxy_font_get_ascent
            case "_font_get_baseline_offset":
                return _TextServerExtension_proxy_font_get_baseline_offset
            case "_font_get_char_from_glyph_index":
                return _TextServerExtension_proxy_font_get_char_from_glyph_index
            case "_font_get_descent":
                return _TextServerExtension_proxy_font_get_descent
            case "_font_get_disable_embedded_bitmaps":
                return _TextServerExtension_proxy_font_get_disable_embedded_bitmaps
            case "_font_get_embolden":
                return _TextServerExtension_proxy_font_get_embolden
            case "_font_get_face_count":
                return _TextServerExtension_proxy_font_get_face_count
            case "_font_get_face_index":
                return _TextServerExtension_proxy_font_get_face_index
            case "_font_get_fixed_size":
                return _TextServerExtension_proxy_font_get_fixed_size
            case "_font_get_fixed_size_scale_mode":
                return _TextServerExtension_proxy_font_get_fixed_size_scale_mode
            case "_font_get_generate_mipmaps":
                return _TextServerExtension_proxy_font_get_generate_mipmaps
            case "_font_get_global_oversampling":
                return _TextServerExtension_proxy_font_get_global_oversampling
            case "_font_get_glyph_advance":
                return _TextServerExtension_proxy_font_get_glyph_advance
            case "_font_get_glyph_contours":
                return _TextServerExtension_proxy_font_get_glyph_contours
            case "_font_get_glyph_index":
                return _TextServerExtension_proxy_font_get_glyph_index
            case "_font_get_glyph_list":
                return _TextServerExtension_proxy_font_get_glyph_list
            case "_font_get_glyph_offset":
                return _TextServerExtension_proxy_font_get_glyph_offset
            case "_font_get_glyph_size":
                return _TextServerExtension_proxy_font_get_glyph_size
            case "_font_get_glyph_texture_idx":
                return _TextServerExtension_proxy_font_get_glyph_texture_idx
            case "_font_get_glyph_texture_rid":
                return _TextServerExtension_proxy_font_get_glyph_texture_rid
            case "_font_get_glyph_texture_size":
                return _TextServerExtension_proxy_font_get_glyph_texture_size
            case "_font_get_glyph_uv_rect":
                return _TextServerExtension_proxy_font_get_glyph_uv_rect
            case "_font_get_hinting":
                return _TextServerExtension_proxy_font_get_hinting
            case "_font_get_keep_rounding_remainders":
                return _TextServerExtension_proxy_font_get_keep_rounding_remainders
            case "_font_get_kerning":
                return _TextServerExtension_proxy_font_get_kerning
            case "_font_get_kerning_list":
                return _TextServerExtension_proxy_font_get_kerning_list
            case "_font_get_language_support_override":
                return _TextServerExtension_proxy_font_get_language_support_override
            case "_font_get_language_support_overrides":
                return _TextServerExtension_proxy_font_get_language_support_overrides
            case "_font_get_msdf_pixel_range":
                return _TextServerExtension_proxy_font_get_msdf_pixel_range
            case "_font_get_msdf_size":
                return _TextServerExtension_proxy_font_get_msdf_size
            case "_font_get_name":
                return _TextServerExtension_proxy_font_get_name
            case "_font_get_opentype_feature_overrides":
                return _TextServerExtension_proxy_font_get_opentype_feature_overrides
            case "_font_get_ot_name_strings":
                return _TextServerExtension_proxy_font_get_ot_name_strings
            case "_font_get_oversampling":
                return _TextServerExtension_proxy_font_get_oversampling
            case "_font_get_scale":
                return _TextServerExtension_proxy_font_get_scale
            case "_font_get_script_support_override":
                return _TextServerExtension_proxy_font_get_script_support_override
            case "_font_get_script_support_overrides":
                return _TextServerExtension_proxy_font_get_script_support_overrides
            case "_font_get_size_cache_list":
                return _TextServerExtension_proxy_font_get_size_cache_list
            case "_font_get_spacing":
                return _TextServerExtension_proxy_font_get_spacing
            case "_font_get_stretch":
                return _TextServerExtension_proxy_font_get_stretch
            case "_font_get_style":
                return _TextServerExtension_proxy_font_get_style
            case "_font_get_style_name":
                return _TextServerExtension_proxy_font_get_style_name
            case "_font_get_subpixel_positioning":
                return _TextServerExtension_proxy_font_get_subpixel_positioning
            case "_font_get_supported_chars":
                return _TextServerExtension_proxy_font_get_supported_chars
            case "_font_get_supported_glyphs":
                return _TextServerExtension_proxy_font_get_supported_glyphs
            case "_font_get_texture_count":
                return _TextServerExtension_proxy_font_get_texture_count
            case "_font_get_texture_image":
                return _TextServerExtension_proxy_font_get_texture_image
            case "_font_get_texture_offsets":
                return _TextServerExtension_proxy_font_get_texture_offsets
            case "_font_get_transform":
                return _TextServerExtension_proxy_font_get_transform
            case "_font_get_underline_position":
                return _TextServerExtension_proxy_font_get_underline_position
            case "_font_get_underline_thickness":
                return _TextServerExtension_proxy_font_get_underline_thickness
            case "_font_get_variation_coordinates":
                return _TextServerExtension_proxy_font_get_variation_coordinates
            case "_font_get_weight":
                return _TextServerExtension_proxy_font_get_weight
            case "_font_has_char":
                return _TextServerExtension_proxy_font_has_char
            case "_font_is_allow_system_fallback":
                return _TextServerExtension_proxy_font_is_allow_system_fallback
            case "_font_is_force_autohinter":
                return _TextServerExtension_proxy_font_is_force_autohinter
            case "_font_is_language_supported":
                return _TextServerExtension_proxy_font_is_language_supported
            case "_font_is_multichannel_signed_distance_field":
                return _TextServerExtension_proxy_font_is_multichannel_signed_distance_field
            case "_font_is_script_supported":
                return _TextServerExtension_proxy_font_is_script_supported
            case "_font_remove_glyph":
                return _TextServerExtension_proxy_font_remove_glyph
            case "_font_remove_kerning":
                return _TextServerExtension_proxy_font_remove_kerning
            case "_font_remove_language_support_override":
                return _TextServerExtension_proxy_font_remove_language_support_override
            case "_font_remove_script_support_override":
                return _TextServerExtension_proxy_font_remove_script_support_override
            case "_font_remove_size_cache":
                return _TextServerExtension_proxy_font_remove_size_cache
            case "_font_remove_texture":
                return _TextServerExtension_proxy_font_remove_texture
            case "_font_render_glyph":
                return _TextServerExtension_proxy_font_render_glyph
            case "_font_render_range":
                return _TextServerExtension_proxy_font_render_range
            case "_font_set_allow_system_fallback":
                return _TextServerExtension_proxy_font_set_allow_system_fallback
            case "_font_set_antialiasing":
                return _TextServerExtension_proxy_font_set_antialiasing
            case "_font_set_ascent":
                return _TextServerExtension_proxy_font_set_ascent
            case "_font_set_baseline_offset":
                return _TextServerExtension_proxy_font_set_baseline_offset
            case "_font_set_data":
                return _TextServerExtension_proxy_font_set_data
            case "_font_set_descent":
                return _TextServerExtension_proxy_font_set_descent
            case "_font_set_disable_embedded_bitmaps":
                return _TextServerExtension_proxy_font_set_disable_embedded_bitmaps
            case "_font_set_embolden":
                return _TextServerExtension_proxy_font_set_embolden
            case "_font_set_face_index":
                return _TextServerExtension_proxy_font_set_face_index
            case "_font_set_fixed_size":
                return _TextServerExtension_proxy_font_set_fixed_size
            case "_font_set_fixed_size_scale_mode":
                return _TextServerExtension_proxy_font_set_fixed_size_scale_mode
            case "_font_set_force_autohinter":
                return _TextServerExtension_proxy_font_set_force_autohinter
            case "_font_set_generate_mipmaps":
                return _TextServerExtension_proxy_font_set_generate_mipmaps
            case "_font_set_global_oversampling":
                return _TextServerExtension_proxy_font_set_global_oversampling
            case "_font_set_glyph_advance":
                return _TextServerExtension_proxy_font_set_glyph_advance
            case "_font_set_glyph_offset":
                return _TextServerExtension_proxy_font_set_glyph_offset
            case "_font_set_glyph_size":
                return _TextServerExtension_proxy_font_set_glyph_size
            case "_font_set_glyph_texture_idx":
                return _TextServerExtension_proxy_font_set_glyph_texture_idx
            case "_font_set_glyph_uv_rect":
                return _TextServerExtension_proxy_font_set_glyph_uv_rect
            case "_font_set_hinting":
                return _TextServerExtension_proxy_font_set_hinting
            case "_font_set_keep_rounding_remainders":
                return _TextServerExtension_proxy_font_set_keep_rounding_remainders
            case "_font_set_kerning":
                return _TextServerExtension_proxy_font_set_kerning
            case "_font_set_language_support_override":
                return _TextServerExtension_proxy_font_set_language_support_override
            case "_font_set_msdf_pixel_range":
                return _TextServerExtension_proxy_font_set_msdf_pixel_range
            case "_font_set_msdf_size":
                return _TextServerExtension_proxy_font_set_msdf_size
            case "_font_set_multichannel_signed_distance_field":
                return _TextServerExtension_proxy_font_set_multichannel_signed_distance_field
            case "_font_set_name":
                return _TextServerExtension_proxy_font_set_name
            case "_font_set_opentype_feature_overrides":
                return _TextServerExtension_proxy_font_set_opentype_feature_overrides
            case "_font_set_oversampling":
                return _TextServerExtension_proxy_font_set_oversampling
            case "_font_set_scale":
                return _TextServerExtension_proxy_font_set_scale
            case "_font_set_script_support_override":
                return _TextServerExtension_proxy_font_set_script_support_override
            case "_font_set_spacing":
                return _TextServerExtension_proxy_font_set_spacing
            case "_font_set_stretch":
                return _TextServerExtension_proxy_font_set_stretch
            case "_font_set_style":
                return _TextServerExtension_proxy_font_set_style
            case "_font_set_style_name":
                return _TextServerExtension_proxy_font_set_style_name
            case "_font_set_subpixel_positioning":
                return _TextServerExtension_proxy_font_set_subpixel_positioning
            case "_font_set_texture_image":
                return _TextServerExtension_proxy_font_set_texture_image
            case "_font_set_texture_offsets":
                return _TextServerExtension_proxy_font_set_texture_offsets
            case "_font_set_transform":
                return _TextServerExtension_proxy_font_set_transform
            case "_font_set_underline_position":
                return _TextServerExtension_proxy_font_set_underline_position
            case "_font_set_underline_thickness":
                return _TextServerExtension_proxy_font_set_underline_thickness
            case "_font_set_variation_coordinates":
                return _TextServerExtension_proxy_font_set_variation_coordinates
            case "_font_set_weight":
                return _TextServerExtension_proxy_font_set_weight
            case "_font_supported_feature_list":
                return _TextServerExtension_proxy_font_supported_feature_list
            case "_font_supported_variation_list":
                return _TextServerExtension_proxy_font_supported_variation_list
            case "_format_number":
                return _TextServerExtension_proxy_format_number
            case "_free_rid":
                return _TextServerExtension_proxy_free_rid
            case "_get_features":
                return _TextServerExtension_proxy_get_features
            case "_get_hex_code_box_size":
                return _TextServerExtension_proxy_get_hex_code_box_size
            case "_get_name":
                return _TextServerExtension_proxy_get_name
            case "_get_support_data":
                return _TextServerExtension_proxy_get_support_data
            case "_get_support_data_filename":
                return _TextServerExtension_proxy_get_support_data_filename
            case "_get_support_data_info":
                return _TextServerExtension_proxy_get_support_data_info
            case "_has":
                return _TextServerExtension_proxy_has
            case "_has_feature":
                return _TextServerExtension_proxy_has_feature
            case "_is_confusable":
                return _TextServerExtension_proxy_is_confusable
            case "_is_locale_right_to_left":
                return _TextServerExtension_proxy_is_locale_right_to_left
            case "_is_valid_identifier":
                return _TextServerExtension_proxy_is_valid_identifier
            case "_is_valid_letter":
                return _TextServerExtension_proxy_is_valid_letter
            case "_load_support_data":
                return _TextServerExtension_proxy_load_support_data
            case "_name_to_tag":
                return _TextServerExtension_proxy_name_to_tag
            case "_parse_number":
                return _TextServerExtension_proxy_parse_number
            case "_parse_structured_text":
                return _TextServerExtension_proxy_parse_structured_text
            case "_percent_sign":
                return _TextServerExtension_proxy_percent_sign
            case "_save_support_data":
                return _TextServerExtension_proxy_save_support_data
            case "_shaped_get_span_count":
                return _TextServerExtension_proxy_shaped_get_span_count
            case "_shaped_get_span_embedded_object":
                return _TextServerExtension_proxy_shaped_get_span_embedded_object
            case "_shaped_get_span_meta":
                return _TextServerExtension_proxy_shaped_get_span_meta
            case "_shaped_set_span_update_font":
                return _TextServerExtension_proxy_shaped_set_span_update_font
            case "_shaped_text_add_object":
                return _TextServerExtension_proxy_shaped_text_add_object
            case "_shaped_text_add_string":
                return _TextServerExtension_proxy_shaped_text_add_string
            case "_shaped_text_clear":
                return _TextServerExtension_proxy_shaped_text_clear
            case "_shaped_text_closest_character_pos":
                return _TextServerExtension_proxy_shaped_text_closest_character_pos
            case "_shaped_text_draw":
                return _TextServerExtension_proxy_shaped_text_draw
            case "_shaped_text_draw_outline":
                return _TextServerExtension_proxy_shaped_text_draw_outline
            case "_shaped_text_fit_to_width":
                return _TextServerExtension_proxy_shaped_text_fit_to_width
            case "_shaped_text_get_ascent":
                return _TextServerExtension_proxy_shaped_text_get_ascent
            case "_shaped_text_get_character_breaks":
                return _TextServerExtension_proxy_shaped_text_get_character_breaks
            case "_shaped_text_get_custom_ellipsis":
                return _TextServerExtension_proxy_shaped_text_get_custom_ellipsis
            case "_shaped_text_get_custom_punctuation":
                return _TextServerExtension_proxy_shaped_text_get_custom_punctuation
            case "_shaped_text_get_descent":
                return _TextServerExtension_proxy_shaped_text_get_descent
            case "_shaped_text_get_direction":
                return _TextServerExtension_proxy_shaped_text_get_direction
            case "_shaped_text_get_dominant_direction_in_range":
                return _TextServerExtension_proxy_shaped_text_get_dominant_direction_in_range
            case "_shaped_text_get_ellipsis_glyph_count":
                return _TextServerExtension_proxy_shaped_text_get_ellipsis_glyph_count
            case "_shaped_text_get_ellipsis_glyphs":
                return _TextServerExtension_proxy_shaped_text_get_ellipsis_glyphs
            case "_shaped_text_get_ellipsis_pos":
                return _TextServerExtension_proxy_shaped_text_get_ellipsis_pos
            case "_shaped_text_get_glyph_count":
                return _TextServerExtension_proxy_shaped_text_get_glyph_count
            case "_shaped_text_get_glyphs":
                return _TextServerExtension_proxy_shaped_text_get_glyphs
            case "_shaped_text_get_grapheme_bounds":
                return _TextServerExtension_proxy_shaped_text_get_grapheme_bounds
            case "_shaped_text_get_inferred_direction":
                return _TextServerExtension_proxy_shaped_text_get_inferred_direction
            case "_shaped_text_get_line_breaks":
                return _TextServerExtension_proxy_shaped_text_get_line_breaks
            case "_shaped_text_get_line_breaks_adv":
                return _TextServerExtension_proxy_shaped_text_get_line_breaks_adv
            case "_shaped_text_get_object_glyph":
                return _TextServerExtension_proxy_shaped_text_get_object_glyph
            case "_shaped_text_get_object_range":
                return _TextServerExtension_proxy_shaped_text_get_object_range
            case "_shaped_text_get_object_rect":
                return _TextServerExtension_proxy_shaped_text_get_object_rect
            case "_shaped_text_get_objects":
                return _TextServerExtension_proxy_shaped_text_get_objects
            case "_shaped_text_get_orientation":
                return _TextServerExtension_proxy_shaped_text_get_orientation
            case "_shaped_text_get_parent":
                return _TextServerExtension_proxy_shaped_text_get_parent
            case "_shaped_text_get_preserve_control":
                return _TextServerExtension_proxy_shaped_text_get_preserve_control
            case "_shaped_text_get_preserve_invalid":
                return _TextServerExtension_proxy_shaped_text_get_preserve_invalid
            case "_shaped_text_get_range":
                return _TextServerExtension_proxy_shaped_text_get_range
            case "_shaped_text_get_selection":
                return _TextServerExtension_proxy_shaped_text_get_selection
            case "_shaped_text_get_size":
                return _TextServerExtension_proxy_shaped_text_get_size
            case "_shaped_text_get_spacing":
                return _TextServerExtension_proxy_shaped_text_get_spacing
            case "_shaped_text_get_trim_pos":
                return _TextServerExtension_proxy_shaped_text_get_trim_pos
            case "_shaped_text_get_underline_position":
                return _TextServerExtension_proxy_shaped_text_get_underline_position
            case "_shaped_text_get_underline_thickness":
                return _TextServerExtension_proxy_shaped_text_get_underline_thickness
            case "_shaped_text_get_width":
                return _TextServerExtension_proxy_shaped_text_get_width
            case "_shaped_text_get_word_breaks":
                return _TextServerExtension_proxy_shaped_text_get_word_breaks
            case "_shaped_text_hit_test_grapheme":
                return _TextServerExtension_proxy_shaped_text_hit_test_grapheme
            case "_shaped_text_hit_test_position":
                return _TextServerExtension_proxy_shaped_text_hit_test_position
            case "_shaped_text_is_ready":
                return _TextServerExtension_proxy_shaped_text_is_ready
            case "_shaped_text_next_character_pos":
                return _TextServerExtension_proxy_shaped_text_next_character_pos
            case "_shaped_text_next_grapheme_pos":
                return _TextServerExtension_proxy_shaped_text_next_grapheme_pos
            case "_shaped_text_overrun_trim_to_width":
                return _TextServerExtension_proxy_shaped_text_overrun_trim_to_width
            case "_shaped_text_prev_character_pos":
                return _TextServerExtension_proxy_shaped_text_prev_character_pos
            case "_shaped_text_prev_grapheme_pos":
                return _TextServerExtension_proxy_shaped_text_prev_grapheme_pos
            case "_shaped_text_resize_object":
                return _TextServerExtension_proxy_shaped_text_resize_object
            case "_shaped_text_set_bidi_override":
                return _TextServerExtension_proxy_shaped_text_set_bidi_override
            case "_shaped_text_set_custom_ellipsis":
                return _TextServerExtension_proxy_shaped_text_set_custom_ellipsis
            case "_shaped_text_set_custom_punctuation":
                return _TextServerExtension_proxy_shaped_text_set_custom_punctuation
            case "_shaped_text_set_direction":
                return _TextServerExtension_proxy_shaped_text_set_direction
            case "_shaped_text_set_orientation":
                return _TextServerExtension_proxy_shaped_text_set_orientation
            case "_shaped_text_set_preserve_control":
                return _TextServerExtension_proxy_shaped_text_set_preserve_control
            case "_shaped_text_set_preserve_invalid":
                return _TextServerExtension_proxy_shaped_text_set_preserve_invalid
            case "_shaped_text_set_spacing":
                return _TextServerExtension_proxy_shaped_text_set_spacing
            case "_shaped_text_shape":
                return _TextServerExtension_proxy_shaped_text_shape
            case "_shaped_text_sort_logical":
                return _TextServerExtension_proxy_shaped_text_sort_logical
            case "_shaped_text_substr":
                return _TextServerExtension_proxy_shaped_text_substr
            case "_shaped_text_tab_align":
                return _TextServerExtension_proxy_shaped_text_tab_align
            case "_shaped_text_update_breaks":
                return _TextServerExtension_proxy_shaped_text_update_breaks
            case "_shaped_text_update_justification_ops":
                return _TextServerExtension_proxy_shaped_text_update_justification_ops
            case "_spoof_check":
                return _TextServerExtension_proxy_spoof_check
            case "_string_get_character_breaks":
                return _TextServerExtension_proxy_string_get_character_breaks
            case "_string_get_word_breaks":
                return _TextServerExtension_proxy_string_get_word_breaks
            case "_string_to_lower":
                return _TextServerExtension_proxy_string_to_lower
            case "_string_to_title":
                return _TextServerExtension_proxy_string_to_title
            case "_string_to_upper":
                return _TextServerExtension_proxy_string_to_upper
            case "_strip_diacritics":
                return _TextServerExtension_proxy_strip_diacritics
            case "_tag_to_name":
                return _TextServerExtension_proxy_tag_to_name
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _TextServerExtension_proxy_cleanup (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._cleanup ()
}

func _TextServerExtension_proxy_create_font (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._createFont ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _TextServerExtension_proxy_create_font_linked_variation (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._createFontLinkedVariation (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _TextServerExtension_proxy_create_shaped_text (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._createShapedText (direction: args [0]!.assumingMemoryBound (to: TextServer.Direction.self).pointee, orientation: args [1]!.assumingMemoryBound (to: TextServer.Orientation.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _TextServerExtension_proxy_draw_hex_code_box (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._drawHexCodeBox (canvas: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, pos: args [2]!.assumingMemoryBound (to: Vector2.self).pointee, index: args [3]!.assumingMemoryBound (to: Int.self).pointee, color: args [4]!.assumingMemoryBound (to: Color.self).pointee)
}

func _TextServerExtension_proxy_font_clear_glyphs (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontClearGlyphs (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee)
}

func _TextServerExtension_proxy_font_clear_kerning_map (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontClearKerningMap (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_clear_size_cache (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontClearSizeCache (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _TextServerExtension_proxy_font_clear_textures (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontClearTextures (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee)
}

func _TextServerExtension_proxy_font_draw_glyph (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontDrawGlyph (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), canvas: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), size: args [2]!.assumingMemoryBound (to: Int.self).pointee, pos: args [3]!.assumingMemoryBound (to: Vector2.self).pointee, index: args [4]!.assumingMemoryBound (to: Int.self).pointee, color: args [5]!.assumingMemoryBound (to: Color.self).pointee)
}

func _TextServerExtension_proxy_font_draw_glyph_outline (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontDrawGlyphOutline (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), canvas: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), size: args [2]!.assumingMemoryBound (to: Int.self).pointee, outlineSize: args [3]!.assumingMemoryBound (to: Int.self).pointee, pos: args [4]!.assumingMemoryBound (to: Vector2.self).pointee, index: args [5]!.assumingMemoryBound (to: Int.self).pointee, color: args [6]!.assumingMemoryBound (to: Color.self).pointee)
}

func _TextServerExtension_proxy_font_get_antialiasing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetAntialiasing (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextServerExtension_proxy_font_get_ascent (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetAscent (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_baseline_offset (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetBaselineOffset (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_char_from_glyph_index (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetCharFromGlyphIndex (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, glyphIndex: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_descent (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetDescent (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_disable_embedded_bitmaps (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetDisableEmbeddedBitmaps (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_get_embolden (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetEmbolden (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_face_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetFaceCount (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_face_index (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetFaceIndex (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_fixed_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetFixedSize (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_fixed_size_scale_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetFixedSizeScaleMode (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextServerExtension_proxy_font_get_generate_mipmaps (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGenerateMipmaps (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_get_global_oversampling (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlobalOversampling ()
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_glyph_advance (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphAdvance (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_font_get_glyph_contours (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphContours (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, index: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _TextServerExtension_proxy_font_get_glyph_index (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphIndex (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, char: args [2]!.assumingMemoryBound (to: Int.self).pointee, variationSelector: args [3]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_glyph_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphList (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_font_get_glyph_offset (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphOffset (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_font_get_glyph_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphSize (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_font_get_glyph_texture_idx (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphTextureIdx (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_glyph_texture_rid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphTextureRid (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _TextServerExtension_proxy_font_get_glyph_texture_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphTextureSize (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_font_get_glyph_uv_rect (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetGlyphUvRect (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Rect2.self)
}

func _TextServerExtension_proxy_font_get_hinting (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetHinting (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextServerExtension_proxy_font_get_keep_rounding_remainders (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetKeepRoundingRemainders (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_get_kerning (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetKerning (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, glyphPair: args [2]!.assumingMemoryBound (to: Vector2i.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_font_get_kerning_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetKerningList (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Vector2i
}

func _TextServerExtension_proxy_font_get_language_support_override (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetLanguageSupportOverride (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), language: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_get_language_support_overrides (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetLanguageSupportOverrides (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _TextServerExtension_proxy_font_get_msdf_pixel_range (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetMsdfPixelRange (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_msdf_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetMsdfSize (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._fontGetName (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee)))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_font_get_opentype_feature_overrides (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetOpentypeFeatureOverrides (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _TextServerExtension_proxy_font_get_ot_name_strings (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetOtNameStrings (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _TextServerExtension_proxy_font_get_oversampling (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetOversampling (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_scale (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetScale (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_script_support_override (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetScriptSupportOverride (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), script: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_get_script_support_overrides (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetScriptSupportOverrides (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _TextServerExtension_proxy_font_get_size_cache_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetSizeCacheList (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Vector2i
}

func _TextServerExtension_proxy_font_get_spacing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetSpacing (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), spacing: args [1]!.assumingMemoryBound (to: TextServer.SpacingType.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_stretch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetStretch (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_style (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetStyle (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: TextServer.FontStyle.self)
}

func _TextServerExtension_proxy_font_get_style_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._fontGetStyleName (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee)))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_font_get_subpixel_positioning (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetSubpixelPositioning (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextServerExtension_proxy_font_get_supported_chars (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._fontGetSupportedChars (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee)))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_font_get_supported_glyphs (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetSupportedGlyphs (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_font_get_texture_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetTextureCount (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_get_texture_image (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetTextureImage (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, textureIndex: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // Image
}

func _TextServerExtension_proxy_font_get_texture_offsets (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetTextureOffsets (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, textureIndex: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_font_get_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetTransform (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Transform2D.self)
}

func _TextServerExtension_proxy_font_get_underline_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetUnderlinePosition (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_underline_thickness (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetUnderlineThickness (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_font_get_variation_coordinates (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetVariationCoordinates (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _TextServerExtension_proxy_font_get_weight (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontGetWeight (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_font_has_char (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontHasChar (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), char: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_is_allow_system_fallback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontIsAllowSystemFallback (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_is_force_autohinter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontIsForceAutohinter (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_is_language_supported (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontIsLanguageSupported (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), language: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_is_multichannel_signed_distance_field (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontIsMultichannelSignedDistanceField (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_is_script_supported (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontIsScriptSupported (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), script: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_font_remove_glyph (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRemoveGlyph (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_remove_kerning (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRemoveKerning (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, glyphPair: args [2]!.assumingMemoryBound (to: Vector2i.self).pointee)
}

func _TextServerExtension_proxy_font_remove_language_support_override (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRemoveLanguageSupportOverride (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), language: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _TextServerExtension_proxy_font_remove_script_support_override (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRemoveScriptSupportOverride (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), script: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _TextServerExtension_proxy_font_remove_size_cache (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRemoveSizeCache (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee)
}

func _TextServerExtension_proxy_font_remove_texture (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRemoveTexture (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, textureIndex: args [2]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_render_glyph (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRenderGlyph (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, index: args [2]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_render_range (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontRenderRange (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, start: args [2]!.assumingMemoryBound (to: Int.self).pointee, end: args [3]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_allow_system_fallback (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetAllowSystemFallback (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), allowSystemFallback: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_antialiasing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetAntialiasing (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), antialiasing: args [1]!.assumingMemoryBound (to: TextServer.FontAntialiasing.self).pointee)
}

func _TextServerExtension_proxy_font_set_ascent (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetAscent (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, ascent: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_baseline_offset (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetBaselineOffset (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), baselineOffset: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetData (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), data: PackedByteArray (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _TextServerExtension_proxy_font_set_descent (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetDescent (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, descent: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_disable_embedded_bitmaps (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetDisableEmbeddedBitmaps (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), disableEmbeddedBitmaps: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_embolden (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetEmbolden (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), strength: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_face_index (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetFaceIndex (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), faceIndex: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_fixed_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetFixedSize (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), fixedSize: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_fixed_size_scale_mode (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetFixedSizeScaleMode (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), fixedSizeScaleMode: args [1]!.assumingMemoryBound (to: TextServer.FixedSizeScaleMode.self).pointee)
}

func _TextServerExtension_proxy_font_set_force_autohinter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetForceAutohinter (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), forceAutohinter: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_generate_mipmaps (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetGenerateMipmaps (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), generateMipmaps: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_global_oversampling (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetGlobalOversampling (args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_glyph_advance (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetGlyphAdvance (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee, advance: args [3]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _TextServerExtension_proxy_font_set_glyph_offset (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetGlyphOffset (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee, offset: args [3]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _TextServerExtension_proxy_font_set_glyph_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetGlyphSize (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee, glSize: args [3]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _TextServerExtension_proxy_font_set_glyph_texture_idx (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetGlyphTextureIdx (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee, textureIdx: args [3]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_glyph_uv_rect (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetGlyphUvRect (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, glyph: args [2]!.assumingMemoryBound (to: Int.self).pointee, uvRect: args [3]!.assumingMemoryBound (to: Rect2.self).pointee)
}

func _TextServerExtension_proxy_font_set_hinting (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetHinting (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), hinting: args [1]!.assumingMemoryBound (to: TextServer.Hinting.self).pointee)
}

func _TextServerExtension_proxy_font_set_keep_rounding_remainders (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetKeepRoundingRemainders (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), keepRoundingRemainders: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_kerning (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetKerning (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, glyphPair: args [2]!.assumingMemoryBound (to: Vector2i.self).pointee, kerning: args [3]!.assumingMemoryBound (to: Vector2.self).pointee)
}

func _TextServerExtension_proxy_font_set_language_support_override (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetLanguageSupportOverride (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), language: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", supported: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_msdf_pixel_range (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetMsdfPixelRange (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), msdfPixelRange: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_msdf_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetMsdfSize (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), msdfSize: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_multichannel_signed_distance_field (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetMultichannelSignedDistanceField (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), msdf: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetName (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), name: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _TextServerExtension_proxy_font_set_opentype_feature_overrides (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetOpentypeFeatureOverrides (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), overrides: VariantDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _TextServerExtension_proxy_font_set_oversampling (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetOversampling (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), oversampling: args [1]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_scale (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetScale (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, scale: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_script_support_override (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetScriptSupportOverride (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), script: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", supported: args [2]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_font_set_spacing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetSpacing (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), spacing: args [1]!.assumingMemoryBound (to: TextServer.SpacingType.self).pointee, value: args [2]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_stretch (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetStretch (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), stretch: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_set_style (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetStyle (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), style: args [1]!.assumingMemoryBound (to: TextServer.FontStyle.self).pointee)
}

func _TextServerExtension_proxy_font_set_style_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetStyleName (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), nameStyle: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _TextServerExtension_proxy_font_set_subpixel_positioning (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetSubpixelPositioning (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), subpixelPositioning: args [1]!.assumingMemoryBound (to: TextServer.SubpixelPositioning.self).pointee)
}

func _TextServerExtension_proxy_font_set_texture_image (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let resolved_3 = args [3]!.load (as: UnsafeRawPointer?.self)
    
    swiftObject._fontSetTextureImage (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, textureIndex: args [2]!.assumingMemoryBound (to: Int.self).pointee, image: resolved_3 == nil ? nil : lookupObject (nativeHandle: resolved_3!, ownsRef: false) as? Image)
}

func _TextServerExtension_proxy_font_set_texture_offsets (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetTextureOffsets (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Vector2i.self).pointee, textureIndex: args [2]!.assumingMemoryBound (to: Int.self).pointee, offset: PackedInt32Array (content: args [3]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
}

func _TextServerExtension_proxy_font_set_transform (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetTransform (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), transform: args [1]!.assumingMemoryBound (to: Transform2D.self).pointee)
}

func _TextServerExtension_proxy_font_set_underline_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetUnderlinePosition (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, underlinePosition: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_underline_thickness (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetUnderlineThickness (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), size: args [1]!.assumingMemoryBound (to: Int.self).pointee, underlineThickness: args [2]!.assumingMemoryBound (to: Double.self).pointee)
}

func _TextServerExtension_proxy_font_set_variation_coordinates (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetVariationCoordinates (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), variationCoordinates: VariantDictionary (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _TextServerExtension_proxy_font_set_weight (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._fontSetWeight (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), weight: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_font_supported_feature_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontSupportedFeatureList (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _TextServerExtension_proxy_font_supported_variation_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._fontSupportedVariationList (fontRid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _TextServerExtension_proxy_format_number (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._formatNumber (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", language: GString.stringFromGStringPtr (ptr: args [1]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_free_rid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._freeRid (RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _TextServerExtension_proxy_get_features (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._getFeatures ()
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_get_hex_code_box_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._getHexCodeBoxSize (args [0]!.assumingMemoryBound (to: Int.self).pointee, index: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_get_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._getName ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_get_support_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._getSupportData ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedByteArray
    ret.content = PackedByteArray.zero
}

func _TextServerExtension_proxy_get_support_data_filename (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._getSupportDataFilename ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_get_support_data_info (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._getSupportDataInfo ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_has (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._has (rid: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_has_feature (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._hasFeature (args [0]!.assumingMemoryBound (to: TextServer.Feature.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_is_confusable (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._isConfusable (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", dict: PackedStringArray (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_is_locale_right_to_left (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._isLocaleRightToLeft (locale: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_is_valid_identifier (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._isValidIdentifier (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_is_valid_letter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._isValidLetter (unicode: args [0]!.assumingMemoryBound (to: UInt.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_load_support_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._loadSupportData (filename: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_name_to_tag (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._nameToTag (name: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_parse_number (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._parseNumber (GString.stringFromGStringPtr (ptr: args [0]!) ?? "", language: GString.stringFromGStringPtr (ptr: args [1]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_parse_structured_text (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._parseStructuredText (parserType: args [0]!.assumingMemoryBound (to: TextServer.StructuredTextParser.self).pointee, args: VariantArray (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), text: GString.stringFromGStringPtr (ptr: args [2]!) ?? "")
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Vector3i
}

func _TextServerExtension_proxy_percent_sign (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._percentSign (language: GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_save_support_data (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._saveSupportData (filename: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_get_span_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedGetSpanCount (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_get_span_embedded_object (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedGetSpanEmbeddedObject (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), index: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _TextServerExtension_proxy_shaped_get_span_meta (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedGetSpanMeta (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), index: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _TextServerExtension_proxy_shaped_set_span_update_font (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedSetSpanUpdateFont (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), index: args [1]!.assumingMemoryBound (to: Int.self).pointee, fonts: args [2]!.assumingMemoryBound (to: TypedArray<RID>.self).pointee, size: args [3]!.assumingMemoryBound (to: Int.self).pointee, opentypeFeatures: VariantDictionary (content: args [4]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _TextServerExtension_proxy_shaped_text_add_object (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextAddObject (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), key: args [1]!.assumingMemoryBound (to: Variant.self).pointee, size: args [2]!.assumingMemoryBound (to: Vector2.self).pointee, inlineAlign: args [3]!.assumingMemoryBound (to: InlineAlignment.self).pointee, length: args [4]!.assumingMemoryBound (to: Int.self).pointee, baseline: args [5]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_add_string (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextAddString (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), text: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", fonts: args [2]!.assumingMemoryBound (to: TypedArray<RID>.self).pointee, size: args [3]!.assumingMemoryBound (to: Int.self).pointee, opentypeFeatures: VariantDictionary (content: args [4]!.assumingMemoryBound (to: Int64.self).pointee), language: GString.stringFromGStringPtr (ptr: args [5]!) ?? "", meta: args [6]!.assumingMemoryBound (to: Variant.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_clear (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextClear (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _TextServerExtension_proxy_shaped_text_closest_character_pos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextClosestCharacterPos (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_draw (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextDraw (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), canvas: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [2]!.assumingMemoryBound (to: Vector2.self).pointee, clipL: args [3]!.assumingMemoryBound (to: Double.self).pointee, clipR: args [4]!.assumingMemoryBound (to: Double.self).pointee, color: args [5]!.assumingMemoryBound (to: Color.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_draw_outline (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextDrawOutline (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), canvas: RID (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [2]!.assumingMemoryBound (to: Vector2.self).pointee, clipL: args [3]!.assumingMemoryBound (to: Double.self).pointee, clipR: args [4]!.assumingMemoryBound (to: Double.self).pointee, outlineSize: args [5]!.assumingMemoryBound (to: Int.self).pointee, color: args [6]!.assumingMemoryBound (to: Color.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_fit_to_width (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextFitToWidth (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), width: args [1]!.assumingMemoryBound (to: Double.self).pointee, justificationFlags: args [2]!.assumingMemoryBound (to: TextServer.JustificationFlag.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_shaped_text_get_ascent (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetAscent (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_shaped_text_get_character_breaks (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetCharacterBreaks (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_shaped_text_get_custom_ellipsis (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetCustomEllipsis (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_custom_punctuation (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._shapedTextGetCustomPunctuation (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee)))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_shaped_text_get_descent (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetDescent (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_shaped_text_get_direction (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetDirection (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextServerExtension_proxy_shaped_text_get_dominant_direction_in_range (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetDominantDirectionInRange (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), start: args [1]!.assumingMemoryBound (to: Int.self).pointee, end: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_ellipsis_glyph_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetEllipsisGlyphCount (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_ellipsis_glyphs (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetEllipsisGlyphs (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: OpaquePointer?.self)
}

func _TextServerExtension_proxy_shaped_text_get_ellipsis_pos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetEllipsisPos (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_glyph_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetGlyphCount (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_glyphs (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetGlyphs (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: OpaquePointer?.self)
}

func _TextServerExtension_proxy_shaped_text_get_grapheme_bounds (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetGraphemeBounds (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_shaped_text_get_inferred_direction (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetInferredDirection (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextServerExtension_proxy_shaped_text_get_line_breaks (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetLineBreaks (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), width: args [1]!.assumingMemoryBound (to: Double.self).pointee, start: args [2]!.assumingMemoryBound (to: Int.self).pointee, breakFlags: args [3]!.assumingMemoryBound (to: TextServer.LineBreakFlag.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_shaped_text_get_line_breaks_adv (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetLineBreaksAdv (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), width: PackedFloat32Array (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee), start: args [2]!.assumingMemoryBound (to: Int.self).pointee, once: args [3]!.assumingMemoryBound (to: Bool.self).pointee, breakFlags: args [4]!.assumingMemoryBound (to: TextServer.LineBreakFlag.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_shaped_text_get_object_glyph (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetObjectGlyph (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), key: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_object_range (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetObjectRange (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), key: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
    retPtr!.storeBytes (of: ret, as: Vector2i.self)
}

func _TextServerExtension_proxy_shaped_text_get_object_rect (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetObjectRect (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), key: args [1]!.assumingMemoryBound (to: Variant.self).pointee)
    retPtr!.storeBytes (of: ret, as: Rect2.self)
}

func _TextServerExtension_proxy_shaped_text_get_objects (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetObjects (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Array
    ret.content = VariantArray.zero
}

func _TextServerExtension_proxy_shaped_text_get_orientation (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetOrientation (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: Int32 (ret.rawValue), as: Int32.self)
}

func _TextServerExtension_proxy_shaped_text_get_parent (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetParent (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _TextServerExtension_proxy_shaped_text_get_preserve_control (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetPreserveControl (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_get_preserve_invalid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetPreserveInvalid (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_get_range (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetRange (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Vector2i.self)
}

func _TextServerExtension_proxy_shaped_text_get_selection (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetSelection (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), start: args [1]!.assumingMemoryBound (to: Int.self).pointee, end: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedVector2Array
    ret.content = PackedVector2Array.zero
}

func _TextServerExtension_proxy_shaped_text_get_size (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetSize (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Vector2.self)
}

func _TextServerExtension_proxy_shaped_text_get_spacing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetSpacing (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), spacing: args [1]!.assumingMemoryBound (to: TextServer.SpacingType.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_trim_pos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetTrimPos (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_get_underline_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetUnderlinePosition (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_shaped_text_get_underline_thickness (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetUnderlineThickness (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_shaped_text_get_width (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetWidth (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_shaped_text_get_word_breaks (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextGetWordBreaks (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), graphemeFlags: args [1]!.assumingMemoryBound (to: TextServer.GraphemeFlag.self).pointee, skipGraphemeFlags: args [2]!.assumingMemoryBound (to: TextServer.GraphemeFlag.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_shaped_text_hit_test_grapheme (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextHitTestGrapheme (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), coord: args [1]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_hit_test_position (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextHitTestPosition (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), coord: args [1]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_is_ready (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextIsReady (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_next_character_pos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextNextCharacterPos (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_next_grapheme_pos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextNextGraphemePos (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_overrun_trim_to_width (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextOverrunTrimToWidth (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), width: args [1]!.assumingMemoryBound (to: Double.self).pointee, trimFlags: args [2]!.assumingMemoryBound (to: TextServer.TextOverrunFlag.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_prev_character_pos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextPrevCharacterPos (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_prev_grapheme_pos (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextPrevGraphemePos (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), pos: args [1]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int.self)
}

func _TextServerExtension_proxy_shaped_text_resize_object (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextResizeObject (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), key: args [1]!.assumingMemoryBound (to: Variant.self).pointee, size: args [2]!.assumingMemoryBound (to: Vector2.self).pointee, inlineAlign: args [3]!.assumingMemoryBound (to: InlineAlignment.self).pointee, baseline: args [4]!.assumingMemoryBound (to: Double.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_set_bidi_override (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetBidiOverride (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), override: VariantArray (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _TextServerExtension_proxy_shaped_text_set_custom_ellipsis (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetCustomEllipsis (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), char: args [1]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_set_custom_punctuation (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetCustomPunctuation (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), punct: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
}

func _TextServerExtension_proxy_shaped_text_set_direction (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetDirection (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), direction: args [1]!.assumingMemoryBound (to: TextServer.Direction.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_set_orientation (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetOrientation (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), orientation: args [1]!.assumingMemoryBound (to: TextServer.Orientation.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_set_preserve_control (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetPreserveControl (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enabled: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_set_preserve_invalid (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetPreserveInvalid (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), enabled: args [1]!.assumingMemoryBound (to: Bool.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_set_spacing (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    swiftObject._shapedTextSetSpacing (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), spacing: args [1]!.assumingMemoryBound (to: TextServer.SpacingType.self).pointee, value: args [2]!.assumingMemoryBound (to: Int.self).pointee)
}

func _TextServerExtension_proxy_shaped_text_shape (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextShape (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_sort_logical (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextSortLogical (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: OpaquePointer?.self)
}

func _TextServerExtension_proxy_shaped_text_substr (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextSubstr (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), start: args [1]!.assumingMemoryBound (to: Int.self).pointee, length: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // RID
    ret.content = RID.zero
}

func _TextServerExtension_proxy_shaped_text_tab_align (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextTabAlign (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), tabStops: PackedFloat32Array (content: args [1]!.assumingMemoryBound (to: (Int64, Int64).self).pointee))
    retPtr!.storeBytes (of: ret, as: Double.self)
}

func _TextServerExtension_proxy_shaped_text_update_breaks (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextUpdateBreaks (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_shaped_text_update_justification_ops (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._shapedTextUpdateJustificationOps (shaped: RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_spoof_check (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._spoofCheck (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "")
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _TextServerExtension_proxy_string_get_character_breaks (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._stringGetCharacterBreaks (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", language: GString.stringFromGStringPtr (ptr: args [1]!) ?? "")
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_string_get_word_breaks (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = swiftObject._stringGetWordBreaks (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", language: GString.stringFromGStringPtr (ptr: args [1]!) ?? "", charsPerLine: args [2]!.assumingMemoryBound (to: Int.self).pointee)
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedInt32Array
    ret.content = PackedInt32Array.zero
}

func _TextServerExtension_proxy_string_to_lower (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._stringToLower (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", language: GString.stringFromGStringPtr (ptr: args [1]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_string_to_title (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._stringToTitle (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", language: GString.stringFromGStringPtr (ptr: args [1]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_string_to_upper (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._stringToUpper (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? "", language: GString.stringFromGStringPtr (ptr: args [1]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_strip_diacritics (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._stripDiacritics (string: GString.stringFromGStringPtr (ptr: args [0]!) ?? ""))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _TextServerExtension_proxy_tag_to_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? TextServerExtension else { return }
    let ret = GString (swiftObject._tagToName (tag: args [0]!.assumingMemoryBound (to: Int.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

