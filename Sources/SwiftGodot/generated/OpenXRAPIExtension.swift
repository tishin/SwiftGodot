// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

// Generated by Swift code generator - do not edit
@_implementationOnly import GDExtension

/// Makes the OpenXR API available for GDExtension.
/// 
/// ``OpenXRAPIExtension`` makes OpenXR available for GDExtension. It provides the OpenXR API to GDExtension through the ``getInstanceProcAddr(name:)`` method, and the OpenXR instance through ``getInstance()``.
/// 
/// It also provides methods for querying the status of OpenXR initialization, and helper methods for ease of use of the API with GDExtension.
/// 
open class OpenXRAPIExtension: RefCounted {
    override open class var godotClassName: StringName { "OpenXRAPIExtension" }
    /* Methods */
    fileprivate static var method_get_instance: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the [url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrInstance.html]XrInstance[/url] created during the initialization of the OpenXR API.
    public final func getInstance ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_instance, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_system_id: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_system_id")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the id of the system, which is a [url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSystemId.html]XrSystemId[/url] cast to an integer.
    public final func getSystemId ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_system_id, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_session: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_session")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the OpenXR session, which is an [url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSession.html]XrSession[/url] cast to an integer.
    public final func getSession ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_session, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_xr_result: GDExtensionMethodBindPtr = {
        let methodName = StringName ("xr_result")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 3886436197)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the provided [url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html]XrResult[/url] (cast to an integer) is successful. Otherwise returns `false` and prints the [url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html]XrResult[/url] converted to a string, with the specified additional information.
    public final func xrResult (_ result: UInt, format: String, args: GArray)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_result = result
        let gstr_format = GString (format)
        
        gi.object_method_bind_ptrcall_v (OpenXRAPIExtension.method_xr_result, UnsafeMutableRawPointer (mutating: handle), &_result, &copy_result, &gstr_format.content, &args.content)
        return _result
        #else
        
        var copy_result = result
        let gstr_format = GString (format)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_result) { p0 in
            _args.append (p0)
            return withUnsafePointer (to: &gstr_format.content) { p1 in
                _args.append (p1)
                return withUnsafePointer (to: &args.content) { p2 in
                    _args.append (p2)
        
                    gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_xr_result, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
                    return _result
                }
            }
        }
        
        #endif
    }
    
    fileprivate static var method_openxr_is_enabled: GDExtensionMethodBindPtr = {
        let methodName = StringName ("openxr_is_enabled")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2703660260)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is enabled.
    public static func openxrIsEnabled (checkRunInEditor: Bool)-> Bool {
        var _result: Bool = false
        #if true
        
        var copy_check_run_in_editor = checkRunInEditor
        
        gi.object_method_bind_ptrcall_v (OpenXRAPIExtension.method_openxr_is_enabled, nil, &_result, &copy_check_run_in_editor)
        return _result
        #else
        
        var copy_check_run_in_editor = checkRunInEditor
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_check_run_in_editor) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_openxr_is_enabled, nil, &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_instance_proc_addr: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_instance_proc_addr")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 1597066294)!
            }
            
        }
        
    }()
    
    /// Returns the function pointer of the OpenXR function with the specified name, cast to an integer. If the function with the given name does not exist, the method returns `0`.
    /// 
    /// > Note: `openxr/util.h` contains utility macros for acquiring OpenXR functions, e.g. `GDEXTENSION_INIT_XR_FUNC_V(xrCreateAction)`.
    /// 
    public final func getInstanceProcAddr (name: String)-> UInt {
        var _result: UInt = 0
        #if true
        
        let gstr_name = GString (name)
        
        gi.object_method_bind_ptrcall_v (OpenXRAPIExtension.method_get_instance_proc_addr, UnsafeMutableRawPointer (mutating: handle), &_result, &gstr_name.content)
        return _result
        #else
        
        let gstr_name = GString (name)
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &gstr_name.content) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_instance_proc_addr, UnsafeMutableRawPointer (mutating: handle), &_args, &_result)
            return _result
        }
        
        #endif
    }
    
    fileprivate static var method_get_error_string: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_error_string")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 990163283)!
            }
            
        }
        
    }()
    
    /// Returns an error string for the given [url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrResult.html]XrResult[/url].
    public final func getErrorString (result: UInt)-> String {
        let _result = GString ()
        #if true
        
        var copy_result = result
        
        gi.object_method_bind_ptrcall_v (OpenXRAPIExtension.method_get_error_string, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_result)
        return _result.description
        #else
        
        var copy_result = result
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_result) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_error_string, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_get_swapchain_format_name: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_swapchain_format_name")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 990163283)!
            }
            
        }
        
    }()
    
    /// Returns the name of the specified swapchain format.
    public final func getSwapchainFormatName (swapchainFormat: Int)-> String {
        let _result = GString ()
        #if true
        
        var copy_swapchain_format = swapchainFormat
        
        gi.object_method_bind_ptrcall_v (OpenXRAPIExtension.method_get_swapchain_format_name, UnsafeMutableRawPointer (mutating: handle), &_result.content, &copy_swapchain_format)
        return _result.description
        #else
        
        var copy_swapchain_format = swapchainFormat
        var _args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_swapchain_format) { p0 in
            _args.append (p0)
        
            gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_swapchain_format_name, UnsafeMutableRawPointer (mutating: handle), &_args, &_result.content)
            return _result.description
        }
        
        #endif
    }
    
    fileprivate static var method_is_initialized: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_initialized")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is initialized.
    public final func isInitialized ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_is_initialized, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_is_running: GDExtensionMethodBindPtr = {
        let methodName = StringName ("is_running")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is running ([url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/xrBeginSession.html]xrBeginSession[/url] was successfully called and the swapchains were created).
    public final func isRunning ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_is_running, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_play_space: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_play_space")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the play space, which is an [url=https://registry.khronos.org/OpenXR/specs/1.0/man/html/XrSpace.html]XrSpace[/url] cast to an integer.
    public final func getPlaySpace ()-> UInt {
        var _result: UInt = 0
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_play_space, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_get_next_frame_time: GDExtensionMethodBindPtr = {
        let methodName = StringName ("get_next_frame_time")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the timing for the next frame.
    public final func getNextFrameTime ()-> Int {
        var _result: Int = 0
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_get_next_frame_time, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static var method_can_render: GDExtensionMethodBindPtr = {
        let methodName = StringName ("can_render")
        return withUnsafePointer (to: &OpenXRAPIExtension.godotClassName.content) { classPtr in
            withUnsafePointer (to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind (classPtr, mnamePtr, 2240911060)!
            }
            
        }
        
    }()
    
    /// Returns `true` if OpenXR is initialized for rendering with an XR viewport.
    public final func canRender ()-> Bool {
        var _result: Bool = false
        gi.object_method_bind_ptrcall (OpenXRAPIExtension.method_can_render, UnsafeMutableRawPointer (mutating: handle), nil, &_result)
        return _result
    }
    
}

