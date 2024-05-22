// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Provides a low-level interface for creating parsers for XML files.
/// 
/// Provides a low-level interface for creating parsers for <a href="https://en.wikipedia.org/wiki/XML">XML</a> files. This class can serve as base to make custom XML parsers.
/// 
/// To parse XML, you must open a file with the ``open(file:)`` method or a buffer with the ``openBuffer(_:)`` method. Then, the ``read()`` method must be called to parse the next nodes. Most of the methods take into consideration the currently parsed node.
/// 
/// Here is an example of using ``XMLParser`` to parse a SVG file (which is based on XML), printing each element and its attributes as a dictionary:
/// 
open class XMLParser: RefCounted {
    override open class var godotClassName: StringName { "XMLParser" }
    public enum NodeType: Int64, CaseIterable, CustomDebugStringConvertible {
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
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            switch self {
                case .none: return ".none"
                case .element: return ".element"
                case .elementEnd: return ".elementEnd"
                case .text: return ".text"
                case .comment: return ".comment"
                case .cdata: return ".cdata"
                case .unknown: return ".unknown"
            }
            
        }
        
    }
    
    /* Methods */
    fileprivate static var method_read: GDExtensionMethodBindPtr = {
        let methodName = StringName ("read")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Parses the next node in the file. This method returns an error code.
    public final func read ()-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (XMLParser.method_read, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static var method_get_node_type: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_type")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2984359541)!
            }
            
        }
        
    }()
    
    /// Returns the type of the current node. Compare with ``XMLParser/NodeType`` constants.
    public final func getNodeType ()-> XMLParser.NodeType {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall (XMLParser.method_get_node_type, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return XMLParser.NodeType (rawValue: _result)!
    }
    
    fileprivate static var method_get_node_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_name")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the name of an element node. This method will raise an error if the currently parsed node is not of .nodeElement or .nodeElementEnd type.
    public final func getNodeName ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (XMLParser.method_get_node_name, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_node_data: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_data")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the contents of a text node. This method will raise an error if the current parsed node is of any other type.
    public final func getNodeData ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (XMLParser.method_get_node_data, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_get_node_offset: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_node_offset")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the byte offset of the currently parsed node since the beginning of the file or buffer. This is usually equivalent to the number of characters before the read position.
    public final func getNodeOffset ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (XMLParser.method_get_node_offset, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_attribute_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_attribute_count")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of attributes in the currently parsed element.
    /// 
    /// > Note: If this method is used while the currently parsed node is not .nodeElement or .nodeElementEnd, this count will not be updated and will still reflect the last element.
    /// 
    public final func getAttributeCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (XMLParser.method_get_attribute_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_attribute_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_attribute_name")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of an attribute of the currently parsed element, specified by the `idx` index.
    public final func getAttributeName (idx: Int32)-> String {
        let _result = GString ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_get_attribute_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result.description
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_get_attribute_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_attribute_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_attribute_value")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the value of an attribute of the currently parsed element, specified by the `idx` index.
    public final func getAttributeValue (idx: Int32)-> String {
        let _result = GString ()
        #if true
        
        var copy_idx: Int = Int (idx)
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_get_attribute_value, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_idx)
        return _result.description
        #else
        
        var copy_idx: Int = Int (idx)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_idx) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_get_attribute_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_has_attribute: GDExtensionMethodBindPtr = {
        let methodName = StringName ("has_attribute")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3927539163)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the currently parsed element has an attribute with the `name`.
    public final func hasAttribute (name: String)-> Bool {
        var _result: Bool = false
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_has_attribute, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_name.content)
        return _result
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_has_attribute, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_named_attribute_value: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_named_attribute_value")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the value of an attribute of the currently parsed element, specified by its `name`. This method will raise an error if the element has no such attribute.
    public final func getNamedAttributeValue (name: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_get_named_attribute_value, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_name.content)
        return _result.description
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_get_named_attribute_value, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_named_attribute_value_safe: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_named_attribute_value_safe")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3135753539)!
            }
            
        }
        
    }()
    
    /// Returns the value of an attribute of the currently parsed element, specified by its `name`. This method will return an empty string if the element has no such attribute.
    public final func getNamedAttributeValueSafe (name: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_get_named_attribute_value_safe, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_name.content)
        return _result.description
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_get_named_attribute_value_safe, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_is_empty: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_empty")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the currently parsed element is empty, e.g. `<element />`.
    public final func isEmpty ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (XMLParser.method_is_empty, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_current_line: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_current_line")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the current line in the parsed file, counting from 0.
    public final func getCurrentLine ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (XMLParser.method_get_current_line, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_skip_section: GDExtensionMethodBindPtr = {
        let methodName = StringName ("skip_section")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Skips the current section. If the currently parsed node contains more inner nodes, they will be ignored and the cursor will go to the closing of the current element.
    public final func skipSection () {
        gi.object_method_bind_ptrcall (XMLParser.method_skip_section, UnsafeMutableRawPointer (mutating: handle), nil, nil)
    }
    
    fileprivate static var method_seek: GDExtensionMethodBindPtr = {
        let methodName = StringName ("seek")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 844576869)!
            }
            
        }
        
    }()
    
    /// Moves the buffer cursor to a certain offset (since the beginning) and reads the next node there. This method returns an error code.
    public final func seek (position: UInt)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        var copy_position = position
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_seek, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_position)
        return GodotError (rawValue: _result)!
        #else
        
        var copy_position = position
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_position) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_seek, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_open: GDExtensionMethodBindPtr = {
        let methodName = StringName ("open")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 166001499)!
            }
            
        }
        
    }()
    
    /// Opens an XML `file` for parsing. This method returns an error code.
    public final func open (file: String)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        let gstr_file = GString (file)
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_open, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_file.content)
        return GodotError (rawValue: _result)!
        #else
        
        let gstr_file = GString (file)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_file.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_open, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
    fileprivate static var method_open_buffer: GDExtensionMethodBindPtr = {
        let methodName = StringName ("open_buffer")
        return withUnsafePointer (to: &XMLParser.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 680677267)!
            }
            
        }
        
    }()
    
    /// Opens an XML raw `buffer` for parsing. This method returns an error code.
    public final func openBuffer (_ buffer: PackedByteArray)-> GodotError {
        var _result: Int64 = 0 // to avoid packed enums on the stack
        #if true
        
        
        gi.object_method_bind_ptrcall_v (XMLParser.method_open_buffer, UnsafeMutableRawPointer (mutating: handle), &_result, &buffer.content)
        return GodotError (rawValue: _result)!
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &buffer.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (XMLParser.method_open_buffer, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return GodotError (rawValue: _result)!
        }
        
        #endif
    }
    
}

