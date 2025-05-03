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


/// A helper to handle dictionaries which look like JSONRPC documents.
/// 
/// <a href="https://www.jsonrpc.org/">JSON-RPC</a> is a standard which wraps a method call in a ``JSON`` object. The object has a particular structure and identifies which method is called, the parameters to that function, and carries an ID to keep track of responses. This class implements that standard on top of ``VariantDictionary``; you will have to convert between a ``VariantDictionary`` and ``JSON`` with other functions.
open class JSONRPC: Object {
    private static var className = StringName("JSONRPC")
    override open class var godotClassName: StringName { className }
    public enum ErrorCode: Int64, CaseIterable {
        /// The request could not be parsed as it was not valid by JSON standard (``JSON/parse(jsonText:keepText:)`` failed).
        case parseError = -32700 // PARSE_ERROR
        /// A method call was requested but the request's format is not valid.
        case invalidRequest = -32600 // INVALID_REQUEST
        /// A method call was requested but no function of that name existed in the JSONRPC subclass.
        case methodNotFound = -32601 // METHOD_NOT_FOUND
        /// A method call was requested but the given method parameters are not valid. Not used by the built-in JSONRPC.
        case invalidParams = -32602 // INVALID_PARAMS
        /// An internal error occurred while processing the request. Not used by the built-in JSONRPC.
        case internalError = -32603 // INTERNAL_ERROR
    }
    
    /* Methods */
    fileprivate static let method_set_scope: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scope")
        return withUnsafePointer(to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2572618360)!
            }
            
        }
        
    }()
    
    /// 
    public final func setScope(_ scope: String, target: Object?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let scope = GString(scope)
        withUnsafePointer(to: scope.content) { pArg0 in
            withUnsafePointer(to: target?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(JSONRPC.method_set_scope, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_process_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("process_action")
        return withUnsafePointer(to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2963479484)!
            }
            
        }
        
    }()
    
    /// Given a Dictionary which takes the form of a JSON-RPC request: unpack the request and run it. Methods are resolved by looking at the field called "method" and looking for an equivalently named function in the JSONRPC object. If one is found that method is called.
    /// 
    /// To add new supported methods extend the JSONRPC class and call ``processAction(_:recurse:)`` on your subclass.
    /// 
    /// `action`: The action to be run, as a Dictionary in the form of a JSON-RPC request or notification.
    /// 
    public final func processAction(_ action: Variant?, recurse: Bool = false) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: recurse) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(JSONRPC.method_process_action, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_process_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("process_string")
        return withUnsafePointer(to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1703090593)!
            }
            
        }
        
    }()
    
    /// 
    public final func processString(action: String) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let action = GString(action)
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(JSONRPC.method_process_string, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_make_request: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_request")
        return withUnsafePointer(to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3423508980)!
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
    public final func makeRequest(method: String, params: Variant?, id: Variant?) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        let method = GString(method)
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: params.content) { pArg1 in
                withUnsafePointer(to: id.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(JSONRPC.method_make_request, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_make_response: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_response")
        return withUnsafePointer(to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 5053918)!
            }
            
        }
        
    }()
    
    /// When a server has received and processed a request, it is expected to send a response. If you did not want a response then you need to have sent a Notification instead.
    /// 
    /// - `result`: The return value of the function which was called.
    /// 
    /// - `id`: The ID of the request this response is targeted to.
    /// 
    public final func makeResponse(result: Variant?, id: Variant?) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: result.content) { pArg0 in
            withUnsafePointer(to: id.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(JSONRPC.method_make_response, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_make_notification: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_notification")
        return withUnsafePointer(to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2949127017)!
            }
            
        }
        
    }()
    
    /// Returns a dictionary in the form of a JSON-RPC notification. Notifications are one-shot messages which do not expect a response.
    /// 
    /// - `method`: Name of the method being called.
    /// 
    /// - `params`: An array or dictionary of parameters being passed to the method.
    /// 
    public final func makeNotification(method: String, params: Variant?) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        let method = GString(method)
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: params.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(JSONRPC.method_make_notification, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_make_response_error: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("make_response_error")
        return withUnsafePointer(to: &JSONRPC.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 928596297)!
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
    public final func makeResponseError(code: Int32, message: String, id: Variant?) -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantDictionary = VariantDictionary ()
        withUnsafePointer(to: code) { pArg0 in
            let message = GString(message)
            withUnsafePointer(to: message.content) { pArg1 in
                withUnsafePointer(to: id.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(JSONRPC.method_make_response_error, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
}

