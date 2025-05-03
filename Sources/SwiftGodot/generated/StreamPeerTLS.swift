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


/// A stream peer that handles TLS connections.
/// 
/// A stream peer that handles TLS connections. This object can be used to connect to a TLS server or accept a single TLS client connection.
/// 
/// > Note: When exporting to Android, make sure to enable the `INTERNET` permission in the Android export preset before exporting the project or using one-click deploy. Otherwise, network communication of any kind will be blocked by Android.
/// 
open class StreamPeerTLS: StreamPeer {
    private static var className = StringName("StreamPeerTLS")
    override open class var godotClassName: StringName { className }
    public enum Status: Int64, CaseIterable {
        /// A status representing a ``StreamPeerTLS`` that is disconnected.
        case disconnected = 0 // STATUS_DISCONNECTED
        /// A status representing a ``StreamPeerTLS`` during handshaking.
        case handshaking = 1 // STATUS_HANDSHAKING
        /// A status representing a ``StreamPeerTLS`` that is connected to a host.
        case connected = 2 // STATUS_CONNECTED
        /// A status representing a ``StreamPeerTLS`` in error state.
        case error = 3 // STATUS_ERROR
        /// An error status that shows a mismatch in the TLS certificate domain presented by the host and the domain requested for validation.
        case errorHostnameMismatch = 4 // STATUS_ERROR_HOSTNAME_MISMATCH
    }
    
    /* Methods */
    fileprivate static let method_poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("poll")
        return withUnsafePointer(to: &StreamPeerTLS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Poll the connection to check for incoming bytes. Call this right before ``StreamPeer/getAvailableBytes()`` for it to work properly.
    public final func poll() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(StreamPeerTLS.method_poll, handle, nil, nil)
        
    }
    
    fileprivate static let method_accept_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("accept_stream")
        return withUnsafePointer(to: &StreamPeerTLS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4292689651)!
            }
            
        }
        
    }()
    
    /// Accepts a peer connection as a server using the given `serverOptions`. See ``TLSOptions/server(key:certificate:)``.
    public final func acceptStream(_ stream: StreamPeer?, serverOptions: TLSOptions?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: stream?.handle) { pArg0 in
            withUnsafePointer(to: serverOptions?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(StreamPeerTLS.method_accept_stream, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_connect_to_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("connect_to_stream")
        return withUnsafePointer(to: &StreamPeerTLS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 57169517)!
            }
            
        }
        
    }()
    
    /// Connects to a peer using an underlying ``StreamPeer`` `stream` and verifying the remote certificate is correctly signed for the given `commonName`. You can pass the optional `clientOptions` parameter to customize the trusted certification authorities, or disable the common name verification. See ``TLSOptions/client(trustedChain:commonNameOverride:)`` and ``TLSOptions/clientUnsafe(trustedChain:)``.
    public final func connectToStream(_ stream: StreamPeer?, commonName: String, clientOptions: TLSOptions? = nil) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: stream?.handle) { pArg0 in
            let commonName = GString(commonName)
            withUnsafePointer(to: commonName.content) { pArg1 in
                withUnsafePointer(to: clientOptions?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(StreamPeerTLS.method_connect_to_stream, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_get_status: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_status")
        return withUnsafePointer(to: &StreamPeerTLS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1128380576)!
            }
            
        }
        
    }()
    
    /// Returns the status of the connection. See ``StreamPeerTLS/Status`` for values.
    public final func getStatus() -> StreamPeerTLS.Status {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(StreamPeerTLS.method_get_status, handle, nil, &_result)
        return StreamPeerTLS.Status (rawValue: _result)!
    }
    
    fileprivate static let method_get_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_stream")
        return withUnsafePointer(to: &StreamPeerTLS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2741655269)!
            }
            
        }
        
    }()
    
    /// Returns the underlying ``StreamPeer`` connection, used in ``acceptStream(_:serverOptions:)`` or ``connectToStream(_:commonName:clientOptions:)``.
    public final func getStream() -> StreamPeer? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(StreamPeerTLS.method_get_stream, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_disconnect_from_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("disconnect_from_stream")
        return withUnsafePointer(to: &StreamPeerTLS.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Disconnects from host.
    public final func disconnectFromStream() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(StreamPeerTLS.method_disconnect_from_stream, handle, nil, nil)
        
    }
    
}

