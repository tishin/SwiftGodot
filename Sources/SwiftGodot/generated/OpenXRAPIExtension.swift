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


/// Makes the OpenXR API available for GDExtension.
/// 
/// ``OpenXRAPIExtension`` makes OpenXR available for GDExtension. It provides the OpenXR API to GDExtension through the ``getInstanceProcAddr(name:)`` method, and the OpenXR instance through ``getInstance()``.
/// 
/// It also provides methods for querying the status of OpenXR initialization, and helper methods for ease of use of the API with GDExtension.
/// 
open class OpenXRAPIExtension: RefCounted {
    private static var className = StringName("OpenXRAPIExtension")
    override open class var godotClassName: StringName { className }
    public enum OpenXRAlphaBlendModeSupport: Int64, CaseIterable {
        /// Means that ``XRInterface/EnvironmentBlendMode/alphaBlend`` isn't supported at all.
        case none = 0 // OPENXR_ALPHA_BLEND_MODE_SUPPORT_NONE
        /// Means that ``XRInterface/EnvironmentBlendMode/alphaBlend`` is really supported.
        case real = 1 // OPENXR_ALPHA_BLEND_MODE_SUPPORT_REAL
        /// Means that ``XRInterface/EnvironmentBlendMode/alphaBlend`` is emulated.
        case emulating = 2 // OPENXR_ALPHA_BLEND_MODE_SUPPORT_EMULATING
    }
    
    /* Methods */
    fileprivate static let method_get_instance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_instance")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrInstance.html">XrInstance</a> created during the initialization of the OpenXR API.
    public final func getInstance() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_instance, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_system_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_system_id")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the id of the system, which is a <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSystemId.html">XrSystemId</a> cast to an integer.
    public final func getSystemId() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_system_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_session: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_session")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the OpenXR session, which is an <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSession.html">XrSession</a> cast to an integer.
    public final func getSession() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_session, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_transform_from_pose: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("transform_from_pose")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2963875352)!
            }
            
        }
        
    }()
    
    /// Creates a ``Transform3D`` from an <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrPosef.html">XrPosef</a>.
    public final func transformFromPose(_ pose: OpaquePointer?) -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        withUnsafePointer(to: pose) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_transform_from_pose, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_xr_result: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("xr_result")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3886436197)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the provided <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html">XrResult</a> (cast to an integer) is successful. Otherwise returns `false` and prints the <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html">XrResult</a> converted to a string, with the specified additional information.
    public final func xrResult(_ result: UInt, format: String, args: VariantArray) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: result) { pArg0 in
            let format = GString(format)
            withUnsafePointer(to: format.content) { pArg1 in
                withUnsafePointer(to: args.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_xr_result, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_openxr_is_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("openxr_is_enabled")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2703660260)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is enabled.
    public static func openxrIsEnabled(checkRunInEditor: Bool) -> Bool {
        var _result: Bool = false
        withUnsafePointer(to: checkRunInEditor) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_openxr_is_enabled, nil, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_instance_proc_addr: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_instance_proc_addr")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1597066294)!
            }
            
        }
        
    }()
    
    /// Returns the function pointer of the OpenXR function with the specified name, cast to an integer. If the function with the given name does not exist, the method returns `0`.
    /// 
    /// > Note: `openxr/util.h` contains utility macros for acquiring OpenXR functions, e.g. `GDEXTENSION_INIT_XR_FUNC_V(xrCreateAction)`.
    /// 
    public final func getInstanceProcAddr(name: String) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_instance_proc_addr, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_error_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_error_string")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 990163283)!
            }
            
        }
        
    }()
    
    /// Returns an error string for the given <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html">XrResult</a>.
    public final func getErrorString(result: UInt) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: result) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_error_string, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_swapchain_format_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_swapchain_format_name")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 990163283)!
            }
            
        }
        
    }()
    
    /// Returns the name of the specified swapchain format.
    public final func getSwapchainFormatName(swapchainFormat: Int) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: swapchainFormat) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_swapchain_format_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_set_object_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_object_name")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2285447957)!
            }
            
        }
        
    }()
    
    /// Set the object name of an OpenXR object, used for debug output. `objectType` must be a valid OpenXR `XrObjectType` enum and `objectHandle` must be a valid OpenXR object handle.
    public final func setObjectName(objectType: Int, objectHandle: UInt, objectName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: objectType) { pArg0 in
            withUnsafePointer(to: objectHandle) { pArg1 in
                let objectName = GString(objectName)
                withUnsafePointer(to: objectName.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_set_object_name, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_begin_debug_label_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("begin_debug_label_region")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Begins a new debug label region, this label will be reported in debug messages for any calls following this until ``endDebugLabelRegion()`` is called. Debug labels can be stacked.
    public final func beginDebugLabelRegion(labelName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let labelName = GString(labelName)
        withUnsafePointer(to: labelName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_begin_debug_label_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_end_debug_label_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("end_debug_label_region")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Marks the end of a debug label region. Removes the latest debug label region added by calling ``beginDebugLabelRegion(labelName:)``.
    public final func endDebugLabelRegion() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_end_debug_label_region, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method_insert_debug_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("insert_debug_label")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Inserts a debug label, this label is reported in any debug message resulting from the OpenXR calls that follows, until any of ``beginDebugLabelRegion(labelName:)``, ``endDebugLabelRegion()``, or ``insertDebugLabel(labelName:)`` is called.
    public final func insertDebugLabel(labelName: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let labelName = GString(labelName)
        withUnsafePointer(to: labelName.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_insert_debug_label, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_initialized: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_initialized")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is initialized.
    public final func isInitialized() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_is_initialized, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_running: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_running")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is running (<a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/xrBeginSession.html">xrBeginSession</a> was successfully called and the swapchains were created).
    public final func isRunning() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_is_running, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_play_space: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_play_space")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the play space, which is an <a href="https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSpace.html">XrSpace</a> cast to an integer.
    public final func getPlaySpace() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_play_space, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_predicted_display_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_predicted_display_time")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the predicted display timing for the current frame.
    public final func getPredictedDisplayTime() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_predicted_display_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_next_frame_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_next_frame_time")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the predicted display timing for the next frame.
    public final func getNextFrameTime() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_next_frame_time, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_can_render: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_render")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is initialized for rendering with an XR viewport.
    public final func canRender() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_can_render, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_find_action: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_action")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4106179378)!
            }
            
        }
        
    }()
    
    /// Returns the ``RID`` corresponding to an `Action` of a matching name, optionally limited to a specified action set.
    public final func findAction(name: String, actionSet: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: actionSet.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_find_action, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_action_get_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("action_get_handle")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3917799429)!
            }
            
        }
        
    }()
    
    /// Returns the corresponding `XrAction` OpenXR handle for the given action RID.
    public final func actionGetHandle(action: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: action.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_action_get_handle, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_hand_tracker: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_hand_tracker")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3744713108)!
            }
            
        }
        
    }()
    
    /// Returns the corresponding `XRHandTrackerEXT` handle for the given hand index value.
    public final func getHandTracker(handIndex: Int32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: handIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_hand_tracker, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_register_composition_layer_provider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("register_composition_layer_provider")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1997997368)!
            }
            
        }
        
    }()
    
    /// Registers the given extension as a composition layer provider.
    public final func registerCompositionLayerProvider(`extension`: OpenXRExtensionWrapperExtension?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `extension`?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_register_composition_layer_provider, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_unregister_composition_layer_provider: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unregister_composition_layer_provider")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1997997368)!
            }
            
        }
        
    }()
    
    /// Unregisters the given extension as a composition layer provider.
    public final func unregisterCompositionLayerProvider(`extension`: OpenXRExtensionWrapperExtension?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `extension`?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_unregister_composition_layer_provider, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_register_projection_views_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("register_projection_views_extension")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1997997368)!
            }
            
        }
        
    }()
    
    /// Registers the given extension as a provider of additional data structures to projections views.
    public final func registerProjectionViewsExtension(_ `extension`: OpenXRExtensionWrapperExtension?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `extension`?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_register_projection_views_extension, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_unregister_projection_views_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("unregister_projection_views_extension")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1997997368)!
            }
            
        }
        
    }()
    
    /// Unregisters the given extension as a provider of additional data structures to projections views.
    public final func unregisterProjectionViewsExtension(_ `extension`: OpenXRExtensionWrapperExtension?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: `extension`?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_unregister_projection_views_extension, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_render_state_z_near: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_render_state_z_near")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Returns the near boundary value of the camera frustum.
    /// 
    /// > Note: This is only accessible in the render thread.
    /// 
    public final func getRenderStateZNear() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_render_state_z_near, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_render_state_z_far: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_render_state_z_far")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 191475506)!
            }
            
        }
        
    }()
    
    /// Returns the far boundary value of the camera frustum.
    /// 
    /// > Note: This is only accessible in the render thread.
    /// 
    public final func getRenderStateZFar() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_render_state_z_far, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_velocity_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_velocity_texture")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Sets the render target of the velocity texture.
    public final func setVelocityTexture(renderTarget: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: renderTarget.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_set_velocity_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_velocity_depth_texture: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_velocity_depth_texture")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Sets the render target of the velocity depth texture.
    public final func setVelocityDepthTexture(renderTarget: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: renderTarget.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_set_velocity_depth_texture, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_velocity_target_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_velocity_target_size")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    /// Sets the target size of the velocity and velocity depth textures.
    public final func setVelocityTargetSize(_ targetSize: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: targetSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_set_velocity_target_size, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_supported_swapchain_formats: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_supported_swapchain_formats")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3851388692)!
            }
            
        }
        
    }()
    
    /// Returns an array of supported swapchain formats.
    public final func getSupportedSwapchainFormats() -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_supported_swapchain_formats, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_openxr_swapchain_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("openxr_swapchain_create")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2162228999)!
            }
            
        }
        
    }()
    
    /// Returns a pointer to a new swapchain created using the provided parameters.
    public final func openxrSwapchainCreate(createFlags: UInt, usageFlags: UInt, swapchainFormat: Int, width: UInt32, height: UInt32, sampleCount: UInt32, arraySize: UInt32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: createFlags) { pArg0 in
            withUnsafePointer(to: usageFlags) { pArg1 in
                withUnsafePointer(to: swapchainFormat) { pArg2 in
                    withUnsafePointer(to: width) { pArg3 in
                        withUnsafePointer(to: height) { pArg4 in
                            withUnsafePointer(to: sampleCount) { pArg5 in
                                withUnsafePointer(to: arraySize) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_openxr_swapchain_create, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_openxr_swapchain_free: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("openxr_swapchain_free")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Destroys the provided swapchain and frees it from memory.
    public final func openxrSwapchainFree(swapchain: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: swapchain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_openxr_swapchain_free, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_openxr_swapchain_get_swapchain: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("openxr_swapchain_get_swapchain")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3744713108)!
            }
            
        }
        
    }()
    
    /// Returns the `XrSwapchain` handle of the provided swapchain.
    public final func openxrSwapchainGetSwapchain(_ swapchain: UInt) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: swapchain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_openxr_swapchain_get_swapchain, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_openxr_swapchain_acquire: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("openxr_swapchain_acquire")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Acquires the image of the provided swapchain.
    public final func openxrSwapchainAcquire(swapchain: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: swapchain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_openxr_swapchain_acquire, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_openxr_swapchain_get_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("openxr_swapchain_get_image")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 937000113)!
            }
            
        }
        
    }()
    
    /// Returns the RID of the provided swapchain's image.
    public final func openxrSwapchainGetImage(swapchain: UInt) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: swapchain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_openxr_swapchain_get_image, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_openxr_swapchain_release: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("openxr_swapchain_release")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Releases the image of the provided swapchain.
    public final func openxrSwapchainRelease(swapchain: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: swapchain) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_openxr_swapchain_release, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_projection_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_projection_layer")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns a pointer to the render state's `XrCompositionLayerProjection` struct.
    /// 
    /// > Note: This method should only be called from the rendering thread.
    /// 
    public final func getProjectionLayer() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_get_projection_layer, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_render_region: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_render_region")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1763793166)!
            }
            
        }
        
    }()
    
    /// Sets the render region to `renderRegion`, overriding the normal render target's rect.
    public final func setRenderRegion(_ renderRegion: Rect2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: renderRegion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_set_render_region, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_emulate_environment_blend_mode_alpha_blend: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_emulate_environment_blend_mode_alpha_blend")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, an OpenXR extension is loaded which is capable of emulating the ``XRInterface/EnvironmentBlendMode/alphaBlend`` blend mode.
    public final func setEmulateEnvironmentBlendModeAlphaBlend(enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_set_emulate_environment_blend_mode_alpha_blend, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_environment_blend_mode_alpha_supported: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_environment_blend_mode_alpha_supported")
        return withUnsafePointer(to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1579290861)!
            }
            
        }
        
    }()
    
    /// Returns ``OpenXRAPIExtension.OpenXRAlphaBlendModeSupport`` denoting if ``XRInterface/EnvironmentBlendMode/alphaBlend`` is really supported, emulated or not supported at all.
    public final func isEnvironmentBlendModeAlphaSupported() -> OpenXRAPIExtension.OpenXRAlphaBlendModeSupport {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(OpenXRAPIExtension.method_is_environment_blend_mode_alpha_supported, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return OpenXRAPIExtension.OpenXRAlphaBlendModeSupport (rawValue: _result)!
    }
    
}

