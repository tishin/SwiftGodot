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


/// Base class for ``AnimationTree`` nodes. Not related to scene nodes.
/// 
/// Base resource for ``AnimationTree`` nodes. In general, it's not used directly, but you can create custom ones with custom blending formulas.
/// 
/// Inherit this when creating animation nodes mainly for use in ``AnimationNodeBlendTree``, otherwise ``AnimationRootNode`` should be used instead.
/// 
/// You can access the time information as read-only parameter which is processed and stored in the previous frame for all nodes except ``AnimationNodeOutput``.
/// 
/// > Note: If multiple inputs exist in the ``AnimationNode``, which time information takes precedence depends on the type of ``AnimationNode``.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``treeChanged``
/// - ``animationNodeRenamed``
/// - ``animationNodeRemoved``
open class AnimationNode: Resource {
    private static var className = StringName("AnimationNode")
    override open class var godotClassName: StringName { className }
    public enum FilterAction: Int64, CaseIterable {
        /// Do not use filtering.
        case ignore = 0 // FILTER_IGNORE
        /// Paths matching the filter will be allowed to pass.
        case pass = 1 // FILTER_PASS
        /// Paths matching the filter will be discarded.
        case stop = 2 // FILTER_STOP
        /// Paths matching the filter will be blended (by the blend value).
        case blend = 3 // FILTER_BLEND
    }
    
    
    /* Properties */
    
    /// If `true`, filtering is enabled.
    final public var filterEnabled: Bool {
        get {
            return is_filter_enabled ()
        }
        
        set {
            set_filter_enabled (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__get_child_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_child_nodes")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3102165223)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to return all child animation nodes in order as a `name: node` dictionary.
    @_documentation(visibility: public)
    open func _getChildNodes() -> VariantDictionary {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantDictionary = VariantDictionary ()
        gi.object_method_bind_ptrcall(AnimationNode.method__get_child_nodes, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_parameter_list: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_parameter_list")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to return a list of the properties on this animation node. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees. Format is similar to ``Object/getPropertyList()``.
    @_documentation(visibility: public)
    open func _getParameterList() -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: VariantArray = VariantArray ()
        gi.object_method_bind_ptrcall(AnimationNode.method__get_parameter_list, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__get_child_by_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_child_by_name")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 625644256)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to return a child animation node by its `name`.
    @_documentation(visibility: public)
    open func _getChildByName(_ name: StringName) -> AnimationNode? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = UnsafeRawPointer (bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method__get_child_by_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method__get_parameter_default_value: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_parameter_default_value")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to return the default value of a `parameter`. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees.
    @_documentation(visibility: public)
    open func _getParameterDefaultValue(parameter: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: parameter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method__get_parameter_default_value, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method__is_parameter_read_only: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_is_parameter_read_only")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to return whether the `parameter` is read-only. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees.
    @_documentation(visibility: public)
    open func _isParameterReadOnly(parameter: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: parameter.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method__is_parameter_read_only, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2139827523)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to run some code when this animation node is processed. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute.
    /// 
    /// Here, call the ``blendInput(inputIndex:time:seek:isExternalSeeking:blend:filter:sync:testOnly:)``, ``blendNode(name:node:time:seek:isExternalSeeking:blend:filter:sync:testOnly:)`` or ``blendAnimation(_:time:delta:seeked:isExternalSeeking:blend:loopedFlag:)`` functions. You can also use ``getParameter(name:)`` and ``setParameter(name:value:)`` to modify local memory.
    /// 
    /// This function should return the delta.
    /// 
    @_documentation(visibility: public)
    open func _process(time: Double, seek: Bool, isExternalSeeking: Bool, testOnly: Bool) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: time) { pArg0 in
            withUnsafePointer(to: seek) { pArg1 in
                withUnsafePointer(to: isExternalSeeking) { pArg2 in
                    withUnsafePointer(to: testOnly) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(AnimationNode.method__process, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method__get_caption: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_caption")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to override the text caption for this animation node.
    @_documentation(visibility: public)
    open func _getCaption() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(AnimationNode.method__get_caption, UnsafeMutableRawPointer(mutating: handle), nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method__has_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_has_filter")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// When inheriting from ``AnimationRootNode``, implement this virtual method to return whether the blend tree editor should display filter editing on this animation node.
    @_documentation(visibility: public)
    open func _hasFilter() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNode.method__has_filter, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_add_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_input")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2323990056)!
            }
            
        }
        
    }()
    
    /// Adds an input to the animation node. This is only useful for animation nodes created for use in an ``AnimationNodeBlendTree``. If the addition fails, returns `false`.
    public final func addInput(name: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method_add_input, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_remove_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_input")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes an input, call this only when inactive.
    public final func removeInput(index: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method_remove_input, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_input_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_input_name")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 215573526)!
            }
            
        }
        
    }()
    
    /// Sets the name of the input at the given `input` index. If the setting fails, returns `false`.
    public final func setInputName(input: Int32, name: String) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: input) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNode.method_set_input_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_input_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_input_name")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Gets the name of an input by index.
    public final func getInputName(input: Int32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: input) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method_get_input_name, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_input_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_input_count")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Amount of inputs in this animation node, only useful for animation nodes that go into ``AnimationNodeBlendTree``.
    public final func getInputCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimationNode.method_get_input_count, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_find_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_input")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1321353865)!
            }
            
        }
        
    }()
    
    /// Returns the input index which corresponds to `name`. If not found, returns `-1`.
    public final func findInput(name: String) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method_find_input, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_filter_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filter_path")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3868023870)!
            }
            
        }
        
    }()
    
    /// Adds or removes a path for the filter.
    public final func setFilterPath(_ path: NodePath, enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: enable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNode.method_set_filter_path, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_path_filtered: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_path_filtered")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 861721659)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given path is filtered.
    public final func isPathFiltered(path: NodePath) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method_is_path_filtered, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_filter_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_filter_enabled")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_filter_enabled(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method_set_filter_enabled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_filter_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_filter_enabled")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_filter_enabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNode.method_is_filter_enabled, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_processing_animation_tree_instance_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_processing_animation_tree_instance_id")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the object id of the ``AnimationTree`` that owns this node.
    /// 
    /// > Note: This method should only be called from within the ``AnimationNodeExtension/_processAnimationNode(playbackInfo:testOnly:)`` method, and will return an invalid id otherwise.
    /// 
    public final func getProcessingAnimationTreeInstanceId() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(AnimationNode.method_get_processing_animation_tree_instance_id, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_process_testing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_process_testing")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this animation node is being processed in test-only mode.
    public final func isProcessTesting() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNode.method_is_process_testing, UnsafeMutableRawPointer(mutating: handle), nil, &_result)
        return _result
    }
    
    fileprivate static let method_blend_animation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("blend_animation")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1630801826)!
            }
            
        }
        
    }()
    
    /// Blend an animation by `blend` amount (name must be valid in the linked ``AnimationPlayer``). A `time` and `delta` may be passed, as well as whether `seeked` happened.
    /// 
    /// A `loopedFlag` is used by internal processing immediately after the loop. See also ``Animation.LoopedFlag``.
    /// 
    public final func blendAnimation(_ animation: StringName, time: Double, delta: Double, seeked: Bool, isExternalSeeking: Bool, blend: Double, loopedFlag: Animation.LoopedFlag = .none) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: animation.content) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: delta) { pArg2 in
                    withUnsafePointer(to: seeked) { pArg3 in
                        withUnsafePointer(to: isExternalSeeking) { pArg4 in
                            withUnsafePointer(to: blend) { pArg5 in
                                withUnsafePointer(to: loopedFlag.rawValue) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(AnimationNode.method_blend_animation, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_blend_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("blend_node")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1746075988)!
            }
            
        }
        
    }()
    
    /// Blend another animation node (in case this animation node contains child animation nodes). This function is only useful if you inherit from ``AnimationRootNode`` instead, otherwise editors will not display your animation node for addition.
    public final func blendNode(name: StringName, node: AnimationNode?, time: Double, seek: Bool, isExternalSeeking: Bool, blend: Double, filter: AnimationNode.FilterAction = .ignore, sync: Bool = true, testOnly: Bool = false) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: node?.handle) { pArg1 in
                withUnsafePointer(to: time) { pArg2 in
                    withUnsafePointer(to: seek) { pArg3 in
                        withUnsafePointer(to: isExternalSeeking) { pArg4 in
                            withUnsafePointer(to: blend) { pArg5 in
                                withUnsafePointer(to: filter.rawValue) { pArg6 in
                                    withUnsafePointer(to: sync) { pArg7 in
                                        withUnsafePointer(to: testOnly) { pArg8 in
                                            withUnsafePointer(to: UnsafeRawPointersN9(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8)) { pArgs in
                                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 9) { pArgs in
                                                    gi.object_method_bind_ptrcall(AnimationNode.method_blend_node, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                                }
                                                
                                            }
                                            
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
    
    fileprivate static let method_blend_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("blend_input")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1361527350)!
            }
            
        }
        
    }()
    
    /// Blend an input. This is only useful for animation nodes created for an ``AnimationNodeBlendTree``. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute. A filter mode may be optionally passed (see ``AnimationNode/FilterAction`` for options).
    public final func blendInput(inputIndex: Int32, time: Double, seek: Bool, isExternalSeeking: Bool, blend: Double, filter: AnimationNode.FilterAction = .ignore, sync: Bool = true, testOnly: Bool = false) -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        withUnsafePointer(to: inputIndex) { pArg0 in
            withUnsafePointer(to: time) { pArg1 in
                withUnsafePointer(to: seek) { pArg2 in
                    withUnsafePointer(to: isExternalSeeking) { pArg3 in
                        withUnsafePointer(to: blend) { pArg4 in
                            withUnsafePointer(to: filter.rawValue) { pArg5 in
                                withUnsafePointer(to: sync) { pArg6 in
                                    withUnsafePointer(to: testOnly) { pArg7 in
                                        withUnsafePointer(to: UnsafeRawPointersN8(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7)) { pArgs in
                                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 8) { pArgs in
                                                gi.object_method_bind_ptrcall(AnimationNode.method_blend_input, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                                            }
                                            
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
    
    fileprivate static let method_set_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_parameter")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Sets a custom parameter. These are used as local memory, because resources can be reused across the tree or scenes.
    public final func setParameter(name: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNode.method_set_parameter, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_parameter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parameter")
        return withUnsafePointer(to: &AnimationNode.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2760726917)!
            }
            
        }
        
    }()
    
    /// Gets the value of a parameter. Parameters are custom local memory used for your animation nodes, given a resource can be reused in multiple trees.
    public final func getParameter(name: StringName) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNode.method_get_parameter, UnsafeMutableRawPointer(mutating: handle), pArgs, &_result)
                }
                
            }
            
        }
        
        return Variant(takingOver: _result)
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_get_caption":
                return _AnimationNode_proxy_get_caption
            case "_get_child_by_name":
                return _AnimationNode_proxy_get_child_by_name
            case "_get_child_nodes":
                return _AnimationNode_proxy_get_child_nodes
            case "_get_parameter_default_value":
                return _AnimationNode_proxy_get_parameter_default_value
            case "_get_parameter_list":
                return _AnimationNode_proxy_get_parameter_list
            case "_has_filter":
                return _AnimationNode_proxy_has_filter
            case "_is_parameter_read_only":
                return _AnimationNode_proxy_is_parameter_read_only
            case "_process":
                return _AnimationNode_proxy_process
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted by nodes that inherit from this class and that have an internal tree when one of their animation nodes changes. The animation nodes that emit this signal are ``AnimationNodeBlendSpace1D``, ``AnimationNodeBlendSpace2D``, ``AnimationNodeStateMachine``, ``AnimationNodeBlendTree`` and ``AnimationNodeTransition``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.treeChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var treeChanged: SimpleSignal { SimpleSignal (target: self, signalName: "tree_changed") }
    
    /// Emitted by nodes that inherit from this class and that have an internal tree when one of their animation node names changes. The animation nodes that emit this signal are ``AnimationNodeBlendSpace1D``, ``AnimationNodeBlendSpace2D``, ``AnimationNodeStateMachine``, and ``AnimationNodeBlendTree``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationNodeRenamed.connect { objectId, oldName, newName in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationNodeRenamed: SignalWithArguments<Int64, String, String> { SignalWithArguments<Int64, String, String> (target: self, signalName: "animation_node_renamed") }
    
    /// Emitted by nodes that inherit from this class and that have an internal tree when one of their animation nodes removes. The animation nodes that emit this signal are ``AnimationNodeBlendSpace1D``, ``AnimationNodeBlendSpace2D``, ``AnimationNodeStateMachine``, and ``AnimationNodeBlendTree``.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.animationNodeRemoved.connect { objectId, name in
    ///    print ("caught signal")
    /// }
    /// ```
    public var animationNodeRemoved: SignalWithArguments<Int64, String> { SignalWithArguments<Int64, String> (target: self, signalName: "animation_node_removed") }
    
}

// Support methods for proxies
func _AnimationNode_proxy_get_caption (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = GString (swiftObject._getCaption ())
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // String
    ret.content = GString.zero
}

func _AnimationNode_proxy_get_child_by_name (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = swiftObject._getChildByName (StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret?.handle, as: UnsafeRawPointer?.self) // AnimationNode
}

func _AnimationNode_proxy_get_child_nodes (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = swiftObject._getChildNodes ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Dictionary
    ret.content = VariantDictionary.zero
}

func _AnimationNode_proxy_get_parameter_default_value (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = swiftObject._getParameterDefaultValue (parameter: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes(of: ret.content, as: Variant.ContentType.self)
    ret?.content = Variant.zero
}

func _AnimationNode_proxy_get_parameter_list (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = swiftObject._getParameterList ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // Array
    ret.content = VariantArray.zero
}

func _AnimationNode_proxy_has_filter (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = swiftObject._hasFilter ()
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _AnimationNode_proxy_is_parameter_read_only (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = swiftObject._isParameterReadOnly (parameter: StringName (content: args [0]!.assumingMemoryBound (to: Int64.self).pointee))
    retPtr!.storeBytes (of: ret, as: Bool.self)
}

func _AnimationNode_proxy_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? AnimationNode else { return }
    let ret = swiftObject._process (time: args [0]!.assumingMemoryBound (to: Double.self).pointee, seek: args [1]!.assumingMemoryBound (to: Bool.self).pointee, isExternalSeeking: args [2]!.assumingMemoryBound (to: Bool.self).pointee, testOnly: args [3]!.assumingMemoryBound (to: Bool.self).pointee)
    retPtr!.storeBytes (of: ret, as: Double.self)
}

