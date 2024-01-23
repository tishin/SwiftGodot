// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// A helper to handle dictionaries which look like JSONRPC documents.
/// 
/// [url=https://www.jsonrpc.org/]JSON-RPC[/url] is a standard which wraps a method call in a ``JSON`` object. The object has a particular structure and identifies which method is called, the parameters to that function, and carries an ID to keep track of responses. This class implements that standard on top of ``GDictionary``; you will have to convert between a ``GDictionary`` and ``JSON`` with other functions.
open class JSONRPC: Object {
    override open class var godotClassName: StringName { "JSONRPC" }
    public enum ErrorCode: Int64 {
        /// 
        case parseError = -32700 // PARSE_ERROR
        /// 
        case invalidRequest = -32600 // INVALID_REQUEST
        /// A method call was requested but no function of that name existed in the JSONRPC subclass.
        case methodNotFound = -32601 // METHOD_NOT_FOUND
        /// 
        case invalidParams = -32602 // INVALID_PARAMS
        /// 
        case internalError = -32603 // INTERNAL_ERROR
    }
    
    /* Methods */
    fileprivate static var method_set_scope: GDExtensionMethodBindPtr = {
        let methodName = StringName ("set_scope")
        return withUnsafePointer (to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2572618360)!
            }
            
        }
        
    }()
    
    /// 
    public final func setScope (_ scope: String, target: Object?) {
        #if true
        
        let gstr_scope = GString (scope)
        var copy_target_handle = target?.handle
        
        gi.object_method_bind_ptrcall_v (JSONRPC.method_set_scope, UnsafeMutableRawPointer (mutating: handle), nil, &gstr_scope.content, &copy_target_handle)
        
        #else
        
        let gstr_scope = GString (scope)
        var _args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &gstr_scope.content) { p0 in
            _args.append (p0)
            withUnsafePointer (to: target?.handle) { p1 in
            _args.append (target == nil ? nil : p1)
        
                gi.object_method_bind_ptrcall (JSONRPC.method_set_scope, UnsafeMutableRawPointer (mutating: handle), &_args, nil)
            }
        }
        
        #endif
    }
    
    fileprivate static var method_process_action: GDExtensionMethodBindPtr = {
        let methodName = StringName ("process_action")
        return withUnsafePointer (to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2963479484)!
            }
            
        }
        
    }()
    
    /// Given a Dictionary which takes the form of a JSON-RPC request: unpack the request and run it. Methods are resolved by looking at the field called "method" and looking for an equivalently named function in the JSONRPC object. If one is found that method is called.
    /// 
    /// To add new supported methods extend the JSONRPC class and call ``processAction(_:recurse:)`` on your subclass.
    /// 
    /// `action`: The action to be run, as a Dictionary in the form of a JSON-RPC request or notification.
    /// 
    public final func processAction (_ action: Variant, recurse: Bool = false)-> Variant {
        let _result: Variant = Variant ()
        #if true
        
        var copy_recurse = recurse
        
        gi.object_method_bind_ptrcall_v (JSONRPC.method_process_action, UnsafeMutableRawPointer (mutating: handle), &_result.content, &action.content, &copy_recurse)
        return _result
        #else
        
        var copy_recurse = recurse
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &action.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &copy_recurse) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (JSONRPC.method_process_action, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_process_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("process_string")
        return withUnsafePointer (to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1703090593)!
            }
            
        }
        
    }()
    
    /// 
    public final func processString (action: String)-> String {
        let _result = GString ()
        #if true
        
        let gstr_action = GString (action)
        
        gi.object_method_bind_ptrcall_v (JSONRPC.method_process_string, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_action.content)
        return _result.description
        #else
        
        let gstr_action = GString (action)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_action.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (JSONRPC.method_process_string, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_make_request: GDExtensionMethodBindPtr = {
        let methodName = StringName ("make_request")
        return withUnsafePointer (to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3423508980)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary in the form of a JSON-RPC request. Requests are sent to a server with the expectation of a response. The ID field is used for the server to specify which exact request it is responding to.
    /// 
    /// - `method`: Name of the method being called.
    /// 
    /// - `params`: An array or dictionary of parameters being passed to the method.
    /// 
    /// - `id`: Uniquely identifies this request. The server is expected to send a response with the same ID.
    /// 
    public final func makeRequest (method: String, params: Variant, id: Variant)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        let gstr_method = GString (method)
        
        gi.object_method_bind_ptrcall_v (JSONRPC.method_make_request, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_method.content, &params.content, &id.content)
        return _result
        #else
        
        let gstr_method = GString (method)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_method.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &params.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &id.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (JSONRPC.method_make_request, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                    return _result
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_make_response: GDExtensionMethodBindPtr = {
        let methodName = StringName ("make_response")
        return withUnsafePointer (to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 5053918)!
            }
            
        }
        
    }()
    
    /// When a server has received and processed a request, it is expected to send a response. If you did not want a response then you need to have sent a Notification instead.
    /// 
    /// - `result`: The return value of the function which was called.
    /// 
    /// - `id`: The ID of the request this response is targeted to.
    /// 
    public final func makeResponse (result: Variant, id: Variant)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        
        gi.object_method_bind_ptrcall_v (JSONRPC.method_make_response, UnsafeMutableRawPointer (mutating: handle), &_result.content, &result.content, &id.content)
        return _result
        #else
        
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &result.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &id.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (JSONRPC.method_make_response, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_make_notification: GDExtensionMethodBindPtr = {
        let methodName = StringName ("make_notification")
        return withUnsafePointer (to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2949127017)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary in the form of a JSON-RPC notification. Notifications are one-shot messages which do not expect a response.
    /// 
    /// - `method`: Name of the method being called.
    /// 
    /// - `params`: An array or dictionary of parameters being passed to the method.
    /// 
    public final func makeNotification (method: String, params: Variant)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        let gstr_method = GString (method)
        
        gi.object_method_bind_ptrcall_v (JSONRPC.method_make_notification, UnsafeMutableRawPointer (mutating: handle), &_result.content, &gstr_method.content, &params.content)
        return _result
        #else
        
        let gstr_method = GString (method)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_method.content) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &params.content) { p1 in
                _args.append (p1)
        
                gi.object_method_bind_ptrcall (JSONRPC.method_make_notification, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                return _result
            }
        }
        
        #endif
    }
    
    fileprivate static var method_make_response_error: GDExtensionMethodBindPtr = {
        let methodName = StringName ("make_response_error")
        return withUnsafePointer (to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 928596297)!
            }
            
        }
        
    }()
    
    /// Creates a response which indicates a previous reply has failed in some way.
    /// 
    /// - `code`: The error code corresponding to what kind of error this is. See the ``JSONRPC/ErrorCode`` constants.
    /// 
    /// - `message`: A custom message about this error.
    /// 
    /// - `id`: The request this error is a response to.
    /// 
    public final func makeResponseError (code: Int32, message: String, id: Variant)-> GDictionary {
        let _result: GDictionary = GDictionary ()
        #if true
        
        var copy_code: Int = Int (code)
        let gstr_message = GString (message)
        
        gi.object_method_bind_ptrcall_v (JSONRPC.method_make_response_error, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_code, &gstr_message.content, &id.content)
        return _result
        #else
        
        var copy_code: Int = Int (code)
        let gstr_message = GString (message)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_code) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_message.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &id.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (JSONRPC.method_make_response_error, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
                    return _result
                }
            }
        }
        
        #endif
    }
    
}

