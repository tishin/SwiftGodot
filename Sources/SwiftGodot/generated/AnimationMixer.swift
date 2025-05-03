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


/// Base class for ``AnimationPlayer`` and ``AnimationTree``.
/// 
/// Base class for ``AnimationPlayer`` and ``AnimationTree`` to manage animation lists. It also has general properties and methods for playback and blending.
/// 
/// After instantiating the playback information data within the extended class, the blending is processed by the ``AnimationMixer``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``animationListChanged``
/// - ``animationLibrariesUpdated``
/// - ``animationFinished``
/// - ``animationStarted``
/// - ``cachesCleared``
/// - ``mixerApplied``
/// - ``mixerUpdated``
open class AnimationMixer: Node {
    private static var className = StringName("AnimationMixer")
    override open class var godotClassName: StringName { className }
    public enum AnimationCallbackModeProcess: Int64, CaseIterable {
        /// Process animation during physics frames (see ``Node/notificationInternalPhysicsProcess``). This is especially useful when animating physics bodies.
        case physics = 0 // ANIMATION_CALLBACK_MODE_PROCESS_PHYSICS
        /// Process animation during process frames (see ``Node/notificationInternalProcess``).
        case idle = 1 // ANIMATION_CALLBACK_MODE_PROCESS_IDLE
        /// Do not process animation. Use ``advance(delta:)`` to process the animation manually.
        case manual = 2 // ANIMATION_CALLBACK_MODE_PROCESS_MANUAL
    }
    
    public enum AnimationCallbackModeMethod: Int64, CaseIterable {
        /// Batch method calls during the animation process, then do the calls after events are processed. This avoids bugs involving deleting nodes or modifying the AnimationPlayer while playing.
        case deferred = 0 // ANIMATION_CALLBACK_MODE_METHOD_DEFERRED
        /// Make method calls immediately when reached in the animation.
        case immediate = 1 // ANIMATION_CALLBACK_MODE_METHOD_IMMEDIATE
    }
    
    public enum AnimationCallbackModeDiscrete: Int64, CaseIterable {
        /// An ``Animation/UpdateMode/discrete`` track value takes precedence when blending ``Animation/UpdateMode/continuous`` or ``Animation/UpdateMode/capture`` track values and ``Animation/UpdateMode/discrete`` track values.
        case dominant = 0 // ANIMATION_CALLBACK_MODE_DISCRETE_DOMINANT
        /// An ``Animation/UpdateMode/continuous`` or ``Animation/UpdateMode/capture`` track value takes precedence when blending the ``Animation/UpdateMode/continuous`` or ``Animation/UpdateMode/capture`` track values and the ``Animation/UpdateMode/discrete`` track values. This is the default behavior for ``AnimationPlayer``.
        case recessive = 1 // ANIMATION_CALLBACK_MODE_DISCRETE_RECESSIVE
        /// Always treat the ``Animation/UpdateMode/discrete`` track value as ``Animation/UpdateMode/continuous`` with ``Animation/InterpolationType/nearest``. This is the default behavior for ``AnimationTree``.
        /// 
        /// If a value track has un-interpolatable type key values, it is internally converted to use ``AnimationCallbackModeDiscrete/recessive`` with ``Animation/UpdateMode/discrete``.
        /// 
        /// Un-interpolatable type list:
        /// 
        /// - ``@GlobalScope.TYPE_NIL``
        /// 
        /// - ``@GlobalScope.TYPE_NODE_PATH``
        /// 
        /// - ``@GlobalScope.TYPE_RID``
        /// 
        /// - ``@GlobalScope.TYPE_OBJECT``
        /// 
        /// - ``@GlobalScope.TYPE_CALLABLE``
        /// 
        /// - ``@GlobalScope.TYPE_SIGNAL``
        /// 
        /// - ``@GlobalScope.TYPE_DICTIONARY``
        /// 
        /// - ``@GlobalScope.TYPE_PACKED_BYTE_ARRAY``
        /// 
        /// ``@GlobalScope.TYPE_BOOL`` and ``@GlobalScope.TYPE_INT`` are treated as ``@GlobalScope.TYPE_FLOAT`` during blending and rounded when the result is retrieved.
        /// 
        /// It is same for arrays and vectors with them such as ``@GlobalScope.TYPE_PACKED_INT32_ARRAY`` or ``@GlobalScope.TYPE_VECTOR2I``, they are treated as ``@GlobalScope.TYPE_PACKED_FLOAT32_ARRAY`` or ``@GlobalScope.TYPE_VECTOR2``. Also note that for arrays, the size is also interpolated.
        /// 
        /// ``@GlobalScope.TYPE_STRING`` and ``@GlobalScope.TYPE_STRING_NAME`` are interpolated between character codes and lengths, but note that there is a difference in algorithm between interpolation between keys and interpolation by blending.
        /// 
        case forceContinuous = 2 // ANIMATION_CALLBACK_MODE_DISCRETE_FORCE_CONTINUOUS
    }
    
    
    /* Properties */
    
    /// If `true`, the ``AnimationMixer`` will be processing.
    final public var active: Bool {
        get {
            return is_active ()
        }
        
        set {
            set_active (newValue)
        }
        
    }
    
    /// If `true`, the blending uses the deterministic algorithm. The total weight is not normalized and the result is accumulated with an initial value (`0` or a `"RESET"` animation if present).
    /// 
    /// This means that if the total amount of blending is `0.0`, the result is equal to the `"RESET"` animation.
    /// 
    /// If the number of tracks between the blended animations is different, the animation with the missing track is treated as if it had the initial value.
    /// 
    /// If `false`, The blend does not use the deterministic algorithm. The total weight is normalized and always `1.0`. If the number of tracks between the blended animations is different, nothing is done about the animation that is missing a track.
    /// 
    /// > Note: In ``AnimationTree``, the blending with ``AnimationNodeAdd2``, ``AnimationNodeAdd3``, ``AnimationNodeSub2`` or the weight greater than `1.0` may produce unexpected results.
    /// 
    /// For example, if ``AnimationNodeAdd2`` blends two nodes with the amount `1.0`, then total weight is `2.0` but it will be normalized to make the total amount `1.0` and the result will be equal to ``AnimationNodeBlend2`` with the amount `0.5`.
    /// 
    final public var deterministic: Bool {
        get {
            return is_deterministic ()
        }
        
        set {
            set_deterministic (newValue)
        }
        
    }
    
    /// This is used by the editor. If set to `true`, the scene will be saved with the effects of the reset animation (the animation with the key `"RESET"`) applied as if it had been seeked to time 0, with the editor keeping the values that the scene had before saving.
    /// 
    /// This makes it more convenient to preview and edit animations in the editor, as changes to the scene will not be saved as long as they are set in the reset animation.
    /// 
    final public var resetOnSave: Bool {
        get {
            return is_reset_on_save_enabled ()
        }
        
        set {
            set_reset_on_save_enabled (newValue)
        }
        
    }
    
    /// The node which node path references will travel from.
    final public var rootNode: NodePath {
        get {
            return get_root_node ()
        }
        
        set {
            set_root_node (newValue)
        }
        
    }
    
    /// The path to the Animation track used for root motion. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. The ``rootMotionTrack`` uses the same format as ``Animation/trackSetPath(trackIdx:path:)``, but note that a bone must be specified.
    /// 
    /// If the track has type ``Animation/TrackType/position3d``, ``Animation/TrackType/rotation3d``, or ``Animation/TrackType/scale3d`` the transformation will be canceled visually, and the animation will appear to stay in place. See also ``getRootMotionPosition()``, ``getRootMotionRotation()``, ``getRootMotionScale()``, and ``RootMotionView``.
    /// 
    final public var rootMotionTrack: NodePath {
        get {
            return get_root_motion_track ()
        }
        
        set {
            set_root_motion_track (newValue)
        }
        
    }
    
    /// If `true`, ``getRootMotionPosition()`` value is extracted as a local translation value before blending. In other words, it is treated like the translation is done after the rotation.
    final public var rootMotionLocal: Bool {
        get {
            return is_root_motion_local ()
        }
        
        set {
            set_root_motion_local (newValue)
        }
        
    }
    
    /// The number of possible simultaneous sounds for each of the assigned AudioStreamPlayers.
    /// 
    /// For example, if this value is `32` and the animation has two audio tracks, the two ``AudioStreamPlayer``s assigned can play simultaneously up to `32` voices each.
    /// 
    final public var audioMaxPolyphony: Int32 {
        get {
            return get_audio_max_polyphony ()
        }
        
        set {
            set_audio_max_polyphony (newValue)
        }
        
    }
    
    /// The process notification in which to update animations.
    final public var callbackModeProcess: AnimationMixer.AnimationCallbackModeProcess {
        get {
            return get_callback_mode_process ()
        }
        
        set {
            set_callback_mode_process (newValue)
        }
        
    }
    
    /// The call mode used for "Call Method" tracks.
    final public var callbackModeMethod: AnimationMixer.AnimationCallbackModeMethod {
        get {
            return get_callback_mode_method ()
        }
        
        set {
            set_callback_mode_method (newValue)
        }
        
    }
    
    /// Ordinarily, tracks can be set to ``Animation/UpdateMode/discrete`` to update infrequently, usually when using nearest interpolation.
    /// 
    /// However, when blending with ``Animation/UpdateMode/continuous`` several results are considered. The ``callbackModeDiscrete`` specify it explicitly. See also ``AnimationMixer/AnimationCallbackModeDiscrete``.
    /// 
    /// To make the blended results look good, it is recommended to set this to ``AnimationCallbackModeDiscrete/forceContinuous`` to update every frame during blending. Other values exist for compatibility and they are fine if there is no blending, but not so, may produce artifacts.
    /// 
    final public var callbackModeDiscrete: AnimationMixer.AnimationCallbackModeDiscrete {
        get {
            return get_callback_mode_discrete ()
        }
        
        set {
            set_callback_mode_discrete (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__post_process_key_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_post_process_key_value")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2716908335)!
            }
            
        }
        
    }()
    
    /// A virtual function for processing after getting a key during playback.
    @_documentation(visibility: public)
    open func _postProcessKeyValue(animation: Animation?, track: Int32, value: Variant?, objectId: UInt, objectSubIdx: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: animation?.handle) { pArg0 in
            withUnsafePointer(to: track) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: objectId) { pArg3 in
                        withUnsafePointer(to: objectSubIdx) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(AnimationMixer.method__post_process_key_value, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_add_animation_library: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_animation_library")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 618909818)!
            }
            
        }
        
    }()
    
    /// Adds `library` to the animation player, under the key `name`.
    /// 
    /// AnimationMixer has a global library by default with an empty string as key. For adding an animation to the global library:
    /// 
    public final func addAnimationLibrary(name: StringName, library: AnimationLibrary?) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: library?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationMixer.method_add_animation_library, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_remove_animation_library: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_animation_library")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes the ``AnimationLibrary`` associated with the key `name`.
    public final func removeAnimationLibrary(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_remove_animation_library, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rename_animation_library: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rename_animation_library")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Moves the ``AnimationLibrary`` associated with the key `name` to the key `newname`.
    public final func renameAnimationLibrary(name: StringName, newname: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: newname.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationMixer.method_rename_animation_library, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_animation_library: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_animation_library")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``AnimationMixer`` stores an ``AnimationLibrary`` with key `name`.
    public final func hasAnimationLibrary(name: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_has_animation_library, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_animation_library: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation_library")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 147342321)!
            }
            
        }
        
    }()
    
    /// Returns the first ``AnimationLibrary`` with key `name` or `null` if not found.
    /// 
    /// To get the ``AnimationMixer``'s global animation library, use `get_animation_library("")`.
    /// 
    public final func getAnimationLibrary(name: StringName) -> AnimationLibrary? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_get_animation_library, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_animation_library_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation_library_list")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns the list of stored library keys.
    public final func getAnimationLibraryList() -> TypedArray<StringName> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_animation_library_list, handle, nil, &_result)
        return TypedArray<StringName>(takingOver: _result)
    }
    
    fileprivate static let method_has_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_animation")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the ``AnimationMixer`` stores an ``Animation`` with key `name`.
    public final func hasAnimation(name: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_has_animation, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
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
                    gi.object_method_bind_ptrcall(AnimationMixer.method_get_animation, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_animation_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_animation_list")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns the list of stored animation keys.
    public final func getAnimationList() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_animation_list, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_active")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_active(_ active: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: active) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_active, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_active: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_active")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_active() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationMixer.method_is_active, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_deterministic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_deterministic")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_deterministic(_ deterministic: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: deterministic) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_deterministic, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_deterministic: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_deterministic")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_deterministic() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationMixer.method_is_deterministic, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_root_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_node")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_node(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_root_node, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_node")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_node() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_node, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_callback_mode_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_callback_mode_process")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2153733086)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_callback_mode_process(_ mode: AnimationMixer.AnimationCallbackModeProcess) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_callback_mode_process, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_callback_mode_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_callback_mode_process")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1394468472)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_callback_mode_process() -> AnimationMixer.AnimationCallbackModeProcess {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_callback_mode_process, handle, nil, &_result)
        return AnimationMixer.AnimationCallbackModeProcess (rawValue: _result)!
    }
    
    fileprivate static let method_set_callback_mode_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_callback_mode_method")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 742218271)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_callback_mode_method(_ mode: AnimationMixer.AnimationCallbackModeMethod) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_callback_mode_method, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_callback_mode_method: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_callback_mode_method")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 489449656)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_callback_mode_method() -> AnimationMixer.AnimationCallbackModeMethod {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_callback_mode_method, handle, nil, &_result)
        return AnimationMixer.AnimationCallbackModeMethod (rawValue: _result)!
    }
    
    fileprivate static let method_set_callback_mode_discrete: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_callback_mode_discrete")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1998944670)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_callback_mode_discrete(_ mode: AnimationMixer.AnimationCallbackModeDiscrete) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_callback_mode_discrete, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_callback_mode_discrete: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_callback_mode_discrete")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3493168860)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_callback_mode_discrete() -> AnimationMixer.AnimationCallbackModeDiscrete {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_callback_mode_discrete, handle, nil, &_result)
        return AnimationMixer.AnimationCallbackModeDiscrete (rawValue: _result)!
    }
    
    fileprivate static let method_set_audio_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_audio_max_polyphony")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_audio_max_polyphony(_ maxPolyphony: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: maxPolyphony) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_audio_max_polyphony, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_audio_max_polyphony: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_audio_max_polyphony")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_audio_max_polyphony() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_audio_max_polyphony, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_root_motion_track: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_motion_track")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_motion_track(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_root_motion_track, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_root_motion_track: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_motion_track")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_root_motion_track() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_motion_track, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_set_root_motion_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_root_motion_local")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_root_motion_local(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_root_motion_local, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_root_motion_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_root_motion_local")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_root_motion_local() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationMixer.method_is_root_motion_local, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_root_motion_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_motion_position")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Retrieve the motion delta of position with the ``rootMotionTrack`` as a ``Vector3`` that can be used elsewhere.
    /// 
    /// If ``rootMotionTrack`` is not a path to a track of type ``Animation/TrackType/position3d``, returns `Vector3(0, 0, 0)`.
    /// 
    /// See also ``rootMotionTrack`` and ``RootMotionView``.
    /// 
    /// The most basic example is applying position to ``CharacterBody3D``:
    /// 
    /// By using this in combination with ``getRootMotionRotationAccumulator()``, you can apply the root motion position more correctly to account for the rotation of the node.
    /// 
    /// If ``rootMotionLocal`` is `true`, return the pre-multiplied translation value with the inverted rotation.
    /// 
    /// In this case, the code can be written as follows:
    /// 
    public final func getRootMotionPosition() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_motion_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_root_motion_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_motion_rotation")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1222331677)!
            }
            
        }
        
    }()
    
    /// Retrieve the motion delta of rotation with the ``rootMotionTrack`` as a ``Quaternion`` that can be used elsewhere.
    /// 
    /// If ``rootMotionTrack`` is not a path to a track of type ``Animation/TrackType/rotation3d``, returns `Quaternion(0, 0, 0, 1)`.
    /// 
    /// See also ``rootMotionTrack`` and ``RootMotionView``.
    /// 
    /// The most basic example is applying rotation to ``CharacterBody3D``:
    /// 
    public final func getRootMotionRotation() -> Quaternion {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Quaternion = Quaternion ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_motion_rotation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_root_motion_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_motion_scale")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Retrieve the motion delta of scale with the ``rootMotionTrack`` as a ``Vector3`` that can be used elsewhere.
    /// 
    /// If ``rootMotionTrack`` is not a path to a track of type ``Animation/TrackType/scale3d``, returns `Vector3(0, 0, 0)`.
    /// 
    /// See also ``rootMotionTrack`` and ``RootMotionView``.
    /// 
    /// The most basic example is applying scale to ``CharacterBody3D``:
    /// 
    public final func getRootMotionScale() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_motion_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_root_motion_position_accumulator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_motion_position_accumulator")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Retrieve the blended value of the position tracks with the ``rootMotionTrack`` as a ``Vector3`` that can be used elsewhere.
    /// 
    /// This is useful in cases where you want to respect the initial key values of the animation.
    /// 
    /// For example, if an animation with only one key `Vector3(0, 0, 0)` is played in the previous frame and then an animation with only one key `Vector3(1, 0, 1)` is played in the next frame, the difference can be calculated as follows:
    /// 
    /// However, if the animation loops, an unintended discrete change may occur, so this is only useful for some simple use cases.
    /// 
    public final func getRootMotionPositionAccumulator() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_motion_position_accumulator, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_root_motion_rotation_accumulator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_motion_rotation_accumulator")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1222331677)!
            }
            
        }
        
    }()
    
    /// Retrieve the blended value of the rotation tracks with the ``rootMotionTrack`` as a ``Quaternion`` that can be used elsewhere.
    /// 
    /// This is necessary to apply the root motion position correctly, taking rotation into account. See also ``getRootMotionPosition()``.
    /// 
    /// Also, this is useful in cases where you want to respect the initial key values of the animation.
    /// 
    /// For example, if an animation with only one key `Quaternion(0, 0, 0, 1)` is played in the previous frame and then an animation with only one key `Quaternion(0, 0.707, 0, 0.707)` is played in the next frame, the difference can be calculated as follows:
    /// 
    /// However, if the animation loops, an unintended discrete change may occur, so this is only useful for some simple use cases.
    /// 
    public final func getRootMotionRotationAccumulator() -> Quaternion {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Quaternion = Quaternion ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_motion_rotation_accumulator, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_root_motion_scale_accumulator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_root_motion_scale_accumulator")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    /// Retrieve the blended value of the scale tracks with the ``rootMotionTrack`` as a ``Vector3`` that can be used elsewhere.
    /// 
    /// For example, if an animation with only one key `Vector3(1, 1, 1)` is played in the previous frame and then an animation with only one key `Vector3(2, 2, 2)` is played in the next frame, the difference can be calculated as follows:
    /// 
    /// However, if the animation loops, an unintended discrete change may occur, so this is only useful for some simple use cases.
    /// 
    public final func getRootMotionScaleAccumulator() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(AnimationMixer.method_get_root_motion_scale_accumulator, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear_caches: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_caches")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// ``AnimationMixer`` caches animated nodes. It may not notice if a node disappears; ``clearCaches()`` forces it to update the cache again.
    public final func clearCaches() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(AnimationMixer.method_clear_caches, handle, nil, nil)
        
    }
    
    fileprivate static let method_advance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("advance")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Manually advance the animations by the specified time (in seconds).
    public final func advance(delta: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: delta) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_advance, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_capture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("capture")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1333632127)!
            }
            
        }
        
    }()
    
    /// If the animation track specified by `name` has an option ``Animation/UpdateMode/capture``, stores current values of the objects indicated by the track path as a cache. If there is already a captured cache, the old cache is discarded.
    /// 
    /// After this it will interpolate with current animation blending result during the playback process for the time specified by `duration`, working like a crossfade.
    /// 
    /// You can specify `transType` as the curve for the interpolation. For better results, it may be appropriate to specify ``Tween/TransitionType/linear`` for cases where the first key of the track begins with a non-zero value or where the key value does not change, and ``Tween/TransitionType/quad`` for cases where the key value changes linearly.
    /// 
    public final func capture(name: StringName, duration: Double, transType: Tween.TransitionType = .linear, easeType: Tween.EaseType = .`in`) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: duration) { pArg1 in
                withUnsafePointer(to: transType.rawValue) { pArg2 in
                    withUnsafePointer(to: easeType.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(AnimationMixer.method_capture, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_reset_on_save_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_reset_on_save_enabled")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_reset_on_save_enabled(_ enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_set_reset_on_save_enabled, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_reset_on_save_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_reset_on_save_enabled")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_reset_on_save_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationMixer.method_is_reset_on_save_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_find_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_animation")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1559484580)!
            }
            
        }
        
    }()
    
    /// Returns the key of `animation` or an empty ``StringName`` if not found.
    public final func findAnimation(_ animation: Animation?) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: animation?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_find_animation, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_find_animation_library: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_animation_library")
        return withUnsafePointer(to: &AnimationMixer.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1559484580)!
            }
            
        }
        
    }()
    
    /// Returns the key for the ``AnimationLibrary`` that contains `animation` or an empty ``StringName`` if not found.
    public final func findAnimationLibrary(animation: Animation?) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: animation?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationMixer.method_find_animation_library, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_post_process_key_value":
                return _AnimationMixer_proxy_post_process_key_value
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Notifies when an animation list is changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationListChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationListChanged: SimpleSignal { SimpleSignal (target: self, signalName: "animation_list_changed") }
    
    /// Notifies when the animation libraries have changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationLibrariesUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationLibrariesUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "animation_libraries_updated") }
    
    /// Notifies when an animation finished playing.
    /// 
    /// > Note: This signal is not emitted if an animation is looping.
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
    /// obj.animationFinished.connect { animName in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationFinished: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "animation_finished") }
    
    /// Notifies when an animation starts playing.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationStarted.connect { animName in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationStarted: SignalWithArguments<StringName> { SignalWithArguments<StringName> (target: self, signalName: "animation_started") }
    
    /// Notifies when the caches have been cleared, either automatically, or manually via ``clearCaches()``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.cachesCleared.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var cachesCleared: SimpleSignal { SimpleSignal (target: self, signalName: "caches_cleared") }
    
    /// Notifies when the blending result related have been applied to the target objects.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.mixerApplied.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var mixerApplied: SimpleSignal { SimpleSignal (target: self, signalName: "mixer_applied") }
    
    /// Notifies when the property related process have been updated.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.mixerUpdated.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var mixerUpdated: SimpleSignal { SimpleSignal (target: self, signalName: "mixer_updated") }
    
}

// Support methods for proxies
func _AnimationMixer_proxy_post_process_key_value (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationMixer else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    let ret = swiftObject._postProcessKeyValue (animation: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? Animation, track: args [1]!.assumingMemoryBound (to: Int32.self).pointee, value: args [2]!.assumingMemoryBound (to: Variant.self).pointee, objectId: args [3]!.assumingMemoryBound (to: UInt.self).pointee, objectSubIdx: args [4]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

