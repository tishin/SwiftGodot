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


/// Interface to a WebRTC peer connection.
/// 
/// A WebRTC connection between the local computer and a remote peer. Provides an interface to connect, maintain and monitor the connection.
/// 
/// Setting up a WebRTC connection between two peers may not seem a trivial task, but it can be broken down into 3 main steps:
/// 
/// - The peer that wants to initiate the connection (`A` from now on) creates an offer and send it to the other peer (`B` from now on).
/// 
/// - `B` receives the offer, generate and answer, and sends it to `A`).
/// 
/// - `A` and `B` then generates and exchange ICE candidates with each other.
/// 
/// After these steps, the connection should become connected. Keep on reading or look into the tutorial for more information.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``sessionDescriptionCreated``
/// - ``iceCandidateCreated``
/// - ``dataChannelReceived``
open class WebRTCPeerConnection: RefCounted {
    private static var className = StringName("WebRTCPeerConnection")
    override open class var godotClassName: StringName { className }
    public enum ConnectionState: Int64, CaseIterable {
        /// The connection is new, data channels and an offer can be created in this state.
        case new = 0 // STATE_NEW
        /// The peer is connecting, ICE is in progress, none of the transports has failed.
        case connecting = 1 // STATE_CONNECTING
        /// The peer is connected, all ICE transports are connected.
        case connected = 2 // STATE_CONNECTED
        /// At least one ICE transport is disconnected.
        case disconnected = 3 // STATE_DISCONNECTED
        /// One or more of the ICE transports failed.
        case failed = 4 // STATE_FAILED
        /// The peer connection is closed (after calling ``close()`` for example).
        case closed = 5 // STATE_CLOSED
    }
    
    public enum GatheringState: Int64, CaseIterable {
        /// The peer connection was just created and hasn't done any networking yet.
        case new = 0 // GATHERING_STATE_NEW
        /// The ICE agent is in the process of gathering candidates for the connection.
        case gathering = 1 // GATHERING_STATE_GATHERING
        /// The ICE agent has finished gathering candidates. If something happens that requires collecting new candidates, such as a new interface being added or the addition of a new ICE server, the state will revert to gathering to gather those candidates.
        case complete = 2 // GATHERING_STATE_COMPLETE
    }
    
    public enum SignalingState: Int64, CaseIterable {
        /// There is no ongoing exchange of offer and answer underway. This may mean that the ``WebRTCPeerConnection`` is new (``ConnectionState/new``) or that negotiation is complete and a connection has been established (``ConnectionState/connected``).
        case stable = 0 // SIGNALING_STATE_STABLE
        /// The local peer has called ``setLocalDescription(type:sdp:)``, passing in SDP representing an offer (usually created by calling ``createOffer()``), and the offer has been applied successfully.
        case haveLocalOffer = 1 // SIGNALING_STATE_HAVE_LOCAL_OFFER
        /// The remote peer has created an offer and used the signaling server to deliver it to the local peer, which has set the offer as the remote description by calling ``setRemoteDescription(type:sdp:)``.
        case haveRemoteOffer = 2 // SIGNALING_STATE_HAVE_REMOTE_OFFER
        /// The offer sent by the remote peer has been applied and an answer has been created and applied by calling ``setLocalDescription(type:sdp:)``. This provisional answer describes the supported media formats and so forth, but may not have a complete set of ICE candidates included. Further candidates will be delivered separately later.
        case haveLocalPranswer = 3 // SIGNALING_STATE_HAVE_LOCAL_PRANSWER
        /// A provisional answer has been received and successfully applied in response to an offer previously sent and established by calling ``setLocalDescription(type:sdp:)``.
        case haveRemotePranswer = 4 // SIGNALING_STATE_HAVE_REMOTE_PRANSWER
        /// The ``WebRTCPeerConnection`` has been closed.
        case closed = 5 // SIGNALING_STATE_CLOSED
    }
    
    /* Methods */
    fileprivate static let method_set_default_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_default_extension")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Sets the `extensionClass` as the default ``WebRTCPeerConnectionExtension`` returned when creating a new ``WebRTCPeerConnection``.
    public static func setDefaultExtension(extensionClass: StringName) {
        withUnsafePointer(to: extensionClass.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_set_default_extension, nil, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_initialize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("initialize")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2625064318)!
            }
            
        }
        
    }()
    
    /// Re-initialize this peer connection, closing any previously active connection, and going back to state ``ConnectionState/new``. A dictionary of `configuration` options can be passed to configure the peer connection.
    /// 
    /// Valid `configuration` options are:
    /// 
    public final func initialize(configuration: VariantDictionary = VariantDictionary ()) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: configuration.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_initialize, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_create_data_channel: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_data_channel")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1288557393)!
            }
            
        }
        
    }()
    
    /// Returns a new ``WebRTCDataChannel`` (or `null` on failure) with given `label` and optionally configured via the `options` dictionary. This method can only be called when the connection is in state ``ConnectionState/new``.
    /// 
    /// There are two ways to create a working data channel: either call ``createDataChannel(label:options:)`` on only one of the peer and listen to [signal data_channel_received] on the other, or call ``createDataChannel(label:options:)`` on both peers, with the same values, and the `"negotiated"` option set to `true`.
    /// 
    /// Valid `options` are:
    /// 
    /// > Note: You must keep a reference to channels created this way, or it will be closed.
    /// 
    public final func createDataChannel(label: String, options: VariantDictionary = VariantDictionary ()) -> WebRTCDataChannel? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        let label = GString(label)
        withUnsafePointer(to: label.content) { pArg0 in
            withUnsafePointer(to: options.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_create_data_channel, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_create_offer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_offer")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Creates a new SDP offer to start a WebRTC connection with a remote peer. At least one ``WebRTCDataChannel`` must have been created before calling this method.
    /// 
    /// If this functions returns ``GodotError/ok``, [signal session_description_created] will be called when the session is ready to be sent.
    /// 
    public final func createOffer() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_create_offer, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_set_local_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_local_description")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Sets the SDP description of the local peer. This should be called in response to [signal session_description_created].
    /// 
    /// After calling this function the peer will start emitting [signal ice_candidate_created] (unless an ``GodotError`` different from ``GodotError/ok`` is returned).
    /// 
    public final func setLocalDescription(type: String, sdp: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            let sdp = GString(sdp)
            withUnsafePointer(to: sdp.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_set_local_description, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_set_remote_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_remote_description")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 852856452)!
            }
            
        }
        
    }()
    
    /// Sets the SDP description of the remote peer. This should be called with the values generated by a remote peer and received over the signaling server.
    /// 
    /// If `type` is `"offer"` the peer will emit [signal session_description_created] with the appropriate answer.
    /// 
    /// If `type` is `"answer"` the peer will start emitting [signal ice_candidate_created].
    /// 
    public final func setRemoteDescription(type: String, sdp: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let type = GString(type)
        withUnsafePointer(to: type.content) { pArg0 in
            let sdp = GString(sdp)
            withUnsafePointer(to: sdp.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_set_remote_description, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_add_ice_candidate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_ice_candidate")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3958950400)!
            }
            
        }
        
    }()
    
    /// Add an ice candidate generated by a remote peer (and received over the signaling server). See [signal ice_candidate_created].
    public final func addIceCandidate(media: String, index: Int32, name: String) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        let media = GString(media)
        withUnsafePointer(to: media.content) { pArg0 in
            withUnsafePointer(to: index) { pArg1 in
                let name = GString(name)
                withUnsafePointer(to: name.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_add_ice_candidate, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_poll: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("poll")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 166280745)!
            }
            
        }
        
    }()
    
    /// Call this method frequently (e.g. in ``Node/_process(delta:)`` or ``Node/_physicsProcess(delta:)``) to properly receive signals.
    public final func poll() -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_poll, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_close: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("close")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Close the peer connection and all data channels associated with it.
    /// 
    /// > Note: You cannot reuse this object for a new connection unless you call ``initialize(configuration:)``.
    /// 
    public final func close() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_close, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_get_connection_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_connection_state")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2275710506)!
            }
            
        }
        
    }()
    
    /// Returns the connection state. See ``WebRTCPeerConnection/ConnectionState``.
    public final func getConnectionState() -> WebRTCPeerConnection.ConnectionState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_get_connection_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return WebRTCPeerConnection.ConnectionState (rawValue: _result)!
    }
    
    fileprivate static let method_get_gathering_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gathering_state")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4262591401)!
            }
            
        }
        
    }()
    
    /// Returns the ICE ``WebRTCPeerConnection/GatheringState`` of the connection. This lets you detect, for example, when collection of ICE candidates has finished.
    public final func getGatheringState() -> WebRTCPeerConnection.GatheringState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_get_gathering_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return WebRTCPeerConnection.GatheringState (rawValue: _result)!
    }
    
    fileprivate static let method_get_signaling_state: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_signaling_state")
        return withUnsafePointer(to: &WebRTCPeerConnection.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3342956226)!
            }
            
        }
        
    }()
    
    /// Returns the signaling state on the local end of the connection while connecting or reconnecting to another peer.
    public final func getSignalingState() -> WebRTCPeerConnection.SignalingState {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(WebRTCPeerConnection.method_get_signaling_state, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return WebRTCPeerConnection.SignalingState (rawValue: _result)!
    }
    
    // Signals 
    /// Emitted after a successful call to ``createOffer()`` or ``setRemoteDescription(type:sdp:)`` (when it generates an answer). The parameters are meant to be passed to ``setLocalDescription(type:sdp:)`` on this object, and sent to the remote peer over the signaling server.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.sessionDescriptionCreated.connect { type, sdp in
    ///    print ("caught signal")
    /// }
    /// ```
    public var sessionDescriptionCreated: SignalWithArguments<String, String> { SignalWithArguments<String, String> (target: self, signalName: "session_description_created") }
    
    /// Emitted when a new ICE candidate has been created. The three parameters are meant to be passed to the remote peer over the signaling server.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.iceCandidateCreated.connect { media, index, name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var iceCandidateCreated: SignalWithArguments<String, Int64, String> { SignalWithArguments<String, Int64, String> (target: self, signalName: "ice_candidate_created") }
    
    /// Emitted when a new in-band channel is received, i.e. when the channel was created with `negotiated: false` (default).
    /// 
    /// The object will be an instance of ``WebRTCDataChannel``. You must keep a reference of it or it will be closed automatically. See ``createDataChannel(label:options:)``.
    /// 
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.dataChannelReceived.connect { channel in
    ///    print ("caught signal")
    /// }
    /// ```
    public var dataChannelReceived: SignalWithArguments<WebRTCDataChannel?> { SignalWithArguments<WebRTCDataChannel?> (target: self, signalName: "data_channel_received") }
    
}

