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


/// Container for ``Animation`` resources.
/// 
/// An animation library stores a set of animations accessible through ``StringName`` keys, for use with ``AnimationPlayer`` nodes.
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``animationAdded``
/// - ``animationRemoved``
/// - ``animationRenamed``
/// - ``animationChanged``
open class AnimationLibrary: Resource {
    private static var className = StringName("AnimationLibrary")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_add_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1811855551)!
            }
            
        }
        
    }()
    
    /// Adds the `animation` to the library, accessible by the key `name`.
    public final func addAnimation(name: StringName, animation: Animation?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: animation?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationLibrary.method_add_animation, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_remove_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes the ``Animation`` with the key `name`.
    public final func removeAnimation(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationLibrary.method_remove_animation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rename_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rename_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Changes the key of the ``Animation`` associated with the key `name` to `newname`.
    public final func renameAnimation(name: StringName, newname: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: newname.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationLibrary.method_rename_animation, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the library stores an ``Animation`` with `name` as the key.
    public final func hasAnimation(name: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationLibrary.method_has_animation, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2933122410)!
            }
            
        }
        
    }()
    
    /// Returns the ``Animation`` with the key `name`. If the animation does not exist, `null` is returned and an error is logged.
    public final func getAnimation(name: StringName) -> Animation? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationLibrary.method_get_animation, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_animation_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation_list")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the keys for the ``Animation``s stored in the library.
    public final func getAnimationList() -> TypedArray<StringName> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(AnimationLibrary.method_get_animation_list, handle, nil, &_result)
        return TypedArray<StringName>(takingOver: _result)
    }
    
    fileprivate static let method_get_animation_list_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation_list_size")
        return withUnsafePointer(to: &AnimationLibrary.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the key count for the ``Animation``s stored in the library.
    public final func getAnimationListSize() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimationLibrary.method_get_animation_list_size, handle, nil, &_result)
        return _result
    }
    
    // Signals 
    /// Emitted when an ``Animation`` is added, under the key `name`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationAdded.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationAdded: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "animation_added") }
    
    /// Emitted when an ``Animation`` stored with the key `name` is removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationRemoved.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationRemoved: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "animation_removed") }
    
    /// Emitted when the key for an ``Animation`` is changed, from `name` to `toName`.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationRenamed.connect { name, toName in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationRenamed: SignalWithArguments<StringName, StringName> { SignalWithArguments<StringName, StringName> (target: self, signalName: "animation_renamed") }
    
    /// Emitted when there's a change in one of the animations, e.g. tracks are added, moved or have changed paths. `name` is the key of the animation that was changed.
    /// 
    /// See also [signal Resource.changed], which this acts as a relay for.
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
    /// obj.animationChanged.connect { name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationChanged: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "animation_changed") }
    
}

