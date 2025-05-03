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


/// Holds data that can be used to animate anything in the engine.
/// 
/// This resource holds data that can be used to animate anything in the engine. Animations are divided into tracks and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track.
/// 
/// Animations are just data containers, and must be added to nodes such as an ``AnimationPlayer`` to be played back. Animation tracks have different types, each with its own set of dedicated methods. Check ``Animation/TrackType`` to see available types.
/// 
/// > Note: For 3D position/rotation/scale, using the dedicated ``TrackType/position3d``, ``TrackType/rotation3d`` and ``TrackType/scale3d`` track types instead of ``TrackType/value`` is recommended for performance reasons.
/// 
open class Animation: Resource {
    private static var className = StringName("Animation")
    override open class var godotClassName: StringName { className }
    public enum TrackType: Int64, CaseIterable {
        /// Value tracks set values in node properties, but only those which can be interpolated. For 3D position/rotation/scale, using the dedicated ``TrackType/position3d``, ``TrackType/rotation3d`` and ``TrackType/scale3d`` track types instead of ``TrackType/value`` is recommended for performance reasons.
        case value = 0 // TYPE_VALUE
        /// 3D position track (values are stored in ``Vector3``s).
        case position3d = 1 // TYPE_POSITION_3D
        /// 3D rotation track (values are stored in ``Quaternion``s).
        case rotation3d = 2 // TYPE_ROTATION_3D
        /// 3D scale track (values are stored in ``Vector3``s).
        case scale3d = 3 // TYPE_SCALE_3D
        /// Blend shape track.
        case blendShape = 4 // TYPE_BLEND_SHAPE
        /// Method tracks call functions with given arguments per key.
        case method = 5 // TYPE_METHOD
        /// Bezier tracks are used to interpolate a value using custom curves. They can also be used to animate sub-properties of vectors and colors (e.g. alpha value of a ``Color``).
        case bezier = 6 // TYPE_BEZIER
        /// Audio tracks are used to play an audio stream with either type of ``AudioStreamPlayer``. The stream can be trimmed and previewed in the animation.
        case audio = 7 // TYPE_AUDIO
        /// Animation tracks play animations in other ``AnimationPlayer`` nodes.
        case animation = 8 // TYPE_ANIMATION
    }
    
    public enum InterpolationType: Int64, CaseIterable {
        /// No interpolation (nearest value).
        case nearest = 0 // INTERPOLATION_NEAREST
        /// Linear interpolation.
        case linear = 1 // INTERPOLATION_LINEAR
        /// Cubic interpolation. This looks smoother than linear interpolation, but is more expensive to interpolate. Stick to ``InterpolationType/linear`` for complex 3D animations imported from external software, even if it requires using a higher animation framerate in return.
        case cubic = 2 // INTERPOLATION_CUBIC
        /// Linear interpolation with shortest path rotation.
        /// 
        /// > Note: The result value is always normalized and may not match the key value.
        /// 
        case linearAngle = 3 // INTERPOLATION_LINEAR_ANGLE
        /// Cubic interpolation with shortest path rotation.
        /// 
        /// > Note: The result value is always normalized and may not match the key value.
        /// 
        case cubicAngle = 4 // INTERPOLATION_CUBIC_ANGLE
    }
    
    public enum UpdateMode: Int64, CaseIterable {
        /// Update between keyframes and hold the value.
        case continuous = 0 // UPDATE_CONTINUOUS
        /// Update at the keyframes.
        case discrete = 1 // UPDATE_DISCRETE
        /// Same as ``UpdateMode/continuous`` but works as a flag to capture the value of the current object and perform interpolation in some methods. See also ``AnimationMixer/capture(name:duration:transType:easeType:)``, ``AnimationPlayer/playbackAutoCapture``, and ``AnimationPlayer/playWithCapture(name:duration:customBlend:customSpeed:fromEnd:transType:easeType:)``.
        case capture = 2 // UPDATE_CAPTURE
    }
    
    public enum LoopMode: Int64, CaseIterable {
        /// At both ends of the animation, the animation will stop playing.
        case none = 0 // LOOP_NONE
        /// At both ends of the animation, the animation will be repeated without changing the playback direction.
        case linear = 1 // LOOP_LINEAR
        /// Repeats playback and reverse playback at both ends of the animation.
        case pingpong = 2 // LOOP_PINGPONG
    }
    
    public enum LoopedFlag: Int64, CaseIterable {
        /// This flag indicates that the animation proceeds without any looping.
        case none = 0 // LOOPED_FLAG_NONE
        /// This flag indicates that the animation has reached the end of the animation and just after loop processed.
        case end = 1 // LOOPED_FLAG_END
        /// This flag indicates that the animation has reached the start of the animation and just after loop processed.
        case start = 2 // LOOPED_FLAG_START
    }
    
    public enum FindMode: Int64, CaseIterable {
        /// Finds the nearest time key.
        case nearest = 0 // FIND_MODE_NEAREST
        /// Finds only the key with approximating the time.
        case approx = 1 // FIND_MODE_APPROX
        /// Finds only the key with matching the time.
        case exact = 2 // FIND_MODE_EXACT
    }
    
    
    /* Properties */
    
    /// The total length of the animation (in seconds).
    /// 
    /// > Note: Length is not delimited by the last key, as this one may be before or after the end to ensure correct interpolation and looping.
    /// 
    final public var length: Double {
        get {
            return get_length ()
        }
        
        set {
            set_length (newValue)
        }
        
    }
    
    /// Determines the behavior of both ends of the animation timeline during animation playback. This is used for correct interpolation of animation cycles, and for hinting the player that it must restart the animation.
    final public var loopMode: Animation.LoopMode {
        get {
            return get_loop_mode ()
        }
        
        set {
            set_loop_mode (newValue)
        }
        
    }
    
    /// The animation step value.
    final public var step: Double {
        get {
            return get_step ()
        }
        
        set {
            set_step (newValue)
        }
        
    }
    
    /// Returns `true` if the capture track is included. This is a cached readonly value for performance.
    final public var captureIncluded: Bool {
        get {
            return is_capture_included ()
        }
        
    }
    
    /* Methods */
    fileprivate static let method_add_track: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_track")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3843682357)!
            }
            
        }
        
    }()
    
    /// Adds a track to the Animation.
    public final func addTrack(type: Animation.TrackType, atPosition: Int32 = -1) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: atPosition) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_add_track, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_remove_track: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_track")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes a track by specifying the track index.
    public final func removeTrack(trackIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_remove_track, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_track_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_track_count")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the amount of tracks in the animation.
    public final func getTrackCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Animation.method_get_track_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_track_get_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_type")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3445944217)!
            }
            
        }
        
    }()
    
    /// Gets the type of a track.
    public final func trackGetType(trackIdx: Int32) -> Animation.TrackType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_get_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Animation.TrackType (rawValue: _result)!
    }
    
    fileprivate static let method_track_get_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_path")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 408788394)!
            }
            
        }
        
    }()
    
    /// Gets the path of a track. For more information on the path format, see ``trackSetPath(trackIdx:path:)``.
    public final func trackGetPath(trackIdx: Int32) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_get_path, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_set_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_path")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2761262315)!
            }
            
        }
        
    }()
    
    /// Sets the path of a track. Paths must be valid scene-tree paths to a node and must be specified starting from the ``AnimationMixer/rootNode`` that will reproduce the animation. Tracks that control properties or bones must append their name after the path, separated by `":"`.
    /// 
    /// For example, `"character/skeleton:ankle"` or `"character/mesh:transform/local"`.
    /// 
    public final func trackSetPath(trackIdx: Int32, path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: path.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_set_path, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_find_track: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_track")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 245376003)!
            }
            
        }
        
    }()
    
    /// Returns the index of the specified track. If the track is not found, return -1.
    public final func findTrack(path: NodePath, type: Animation.TrackType) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: type.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_find_track, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_move_up: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_move_up")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Moves a track up.
    public final func trackMoveUp(trackIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_move_up, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_move_down: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_move_down")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Moves a track down.
    public final func trackMoveDown(trackIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_move_down, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_move_to: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_move_to")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Changes the index position of track `trackIdx` to the one defined in `toIdx`.
    public final func trackMoveTo(trackIdx: Int32, toIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: toIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_move_to, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_swap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_swap")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Swaps the track `trackIdx`'s index position with the track `withIdx`.
    public final func trackSwap(trackIdx: Int32, withIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: withIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_swap, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_set_imported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_imported")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets the given track as imported or not.
    public final func trackSetImported(trackIdx: Int32, imported: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: imported) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_set_imported, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_is_imported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_is_imported")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given track is imported. Else, return `false`.
    public final func trackIsImported(trackIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_is_imported, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_set_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_enabled")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Enables/disables the given track. Tracks are enabled by default.
    public final func trackSetEnabled(trackIdx: Int32, enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: enabled) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_set_enabled, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_is_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_is_enabled")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the track at index `trackIdx` is enabled.
    public final func trackIsEnabled(trackIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_is_enabled, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_position_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("position_track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2540608232)!
            }
            
        }
        
    }()
    
    /// Inserts a key in a given 3D position track. Returns the key index.
    public final func positionTrackInsertKey(trackIdx: Int32, time: Double, position: Vector3) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_position_track_insert_key, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_rotation_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rotation_track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4165004800)!
            }
            
        }
        
    }()
    
    /// Inserts a key in a given 3D rotation track. Returns the key index.
    public final func rotationTrackInsertKey(trackIdx: Int32, time: Double, rotation: Quaternion) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: rotation) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_rotation_track_insert_key, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_scale_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("scale_track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2540608232)!
            }
            
        }
        
    }()
    
    /// Inserts a key in a given 3D scale track. Returns the key index.
    public final func scaleTrackInsertKey(trackIdx: Int32, time: Double, scale: Vector3) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: scale) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_scale_track_insert_key, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_blend_shape_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("blend_shape_track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1534913637)!
            }
            
        }
        
    }()
    
    /// Inserts a key in a given blend shape track. Returns the key index.
    public final func blendShapeTrackInsertKey(trackIdx: Int32, time: Double, amount: Double) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: amount) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_blend_shape_track_insert_key, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_position_track_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("position_track_interpolate")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3530011197)!
            }
            
        }
        
    }()
    
    /// Returns the interpolated position value at the given time (in seconds). The `trackIdx` must be the index of a 3D position track.
    public final func positionTrackInterpolate(trackIdx: Int32, timeSec: Double, backward: Bool = false) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: timeSec) { pArg1 in
                withUnsafePointer(to: backward) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_position_track_interpolate, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_rotation_track_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rotation_track_interpolate")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915876792)!
            }
            
        }
        
    }()
    
    /// Returns the interpolated rotation value at the given time (in seconds). The `trackIdx` must be the index of a 3D rotation track.
    public final func rotationTrackInterpolate(trackIdx: Int32, timeSec: Double, backward: Bool = false) -> Quaternion {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Quaternion = Quaternion ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: timeSec) { pArg1 in
                withUnsafePointer(to: backward) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_rotation_track_interpolate, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_scale_track_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("scale_track_interpolate")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3530011197)!
            }
            
        }
        
    }()
    
    /// Returns the interpolated scale value at the given time (in seconds). The `trackIdx` must be the index of a 3D scale track.
    public final func scaleTrackInterpolate(trackIdx: Int32, timeSec: Double, backward: Bool = false) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: timeSec) { pArg1 in
                withUnsafePointer(to: backward) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_scale_track_interpolate, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_blend_shape_track_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("blend_shape_track_interpolate")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2482365182)!
            }
            
        }
        
    }()
    
    /// Returns the interpolated blend shape value at the given time (in seconds). The `trackIdx` must be the index of a blend shape track.
    public final func blendShapeTrackInterpolate(trackIdx: Int32, timeSec: Double, backward: Bool = false) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: timeSec) { pArg1 in
                withUnsafePointer(to: backward) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_blend_shape_track_interpolate, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 808952278)!
            }
            
        }
        
    }()
    
    /// Inserts a generic key in a given track. Returns the key index.
    public final func trackInsertKey(trackIdx: Int32, time: Double, key: Variant?, transition: Double = 1) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: key.content) { pArg2 in
                    withUnsafePointer(to: transition) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Animation.method_track_insert_key, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_remove_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_remove_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// Removes a key by index in a given track.
    public final func trackRemoveKey(trackIdx: Int32, keyIdx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_remove_key, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_remove_key_at_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_remove_key_at_time")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1602489585)!
            }
            
        }
        
    }()
    
    /// Removes a key at `time` in a given track.
    public final func trackRemoveKeyAtTime(trackIdx: Int32, time: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_remove_key_at_time, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_set_key_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_key_value")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2060538656)!
            }
            
        }
        
    }()
    
    /// Sets the value of an existing key.
    public final func trackSetKeyValue(trackIdx: Int32, key: Int32, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: key) { pArg1 in
                withUnsafePointer(to: value.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_track_set_key_value, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_set_key_transition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_key_transition")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the transition curve (easing) for a specific key (see the built-in math function ``@GlobalScope.ease``).
    public final func trackSetKeyTransition(trackIdx: Int32, keyIdx: Int32, transition: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: transition) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_track_set_key_transition, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_set_key_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_key_time")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the time of an existing key.
    public final func trackSetKeyTime(trackIdx: Int32, keyIdx: Int32, time: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: time) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_track_set_key_time, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_get_key_transition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_key_transition")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the transition curve (easing) for a specific key (see the built-in math function ``@GlobalScope.ease``).
    public final func trackGetKeyTransition(trackIdx: Int32, keyIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_get_key_transition, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_get_key_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_key_count")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the number of keys in a given track.
    public final func trackGetKeyCount(trackIdx: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_get_key_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_get_key_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_key_value")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 678354945)!
            }
            
        }
        
    }()
    
    /// Returns the value of a given key in a given track.
    public final func trackGetKeyValue(trackIdx: Int32, keyIdx: Int32) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_get_key_value, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_track_get_key_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_key_time")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the time at which the key is located.
    public final func trackGetKeyTime(trackIdx: Int32, keyIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_get_key_time, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_find_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_find_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4230953007)!
            }
            
        }
        
    }()
    
    /// Finds the key index by time in a given track. Optionally, only find it if the approx/exact time is given.
    /// 
    /// If `limit` is `true`, it does not return keys outside the animation range.
    /// 
    /// If `backward` is `true`, the direction is reversed in methods that rely on one directional processing.
    /// 
    /// For example, in case `findMode` is ``FindMode/nearest``, if there is no key in the current position just after seeked, the first key found is retrieved by searching before the position, but if `backward` is `true`, the first key found is retrieved after the position.
    /// 
    public final func trackFindKey(trackIdx: Int32, time: Double, findMode: Animation.FindMode = .nearest, limit: Bool = false, backward: Bool = false) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: findMode.rawValue) { pArg2 in
                    withUnsafePointer(to: limit) { pArg3 in
                        withUnsafePointer(to: backward) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Animation.method_track_find_key, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_set_interpolation_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_interpolation_type")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4112932513)!
            }
            
        }
        
    }()
    
    /// Sets the interpolation type of a given track.
    public final func trackSetInterpolationType(trackIdx: Int32, interpolation: Animation.InterpolationType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: interpolation.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_set_interpolation_type, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_get_interpolation_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_interpolation_type")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1530756894)!
            }
            
        }
        
    }()
    
    /// Returns the interpolation type of a given track.
    public final func trackGetInterpolationType(trackIdx: Int32) -> Animation.InterpolationType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_get_interpolation_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Animation.InterpolationType (rawValue: _result)!
    }
    
    fileprivate static let method_track_set_interpolation_loop_wrap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_set_interpolation_loop_wrap")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// If `true`, the track at `trackIdx` wraps the interpolation loop.
    public final func trackSetInterpolationLoopWrap(trackIdx: Int32, interpolation: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: interpolation) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_track_set_interpolation_loop_wrap, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_track_get_interpolation_loop_wrap: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_get_interpolation_loop_wrap")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the track at `trackIdx` wraps the interpolation loop. New tracks wrap the interpolation loop by default.
    public final func trackGetInterpolationLoopWrap(trackIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_get_interpolation_loop_wrap, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_track_is_compressed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("track_is_compressed")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the track is compressed, `false` otherwise. See also ``compress(pageSize:fps:splitTolerance:)``.
    public final func trackIsCompressed(trackIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_track_is_compressed, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_value_track_set_update_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("value_track_set_update_mode")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2854058312)!
            }
            
        }
        
    }()
    
    /// Sets the update mode (see ``Animation/UpdateMode``) of a value track.
    public final func valueTrackSetUpdateMode(trackIdx: Int32, mode: Animation.UpdateMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: mode.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_value_track_set_update_mode, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_value_track_get_update_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("value_track_get_update_mode")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1440326473)!
            }
            
        }
        
    }()
    
    /// Returns the update mode of a value track.
    public final func valueTrackGetUpdateMode(trackIdx: Int32) -> Animation.UpdateMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_value_track_get_update_mode, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return Animation.UpdateMode (rawValue: _result)!
    }
    
    fileprivate static let method_value_track_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("value_track_interpolate")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 747269075)!
            }
            
        }
        
    }()
    
    /// Returns the interpolated value at the given time (in seconds). The `trackIdx` must be the index of a value track.
    /// 
    /// A `backward` mainly affects the direction of key retrieval of the track with ``UpdateMode/discrete`` converted by ``AnimationMixer/AnimationCallbackModeDiscrete/forceContinuous`` to match the result with ``trackFindKey(trackIdx:time:findMode:limit:backward:)``.
    /// 
    public final func valueTrackInterpolate(trackIdx: Int32, timeSec: Double, backward: Bool = false) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: timeSec) { pArg1 in
                withUnsafePointer(to: backward) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_value_track_interpolate, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_method_track_get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("method_track_get_name")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 351665558)!
            }
            
        }
        
    }()
    
    /// Returns the method name of a method track.
    public final func methodTrackGetName(trackIdx: Int32, keyIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_method_track_get_name, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_method_track_get_params: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("method_track_get_params")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2345056839)!
            }
            
        }
        
    }()
    
    /// Returns the arguments values to be called on a method track for a given key in a given track.
    public final func methodTrackGetParams(trackIdx: Int32, keyIdx: Int32) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_method_track_get_params, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_bezier_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3656773645)!
            }
            
        }
        
    }()
    
    /// Inserts a Bezier Track key at the given `time` in seconds. The `trackIdx` must be the index of a Bezier Track.
    /// 
    /// `inHandle` is the left-side weight of the added Bezier curve point, `outHandle` is the right-side one, while `value` is the actual value at this point.
    /// 
    public final func bezierTrackInsertKey(trackIdx: Int32, time: Double, value: Double, inHandle: Vector2 = Vector2 (x: 0, y: 0), outHandle: Vector2 = Vector2 (x: 0, y: 0)) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: inHandle) { pArg3 in
                        withUnsafePointer(to: outHandle) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Animation.method_bezier_track_insert_key, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_bezier_track_set_key_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_set_key_value")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the value of the key identified by `keyIdx` to the given value. The `trackIdx` must be the index of a Bezier Track.
    public final func bezierTrackSetKeyValue(trackIdx: Int32, keyIdx: Int32, value: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: value) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_bezier_track_set_key_value, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_bezier_track_set_key_in_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_set_key_in_handle")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1719223284)!
            }
            
        }
        
    }()
    
    /// Sets the in handle of the key identified by `keyIdx` to value `inHandle`. The `trackIdx` must be the index of a Bezier Track.
    public final func bezierTrackSetKeyInHandle(trackIdx: Int32, keyIdx: Int32, inHandle: Vector2, balancedValueTimeRatio: Double = 1.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: inHandle) { pArg2 in
                    withUnsafePointer(to: balancedValueTimeRatio) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Animation.method_bezier_track_set_key_in_handle, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_bezier_track_set_key_out_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_set_key_out_handle")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1719223284)!
            }
            
        }
        
    }()
    
    /// Sets the out handle of the key identified by `keyIdx` to value `outHandle`. The `trackIdx` must be the index of a Bezier Track.
    public final func bezierTrackSetKeyOutHandle(trackIdx: Int32, keyIdx: Int32, outHandle: Vector2, balancedValueTimeRatio: Double = 1.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: outHandle) { pArg2 in
                    withUnsafePointer(to: balancedValueTimeRatio) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Animation.method_bezier_track_set_key_out_handle, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_bezier_track_get_key_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_get_key_value")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the value of the key identified by `keyIdx`. The `trackIdx` must be the index of a Bezier Track.
    public final func bezierTrackGetKeyValue(trackIdx: Int32, keyIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_bezier_track_get_key_value, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_bezier_track_get_key_in_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_get_key_in_handle")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3016396712)!
            }
            
        }
        
    }()
    
    /// Returns the in handle of the key identified by `keyIdx`. The `trackIdx` must be the index of a Bezier Track.
    public final func bezierTrackGetKeyInHandle(trackIdx: Int32, keyIdx: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_bezier_track_get_key_in_handle, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_bezier_track_get_key_out_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_get_key_out_handle")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3016396712)!
            }
            
        }
        
    }()
    
    /// Returns the out handle of the key identified by `keyIdx`. The `trackIdx` must be the index of a Bezier Track.
    public final func bezierTrackGetKeyOutHandle(trackIdx: Int32, keyIdx: Int32) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_bezier_track_get_key_out_handle, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_bezier_track_interpolate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("bezier_track_interpolate")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1900462983)!
            }
            
        }
        
    }()
    
    /// Returns the interpolated value at the given `time` (in seconds). The `trackIdx` must be the index of a Bezier Track.
    public final func bezierTrackInterpolate(trackIdx: Int32, time: Double) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_bezier_track_interpolate, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_audio_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4021027286)!
            }
            
        }
        
    }()
    
    /// Inserts an Audio Track key at the given `time` in seconds. The `trackIdx` must be the index of an Audio Track.
    /// 
    /// `stream` is the ``AudioStream`` resource to play. `startOffset` is the number of seconds cut off at the beginning of the audio stream, while `endOffset` is at the ending.
    /// 
    public final func audioTrackInsertKey(trackIdx: Int32, time: Double, stream: Resource?, startOffset: Double = 0, endOffset: Double = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: stream?.handle) { pArg2 in
                    withUnsafePointer(to: startOffset) { pArg3 in
                        withUnsafePointer(to: endOffset) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(Animation.method_audio_track_insert_key, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_audio_track_set_key_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_set_key_stream")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3886397084)!
            }
            
        }
        
    }()
    
    /// Sets the stream of the key identified by `keyIdx` to value `stream`. The `trackIdx` must be the index of an Audio Track.
    public final func audioTrackSetKeyStream(trackIdx: Int32, keyIdx: Int32, stream: Resource?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: stream?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_audio_track_set_key_stream, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_audio_track_set_key_start_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_set_key_start_offset")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the start offset of the key identified by `keyIdx` to value `offset`. The `trackIdx` must be the index of an Audio Track.
    public final func audioTrackSetKeyStartOffset(trackIdx: Int32, keyIdx: Int32, offset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: offset) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_audio_track_set_key_start_offset, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_audio_track_set_key_end_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_set_key_end_offset")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3506521499)!
            }
            
        }
        
    }()
    
    /// Sets the end offset of the key identified by `keyIdx` to value `offset`. The `trackIdx` must be the index of an Audio Track.
    public final func audioTrackSetKeyEndOffset(trackIdx: Int32, keyIdx: Int32, offset: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: offset) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_audio_track_set_key_end_offset, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_audio_track_get_key_stream: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_get_key_stream")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 635277205)!
            }
            
        }
        
    }()
    
    /// Returns the audio stream of the key identified by `keyIdx`. The `trackIdx` must be the index of an Audio Track.
    public final func audioTrackGetKeyStream(trackIdx: Int32, keyIdx: Int32) -> Resource? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_audio_track_get_key_stream, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_audio_track_get_key_start_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_get_key_start_offset")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the start offset of the key identified by `keyIdx`. The `trackIdx` must be the index of an Audio Track.
    /// 
    /// Start offset is the number of seconds cut off at the beginning of the audio stream.
    /// 
    public final func audioTrackGetKeyStartOffset(trackIdx: Int32, keyIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_audio_track_get_key_start_offset, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_audio_track_get_key_end_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_get_key_end_offset")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3085491603)!
            }
            
        }
        
    }()
    
    /// Returns the end offset of the key identified by `keyIdx`. The `trackIdx` must be the index of an Audio Track.
    /// 
    /// End offset is the number of seconds cut off at the ending of the audio stream.
    /// 
    public final func audioTrackGetKeyEndOffset(trackIdx: Int32, keyIdx: Int32) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_audio_track_get_key_end_offset, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_audio_track_set_use_blend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_set_use_blend")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 300928843)!
            }
            
        }
        
    }()
    
    /// Sets whether the track will be blended with other animations. If `true`, the audio playback volume changes depending on the blend value.
    public final func audioTrackSetUseBlend(trackIdx: Int32, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_audio_track_set_use_blend, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_audio_track_is_use_blend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("audio_track_is_use_blend")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1116898809)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the track at `trackIdx` will be blended with other animations.
    public final func audioTrackIsUseBlend(trackIdx: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_audio_track_is_use_blend, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_animation_track_insert_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("animation_track_insert_key")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 158676774)!
            }
            
        }
        
    }()
    
    /// Inserts a key with value `animation` at the given `time` (in seconds). The `trackIdx` must be the index of an Animation Track.
    public final func animationTrackInsertKey(trackIdx: Int32, time: Double, animation: StringName) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: animation.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_animation_track_insert_key, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_animation_track_set_key_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("animation_track_set_key_animation")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 117615382)!
            }
            
        }
        
    }()
    
    /// Sets the key identified by `keyIdx` to value `animation`. The `trackIdx` must be the index of an Animation Track.
    public final func animationTrackSetKeyAnimation(trackIdx: Int32, keyIdx: Int32, animation: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: animation.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_animation_track_set_key_animation, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_animation_track_get_key_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("animation_track_get_key_animation")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 351665558)!
            }
            
        }
        
    }()
    
    /// Returns the animation name at the key identified by `keyIdx`. The `trackIdx` must be the index of an Animation Track.
    public final func animationTrackGetKeyAnimation(trackIdx: Int32, keyIdx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: keyIdx) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_animation_track_get_key_animation, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_marker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_marker")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4135858297)!
            }
            
        }
        
    }()
    
    /// Adds a marker to this Animation.
    public final func addMarker(name: StringName, time: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_add_marker, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_marker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_marker")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes the marker with the given name from this Animation.
    public final func removeMarker(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_remove_marker, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_marker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_marker")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this Animation contains a marker with the given name.
    public final func hasMarker(name: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_has_marker, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_marker_at_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_marker_at_time")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4079494655)!
            }
            
        }
        
    }()
    
    /// Returns the name of the marker located at the given time.
    public final func getMarkerAtTime(_ time: Double) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_get_marker_at_time, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_next_marker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next_marker")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4079494655)!
            }
            
        }
        
    }()
    
    /// Returns the closest marker that comes after the given time. If no such marker exists, an empty string is returned.
    public final func getNextMarker(time: Double) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_get_next_marker, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_prev_marker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_prev_marker")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4079494655)!
            }
            
        }
        
    }()
    
    /// Returns the closest marker that comes before the given time. If no such marker exists, an empty string is returned.
    public final func getPrevMarker(time: Double) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_get_prev_marker, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_marker_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_marker_time")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2349060816)!
            }
            
        }
        
    }()
    
    /// Returns the given marker's time.
    public final func getMarkerTime(name: StringName) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_get_marker_time, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_marker_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_marker_names")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// Returns every marker in this Animation, sorted ascending by time.
    public final func getMarkerNames() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(Animation.method_get_marker_names, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_marker_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_marker_color")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3742943038)!
            }
            
        }
        
    }()
    
    /// Returns the given marker's color.
    public final func getMarkerColor(name: StringName) -> Color {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Color = Color ()
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_get_marker_color, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_marker_color: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_marker_color")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4260178595)!
            }
            
        }
        
    }()
    
    /// Sets the given marker's color.
    public final func setMarkerColor(name: StringName, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_set_marker_color, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_length")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_length(_ timeSec: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: timeSec) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_set_length, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_length: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_length")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_length() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Animation.method_get_length, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_loop_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_loop_mode")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3155355575)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_loop_mode(_ loopMode: Animation.LoopMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loopMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_set_loop_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_loop_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_loop_mode")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1988889481)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_loop_mode() -> Animation.LoopMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Animation.method_get_loop_mode, handle, nil, &_result)
        return Animation.LoopMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_step")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_step(_ sizeSec: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sizeSec) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Animation.method_set_step, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_step: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_step")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_step() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Animation.method_get_step, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear the animation (clear all tracks and reset all).
    public final func clear() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Animation.method_clear, handle, nil, nil)
        
    }
    
    fileprivate static let method_copy_track: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("copy_track")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 148001024)!
            }
            
        }
        
    }()
    
    /// Adds a new track to `toAnimation` that is a copy of the given track from this animation.
    public final func copyTrack(trackIdx: Int32, toAnimation: Animation?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: trackIdx) { pArg0 in
            withUnsafePointer(to: toAnimation?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Animation.method_copy_track, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_optimize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("optimize")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3303583852)!
            }
            
        }
        
    }()
    
    /// Optimize the animation and all its tracks in-place. This will preserve only as many keys as are necessary to keep the animation within the specified bounds.
    public final func optimize(allowedVelocityErr: Double = 0.01, allowedAngularErr: Double = 0.01, precision: Int32 = 3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: allowedVelocityErr) { pArg0 in
            withUnsafePointer(to: allowedAngularErr) { pArg1 in
                withUnsafePointer(to: precision) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_optimize, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compress: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compress")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3608408117)!
            }
            
        }
        
    }()
    
    /// Compress the animation and all its tracks in-place. This will make ``trackIsCompressed(trackIdx:)`` return `true` once called on this ``Animation``. Compressed tracks require less memory to be played, and are designed to be used for complex 3D animations (such as cutscenes) imported from external 3D software. Compression is lossy, but the difference is usually not noticeable in real world conditions.
    /// 
    /// > Note: Compressed tracks have various limitations (such as not being editable from the editor), so only use compressed animations if you actually need them.
    /// 
    public final func compress(pageSize: UInt32 = 8192, fps: UInt32 = 120, splitTolerance: Double = 4.0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pageSize) { pArg0 in
            withUnsafePointer(to: fps) { pArg1 in
                withUnsafePointer(to: splitTolerance) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Animation.method_compress, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_capture_included: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_capture_included")
        return withUnsafePointer(to: &Animation.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_capture_included() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Animation.method_is_capture_included, handle, nil, &_result)
        return _result
    }
    
}

