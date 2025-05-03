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


/// A state machine with multiple ``AnimationRootNode``s, used by ``AnimationTree``.
/// 
/// Contains multiple ``AnimationRootNode``s representing animation states, connected in a graph. State transitions can be configured to happen automatically or via code, using a shortest-path algorithm. Retrieve the ``AnimationNodeStateMachinePlayback`` object from the ``AnimationTree`` node to control it programmatically.
/// 
open class AnimationNodeStateMachine: AnimationRootNode {
    private static var className = StringName("AnimationNodeStateMachine")
    override open class var godotClassName: StringName { className }
    public enum StateMachineType: Int64, CaseIterable {
        /// Seeking to the beginning is treated as playing from the start state. Transition to the end state is treated as exiting the state machine.
        case root = 0 // STATE_MACHINE_TYPE_ROOT
        /// Seeking to the beginning is treated as seeking to the beginning of the animation in the current state. Transition to the end state, or the absence of transitions in each state, is treated as exiting the state machine.
        case nested = 1 // STATE_MACHINE_TYPE_NESTED
        /// This is a grouped state machine that can be controlled from a parent state machine. It does not work independently. There must be a state machine with ``stateMachineType`` of ``StateMachineType/root`` or ``StateMachineType/nested`` in the parent or ancestor.
        case grouped = 2 // STATE_MACHINE_TYPE_GROUPED
    }
    
    
    /* Properties */
    
    /// This property can define the process of transitions for different use cases. See also ``AnimationNodeStateMachine.StateMachineType``.
    final public var stateMachineType: AnimationNodeStateMachine.StateMachineType {
        get {
            return get_state_machine_type ()
        }
        
        set {
            set_state_machine_type (newValue)
        }
        
    }
    
    /// If `true`, allows teleport to the self state with ``AnimationNodeStateMachinePlayback/travel(toNode:resetOnTeleport:)``. When the reset option is enabled in ``AnimationNodeStateMachinePlayback/travel(toNode:resetOnTeleport:)``, the animation is restarted. If `false`, nothing happens on the teleportation to the self state.
    final public var allowTransitionToSelf: Bool {
        get {
            return is_allow_transition_to_self ()
        }
        
        set {
            set_allow_transition_to_self (newValue)
        }
        
    }
    
    /// If `true`, treat the cross-fade to the start and end nodes as a blend with the RESET animation.
    /// 
    /// In most cases, when additional cross-fades are performed in the parent ``AnimationNode`` of the state machine, setting this property to `false` and matching the cross-fade time of the parent ``AnimationNode`` and the state machine's start node and end node gives good results.
    /// 
    final public var resetEnds: Bool {
        get {
            return are_ends_reset ()
        }
        
        set {
            set_reset_ends (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_add_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_node")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1980270704)!
            }
            
        }
        
    }()
    
    /// Adds a new animation node to the graph. The `position` is used for display in the editor.
    public final func addNode(name: StringName, node: AnimationNode?, position: Vector2 = Vector2 (x: 0, y: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: node?.handle) { pArg1 in
                withUnsafePointer(to: position) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_add_node, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_replace_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("replace_node")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2559412862)!
            }
            
        }
        
    }()
    
    /// Replaces the given animation node with a new animation node.
    public final func replaceNode(name: StringName, node: AnimationNode?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: node?.handle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_replace_node, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 625644256)!
            }
            
        }
        
    }()
    
    /// Returns the animation node with the given name.
    public final func getNode(name: StringName) -> AnimationNode? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_node, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_remove_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_node")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Deletes the given animation node from the graph.
    public final func removeNode(name: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_remove_node, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rename_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rename_node")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Renames the given animation node.
    public final func renameNode(name: StringName, newName: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: newName.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_rename_node, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_has_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_node")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the graph contains the given animation node.
    public final func hasNode(name: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_has_node, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_name")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 739213945)!
            }
            
        }
        
    }()
    
    /// Returns the given animation node's name.
    public final func getNodeName(node: AnimationNode?) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_node_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_node_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_node_position")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1999414630)!
            }
            
        }
        
    }()
    
    /// Sets the animation node's coordinates. Used for display in the editor.
    public final func setNodePosition(name: StringName, position: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: position) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_set_node_position, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_node_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_position")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3100822709)!
            }
            
        }
        
    }()
    
    /// Returns the given animation node's coordinates. Used for display in the editor.
    public final func getNodePosition(name: StringName) -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_node_position, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_has_transition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_transition")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 471820014)!
            }
            
        }
        
    }()
    
    /// Returns `true` if there is a transition between the given animation nodes.
    public final func hasTransition(from: StringName, to: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: to.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_has_transition, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_transition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_transition")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 795486887)!
            }
            
        }
        
    }()
    
    /// Adds a transition between the given animation nodes.
    public final func addTransition(from: StringName, to: StringName, transition: AnimationNodeStateMachineTransition?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: to.content) { pArg1 in
                withUnsafePointer(to: transition?.handle) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_add_transition, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_transition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transition")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4192381260)!
            }
            
        }
        
    }()
    
    /// Returns the given transition.
    public final func getTransition(idx: Int32) -> AnimationNodeStateMachineTransition? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_transition, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_transition_from: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transition_from")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the given transition's start node.
    public final func getTransitionFrom(idx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_transition_from, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_transition_to: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transition_to")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 659327637)!
            }
            
        }
        
    }()
    
    /// Returns the given transition's end node.
    public final func getTransitionTo(idx: Int32) -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_transition_to, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_transition_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transition_count")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of connections in the graph.
    public final func getTransitionCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_transition_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_remove_transition_by_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_transition_by_index")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Deletes the given transition by index.
    public final func removeTransitionByIndex(idx: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_remove_transition_by_index, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_transition: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_transition")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3740211285)!
            }
            
        }
        
    }()
    
    /// Deletes the transition between the two specified animation nodes.
    public final func removeTransition(from: StringName, to: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from.content) { pArg0 in
            withUnsafePointer(to: to.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_remove_transition, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_graph_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_graph_offset")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 743155724)!
            }
            
        }
        
    }()
    
    /// Sets the draw offset of the graph. Used for display in the editor.
    public final func setGraphOffset(_ offset: Vector2) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_set_graph_offset, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_graph_offset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_graph_offset")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3341600327)!
            }
            
        }
        
    }()
    
    /// Returns the draw offset of the graph. Used for display in the editor.
    public final func getGraphOffset() -> Vector2 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2 = Vector2 ()
        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_graph_offset, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_state_machine_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_state_machine_type")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2584759088)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_state_machine_type(_ stateMachineType: AnimationNodeStateMachine.StateMachineType) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: stateMachineType.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_set_state_machine_type, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_state_machine_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_state_machine_type")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1140726469)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_state_machine_type() -> AnimationNodeStateMachine.StateMachineType {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_get_state_machine_type, handle, nil, &_result)
        return AnimationNodeStateMachine.StateMachineType (rawValue: _result)!
    }
    
    fileprivate static let method_set_allow_transition_to_self: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_allow_transition_to_self")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_allow_transition_to_self(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_set_allow_transition_to_self, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_allow_transition_to_self: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_allow_transition_to_self")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_allow_transition_to_self() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_is_allow_transition_to_self, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_reset_ends: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_reset_ends")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_reset_ends(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_set_reset_ends, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_are_ends_reset: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("are_ends_reset")
        return withUnsafePointer(to: &AnimationNodeStateMachine.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func are_ends_reset() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(AnimationNodeStateMachine.method_are_ends_reset, handle, nil, &_result)
        return _result
    }
    
}

