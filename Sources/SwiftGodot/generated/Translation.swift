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


/// A language translation that maps a collection of strings to their individual translations.
/// 
/// ``Translation``s are resources that can be loaded and unloaded on demand. They map a collection of strings to their individual translations, and they also provide convenience methods for pluralization.
open class Translation: Resource {
    private static var className = StringName("Translation")
    override open class var godotClassName: StringName { className }
    
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
    fileprivate static let method__get_plural_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_plural_message")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1970324172)!
            }
            
        }
        
    }()
    
    /// Virtual method to override ``getPluralMessage(srcMessage:srcPluralMessage:n:context:)``.
    @_documentation(visibility: public)
    open func _getPluralMessage(srcMessage: StringName, srcPluralMessage: StringName, n: Int32, context: StringName) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: StringName = StringName ()
        withUnsafePointer(to: srcMessage.content) { pArg0 in
            withUnsafePointer(to: srcPluralMessage.content) { pArg1 in
                withUnsafePointer(to: n) { pArg2 in
                    withUnsafePointer(to: context.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Translation.method__get_plural_message, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_message")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3639719779)!
            }
            
        }
        
    }()
    
    /// Virtual method to override ``getMessage(srcMessage:context:)``.
    @_documentation(visibility: public)
    open func _getMessage(srcMessage: StringName, context: StringName) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: StringName = StringName ()
        withUnsafePointer(to: srcMessage.content) { pArg0 in
            withUnsafePointer(to: context.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Translation.method__get_message, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_locale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_locale")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_locale(_ locale: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let locale = GString(locale)
        withUnsafePointer(to: locale.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Translation.method_set_locale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_locale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_locale")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_locale() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Translation.method_get_locale, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_add_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_message")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3898530326)!
            }
            
        }
        
    }()
    
    /// Adds a message if nonexistent, followed by its translation.
    /// 
    /// An additional context could be used to specify the translation context or differentiate polysemic words.
    /// 
    public final func addMessage(srcMessage: StringName, xlatedMessage: StringName, context: StringName = StringName ("")) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: srcMessage.content) { pArg0 in
            withUnsafePointer(to: xlatedMessage.content) { pArg1 in
                withUnsafePointer(to: context.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Translation.method_add_message, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_add_plural_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_plural_message")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2356982266)!
            }
            
        }
        
    }()
    
    /// Adds a message involving plural translation if nonexistent, followed by its translation.
    /// 
    /// An additional context could be used to specify the translation context or differentiate polysemic words.
    /// 
    public final func addPluralMessage(srcMessage: StringName, xlatedMessages: PackedStringArray, context: StringName = StringName ("")) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: srcMessage.content) { pArg0 in
            withUnsafePointer(to: xlatedMessages.content) { pArg1 in
                withUnsafePointer(to: context.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Translation.method_add_plural_message, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1829228469)!
            }
            
        }
        
    }()
    
    /// Returns a message's translation.
    public final func getMessage(srcMessage: StringName, context: StringName = StringName ("")) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: srcMessage.content) { pArg0 in
            withUnsafePointer(to: context.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Translation.method_get_message, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_plural_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_plural_message")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 229954002)!
            }
            
        }
        
    }()
    
    /// Returns a message's translation involving plurals.
    /// 
    /// The number `n` is the number or quantity of the plural object. It will be used to guide the translation system to fetch the correct plural form for the selected language.
    /// 
    public final func getPluralMessage(srcMessage: StringName, srcPluralMessage: StringName, n: Int32, context: StringName = StringName ("")) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: srcMessage.content) { pArg0 in
            withUnsafePointer(to: srcPluralMessage.content) { pArg1 in
                withUnsafePointer(to: n) { pArg2 in
                    withUnsafePointer(to: context.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Translation.method_get_plural_message, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_erase_message: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("erase_message")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3959009644)!
            }
            
        }
        
    }()
    
    /// Erases a message.
    public final func eraseMessage(srcMessage: StringName, context: StringName = StringName ("")) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: srcMessage.content) { pArg0 in
            withUnsafePointer(to: context.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Translation.method_erase_message, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_message_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message_list")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns all the messages (keys).
    public final func getMessageList() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(Translation.method_get_message_list, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_translated_message_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_translated_message_list")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns all the messages (translated text).
    public final func getTranslatedMessageList() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(Translation.method_get_translated_message_list, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_message_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_message_count")
        return withUnsafePointer(to: &Translation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of existing messages.
    public final func getMessageCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Translation.method_get_message_count, handle, nil, &_result)
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
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
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Translation else { return }
    let ret = swiftObject._getMessage (srcMessage: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), context: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}

func _Translation_proxy_get_plural_message (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Translation else { return }
    let ret = swiftObject._getPluralMessage (srcMessage: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee), srcPluralMessage: StringName (content: args [1]!.assumingMemoryBound (to: Int64.self).pointee), n: args [2]!.assumingMemoryBound (to: Int32.self).pointee, context: StringName (content: args [3]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // StringName
    ret.content = StringName.zero
}

