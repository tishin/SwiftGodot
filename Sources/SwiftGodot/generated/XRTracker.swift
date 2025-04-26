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


/// A tracked object.
/// 
/// This object is the base of all XR trackers.
open class XRTracker: RefCounted {
    private static var className = StringName("XRTracker")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The type of tracker.
    final public var type: XRServer.TrackerType {
        get {
            return get_tracker_type ()
        }
        
        set {
            set_tracker_type (newValue)
        }
        
    }
    
    /// The unique name of this tracker. The trackers that are available differ between various XR runtimes and can often be configured by the user. Godot maintains a number of reserved names that it expects the ``XRInterface`` to implement if applicable:
    /// 
    /// - `head` identifies the ``XRPositionalTracker`` of the players head
    /// 
    /// - `left_hand` identifies the ``XRControllerTracker`` in the players left hand
    /// 
    /// - `right_hand` identifies the ``XRControllerTracker`` in the players right hand
    /// 
    /// - `/user/hand_tracker/left` identifies the ``XRHandTracker`` for the players left hand
    /// 
    /// - `/user/hand_tracker/right` identifies the ``XRHandTracker`` for the players right hand
    /// 
    /// - `/user/body_tracker` identifies the ``XRBodyTracker`` for the players body
    /// 
    /// - `/user/face_tracker` identifies the ``XRFaceTracker`` for the players face
    /// 
    final public var name: StringName {
        get {
            return get_tracker_name ()
        }
        
        set {
            set_tracker_name (newValue)
        }
        
    }
    
    /// The description of this tracker.
    final public var additionalDescription: String {
        get {
            return get_tracker_desc ()
        }
        
        set {
            set_tracker_desc (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_get_tracker_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tracker_type")
        return withUnsafePointer(to: &XRTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2784508102)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tracker_type() -> XRServer.TrackerType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(XRTracker.method_get_tracker_type, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return XRServer.TrackerType (rawValue: _result)!
    }
    
    fileprivate static let method_set_tracker_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tracker_type")
        return withUnsafePointer(to: &XRTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3055763575)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tracker_type(_ type: XRServer.TrackerType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRTracker.method_set_tracker_type, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tracker_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tracker_name")
        return withUnsafePointer(to: &XRTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tracker_name() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(XRTracker.method_get_tracker_name, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_tracker_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tracker_name")
        return withUnsafePointer(to: &XRTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tracker_name(_ name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRTracker.method_set_tracker_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_tracker_desc: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tracker_desc")
        return withUnsafePointer(to: &XRTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_tracker_desc() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(XRTracker.method_get_tracker_desc, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_tracker_desc: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_tracker_desc")
        return withUnsafePointer(to: &XRTracker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_tracker_desc(_ description: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let description = GString(description)
        withUnsafePointer(to: description.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(XRTracker.method_set_tracker_desc, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
}

