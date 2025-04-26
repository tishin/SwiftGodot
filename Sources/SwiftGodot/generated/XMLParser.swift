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


/// Provides a low-level interface for creating parsers for XML files.
/// 
/// Provides a low-level interface for creating parsers for <a href="https://en.wikipedia.org/wiki/XML">XML</a> files. This class can serve as base to make custom XML parsers.
/// 
/// To parse XML, you must open a file with the ``open(file:)`` method or a buffer with the ``openBuffer(_:)`` method. Then, the ``read()`` method must be called to parse the next nodes. Most of the methods take into consideration the currently parsed node.
/// 
/// Here is an example of using ``XMLParser`` to parse an SVG file (which is based on XML), printing each element and its attributes as a dictionary:
/// 
open class XMLParser: RefCounted {
    private static var className = StringName("XMLParser")
    override open class var godotClassName: StringName { className }
    public enum NodeType: Int64, CaseIterable {
        /// There's no node (no file or buffer opened).
        case none = 0 // NODE_NONE
        /// An element node type, also known as a tag, e.g. `<title>`.
        case element = 1 // NODE_ELEMENT
        /// An end of element node type, e.g. `</title>`.
        case elementEnd = 2 // NODE_ELEMENT_END
        /// A text node type, i.e. text that is not inside an element. This includes whitespace.
        case text = 3 // NODE_TEXT
        /// A comment node type, e.g. `<!--A comment-->`.
        case comment = 4 // NODE_COMMENT
        /// A node type for CDATA (Character Data) sections, e.g. `<![CDATA[CDATA section]]>`.
        case cdata = 5 // NODE_CDATA
        /// An unknown node type.
        case unknown = 6 // NODE_UNKNOWN
    }
    
    /* Methods */
    fileprivate static let method_read: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("read")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Parses the next node in the file. This method returns an error code.
    public final func read() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(XMLParser.method_read, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_node_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_type")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2984359541)!
            }
            
        }
        
    }()
    
    /// Returns the type of the current node. Compare with ``XMLParser/NodeType`` constants.
    public final func getNodeType() -> XMLParser.NodeType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(XMLParser.method_get_node_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return XMLParser.NodeType (rawValue: _result)!
    }
    
    fileprivate static let method_get_node_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_name")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the name of a node. This method will raise an error if the currently parsed node is a text node.
    /// 
    /// > Note: The content of a ``NodeType/cdata`` node and the comment string of a ``NodeType/comment`` node are also considered names.
    /// 
    public final func getNodeName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(XMLParser.method_get_node_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_node_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_data")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the contents of a text node. This method will raise an error if the current parsed node is of any other type.
    public final func getNodeData() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(XMLParser.method_get_node_data, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_node_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_offset")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the byte offset of the currently parsed node since the beginning of the file or buffer. This is usually equivalent to the number of characters before the read position.
    public final func getNodeOffset() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(XMLParser.method_get_node_offset, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_attribute_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attribute_count")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of attributes in the currently parsed element.
    /// 
    /// > Note: If this method is used while the currently parsed node is not ``NodeType/element`` or ``NodeType/elementEnd``, this count will not be updated and will still reflect the last element.
    /// 
    public final func getAttributeCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(XMLParser.method_get_attribute_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_attribute_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attribute_name")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of an attribute of the currently parsed element, specified by the `idx` index.
    public final func getAttributeName(idx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_get_attribute_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_attribute_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_attribute_value")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the value of an attribute of the currently parsed element, specified by the `idx` index.
    public final func getAttributeValue(idx: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_get_attribute_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_has_attribute: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_attribute")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the currently parsed element has an attribute with the `name`.
    public final func hasAttribute(name: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_has_attribute, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_named_attribute_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_named_attribute_value")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the value of an attribute of the currently parsed element, specified by its `name`. This method will raise an error if the element has no such attribute.
    public final func getNamedAttributeValue(name: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_get_named_attribute_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_named_attribute_value_safe: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_named_attribute_value_safe")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the value of an attribute of the currently parsed element, specified by its `name`. This method will return an empty string if the element has no such attribute.
    public final func getNamedAttributeValueSafe(name: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_get_named_attribute_value_safe, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_is_empty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_empty")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the currently parsed element is empty, e.g. `<element />`.
    public final func isEmpty() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(XMLParser.method_is_empty, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_current_line: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_current_line")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current line in the parsed file, counting from 0.
    public final func getCurrentLine() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(XMLParser.method_get_current_line, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_skip_section: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("skip_section")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Skips the current section. If the currently parsed node contains more inner nodes, they will be ignored and the cursor will go to the closing of the current element.
    public final func skipSection() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(XMLParser.method_skip_section, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_seek: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("seek")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844576869)!
            }
            
        }
        
    }()
    
    /// Moves the buffer cursor to a certain offset (since the beginning) and reads the next node there. This method returns an error code.
    public final func seek(position: UInt) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_seek, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_open: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Opens an XML `file` for parsing. This method returns an error code.
    public final func open(file: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let file = GString(file)
        withUnsafePointer(to: file.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_open, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_open_buffer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("open_buffer")
        return withUnsafePointer(to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Opens an XML raw `buffer` for parsing. This method returns an error code.
    public final func openBuffer(_ buffer: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: buffer.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XMLParser.method_open_buffer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
}

