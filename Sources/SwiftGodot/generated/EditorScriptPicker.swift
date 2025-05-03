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


/// Godot editor's control for selecting the `script` property of a ``Node``.
/// 
/// Similar to ``EditorResourcePicker`` this ``Control`` node is used in the editor's Inspector dock, but only to edit the `script` property of a ``Node``. Default options for creating new resources of all possible subtypes are replaced with dedicated buttons that open the "Attach Node Script" dialog. Can be used with ``EditorInspectorPlugin`` to recreate the same behavior.
/// 
/// > Note: You must set the ``scriptOwner`` for the custom context menu items to work.
/// 
open class EditorScriptPicker: EditorResourcePicker {
    private static var className = StringName("EditorScriptPicker")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /// The owner ``Node`` of the script property that holds the edited resource.
    final public var scriptOwner: Node? {
        get {
            return get_script_owner ()
        }
        
        set {
            set_script_owner (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_script_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_script_owner")
        return withUnsafePointer(to: &EditorScriptPicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_script_owner(_ ownerNode: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: ownerNode?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(EditorScriptPicker.method_set_script_owner, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_script_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_script_owner")
        return withUnsafePointer(to: &EditorScriptPicker.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3160264692)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_script_owner() -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(EditorScriptPicker.method_get_script_owner, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
}

