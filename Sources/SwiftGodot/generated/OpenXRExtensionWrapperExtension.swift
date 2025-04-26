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


/// Allows clients to implement OpenXR extensions with GDExtension.
/// 
/// ``OpenXRExtensionWrapperExtension`` allows clients to implement OpenXR extensions with GDExtension. The extension should be registered with ``registerExtensionWrapper()``.
open class OpenXRExtensionWrapperExtension: Object {
    private static var className = StringName("OpenXRExtensionWrapperExtension")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method__get_requested_extensions: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_requested_extensions")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    /// Returns a ``VariantDictionary`` of OpenXR extensions related to this extension. The ``VariantDictionary`` should contain the name of the extension, mapped to a `bool *` cast to an integer:
    /// 
    /// - If the `bool *` is a `nullptr` this extension is mandatory.
    /// 
    /// - If the `bool *` points to a boolean, the boolean will be updated to `true` if the extension is enabled.
    /// 
    @_documentation(visibility: public)
    open func _getRequestedExtensions() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__get_requested_extensions, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_composition_layer_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_composition_layer_count")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Returns the number of composition layers this extension wrapper provides via ``_getCompositionLayer(index:)``.
    /// 
    /// This will only be called if the extension previously registered itself with ``OpenXRAPIExtension/registerCompositionLayerProvider(`extension`:)``.
    /// 
    @_documentation(visibility: public)
    open func _getCompositionLayerCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__get_composition_layer_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method__get_composition_layer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_composition_layer")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3744713108)!
            }
            
        }
        
    }()
    
    /// Returns a pointer to an `XrCompositionLayerBaseHeader` struct to provide the given composition layer.
    /// 
    /// This will only be called if the extension previously registered itself with ``OpenXRAPIExtension/registerCompositionLayerProvider(`extension`:)``.
    /// 
    @_documentation(visibility: public)
    open func _getCompositionLayer(index: Int32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__get_composition_layer, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_composition_layer_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_composition_layer_order")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3744713108)!
            }
            
        }
        
    }()
    
    /// Returns an integer that will be used to sort the given composition layer provided via ``_getCompositionLayer(index:)``. Lower numbers will move the layer to the front of the list, and higher numbers to the end. The default projection layer has an order of `0`, so layers provided by this method should probably be above or below (but not exactly) `0`.
    /// 
    /// This will only be called if the extension previously registered itself with ``OpenXRAPIExtension/registerCompositionLayerProvider(`extension`:)``.
    /// 
    @_documentation(visibility: public)
    open func _getCompositionLayerOrder(index: Int32) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__get_composition_layer_order, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_suggested_tracker_names: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_suggested_tracker_names")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2981934095)!
            }
            
        }
        
    }()
    
    /// Returns a ``PackedStringArray`` of positional tracker names that are used within the extension wrapper.
    @_documentation(visibility: public)
    open func _getSuggestedTrackerNames() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__get_suggested_tracker_names, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__on_register_metadata: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_register_metadata")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Allows extensions to register additional controller metadata. This function is called even when the OpenXR API is not constructed as the metadata needs to be available to the editor.
    /// 
    /// Extensions should also provide metadata regardless of whether they are supported on the host system. The controller data is used to setup action maps for users who may have access to the relevant hardware.
    /// 
    @_documentation(visibility: public)
    open func _onRegisterMetadata() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_register_metadata, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_before_instance_created: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_before_instance_created")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called before the OpenXR instance is created.
    @_documentation(visibility: public)
    open func _onBeforeInstanceCreated() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_before_instance_created, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_instance_created: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_instance_created")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Called right after the OpenXR instance is created.
    @_documentation(visibility: public)
    open func _onInstanceCreated(instance: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: instance) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_instance_created, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__on_instance_destroyed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_instance_destroyed")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called right before the OpenXR instance is destroyed.
    @_documentation(visibility: public)
    open func _onInstanceDestroyed() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_instance_destroyed, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_session_created: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_session_created")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Called right after the OpenXR session is created.
    @_documentation(visibility: public)
    open func _onSessionCreated(session: UInt) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: session) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_session_created, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__on_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_process")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called as part of the OpenXR process handling. This happens right before general and physics processing steps of the main loop. During this step controller data is queried and made available to game logic.
    @_documentation(visibility: public)
    open func _onProcess() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_process, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_pre_render: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_pre_render")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called right before the XR viewports begin their rendering step.
    @_documentation(visibility: public)
    open func _onPreRender() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_pre_render, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_main_swapchains_created: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_main_swapchains_created")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called right after the main swapchains are (re)created.
    @_documentation(visibility: public)
    open func _onMainSwapchainsCreated() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_main_swapchains_created, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_pre_draw_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_pre_draw_viewport")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Called right before the given viewport is rendered.
    @_documentation(visibility: public)
    open func _onPreDrawViewport(_ viewport: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewport.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_pre_draw_viewport, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__on_post_draw_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_post_draw_viewport")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Called right after the given viewport is rendered.
    /// 
    /// > Note: The draw commands might only be queued at this point, not executed.
    /// 
    @_documentation(visibility: public)
    open func _onPostDrawViewport(_ viewport: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: viewport.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_post_draw_viewport, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__on_session_destroyed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_session_destroyed")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called right before the OpenXR session is destroyed.
    @_documentation(visibility: public)
    open func _onSessionDestroyed() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_session_destroyed, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_idle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_idle")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to idle.
    @_documentation(visibility: public)
    open func _onStateIdle() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_idle, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_ready: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_ready")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to ready. This means OpenXR is ready to set up the session.
    @_documentation(visibility: public)
    open func _onStateReady() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_ready, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_synchronized: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_synchronized")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to synchronized. OpenXR also returns to this state when the application loses focus.
    @_documentation(visibility: public)
    open func _onStateSynchronized() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_synchronized, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_visible")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to visible. This means OpenXR is now ready to receive frames.
    @_documentation(visibility: public)
    open func _onStateVisible() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_visible, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_focused: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_focused")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to focused. This state is the active state when the game runs.
    @_documentation(visibility: public)
    open func _onStateFocused() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_focused, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_stopping: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_stopping")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to stopping.
    @_documentation(visibility: public)
    open func _onStateStopping() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_stopping, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_loss_pending: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_loss_pending")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to loss pending.
    @_documentation(visibility: public)
    open func _onStateLossPending() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_loss_pending, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_state_exiting: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_state_exiting")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the OpenXR session state is changed to exiting.
    @_documentation(visibility: public)
    open func _onStateExiting() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_state_exiting, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    fileprivate static let method__on_event_polled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_event_polled")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3067735520)!
            }
            
        }
        
    }()
    
    /// Called when there is an OpenXR event to process. When implementing, return `true` if the event was handled, return `false` otherwise.
    @_documentation(visibility: public)
    open func _onEventPolled(event: OpaquePointer?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: event) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_event_polled, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_viewport_composition_layer_extension_properties: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_viewport_composition_layer_extension_properties")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2915620761)!
            }
            
        }
        
    }()
    
    /// Gets an array of ``VariantDictionary``s that represent properties, just like ``Object/_getPropertyList()``, that will be added to ``OpenXRCompositionLayer`` nodes.
    @_documentation(visibility: public)
    open func _getViewportCompositionLayerExtensionProperties() -> TypedArray<VariantDictionary> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__get_viewport_composition_layer_extension_properties, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return TypedArray<VariantDictionary>(takingOver: _result)
    }
    
    fileprivate static let method__get_viewport_composition_layer_extension_property_defaults: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_viewport_composition_layer_extension_property_defaults")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2382534195)!
            }
            
        }
        
    }()
    
    /// Gets a ``VariantDictionary`` containing the default values for the properties returned by ``_getViewportCompositionLayerExtensionProperties()``.
    @_documentation(visibility: public)
    open func _getViewportCompositionLayerExtensionPropertyDefaults() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__get_viewport_composition_layer_extension_property_defaults, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__on_viewport_composition_layer_destroyed: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_on_viewport_composition_layer_destroyed")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Called when a composition layer created via ``OpenXRCompositionLayer`` is destroyed.
    /// 
    /// `layer` is a pointer to an `XrCompositionLayerBaseHeader` struct.
    /// 
    @_documentation(visibility: public)
    open func _onViewportCompositionLayerDestroyed(layer: OpaquePointer?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: layer) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method__on_viewport_composition_layer_destroyed, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_openxr_api: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_openxr_api")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1637791613)!
            }
            
        }
        
    }()
    
    /// Returns the created ``OpenXRAPIExtension``, which can be used to access the OpenXR API.
    public final func getOpenxrApi() -> OpenXRAPIExtension? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method_get_openxr_api, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_register_extension_wrapper: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("register_extension_wrapper")
        return withUnsafePointer(to: &OpenXRExtensionWrapperExtension.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Registers the extension. This should happen at core module initialization level.
    public final func registerExtensionWrapper() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(OpenXRExtensionWrapperExtension.method_register_extension_wrapper, UnsafeMutableRawPointer(mutating: handle), nil, nil)
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_composition_layer":
                return _OpenXRExtensionWrapperExtension_proxy_get_composition_layer
            case "_get_composition_layer_count":
                return _OpenXRExtensionWrapperExtension_proxy_get_composition_layer_count
            case "_get_composition_layer_order":
                return _OpenXRExtensionWrapperExtension_proxy_get_composition_layer_order
            case "_get_requested_extensions":
                return _OpenXRExtensionWrapperExtension_proxy_get_requested_extensions
            case "_get_suggested_tracker_names":
                return _OpenXRExtensionWrapperExtension_proxy_get_suggested_tracker_names
            case "_get_viewport_composition_layer_extension_properties":
                return _OpenXRExtensionWrapperExtension_proxy_get_viewport_composition_layer_extension_properties
            case "_get_viewport_composition_layer_extension_property_defaults":
                return _OpenXRExtensionWrapperExtension_proxy_get_viewport_composition_layer_extension_property_defaults
            case "_on_before_instance_created":
                return _OpenXRExtensionWrapperExtension_proxy_on_before_instance_created
            case "_on_event_polled":
                return _OpenXRExtensionWrapperExtension_proxy_on_event_polled
            case "_on_instance_created":
                return _OpenXRExtensionWrapperExtension_proxy_on_instance_created
            case "_on_instance_destroyed":
                return _OpenXRExtensionWrapperExtension_proxy_on_instance_destroyed
            case "_on_main_swapchains_created":
                return _OpenXRExtensionWrapperExtension_proxy_on_main_swapchains_created
            case "_on_post_draw_viewport":
                return _OpenXRExtensionWrapperExtension_proxy_on_post_draw_viewport
            case "_on_pre_draw_viewport":
                return _OpenXRExtensionWrapperExtension_proxy_on_pre_draw_viewport
            case "_on_pre_render":
                return _OpenXRExtensionWrapperExtension_proxy_on_pre_render
            case "_on_process":
                return _OpenXRExtensionWrapperExtension_proxy_on_process
            case "_on_register_metadata":
                return _OpenXRExtensionWrapperExtension_proxy_on_register_metadata
            case "_on_session_created":
                return _OpenXRExtensionWrapperExtension_proxy_on_session_created
            case "_on_session_destroyed":
                return _OpenXRExtensionWrapperExtension_proxy_on_session_destroyed
            case "_on_state_exiting":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_exiting
            case "_on_state_focused":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_focused
            case "_on_state_idle":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_idle
            case "_on_state_loss_pending":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_loss_pending
            case "_on_state_ready":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_ready
            case "_on_state_stopping":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_stopping
            case "_on_state_synchronized":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_synchronized
            case "_on_state_visible":
                return _OpenXRExtensionWrapperExtension_proxy_on_state_visible
            case "_on_viewport_composition_layer_destroyed":
                return _OpenXRExtensionWrapperExtension_proxy_on_viewport_composition_layer_destroyed
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
}

// Support methods for proxies
func _OpenXRExtensionWrapperExtension_proxy_get_composition_layer (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._getCompositionLayer (index: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: UInt.self)
}

func _OpenXRExtensionWrapperExtension_proxy_get_composition_layer_count (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._getCompositionLayerCount ()
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _OpenXRExtensionWrapperExtension_proxy_get_composition_layer_order (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._getCompositionLayerOrder (index: args [0]!.assumingMemoryBound (to: Int32.self).pointee)
    retPtr!.storeBytes (of: ret, as: Int32.self)
}

func _OpenXRExtensionWrapperExtension_proxy_get_requested_extensions (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._getRequestedExtensions ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _OpenXRExtensionWrapperExtension_proxy_get_suggested_tracker_names (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._getSuggestedTrackerNames ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _OpenXRExtensionWrapperExtension_proxy_get_viewport_composition_layer_extension_properties (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._getViewportCompositionLayerExtensionProperties ()
    retPtr!.storeBytes (of: ret.array.content, as: type (of: ret.array.content)) // typedarray::Dictionary
}

func _OpenXRExtensionWrapperExtension_proxy_get_viewport_composition_layer_extension_property_defaults (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._getViewportCompositionLayerExtensionPropertyDefaults ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _OpenXRExtensionWrapperExtension_proxy_on_before_instance_created (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onBeforeInstanceCreated ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_event_polled (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    let ret = swiftObject._onEventPolled (event: args [0]!.assumingMemoryBound (to: OpaquePointer?.self).pointee)
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _OpenXRExtensionWrapperExtension_proxy_on_instance_created (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onInstanceCreated (instance: args [0]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _OpenXRExtensionWrapperExtension_proxy_on_instance_destroyed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onInstanceDestroyed ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_main_swapchains_created (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onMainSwapchainsCreated ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_post_draw_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onPostDrawViewport (RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _OpenXRExtensionWrapperExtension_proxy_on_pre_draw_viewport (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onPreDrawViewport (RID (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
}

func _OpenXRExtensionWrapperExtension_proxy_on_pre_render (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onPreRender ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onProcess ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_register_metadata (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onRegisterMetadata ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_session_created (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onSessionCreated (session: args [0]!.assumingMemoryBound (to: UInt.self).pointee)
}

func _OpenXRExtensionWrapperExtension_proxy_on_session_destroyed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onSessionDestroyed ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_exiting (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateExiting ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_focused (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateFocused ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_idle (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateIdle ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_loss_pending (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateLossPending ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_ready (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateReady ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_stopping (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateStopping ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_synchronized (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateSynchronized ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_state_visible (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onStateVisible ()
}

func _OpenXRExtensionWrapperExtension_proxy_on_viewport_composition_layer_destroyed (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? OpenXRExtensionWrapperExtension else { return }
    swiftObject._onViewportCompositionLayerDestroyed (layer: args [0]!.assumingMemoryBound (to: OpaquePointer?.self).pointee)
}

