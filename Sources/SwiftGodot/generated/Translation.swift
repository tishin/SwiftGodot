// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A language translation that maps a collection of strings to their individual translations.
/// 
/// ``Translation``s are resources that can be loaded and unloaded on demand. They map a collection of strings to their individual translations, and they also provide convenience methods for pluralization.
open class Translation: Resource {
    override open class var godotClassName: StringName { "Translation" }
    
    /* Properties */
    
    /// The locale of the translation.
    final public var locale: String {
        get {
            return get_locale ()
        }
        
        set {
            set_locale (newValue)
        }
        
    }
    
    /* Methods */
    /// Virtual method to override ``getPluralMessage(srcMessage:srcPluralMessage:n:context:)``.
    @_documentation(visibility: public)
    open func _getPluralMessage (srcMessage: StringName, srcPluralMessage: StringName, n: Int32, context: StringName)-> StringName {
        return StringName ()
    }
    
    /// Virtual method to override ``getMessage(srcMessage:context:)``.
    @_documentation(visibility: public)
    open func _getMessage (srcMessage: StringName, context: StringName)-> StringName {
        return StringName ()
    }
    
    fileprivate static var method_set_locale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_locale")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_locale (_ locale: String) {
        #if true
        
        let gstr_locale = GString (locale)
        
        gi.object_method_bind_ptrcall_v (Translation.method_set_locale, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_locale.content)
        
        #else
        
        let gstr_locale = GString (locale)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_locale.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (Translation.method_set_locale, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
        }
        
        #endif
    }
    
    fileprivate static var method_get_locale: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_locale")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_locale ()-> String {
        let _result = GString ()
        gi.object_method_bind_ptrcall (Translation.method_get_locale, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static var method_add_message: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_message")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3898530326)!
            }
            
        }
        
    }()
    
    /// Adds a message if nonexistent, followed by its translation.
    /// 
    /// An additional context could be used to specify the translation context or differentiate polysemic words.
    /// 
    public final func addMessage (srcMessage: StringName, xlatedMessage: StringName, context: StringName = StringName ("")) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (Translation.method_add_message, UnsafeMutableRawPointer (mutating: handle), nil, &srcMessage.content, &xlatedMessage.content, &context.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &srcMessage.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &xlatedMessage.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &context.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (Translation.method_add_message, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_add_plural_message: GDExtensionMethodBindPtr = {
        let methodName = StringName ("add_plural_message")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2356982266)!
            }
            
        }
        
    }()
    
    /// Adds a message involving plural translation if nonexistent, followed by its translation.
    /// 
    /// An additional context could be used to specify the translation context or differentiate polysemic words.
    /// 
    public final func addPluralMessage (srcMessage: StringName, xlatedMessages: PackedStringArray, context: StringName = StringName ("")) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (Translation.method_add_plural_message, UnsafeMutableRawPointer (mutating: handle), nil, &srcMessage.content, &xlatedMessages.content, &context.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &srcMessage.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &xlatedMessages.content) { p1 in
                _args.append (p1)
                withUnsafePointer (to: &context.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (Translation.method_add_plural_message, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_message: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_message")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1829228469)!
            }
            
        }
        
    }()
    
    /// Returns a message's translation.
    public final func getMessage (srcMessage: StringName, context: StringName = StringName (""))-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (Translation.method_get_message, UnsafeMutableRawPointer (mutating: handle), &_result.content, &srcMessage.content, &context.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &srcMessage.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &context.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Translation.method_get_message, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_plural_message: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_plural_message")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 229954002)!
            }
            
        }
        
    }()
    
    /// Returns a message's translation involving plurals.
    /// 
    /// The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.
    /// 
    public final func getPluralMessage (srcMessage: StringName, srcPluralMessage: StringName, n: Int32, context: StringName = StringName (""))-> StringName {
        let _result: StringName = StringName ()
        #if true
        
        var copy_n: Int = Int (n)
        
        gi.object_method_bind_ptrcall_v (Translation.method_get_plural_message, UnsafeMutableRawPointer (mutating: handle), &_result.content, &srcMessage.content, &srcPluralMessage.content, &copy_n, &context.content)
        return _result
        #else
        
        var copy_n: Int = Int (n)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &srcMessage.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &srcPluralMessage.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &copy_n) { p2 in
                    _args.append (p2)
                    return withUnsafePointer (to: &context.content) { p3 in
                        _args.append (p3)
        
                        gi.object_method_bind_ptrcall (Translation.method_get_plural_message, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                        return _result
                    }
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_erase_message: GDExtensionMethodBindPtr = {
        let methodName = StringName ("erase_message")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3959009644)!
            }
            
        }
        
    }()
    
    /// Erases a message.
    public final func eraseMessage (srcMessage: StringName, context: StringName = StringName ("")) {
        #if true
        
        
        gi.object_method_bind_ptrcall_v (Translation.method_erase_message, UnsafeMutableRawPointer (mutating: handle), nil, &srcMessage.content, &context.content)
        
        #else
        
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &srcMessage.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: &context.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (Translation.method_erase_message, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_get_message_list: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_message_list")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns all the messages (keys).
    public final func getMessageList ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (Translation.method_get_message_list, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_translated_message_list: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_translated_message_list")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns all the messages (translated text).
    public final func getTranslatedMessageList ()-> PackedStringArray {
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall (Translation.method_get_translated_message_list, UnsafeMutableRawPointer (mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static var method_get_message_count: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_message_count")
        return withUnsafePointer (to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of existing messages.
    public final func getMessageCount ()-> Int32 {
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall (Translation.method_get_message_count, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher (name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_message":
                return _Translation_proxy_get_message
            case "_get_plural_message":
                return _Translation_proxy_get_plural_message
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _Translation_proxy_get_message (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<Translation>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getMessage (srcMessage: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), context: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}

func _Translation_proxy_get_plural_message (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let swiftObject = Unmanaged<Translation>.fromOpaque(instance).takeUnretainedValue()
    let ret = swiftObject._getPluralMessage (srcMessage: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), srcPluralMessage: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), n: args [2]!.assumingMemoryBound (to: Int32.self).pointee, context: StringName (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}
