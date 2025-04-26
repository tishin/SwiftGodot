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


/// A TCP server.
/// 
/// A TCP server. Listens to connections on a port and returns a ``StreamPeerTCP`` when it gets an incoming connection.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class TCPServer: RefCounted {
    private static var className = StringName("TCPServer")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_listen: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("listen")
        return withUnsafePointer(to: &TCPServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3167955072)!
            }
            
        }
        
    }()
    
    /// Listen on the `port` binding to `bindAddress`.
    /// 
    /// If `bindAddress` is set as `"*"` (default), the server will listen on all available addresses (both IPv4 and IPv6).
    /// 
    /// If `bindAddress` is set as `"0.0.0.0"` (for IPv4) or `"::"` (for IPv6), the server will listen on all available addresses matching that IP type.
    /// 
    /// If `bindAddress` is set to any valid address (e.g. `"192.168.1.101"`, `"::1"`, etc.), the server will only listen on the interface with that address (or fail if no interface with the given address exists).
    /// 
    public final func listen(port: UInt16, bindAddress: String = "*") -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: port) { pArg0 in
            let bindAddress = GString(bindAddress)
            withUnsafePointer(to: bindAddress.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(TCPServer.method_listen, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_is_connection_available: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_connection_available")
        return withUnsafePointer(to: &TCPServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if a connection is available for taking.
    public final func isConnectionAvailable() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TCPServer.method_is_connection_available, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_listening: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_listening")
        return withUnsafePointer(to: &TCPServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the server is currently listening for connections.
    public final func isListening() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(TCPServer.method_is_listening, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_local_port: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_local_port")
        return withUnsafePointer(to: &TCPServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the local port this server is listening to.
    public final func getLocalPort() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(TCPServer.method_get_local_port, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_take_connection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("take_connection")
        return withUnsafePointer(to: &TCPServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 30545006)!
            }
            
        }
        
    }()
    
    /// If a connection is available, returns a StreamPeerTCP with the connection.
    public final func takeConnection() -> StreamPeerTCP? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(TCPServer.method_take_connection, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_stop: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("stop")
        return withUnsafePointer(to: &TCPServer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Stops listening.
    public final func stop() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(TCPServer.method_stop, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
}

