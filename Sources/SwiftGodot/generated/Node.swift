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


/// Base class for all scene objects.
/// 
/// Nodes are Godot's building blocks. They can be assigned as the child of another node, resulting in a tree arrangement. A given node can contain any number of nodes as children with the requirement that all siblings (direct children of a node) should have unique names.
/// 
/// A tree of nodes is called a _scene_. Scenes can be saved to the disk and then instantiated into other scenes. This allows for very high flexibility in the architecture and data model of Godot projects.
/// 
/// **Scene tree:** The ``SceneTree`` contains the active tree of nodes. When a node is added to the scene tree, it receives the ``notificationEnterTree`` notification and its ``_enterTree()`` callback is triggered. Child nodes are always added _after_ their parent node, i.e. the ``_enterTree()`` callback of a parent node will be triggered before its child's.
/// 
/// Once all nodes have been added in the scene tree, they receive the ``notificationReady`` notification and their respective ``_ready()`` callbacks are triggered. For groups of nodes, the ``_ready()`` callback is called in reverse order, starting with the children and moving up to the parent nodes.
/// 
/// This means that when adding a node to the scene tree, the following order will be used for the callbacks: ``_enterTree()`` of the parent, ``_enterTree()`` of the children, ``_ready()`` of the children and finally ``_ready()`` of the parent (recursively for the entire scene tree).
/// 
/// **Processing:** Nodes can override the "process" state, so that they receive a callback on each frame requesting them to process (do something). Normal processing (callback ``_process(delta:)``, toggled with ``setProcess(enable:)``) happens as fast as possible and is dependent on the frame rate, so the processing time _delta_ (in seconds) is passed as an argument. Physics processing (callback ``_physicsProcess(delta:)``, toggled with ``setPhysicsProcess(enable:)``) happens a fixed number of times per second (60 by default) and is useful for code related to the physics engine.
/// 
/// Nodes can also process input events. When present, the ``_input(event:)`` function will be called for each input that the program receives. In many cases, this can be overkill (unless used for simple projects), and the ``_unhandledInput(event:)`` function might be preferred; it is called when the input event was not handled by anyone else (typically, GUI ``Control`` nodes), ensuring that the node only receives the events that were meant for it.
/// 
/// To keep track of the scene hierarchy (especially when instantiating scenes into other scenes), an "owner" can be set for the node with the ``owner`` property. This keeps track of who instantiated what. This is mostly useful when writing editors and tools, though.
/// 
/// Finally, when a node is freed with ``Object/free()`` or ``queueFree()``, it will also free all its children.
/// 
/// **Groups:** Nodes can be added to as many groups as you want to be easy to manage, you could create groups like "enemies" or "collectables" for example, depending on your game. See ``addToGroup(_:persistent:)``, ``isInGroup(_:)`` and ``removeFromGroup(_:)``. You can then retrieve all nodes in these groups, iterate them and even call methods on groups via the methods on ``SceneTree``.
/// 
/// **Networking with nodes:** After connecting to a server (or making one, see ``ENetMultiplayerPeer``), it is possible to use the built-in RPC (remote procedure call) system to communicate over the network. By calling ``rpc(method:)`` with a method name, it will be called locally and in all connected peers (peers = clients and the server that accepts connections). To identify which node receives the RPC call, Godot will use its ``NodePath`` (make sure node names are the same on all peers). Also, take a look at the high-level networking tutorial and corresponding demos.
/// 
/// > Note: The `script` property is part of the ``Object`` class, not ``Node``. It isn't exposed like most properties but does have a setter and getter (see ``Object/setScript(_:)`` and ``Object/getScript()``).
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``ready``
/// - ``renamed``
/// - ``treeEntered``
/// - ``treeExiting``
/// - ``treeExited``
/// - ``childEnteredTree``
/// - ``childExitingTree``
/// - ``childOrderChanged``
/// - ``replacingBy``
/// - ``editorDescriptionChanged``
/// - ``editorStateChanged``
open class Node: Object {
    private static var className = StringName("Node")
    override open class var godotClassName: StringName { className }
    public enum ProcessMode: Int64, CaseIterable {
        /// Inherits ``processMode`` from the node's parent. This is the default for any newly created node.
        case inherit = 0 // PROCESS_MODE_INHERIT
        /// Stops processing when ``SceneTree/paused`` is `true`. This is the inverse of ``ProcessMode/whenPaused``, and the default for the root node.
        case pausable = 1 // PROCESS_MODE_PAUSABLE
        /// Process **only** when ``SceneTree/paused`` is `true`. This is the inverse of ``ProcessMode/pausable``.
        case whenPaused = 2 // PROCESS_MODE_WHEN_PAUSED
        /// Always process. Keeps processing, ignoring ``SceneTree/paused``. This is the inverse of ``ProcessMode/disabled``.
        case always = 3 // PROCESS_MODE_ALWAYS
        /// Never process. Completely disables processing, ignoring ``SceneTree/paused``. This is the inverse of ``ProcessMode/always``.
        case disabled = 4 // PROCESS_MODE_DISABLED
    }
    
    public enum ProcessThreadGroup: Int64, CaseIterable {
        /// Process this node based on the thread group mode of the first parent (or grandparent) node that has a thread group mode that is not inherit. See ``processThreadGroup`` for more information.
        case inherit = 0 // PROCESS_THREAD_GROUP_INHERIT
        /// Process this node (and child nodes set to inherit) on the main thread. See ``processThreadGroup`` for more information.
        case mainThread = 1 // PROCESS_THREAD_GROUP_MAIN_THREAD
        /// Process this node (and child nodes set to inherit) on a sub-thread. See ``processThreadGroup`` for more information.
        case subThread = 2 // PROCESS_THREAD_GROUP_SUB_THREAD
    }
    
    public struct ProcessThreadMessages: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Allows this node to process threaded messages created with ``callDeferredThreadGroup(method:)`` right before ``_process(delta:)`` is called.
        public static let messages = ProcessThreadMessages (rawValue: 1)
        /// Allows this node to process threaded messages created with ``callDeferredThreadGroup(method:)`` right before ``_physicsProcess(delta:)`` is called.
        public static let messagesPhysics = ProcessThreadMessages (rawValue: 2)
        /// Allows this node to process threaded messages created with ``callDeferredThreadGroup(method:)`` right before either ``_process(delta:)`` or ``_physicsProcess(delta:)`` are called.
        public static let messagesAll = ProcessThreadMessages (rawValue: 3)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.messages) { result += "messages, " }
            if self.contains (.messagesPhysics) { result += "messagesPhysics, " }
            if self.contains (.messagesAll) { result += "messagesAll, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    public enum PhysicsInterpolationMode: Int64, CaseIterable {
        /// Inherits ``physicsInterpolationMode`` from the node's parent. This is the default for any newly created node.
        case inherit = 0 // PHYSICS_INTERPOLATION_MODE_INHERIT
        /// Enables physics interpolation for this node and for children set to ``PhysicsInterpolationMode/inherit``. This is the default for the root node.
        case on = 1 // PHYSICS_INTERPOLATION_MODE_ON
        /// Disables physics interpolation for this node and for children set to ``PhysicsInterpolationMode/inherit``.
        case off = 2 // PHYSICS_INTERPOLATION_MODE_OFF
    }
    
    public enum DuplicateFlags: Int64, CaseIterable {
        /// Duplicate the node's signal connections.
        case signals = 1 // DUPLICATE_SIGNALS
        /// Duplicate the node's groups.
        case groups = 2 // DUPLICATE_GROUPS
        /// Duplicate the node's script (also overriding the duplicated children's scripts, if combined with ``DuplicateFlags/useInstantiation``).
        case scripts = 4 // DUPLICATE_SCRIPTS
        /// Duplicate using ``PackedScene/instantiate(editState:)``. If the node comes from a scene saved on disk, reuses ``PackedScene/instantiate(editState:)`` as the base for the duplicated node and its children.
        case useInstantiation = 8 // DUPLICATE_USE_INSTANTIATION
    }
    
    public enum InternalMode: Int64, CaseIterable {
        /// The node will not be internal.
        case disabled = 0 // INTERNAL_MODE_DISABLED
        /// The node will be placed at the beginning of the parent's children, before any non-internal sibling.
        case front = 1 // INTERNAL_MODE_FRONT
        /// The node will be placed at the end of the parent's children, after any non-internal sibling.
        case back = 2 // INTERNAL_MODE_BACK
    }
    
    public enum AutoTranslateMode: Int64, CaseIterable {
        /// Inherits ``autoTranslateMode`` from the node's parent. This is the default for any newly created node.
        case inherit = 0 // AUTO_TRANSLATE_MODE_INHERIT
        /// Always automatically translate. This is the inverse of ``AutoTranslateMode/disabled``, and the default for the root node.
        case always = 1 // AUTO_TRANSLATE_MODE_ALWAYS
        /// Never automatically translate. This is the inverse of ``AutoTranslateMode/always``.
        /// 
        /// String parsing for POT generation will be skipped for this node and children that are set to ``AutoTranslateMode/inherit``.
        /// 
        case disabled = 2 // AUTO_TRANSLATE_MODE_DISABLED
    }
    
    /* Constants */
    /// Notification received when the node enters a ``SceneTree``. See ``_enterTree()``.
    /// 
    /// This notification is received _before_ the related [signal tree_entered] signal.
    /// 
    public static let notificationEnterTree = 10
    /// Notification received when the node is about to exit a ``SceneTree``. See ``_exitTree()``.
    /// 
    /// This notification is received _after_ the related [signal tree_exiting] signal.
    /// 
    public static let notificationExitTree = 11
    /// 
    public static let notificationMovedInParent = 12
    /// Notification received when the node is ready. See ``_ready()``.
    public static let notificationReady = 13
    /// Notification received when the node is paused. See ``processMode``.
    public static let notificationPaused = 14
    /// Notification received when the node is unpaused. See ``processMode``.
    public static let notificationUnpaused = 15
    /// Notification received from the tree every physics frame when ``isPhysicsProcessing()`` returns `true`. See ``_physicsProcess(delta:)``.
    public static let notificationPhysicsProcess = 16
    /// Notification received from the tree every rendered frame when ``isProcessing()`` returns `true`. See ``_process(delta:)``.
    public static let notificationProcess = 17
    /// Notification received when the node is set as a child of another node (see ``addChild(node:forceReadableName:`internal`:)`` and ``addSibling(_:forceReadableName:)``).
    /// 
    /// > Note: This does _not_ mean that the node entered the ``SceneTree``.
    /// 
    public static let notificationParented = 18
    /// Notification received when the parent node calls ``removeChild(node:)`` on this node.
    /// 
    /// > Note: This does _not_ mean that the node exited the ``SceneTree``.
    /// 
    public static let notificationUnparented = 19
    /// Notification received _only_ by the newly instantiated scene root node, when ``PackedScene/instantiate(editState:)`` is completed.
    public static let notificationSceneInstantiated = 20
    /// Notification received when a drag operation begins. All nodes receive this notification, not only the dragged one.
    /// 
    /// Can be triggered either by dragging a ``Control`` that provides drag data (see ``Control/_getDragData(atPosition:)``) or using ``Control/forceDrag(data:preview:)``.
    /// 
    /// Use ``Viewport/guiGetDragData()`` to get the dragged data.
    /// 
    public static let notificationDragBegin = 21
    /// Notification received when a drag operation ends.
    /// 
    /// Use ``Viewport/guiIsDragSuccessful()`` to check if the drag succeeded.
    /// 
    public static let notificationDragEnd = 22
    /// Notification received when the node's ``name`` or one of its ancestors' ``name`` is changed. This notification is _not_ received when the node is removed from the ``SceneTree``.
    public static let notificationPathRenamed = 23
    /// Notification received when the list of children is changed. This happens when child nodes are added, moved or removed.
    public static let notificationChildOrderChanged = 24
    /// Notification received from the tree every rendered frame when ``isProcessingInternal()`` returns `true`.
    public static let notificationInternalProcess = 25
    /// Notification received from the tree every physics frame when ``isPhysicsProcessingInternal()`` returns `true`.
    public static let notificationInternalPhysicsProcess = 26
    /// Notification received when the node enters the tree, just before ``notificationReady`` may be received. Unlike the latter, it is sent every time the node enters tree, not just once.
    public static let notificationPostEnterTree = 27
    /// Notification received when the node is disabled. See ``ProcessMode/disabled``.
    public static let notificationDisabled = 28
    /// Notification received when the node is enabled again after being disabled. See ``ProcessMode/disabled``.
    public static let notificationEnabled = 29
    /// Notification received when ``resetPhysicsInterpolation()`` is called on the node or its ancestors.
    public static let notificationResetPhysicsInterpolation = 2001
    /// Notification received right before the scene with the node is saved in the editor. This notification is only sent in the Godot editor and will not occur in exported projects.
    public static let notificationEditorPreSave = 9001
    /// Notification received right after the scene with the node is saved in the editor. This notification is only sent in the Godot editor and will not occur in exported projects.
    public static let notificationEditorPostSave = 9002
    /// Notification received when the mouse enters the window.
    /// 
    /// Implemented for embedded windows and on desktop and web platforms.
    /// 
    public static let notificationWmMouseEnter = 1002
    /// Notification received when the mouse leaves the window.
    /// 
    /// Implemented for embedded windows and on desktop and web platforms.
    /// 
    public static let notificationWmMouseExit = 1003
    /// Notification received from the OS when the node's ``Window`` ancestor is focused. This may be a change of focus between two windows of the same engine instance, or from the OS desktop or a third-party application to a window of the game (in which case ``notificationApplicationFocusIn`` is also received).
    /// 
    /// A ``Window`` node receives this notification when it is focused.
    /// 
    public static let notificationWmWindowFocusIn = 1004
    /// Notification received from the OS when the node's ``Window`` ancestor is defocused. This may be a change of focus between two windows of the same engine instance, or from a window of the game to the OS desktop or a third-party application (in which case ``notificationApplicationFocusOut`` is also received).
    /// 
    /// A ``Window`` node receives this notification when it is defocused.
    /// 
    public static let notificationWmWindowFocusOut = 1005
    /// Notification received from the OS when a close request is sent (e.g. closing the window with a "Close" button or [kbd]Alt + F4[/kbd]).
    /// 
    /// Implemented on desktop platforms.
    /// 
    public static let notificationWmCloseRequest = 1006
    /// Notification received from the OS when a go back request is sent (e.g. pressing the "Back" button on Android).
    /// 
    /// Implemented only on Android.
    /// 
    public static let notificationWmGoBackRequest = 1007
    /// Notification received when the window is resized.
    /// 
    /// > Note: Only the resized ``Window`` node receives this notification, and it's not propagated to the child nodes.
    /// 
    public static let notificationWmSizeChanged = 1008
    /// Notification received from the OS when the screen's dots per inch (DPI) scale is changed. Only implemented on macOS.
    public static let notificationWmDpiChange = 1009
    /// Notification received when the mouse cursor enters the ``Viewport``'s visible area, that is not occluded behind other ``Control``s or ``Window``s, provided its ``Viewport/guiDisableInput`` is `false` and regardless if it's currently focused or not.
    public static let notificationVpMouseEnter = 1010
    /// Notification received when the mouse cursor leaves the ``Viewport``'s visible area, that is not occluded behind other ``Control``s or ``Window``s, provided its ``Viewport/guiDisableInput`` is `false` and regardless if it's currently focused or not.
    public static let notificationVpMouseExit = 1011
    /// Notification received when the window is moved.
    public static let notificationWmPositionChanged = 1012
    /// Notification received from the OS when the application is exceeding its allocated memory.
    /// 
    /// Implemented only on iOS.
    /// 
    public static let notificationOsMemoryWarning = 2009
    /// Notification received when translations may have changed. Can be triggered by the user changing the locale, changing ``autoTranslateMode`` or when the node enters the scene tree. Can be used to respond to language changes, for example to change the UI strings on the fly. Useful when working with the built-in translation support, like ``Object/tr(message:context:)``.
    /// 
    /// > Note: This notification is received alongside ``notificationEnterTree``, so if you are instantiating a scene, the child nodes will not be initialized yet. You can use it to setup translations for this node, child nodes created from script, or if you want to access child nodes added in the editor, make sure the node is ready using ``isNodeReady()``.
    /// 
    public static let notificationTranslationChanged = 2010
    /// Notification received from the OS when a request for "About" information is sent.
    /// 
    /// Implemented only on macOS.
    /// 
    public static let notificationWmAbout = 2011
    /// Notification received from Godot's crash handler when the engine is about to crash.
    /// 
    /// Implemented on desktop platforms, if the crash handler is enabled.
    /// 
    public static let notificationCrash = 2012
    /// Notification received from the OS when an update of the Input Method Engine occurs (e.g. change of IME cursor position or composition string).
    /// 
    /// Implemented only on macOS.
    /// 
    public static let notificationOsImeUpdate = 2013
    /// Notification received from the OS when the application is resumed.
    /// 
    /// Specific to the Android and iOS platforms.
    /// 
    public static let notificationApplicationResumed = 2014
    /// Notification received from the OS when the application is paused.
    /// 
    /// Specific to the Android and iOS platforms.
    /// 
    /// > Note: On iOS, you only have approximately 5 seconds to finish a task started by this signal. If you go over this allotment, iOS will kill the app instead of pausing it.
    /// 
    public static let notificationApplicationPaused = 2015
    /// Notification received from the OS when the application is focused, i.e. when changing the focus from the OS desktop or a thirdparty application to any open window of the Godot instance.
    /// 
    /// Implemented on desktop and mobile platforms.
    /// 
    public static let notificationApplicationFocusIn = 2016
    /// Notification received from the OS when the application is defocused, i.e. when changing the focus from any open window of the Godot instance to the OS desktop or a thirdparty application.
    /// 
    /// Implemented on desktop and mobile platforms.
    /// 
    public static let notificationApplicationFocusOut = 2017
    /// Notification received when the ``TextServer`` is changed.
    public static let notificationTextServerChanged = 2018
    
    /* Properties */
    
    /// The name of the node. This name must be unique among the siblings (other child nodes from the same parent). When set to an existing sibling's name, the node is automatically renamed.
    /// 
    /// > Note: When changing the name, the following characters will be replaced with an underscore: (`.` `:` `@` `/` `"` `%`). In particular, the `@` character is reserved for auto-generated names. See also ``GString/validateNodeName()``.
    /// 
    final public var name: StringName {
        get {
            return get_name ()
        }
        
        set {
            set_name (String (newValue))
        }
        
    }
    
    /// If `true`, the node can be accessed from any node sharing the same ``owner`` or from the ``owner`` itself, with special `%Name` syntax in ``getNode(path:)``.
    /// 
    /// > Note: If another node with the same ``owner`` shares the same ``name`` as this node, the other node will no longer be accessible as unique.
    /// 
    final public var uniqueNameInOwner: Bool {
        get {
            return is_unique_name_in_owner ()
        }
        
        set {
            set_unique_name_in_owner (newValue)
        }
        
    }
    
    /// The original scene's file path, if the node has been instantiated from a ``PackedScene`` file. Only scene root nodes contains this.
    final public var sceneFilePath: String {
        get {
            return get_scene_file_path ()
        }
        
        set {
            set_scene_file_path (newValue)
        }
        
    }
    
    /// The owner of this node. The owner must be an ancestor of this node. When packing the owner node in a ``PackedScene``, all the nodes it owns are also saved with it. See also ``uniqueNameInOwner``.
    /// 
    /// > Note: In the editor, nodes not owned by the scene root are usually not displayed in the Scene dock, and will **not** be saved. To prevent this, remember to set the owner after calling ``addChild(node:forceReadableName:`internal`:)``.
    /// 
    final public var owner: Node? {
        get {
            return get_owner ()
        }
        
        set {
            set_owner (newValue)
        }
        
    }
    
    /// The ``MultiplayerAPI`` instance associated with this node. See ``SceneTree/getMultiplayer(forPath:)``.
    /// 
    /// > Note: Renaming the node, or moving it in the tree, will not move the ``MultiplayerAPI`` to the new path, you will have to update this manually.
    /// 
    final public var multiplayer: MultiplayerAPI? {
        get {
            return get_multiplayer ()
        }
        
    }
    
    /// The node's processing behavior (see ``Node/ProcessMode``). To check if the node can process in its current mode, use ``canProcess()``.
    final public var processMode: Node.ProcessMode {
        get {
            return get_process_mode ()
        }
        
        set {
            set_process_mode (newValue)
        }
        
    }
    
    /// The node's execution order of the process callbacks (``_process(delta:)``, ``notificationProcess``, and ``notificationInternalProcess``). Nodes whose priority value is _lower_ call their process callbacks first, regardless of tree order.
    final public var processPriority: Int32 {
        get {
            return get_process_priority ()
        }
        
        set {
            set_process_priority (newValue)
        }
        
    }
    
    /// Similar to ``processPriority`` but for ``notificationPhysicsProcess``, ``_physicsProcess(delta:)``, or ``notificationInternalPhysicsProcess``.
    final public var processPhysicsPriority: Int32 {
        get {
            return get_physics_process_priority ()
        }
        
        set {
            set_physics_process_priority (newValue)
        }
        
    }
    
    /// Set the process thread group for this node (basically, whether it receives ``notificationProcess``, ``notificationPhysicsProcess``, ``_process(delta:)`` or ``_physicsProcess(delta:)`` (and the internal versions) on the main thread or in a sub-thread.
    /// 
    /// By default, the thread group is ``ProcessThreadGroup/inherit``, which means that this node belongs to the same thread group as the parent node. The thread groups means that nodes in a specific thread group will process together, separate to other thread groups (depending on ``processThreadGroupOrder``). If the value is set is ``ProcessThreadGroup/subThread``, this thread group will occur on a sub thread (not the main thread), otherwise if set to ``ProcessThreadGroup/mainThread`` it will process on the main thread. If there is not a parent or grandparent node set to something other than inherit, the node will belong to the _default thread group_. This default group will process on the main thread and its group order is 0.
    /// 
    /// During processing in a sub-thread, accessing most functions in nodes outside the thread group is forbidden (and it will result in an error in debug mode). Use ``Object/callDeferred(method:)``, ``callThreadSafe(method:)``, ``callDeferredThreadGroup(method:)`` and the likes in order to communicate from the thread groups to the main thread (or to other thread groups).
    /// 
    /// To better understand process thread groups, the idea is that any node set to any other value than ``ProcessThreadGroup/inherit`` will include any child (and grandchild) nodes set to inherit into its process thread group. This means that the processing of all the nodes in the group will happen together, at the same time as the node including them.
    /// 
    final public var processThreadGroup: Node.ProcessThreadGroup {
        get {
            return get_process_thread_group ()
        }
        
        set {
            set_process_thread_group (newValue)
        }
        
    }
    
    /// Change the process thread group order. Groups with a lesser order will process before groups with a greater order. This is useful when a large amount of nodes process in sub thread and, afterwards, another group wants to collect their result in the main thread, as an example.
    final public var processThreadGroupOrder: Int32 {
        get {
            return get_process_thread_group_order ()
        }
        
        set {
            set_process_thread_group_order (newValue)
        }
        
    }
    
    /// Set whether the current thread group will process messages (calls to ``callDeferredThreadGroup(method:)`` on threads), and whether it wants to receive them during regular process or physics process callbacks.
    final public var processThreadMessages: Node.ProcessThreadMessages {
        get {
            return get_process_thread_messages ()
        }
        
        set {
            set_process_thread_messages (newValue)
        }
        
    }
    
    /// Allows enabling or disabling physics interpolation per node, offering a finer grain of control than turning physics interpolation on and off globally. See ``ProjectSettings/physics/common/physicsInterpolation`` and ``SceneTree/physicsInterpolation`` for the global setting.
    /// 
    /// > Note: When teleporting a node to a distant position you should temporarily disable interpolation with ``Node/resetPhysicsInterpolation()``.
    /// 
    final public var physicsInterpolationMode: Node.PhysicsInterpolationMode {
        get {
            return get_physics_interpolation_mode ()
        }
        
        set {
            set_physics_interpolation_mode (newValue)
        }
        
    }
    
    /// Defines if any text should automatically change to its translated version depending on the current locale (for nodes such as ``Label``, ``RichTextLabel``, ``Window``, etc.). Also decides if the node's strings should be parsed for POT generation.
    /// 
    /// > Note: For the root node, auto translate mode can also be set via ``ProjectSettings/internationalization/rendering/rootNodeAutoTranslate``.
    /// 
    final public var autoTranslateMode: Node.AutoTranslateMode {
        get {
            return get_auto_translate_mode ()
        }
        
        set {
            set_auto_translate_mode (newValue)
        }
        
    }
    
    /// An optional description to the node. It will be displayed as a tooltip when hovering over the node in the editor's Scene dock.
    final public var editorDescription: String {
        get {
            return get_editor_description ()
        }
        
        set {
            set_editor_description (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method__process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_process")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Called during the processing step of the main loop. Processing happens at every frame and as fast as possible, so the `delta` time since the previous frame is not constant. `delta` is in seconds.
    /// 
    /// It is only called if processing is enabled, which is done automatically if this method is overridden, and can be toggled with ``setProcess(enable:)``.
    /// 
    /// Processing happens in order of ``processPriority``, lower priority values are called first. Nodes with the same priority are processed in tree order, or top to bottom as seen in the editor (also known as pre-order traversal).
    /// 
    /// Corresponds to the ``notificationProcess`` notification in ``Wrapper._notification(code:reverse)``.
    /// 
    /// > Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
    /// 
    /// > Note: `delta` will be larger than expected if running at a framerate lower than ``Engine/physicsTicksPerSecond`` / ``Engine/maxPhysicsStepsPerFrame`` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both ``_process(delta:)`` and ``_physicsProcess(delta:)``. As a result, avoid using `delta` for time measurements in real-world seconds. Use the ``Time`` singleton's methods for this purpose instead, such as ``Time/getTicksUsec()``.
    /// 
    @_documentation(visibility: public)
    open func _process(delta: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: delta) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method__process, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__physics_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_physics_process")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Called during the physics processing step of the main loop. Physics processing means that the frame rate is synced to the physics, i.e. the `delta` parameter will _generally_ be constant (see exceptions below). `delta` is in seconds.
    /// 
    /// It is only called if physics processing is enabled, which is done automatically if this method is overridden, and can be toggled with ``setPhysicsProcess(enable:)``.
    /// 
    /// Processing happens in order of ``processPhysicsPriority``, lower priority values are called first. Nodes with the same priority are processed in tree order, or top to bottom as seen in the editor (also known as pre-order traversal).
    /// 
    /// Corresponds to the ``notificationPhysicsProcess`` notification in ``Wrapper._notification(code:reverse)``.
    /// 
    /// > Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
    /// 
    /// > Note: `delta` will be larger than expected if running at a framerate lower than ``Engine/physicsTicksPerSecond`` / ``Engine/maxPhysicsStepsPerFrame`` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both ``_process(delta:)`` and ``_physicsProcess(delta:)``. As a result, avoid using `delta` for time measurements in real-world seconds. Use the ``Time`` singleton's methods for this purpose instead, such as ``Time/getTicksUsec()``.
    /// 
    @_documentation(visibility: public)
    open func _physicsProcess(delta: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: delta) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method__physics_process, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__enter_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_enter_tree")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the node enters the ``SceneTree`` (e.g. upon instantiating, scene changing, or after calling ``addChild(node:forceReadableName:`internal`:)`` in a script). If the node has children, its ``_enterTree()`` callback will be called first, and then that of the children.
    /// 
    /// Corresponds to the ``notificationEnterTree`` notification in ``Wrapper._notification(code:reverse)``.
    /// 
    @_documentation(visibility: public)
    open func _enterTree() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method__enter_tree, handle, nil, nil)
        
    }
    
    fileprivate static let method__exit_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_exit_tree")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the node is about to leave the ``SceneTree`` (e.g. upon freeing, scene changing, or after calling ``removeChild(node:)`` in a script). If the node has children, its ``_exitTree()`` callback will be called last, after all its children have left the tree.
    /// 
    /// Corresponds to the ``notificationExitTree`` notification in ``Wrapper._notification(code:reverse)`` and signal [signal tree_exiting]. To get notified when the node has already left the active tree, connect to the [signal tree_exited].
    /// 
    @_documentation(visibility: public)
    open func _exitTree() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method__exit_tree, handle, nil, nil)
        
    }
    
    fileprivate static let method__ready: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_ready")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Called when the node is "ready", i.e. when both the node and its children have entered the scene tree. If the node has children, their ``_ready()`` callbacks get triggered first, and the parent node will receive the ready notification afterwards.
    /// 
    /// Corresponds to the ``notificationReady`` notification in ``Wrapper._notification(code:reverse)``. See also the `@onready` annotation for variables.
    /// 
    /// Usually used for initialization. For even earlier initialization, ``Object/_init()`` may be used. See also ``_enterTree()``.
    /// 
    /// > Note: This method may be called only once for each node. After removing a node from the scene tree and adding it again, ``_ready()`` will **not** be called a second time. This can be bypassed by requesting another call with ``requestReady()``, which may be called anywhere before adding the node again.
    /// 
    @_documentation(visibility: public)
    open func _ready() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method__ready, handle, nil, nil)
        
    }
    
    fileprivate static let method__get_configuration_warnings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_get_configuration_warnings")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1139954409)!
            }
            
        }
        
    }()
    
    /// The elements in the array returned from this method are displayed as warnings in the Scene dock if the script that overrides it is a `tool` script.
    /// 
    /// Returning an empty array produces no warnings.
    /// 
    /// Call ``updateConfigurationWarnings()`` when the warnings need to be updated for this node.
    /// 
    @_documentation(visibility: public)
    open func _getConfigurationWarnings() -> PackedStringArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: PackedStringArray = PackedStringArray ()
        gi.object_method_bind_ptrcall(Node.method__get_configuration_warnings, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method__input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3754044979)!
            }
            
        }
        
    }()
    
    /// Called when there is an input event. The input event propagates up through the node tree until a node consumes it.
    /// 
    /// It is only called if input processing is enabled, which is done automatically if this method is overridden, and can be toggled with ``setProcessInput(enable:)``.
    /// 
    /// To consume the input event and stop it propagating further to other nodes, ``Viewport/setInputAsHandled()`` can be called.
    /// 
    /// For gameplay input, ``_unhandledInput(event:)`` and ``_unhandledKeyInput(event:)`` are usually a better fit as they allow the GUI to intercept the events first.
    /// 
    /// > Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
    /// 
    @_documentation(visibility: public)
    open func _input(event: InputEvent) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: event.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method__input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__shortcut_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_shortcut_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3754044979)!
            }
            
        }
        
    }()
    
    /// Called when an ``InputEventKey``, ``InputEventShortcut``, or ``InputEventJoypadButton`` hasn't been consumed by ``_input(event:)`` or any GUI ``Control`` item. It is called before ``_unhandledKeyInput(event:)`` and ``_unhandledInput(event:)``. The input event propagates up through the node tree until a node consumes it.
    /// 
    /// It is only called if shortcut processing is enabled, which is done automatically if this method is overridden, and can be toggled with ``setProcessShortcutInput(enable:)``.
    /// 
    /// To consume the input event and stop it propagating further to other nodes, ``Viewport/setInputAsHandled()`` can be called.
    /// 
    /// This method can be used to handle shortcuts. For generic GUI events, use ``_input(event:)`` instead. Gameplay events should usually be handled with either ``_unhandledInput(event:)`` or ``_unhandledKeyInput(event:)``.
    /// 
    /// > Note: This method is only called if the node is present in the scene tree (i.e. if it's not orphan).
    /// 
    @_documentation(visibility: public)
    open func _shortcutInput(event: InputEvent?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: event?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method__shortcut_input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__unhandled_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_unhandled_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3754044979)!
            }
            
        }
        
    }()
    
    /// Called when an ``InputEvent`` hasn't been consumed by ``_input(event:)`` or any GUI ``Control`` item. It is called after ``_shortcutInput(event:)`` and after ``_unhandledKeyInput(event:)``. The input event propagates up through the node tree until a node consumes it.
    /// 
    /// It is only called if unhandled input processing is enabled, which is done automatically if this method is overridden, and can be toggled with ``setProcessUnhandledInput(enable:)``.
    /// 
    /// To consume the input event and stop it propagating further to other nodes, ``Viewport/setInputAsHandled()`` can be called.
    /// 
    /// For gameplay input, this method is usually a better fit than ``_input(event:)``, as GUI events need a higher priority. For keyboard shortcuts, consider using ``_shortcutInput(event:)`` instead, as it is called before this method. Finally, to handle keyboard events, consider using ``_unhandledKeyInput(event:)`` for performance reasons.
    /// 
    /// > Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
    /// 
    @_documentation(visibility: public)
    open func _unhandledInput(event: InputEvent?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: event?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method__unhandled_input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method__unhandled_key_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("_unhandled_key_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3754044979)!
            }
            
        }
        
    }()
    
    /// Called when an ``InputEventKey`` hasn't been consumed by ``_input(event:)`` or any GUI ``Control`` item. It is called after ``_shortcutInput(event:)`` but before ``_unhandledInput(event:)``. The input event propagates up through the node tree until a node consumes it.
    /// 
    /// It is only called if unhandled key input processing is enabled, which is done automatically if this method is overridden, and can be toggled with ``setProcessUnhandledKeyInput(enable:)``.
    /// 
    /// To consume the input event and stop it propagating further to other nodes, ``Viewport/setInputAsHandled()`` can be called.
    /// 
    /// This method can be used to handle Unicode character input with [kbd]Alt[/kbd], [kbd]Alt + Ctrl[/kbd], and [kbd]Alt + Shift[/kbd] modifiers, after shortcuts were handled.
    /// 
    /// For gameplay input, this and ``_unhandledInput(event:)`` are usually a better fit than ``_input(event:)``, as GUI events should be handled first. This method also performs better than ``_unhandledInput(event:)``, since unrelated events such as ``InputEventMouseMotion`` are automatically filtered. For shortcuts, consider using ``_shortcutInput(event:)`` instead.
    /// 
    /// > Note: This method is only called if the node is present in the scene tree (i.e. if it's not an orphan).
    /// 
    @_documentation(visibility: public)
    open func _unhandledKeyInput(event: InputEvent?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: event?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method__unhandled_key_input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_print_orphan_nodes: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("print_orphan_nodes")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Prints all orphan nodes (nodes outside the ``SceneTree``). Useful for debugging.
    /// 
    /// > Note: This method only works in debug builds. Does nothing in a project exported in release mode.
    /// 
    public static func printOrphanNodes() {
        gi.object_method_bind_ptrcall(method_print_orphan_nodes, nil, nil, nil)
        
    }
    
    fileprivate static let method_add_sibling: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_sibling")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2570952461)!
            }
            
        }
        
    }()
    
    /// Adds a `sibling` node to this node's parent, and moves the added sibling right below this node.
    /// 
    /// If `forceReadableName` is `true`, improves the readability of the added `sibling`. If not named, the `sibling` is renamed to its type, and if it shares ``name`` with a sibling, a number is suffixed more appropriately. This operation is very slow. As such, it is recommended leaving this to `false`, which assigns a dummy name featuring `@` in both situations.
    /// 
    /// Use ``addChild(node:forceReadableName:`internal`:)`` instead of this method if you don't need the child node to be added below a specific node in the list of children.
    /// 
    /// > Note: If this node is internal, the added sibling will be internal too (see ``addChild(node:forceReadableName:`internal`:)``'s `internal` parameter).
    /// 
    public final func addSibling(_ sibling: Node?, forceReadableName: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: sibling?.handle) { pArg0 in
            withUnsafePointer(to: forceReadableName) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_add_sibling, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_name")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_name(_ name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_name, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_name")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2002593661)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_name() -> StringName {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: StringName = StringName ()
        gi.object_method_bind_ptrcall(Node.method_get_name, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_add_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_child")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3863233950)!
            }
            
        }
        
    }()
    
    /// Adds a child `node`. Nodes can have any number of children, but every child must have a unique name. Child nodes are automatically deleted when the parent node is deleted, so an entire scene can be removed by deleting its topmost node.
    /// 
    /// If `forceReadableName` is `true`, improves the readability of the added `node`. If not named, the `node` is renamed to its type, and if it shares ``name`` with a sibling, a number is suffixed more appropriately. This operation is very slow. As such, it is recommended leaving this to `false`, which assigns a dummy name featuring `@` in both situations.
    /// 
    /// If `internal` is different than ``InternalMode/disabled``, the child will be added as internal node. These nodes are ignored by methods like ``getChildren(includeInternal:)``, unless their parameter `include_internal` is `true`. The intended usage is to hide the internal nodes from the user, so the user won't accidentally delete or modify them. Used by some GUI nodes, e.g. ``ColorPicker``. See ``Node/InternalMode`` for available modes.
    /// 
    /// > Note: If `node` already has a parent, this method will fail. Use ``removeChild(node:)`` first to remove `node` from its current parent. For example:
    /// 
    /// If you need the child node to be added below a specific node in the list of children, use ``addSibling(_:forceReadableName:)`` instead of this method.
    /// 
    /// > Note: If you want a child to be persisted to a ``PackedScene``, you must set ``owner`` in addition to calling ``addChild(node:forceReadableName:`internal`:)``. This is typically relevant for <a href="https://docs.godotengine.org/en//tutorials/plugins/running_code_in_the_editor.html">tool scripts</a> and <a href="https://docs.godotengine.org/en//tutorials/plugins/editor/index.html">editor plugins</a>. If ``addChild(node:forceReadableName:`internal`:)`` is called without setting ``owner``, the newly added ``Node`` will not be visible in the scene tree, though it will be visible in the 2D/3D view.
    /// 
    public final func addChild(node: Node?, forceReadableName: Bool = false, `internal`: Node.InternalMode = .disabled) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: forceReadableName) { pArg1 in
                withUnsafePointer(to: `internal`.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Node.method_add_child, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_child")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    /// Removes a child `node`. The `node`, along with its children, are **not** deleted. To delete a node, see ``queueFree()``.
    /// 
    /// > Note: When this node is inside the tree, this method sets the ``owner`` of the removed `node` (or its descendants) to `null`, if their ``owner`` is no longer an ancestor (see ``isAncestorOf(node:)``).
    /// 
    public final func removeChild(node: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_remove_child, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_reparent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reparent")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3685795103)!
            }
            
        }
        
    }()
    
    /// Changes the parent of this ``Node`` to the `newParent`. The node needs to already have a parent. The node's ``owner`` is preserved if its owner is still reachable from the new location (i.e., the node is still a descendant of the new parent after the operation).
    /// 
    /// If `keepGlobalTransform` is `true`, the node's global transform will be preserved if supported. ``Node2D``, ``Node3D`` and ``Control`` support this argument (but ``Control`` keeps only position).
    /// 
    public final func reparent(newParent: Node?, keepGlobalTransform: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: newParent?.handle) { pArg0 in
            withUnsafePointer(to: keepGlobalTransform) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_reparent, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_child_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_child_count")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 894402480)!
            }
            
        }
        
    }()
    
    /// Returns the number of children of this node.
    /// 
    /// If `includeInternal` is `false`, internal children are not counted (see ``addChild(node:forceReadableName:`internal`:)``'s `internal` parameter).
    /// 
    public final func getChildCount(includeInternal: Bool = false) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: includeInternal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_get_child_count, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_children: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_children")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 873284517)!
            }
            
        }
        
    }()
    
    /// Returns all children of this node inside an ``VariantArray``.
    /// 
    /// If `includeInternal` is `false`, excludes internal children from the returned array (see ``addChild(node:forceReadableName:`internal`:)``'s `internal` parameter).
    /// 
    public final func getChildren(includeInternal: Bool = false) -> TypedArray<Node?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: includeInternal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_get_children, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return TypedArray<Node?>(takingOver: _result)
    }
    
    fileprivate static let method_get_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_child")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 541253412)!
            }
            
        }
        
    }()
    
    /// Fetches a child node by its index. Each child node has an index relative its siblings (see ``getIndex(includeInternal:)``). The first child is at index 0. Negative values can also be used to start from the end of the list. This method can be used in combination with ``getChildCount(includeInternal:)`` to iterate over this node's children. If no child exists at the given index, this method returns `null` and an error is generated.
    /// 
    /// If `includeInternal` is `false`, internal children are ignored (see ``addChild(node:forceReadableName:`internal`:)``'s `internal` parameter).
    /// 
    /// > Note: To fetch a node by ``NodePath``, use ``getNode(path:)``.
    /// 
    public final func getChild(idx: Int32, includeInternal: Bool = false) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: includeInternal) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_get_child, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_has_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_node")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 861721659)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `path` points to a valid node. See also ``getNode(path:)``.
    public final func hasNode(path: NodePath) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_has_node, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2734337346)!
            }
            
        }
        
    }()
    
    /// Fetches a node. The ``NodePath`` can either be a relative path (from this node), or an absolute path (from the ``SceneTree/root``) to a node. If `path` does not point to a valid node, generates an error and returns `null`. Attempts to access methods on the return value will result in an _"Attempt to call <method> on a null instance."_ error.
    /// 
    /// > Note: Fetching by absolute path only works when the node is inside the scene tree (see ``isInsideTree()``).
    /// 
    /// **Example:** Assume this method is called from the Character node, inside the following tree:
    /// 
    /// The following calls will return a valid node:
    /// 
    public final func getNode(path: NodePath) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_get_node, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_node_or_null: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_or_null")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2734337346)!
            }
            
        }
        
    }()
    
    /// Fetches a node by ``NodePath``. Similar to ``getNode(path:)``, but does not generate an error if `path` does not point to a valid node.
    public final func getNodeOrNull(path: NodePath) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_get_node_or_null, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parent")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3160264692)!
            }
            
        }
        
    }()
    
    /// Returns this node's parent node, or `null` if the node doesn't have a parent.
    public final func getParent() -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_get_parent, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_find_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_child")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2008217037)!
            }
            
        }
        
    }()
    
    /// Finds the first descendant of this node whose ``name`` matches `pattern`, returning `null` if no match is found. The matching is done against node names, _not_ their paths, through ``GString/match()``. As such, it is case-sensitive, `"*"` matches zero or more characters, and `"?"` matches any single character.
    /// 
    /// If `recursive` is `false`, only this node's direct children are checked. Nodes are checked in tree order, so this node's first direct child is checked first, then its own direct children, etc., before moving to the second direct child, and so on. Internal children are also included in the search (see `internal` parameter in ``addChild(node:forceReadableName:`internal`:)``).
    /// 
    /// If `owned` is `true`, only descendants with a valid ``owner`` node are checked.
    /// 
    /// > Note: This method can be very slow. Consider storing a reference to the found node in a variable. Alternatively, use ``getNode(path:)`` with unique names (see ``uniqueNameInOwner``).
    /// 
    /// > Note: To find all descendant nodes matching a pattern or a class type, see ``findChildren(pattern:type:recursive:owned:)``.
    /// 
    public final func findChild(pattern: String, recursive: Bool = true, owned: Bool = true) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let pattern = GString(pattern)
        withUnsafePointer(to: pattern.content) { pArg0 in
            withUnsafePointer(to: recursive) { pArg1 in
                withUnsafePointer(to: owned) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Node.method_find_child, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_find_children: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_children")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2560337219)!
            }
            
        }
        
    }()
    
    /// Finds all descendants of this node whose names match `pattern`, returning an empty ``VariantArray`` if no match is found. The matching is done against node names, _not_ their paths, through ``GString/match()``. As such, it is case-sensitive, `"*"` matches zero or more characters, and `"?"` matches any single character.
    /// 
    /// If `type` is not empty, only ancestors inheriting from `type` are included (see ``Object/isClass(_:)``).
    /// 
    /// If `recursive` is `false`, only this node's direct children are checked. Nodes are checked in tree order, so this node's first direct child is checked first, then its own direct children, etc., before moving to the second direct child, and so on. Internal children are also included in the search (see `internal` parameter in ``addChild(node:forceReadableName:`internal`:)``).
    /// 
    /// If `owned` is `true`, only descendants with a valid ``owner`` node are checked.
    /// 
    /// > Note: This method can be very slow. Consider storing references to the found nodes in a variable.
    /// 
    /// > Note: To find a single descendant node matching a pattern, see ``findChild(pattern:recursive:owned:)``.
    /// 
    public final func findChildren(pattern: String, type: String = "", recursive: Bool = true, owned: Bool = true) -> TypedArray<Node?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        let pattern = GString(pattern)
        withUnsafePointer(to: pattern.content) { pArg0 in
            let type = GString(type)
            withUnsafePointer(to: type.content) { pArg1 in
                withUnsafePointer(to: recursive) { pArg2 in
                    withUnsafePointer(to: owned) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Node.method_find_children, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<Node?>(takingOver: _result)
    }
    
    fileprivate static let method_find_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("find_parent")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1140089439)!
            }
            
        }
        
    }()
    
    /// Finds the first ancestor of this node whose ``name`` matches `pattern`, returning `null` if no match is found. The matching is done through ``GString/match()``. As such, it is case-sensitive, `"*"` matches zero or more characters, and `"?"` matches any single character. See also ``findChild(pattern:recursive:owned:)`` and ``findChildren(pattern:type:recursive:owned:)``.
    /// 
    /// > Note: As this method walks upwards in the scene tree, it can be slow in large, deeply nested nodes. Consider storing a reference to the found node in a variable. Alternatively, use ``getNode(path:)`` with unique names (see ``uniqueNameInOwner``).
    /// 
    public final func findParent(pattern: String) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        let pattern = GString(pattern)
        withUnsafePointer(to: pattern.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_find_parent, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_has_node_and_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_node_and_resource")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 861721659)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `path` points to a valid node and its subnames point to a valid ``Resource``, e.g. `Area2D/CollisionShape2D:shape`. Properties that are not ``Resource`` types (such as nodes or other ``Variant`` types) are not considered. See also ``getNodeAndResource(path:)``.
    public final func hasNodeAndResource(path: NodePath) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_has_node_and_resource, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_node_and_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_node_and_resource")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 502563882)!
            }
            
        }
        
    }()
    
    /// Fetches a node and its most nested resource as specified by the ``NodePath``'s subname. Returns an ``VariantArray`` of size `3` where:
    /// 
    /// - Element `0` is the ``Node``, or `null` if not found;
    /// 
    /// - Element `1` is the subname's last nested ``Resource``, or `null` if not found;
    /// 
    /// - Element `2` is the remaining ``NodePath``, referring to an existing, non-``Resource`` property (see ``Object/getIndexed(propertyPath:)``).
    /// 
    /// **Example:** Assume that the child's ``Sprite2D/texture`` has been assigned a ``AtlasTexture``:
    /// 
    public final func getNodeAndResource(path: NodePath) -> VariantArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: VariantArray = VariantArray ()
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_get_node_and_resource, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_inside_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_inside_tree")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this node is currently inside a ``SceneTree``. See also ``getTree()``.
    public final func isInsideTree() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_inside_tree, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_part_of_edited_scene: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_part_of_edited_scene")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is part of the scene currently opened in the editor.
    public final func isPartOfEditedScene() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_part_of_edited_scene, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_ancestor_of: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_ancestor_of")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3093956946)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `node` is a direct or indirect child of this node.
    public final func isAncestorOf(node: Node?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_is_ancestor_of, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_is_greater_than: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_greater_than")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3093956946)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the given `node` occurs later in the scene hierarchy than this node. A node occurring later is usually processed last.
    public final func isGreaterThan(node: Node?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_is_greater_than, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    /// Returns the node's absolute path, relative to the ``SceneTree/root``. If the node is not inside the scene tree, this method fails and returns an empty ``NodePath``.
    public final func getPath() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(Node.method_get_path, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_get_path_to: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_path_to")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 498846349)!
            }
            
        }
        
    }()
    
    /// Returns the relative ``NodePath`` from this node to the specified `node`. Both nodes must be in the same ``SceneTree`` or scene hierarchy, otherwise this method fails and returns an empty ``NodePath``.
    /// 
    /// If `useUniquePath` is `true`, returns the shortest path accounting for this node's unique name (see ``uniqueNameInOwner``).
    /// 
    /// > Note: If you get a relative path which starts from a unique node, the path may be longer than a normal relative path, due to the addition of the unique node's name.
    /// 
    public final func getPathTo(node: Node?, useUniquePath: Bool = false) -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: useUniquePath) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_get_path_to, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_add_to_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_to_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3683006648)!
            }
            
        }
        
    }()
    
    /// Adds the node to the `group`. Groups can be helpful to organize a subset of nodes, for example `"enemies"` or `"collectables"`. See notes in the description, and the group methods in ``SceneTree``.
    /// 
    /// If `persistent` is `true`, the group will be stored when saved inside a ``PackedScene``. All groups created and displayed in the Node dock are persistent.
    /// 
    /// > Note: To improve performance, the order of group names is _not_ guaranteed and may vary between project runs. Therefore, do not rely on the group order.
    /// 
    /// > Note: ``SceneTree``'s group methods will _not_ work on this node if not inside the tree (see ``isInsideTree()``).
    /// 
    public final func addToGroup(_ group: StringName, persistent: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: group.content) { pArg0 in
            withUnsafePointer(to: persistent) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_add_to_group, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_remove_from_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("remove_from_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3304788590)!
            }
            
        }
        
    }()
    
    /// Removes the node from the given `group`. Does nothing if the node is not in the `group`. See also notes in the description, and the ``SceneTree``'s group methods.
    public final func removeFromGroup(_ group: StringName) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: group.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_remove_from_group, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_in_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_in_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2619796661)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this node has been added to the given `group`. See ``addToGroup(_:persistent:)`` and ``removeFromGroup(_:)``. See also notes in the description, and the ``SceneTree``'s group methods.
    public final func isInGroup(_ group: StringName) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: group.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_is_in_group, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_move_child: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("move_child")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3315886247)!
            }
            
        }
        
    }()
    
    /// Moves `childNode` to the given index. A node's index is the order among its siblings. If `toIndex` is negative, the index is counted from the end of the list. See also ``getChild(idx:includeInternal:)`` and ``getIndex(includeInternal:)``.
    /// 
    /// > Note: The processing order of several engine callbacks (``_ready()``, ``_process(delta:)``, etc.) and notifications sent through ``propagateNotification(what:)`` is affected by tree order. ``CanvasItem`` nodes are also rendered in tree order. See also ``processPriority``.
    /// 
    public final func moveChild(childNode: Node?, toIndex: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: childNode?.handle) { pArg0 in
            withUnsafePointer(to: toIndex) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_move_child, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_groups: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_groups")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns an ``VariantArray`` of group names that the node has been added to.
    /// 
    /// > Note: To improve performance, the order of group names is _not_ guaranteed and may vary between project runs. Therefore, do not rely on the group order.
    /// 
    /// > Note: This method may also return some group names starting with an underscore (`_`). These are internally used by the engine. To avoid conflicts, do not use custom groups starting with underscores. To exclude internal groups, see the following code snippet:
    /// 
    public final func getGroups() -> TypedArray<StringName> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Node.method_get_groups, handle, nil, &_result)
        return TypedArray<StringName>(takingOver: _result)
    }
    
    fileprivate static let method_set_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_owner")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1078189570)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_owner(_ owner: Node?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: owner?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_owner, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_owner")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3160264692)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_owner() -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_get_owner, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_index: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_index")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 894402480)!
            }
            
        }
        
    }()
    
    /// Returns this node's order among its siblings. The first node's index is `0`. See also ``getChild(idx:includeInternal:)``.
    /// 
    /// If `includeInternal` is `false`, returns the index ignoring internal children. The first, non-internal child will have an index of `0` (see ``addChild(node:forceReadableName:`internal`:)``'s `internal` parameter).
    /// 
    public final func getIndex(includeInternal: Bool = false) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: includeInternal) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_get_index, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_print_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("print_tree")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Prints the node and its children to the console, recursively. The node does not have to be inside the tree. This method outputs ``NodePath``s relative to this node, and is good for copy/pasting into ``getNode(path:)``. See also ``printTreePretty()``.
    /// 
    /// May print, for example:
    /// 
    public final func printTree() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method_print_tree, handle, nil, nil)
        
    }
    
    fileprivate static let method_print_tree_pretty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("print_tree_pretty")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Prints the node and its children to the console, recursively. The node does not have to be inside the tree. Similar to ``printTree()``, but the graphical representation looks like what is displayed in the editor's Scene dock. It is useful for inspecting larger trees.
    /// 
    /// May print, for example:
    /// 
    public final func printTreePretty() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method_print_tree_pretty, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_tree_string: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tree_string")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Returns the tree as a ``String``. Used mainly for debugging purposes. This version displays the path relative to the current node, and is good for copy/pasting into the ``getNode(path:)`` function. It also can be used in game UI/UX.
    /// 
    /// May print, for example:
    /// 
    public final func getTreeString() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Node.method_get_tree_string, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_tree_string_pretty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tree_string_pretty")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2841200299)!
            }
            
        }
        
    }()
    
    /// Similar to ``getTreeString()``, this returns the tree as a ``String``. This version displays a more graphical representation similar to what is displayed in the Scene Dock. It is useful for inspecting larger trees.
    /// 
    /// May print, for example:
    /// 
    public final func getTreeStringPretty() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Node.method_get_tree_string_pretty, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_scene_file_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scene_file_path")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scene_file_path(_ sceneFilePath: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let sceneFilePath = GString(sceneFilePath)
        withUnsafePointer(to: sceneFilePath.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_scene_file_path, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scene_file_path: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scene_file_path")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scene_file_path() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Node.method_get_scene_file_path, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_propagate_notification: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("propagate_notification")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Calls ``Object/notification(what:reversed:)`` with `what` on this node and all of its children, recursively.
    public final func propagateNotification(what: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: what) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_propagate_notification, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_propagate_call: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("propagate_call")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1871007965)!
            }
            
        }
        
    }()
    
    /// Calls the given `method` name, passing `args` as arguments, on this node and all of its children, recursively.
    /// 
    /// If `parentFirst` is `true`, the method is called on this node first, then on all of its children. If `false`, the children's methods are called first.
    /// 
    public final func propagateCall(method: StringName, args: VariantArray = VariantArray (), parentFirst: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: args.content) { pArg1 in
                withUnsafePointer(to: parentFirst) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Node.method_propagate_call, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_physics_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_physics_process")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables physics (fixed framerate) processing. When a node is being processed, it will receive a ``notificationPhysicsProcess`` at a fixed (usually 60 FPS, see ``Engine/physicsTicksPerSecond`` to change) interval (and the ``_physicsProcess(delta:)`` callback will be called if it exists).
    /// 
    /// > Note: If ``_physicsProcess(delta:)`` is overridden, this will be automatically enabled before ``_ready()`` is called.
    /// 
    public final func setPhysicsProcess(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_physics_process, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_physics_process_delta_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_physics_process_delta_time")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the time elapsed (in seconds) since the last physics callback. This value is identical to ``_physicsProcess(delta:)``'s `delta` parameter, and is often consistent at run-time, unless ``Engine/physicsTicksPerSecond`` is changed. See also ``notificationPhysicsProcess``.
    /// 
    /// > Note: The returned value will be larger than expected if running at a framerate lower than ``Engine/physicsTicksPerSecond`` / ``Engine/maxPhysicsStepsPerFrame`` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both ``_process(delta:)`` and ``_physicsProcess(delta:)``. As a result, avoid using `delta` for time measurements in real-world seconds. Use the ``Time`` singleton's methods for this purpose instead, such as ``Time/getTicksUsec()``.
    /// 
    public final func getPhysicsProcessDeltaTime() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Node.method_get_physics_process_delta_time, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_physics_processing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_physics_processing")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if physics processing is enabled (see ``setPhysicsProcess(enable:)``).
    public final func isPhysicsProcessing() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_physics_processing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_process_delta_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_delta_time")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1740695150)!
            }
            
        }
        
    }()
    
    /// Returns the time elapsed (in seconds) since the last process callback. This value is identical to ``_process(delta:)``'s `delta` parameter, and may vary from frame to frame. See also ``notificationProcess``.
    /// 
    /// > Note: The returned value will be larger than expected if running at a framerate lower than ``Engine/physicsTicksPerSecond`` / ``Engine/maxPhysicsStepsPerFrame`` FPS. This is done to avoid "spiral of death" scenarios where performance would plummet due to an ever-increasing number of physics steps per frame. This behavior affects both ``_process(delta:)`` and ``_physicsProcess(delta:)``. As a result, avoid using `delta` for time measurements in real-world seconds. Use the ``Time`` singleton's methods for this purpose instead, such as ``Time/getTicksUsec()``.
    /// 
    public final func getProcessDeltaTime() -> Double {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Double = 0.0
        gi.object_method_bind_ptrcall(Node.method_get_process_delta_time, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables processing. When a node is being processed, it will receive a ``notificationProcess`` on every drawn frame (and the ``_process(delta:)`` callback will be called if it exists).
    /// 
    /// > Note: If ``_process(delta:)`` is overridden, this will be automatically enabled before ``_ready()`` is called.
    /// 
    /// > Note: This method only affects the ``_process(delta:)`` callback, i.e. it has no effect on other callbacks like ``_physicsProcess(delta:)``. If you want to disable all processing for the node, set ``processMode`` to ``ProcessMode/disabled``.
    /// 
    public final func setProcess(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_process_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_priority")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_process_priority(_ priority: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: priority) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_priority, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_process_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_priority")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_process_priority() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Node.method_get_process_priority, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_physics_process_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_physics_process_priority")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_physics_process_priority(_ priority: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: priority) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_physics_process_priority, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_physics_process_priority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_physics_process_priority")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_physics_process_priority() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Node.method_get_physics_process_priority, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_processing: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_processing")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if processing is enabled (see ``setProcess(enable:)``).
    public final func isProcessing() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_processing, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables input processing.
    /// 
    /// > Note: If ``_input(event:)`` is overridden, this will be automatically enabled before ``_ready()`` is called. Input processing is also already enabled for GUI controls, such as ``Button`` and ``TextEdit``.
    /// 
    public final func setProcessInput(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_processing_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_processing_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is processing input (see ``setProcessInput(enable:)``).
    public final func isProcessingInput() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_processing_input, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_shortcut_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_shortcut_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables shortcut processing for this node.
    /// 
    /// > Note: If ``_shortcutInput(event:)`` is overridden, this will be automatically enabled before ``_ready()`` is called.
    /// 
    public final func setProcessShortcutInput(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_shortcut_input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_processing_shortcut_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_processing_shortcut_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is processing shortcuts (see ``setProcessShortcutInput(enable:)``).
    public final func isProcessingShortcutInput() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_processing_shortcut_input, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_unhandled_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_unhandled_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables unhandled input processing. It enables the node to receive all input that was not previously handled (usually by a ``Control``).
    /// 
    /// > Note: If ``_unhandledInput(event:)`` is overridden, this will be automatically enabled before ``_ready()`` is called. Unhandled input processing is also already enabled for GUI controls, such as ``Button`` and ``TextEdit``.
    /// 
    public final func setProcessUnhandledInput(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_unhandled_input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_processing_unhandled_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_processing_unhandled_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is processing unhandled input (see ``setProcessUnhandledInput(enable:)``).
    public final func isProcessingUnhandledInput() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_processing_unhandled_input, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_unhandled_key_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_unhandled_key_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables unhandled key input processing.
    /// 
    /// > Note: If ``_unhandledKeyInput(event:)`` is overridden, this will be automatically enabled before ``_ready()`` is called.
    /// 
    public final func setProcessUnhandledKeyInput(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_unhandled_key_input, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_processing_unhandled_key_input: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_processing_unhandled_key_input")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is processing unhandled key input (see ``setProcessUnhandledKeyInput(enable:)``).
    public final func isProcessingUnhandledKeyInput() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_processing_unhandled_key_input, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_mode")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1841290486)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_process_mode(_ mode: Node.ProcessMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_process_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_mode")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 739966102)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_process_mode() -> Node.ProcessMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Node.method_get_process_mode, handle, nil, &_result)
        return Node.ProcessMode (rawValue: _result)!
    }
    
    fileprivate static let method_can_process: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("can_process")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node can receive processing notifications and input callbacks (``notificationProcess``, ``_input(event:)``, etc.) from the ``SceneTree`` and ``Viewport``. The returned value depends on ``processMode``:
    /// 
    /// - If set to ``ProcessMode/pausable``, returns `true` when the game is processing, i.e. ``SceneTree/paused`` is `false`;
    /// 
    /// - If set to ``ProcessMode/whenPaused``, returns `true` when the game is paused, i.e. ``SceneTree/paused`` is `true`;
    /// 
    /// - If set to ``ProcessMode/always``, always returns `true`;
    /// 
    /// - If set to ``ProcessMode/disabled``, always returns `false`;
    /// 
    /// - If set to ``ProcessMode/inherit``, use the parent node's ``processMode`` to determine the result.
    /// 
    /// If the node is not inside the tree, returns `false` no matter the value of ``processMode``.
    /// 
    public final func canProcess() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_can_process, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_thread_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_thread_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2275442745)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_process_thread_group(_ mode: Node.ProcessThreadGroup) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_thread_group, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_process_thread_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_thread_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1866404740)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_process_thread_group() -> Node.ProcessThreadGroup {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Node.method_get_process_thread_group, handle, nil, &_result)
        return Node.ProcessThreadGroup (rawValue: _result)!
    }
    
    fileprivate static let method_set_process_thread_messages: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_thread_messages")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1357280998)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_process_thread_messages(_ flags: Node.ProcessThreadMessages) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: flags.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_thread_messages, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_process_thread_messages: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_thread_messages")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4228993612)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_process_thread_messages() -> Node.ProcessThreadMessages {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Node.ProcessThreadMessages = Node.ProcessThreadMessages ()
        gi.object_method_bind_ptrcall(Node.method_get_process_thread_messages, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_thread_group_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_thread_group_order")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_process_thread_group_order(_ order: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: order) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_thread_group_order, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_process_thread_group_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_process_thread_group_order")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_process_thread_group_order() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Node.method_get_process_thread_group_order, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_display_folded: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_display_folded")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, the node appears folded in the Scene dock. As a result, all of its children are hidden. This method is intended to be used in editor plugins and tools, but it also works in release builds. See also ``isDisplayedFolded()``.
    public final func setDisplayFolded(fold: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: fold) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_display_folded, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_displayed_folded: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_displayed_folded")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is folded (collapsed) in the Scene dock. This method is intended to be used in editor plugins and tools. See also ``setDisplayFolded(fold:)``.
    public final func isDisplayedFolded() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_displayed_folded, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_process_internal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_process_internal")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables internal processing for this node. Internal processing happens in isolation from the normal ``_process(delta:)`` calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or processing is disabled for scripting (``setProcess(enable:)``).
    /// 
    /// > Warning: Built-in nodes rely on internal processing for their internal logic. Disabling it is unsafe and may lead to unexpected behavior. Use this method if you know what you are doing.
    /// 
    public final func setProcessInternal(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_process_internal, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_processing_internal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_processing_internal")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if internal processing is enabled (see ``setProcessInternal(enable:)``).
    public final func isProcessingInternal() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_processing_internal, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_physics_process_internal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_physics_process_internal")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, enables internal physics for this node. Internal physics processing happens in isolation from the normal ``_physicsProcess(delta:)`` calls and is used by some nodes internally to guarantee proper functioning even if the node is paused or physics processing is disabled for scripting (``setPhysicsProcess(enable:)``).
    /// 
    /// > Warning: Built-in nodes rely on internal processing for their internal logic. Disabling it is unsafe and may lead to unexpected behavior. Use this method if you know what you are doing.
    /// 
    public final func setPhysicsProcessInternal(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_physics_process_internal, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_physics_processing_internal: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_physics_processing_internal")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if internal physics processing is enabled (see ``setPhysicsProcessInternal(enable:)``).
    public final func isPhysicsProcessingInternal() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_physics_processing_internal, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_physics_interpolation_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_physics_interpolation_mode")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3202404928)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_physics_interpolation_mode(_ mode: Node.PhysicsInterpolationMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_physics_interpolation_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_physics_interpolation_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_physics_interpolation_mode")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2920385216)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_physics_interpolation_mode() -> Node.PhysicsInterpolationMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Node.method_get_physics_interpolation_mode, handle, nil, &_result)
        return Node.PhysicsInterpolationMode (rawValue: _result)!
    }
    
    fileprivate static let method_is_physics_interpolated: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_physics_interpolated")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if physics interpolation is enabled for this node (see ``physicsInterpolationMode``).
    /// 
    /// > Note: Interpolation will only be active if both the flag is set **and** physics interpolation is enabled within the ``SceneTree``. This can be tested using ``isPhysicsInterpolatedAndEnabled()``.
    /// 
    public final func isPhysicsInterpolated() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_physics_interpolated, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_physics_interpolated_and_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_physics_interpolated_and_enabled")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if physics interpolation is enabled (see ``physicsInterpolationMode``) **and** enabled in the ``SceneTree``.
    /// 
    /// This is a convenience version of ``isPhysicsInterpolated()`` that also checks whether physics interpolation is enabled globally.
    /// 
    /// See ``SceneTree/physicsInterpolation`` and ``ProjectSettings/physics/common/physicsInterpolation``.
    /// 
    public final func isPhysicsInterpolatedAndEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_physics_interpolated_and_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_reset_physics_interpolation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("reset_physics_interpolation")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// When physics interpolation is active, moving a node to a radically different transform (such as placement within a level) can result in a visible glitch as the object is rendered moving from the old to new position over the physics tick.
    /// 
    /// That glitch can be prevented by calling this method, which temporarily disables interpolation until the physics tick is complete.
    /// 
    /// The notification ``notificationResetPhysicsInterpolation`` will be received by the node and all children recursively.
    /// 
    /// > Note: This function should be called **after** moving the node, rather than before.
    /// 
    public final func resetPhysicsInterpolation() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method_reset_physics_interpolation, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_auto_translate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_auto_translate_mode")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 776149714)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_auto_translate_mode(_ mode: Node.AutoTranslateMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: mode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_auto_translate_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_auto_translate_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_auto_translate_mode")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2498906432)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_auto_translate_mode() -> Node.AutoTranslateMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Node.method_get_auto_translate_mode, handle, nil, &_result)
        return Node.AutoTranslateMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_translation_domain_inherited: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_translation_domain_inherited")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Makes this node inherit the translation domain from its parent node. If this node has no parent, the main translation domain will be used.
    /// 
    /// This is the default behavior for all nodes. Calling ``Object/setTranslationDomain(_:)`` disables this behavior.
    /// 
    public final func setTranslationDomainInherited() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method_set_translation_domain_inherited, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_window: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_window")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1757182445)!
            }
            
        }
        
    }()
    
    /// Returns the ``Window`` that contains this node. If the node is in the main window, this is equivalent to getting the root node (`get_tree().get_root()`).
    public final func getWindow() -> Window? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_get_window, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_last_exclusive_window: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_last_exclusive_window")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1757182445)!
            }
            
        }
        
    }()
    
    /// Returns the ``Window`` that contains this node, or the last exclusive child in a chain of windows starting with the one that contains this node.
    public final func getLastExclusiveWindow() -> Window? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_get_last_exclusive_window, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_get_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tree")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2958820483)!
            }
            
        }
        
    }()
    
    /// Returns the ``SceneTree`` that contains this node. If this node is not inside the tree, generates an error and returns `null`. See also ``isInsideTree()``.
    public final func getTree() -> SceneTree? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_get_tree, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_create_tween: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_tween")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3426978995)!
            }
            
        }
        
    }()
    
    /// Creates a new ``Tween`` and binds it to this node.
    /// 
    /// This is the equivalent of doing:
    /// 
    /// The Tween will start automatically on the next process frame or physics frame (depending on ``Tween.TweenProcessMode``). See ``Tween/bindNode(_:)`` for more info on Tweens bound to nodes.
    /// 
    /// > Note: The method can still be used when the node is not inside ``SceneTree``. It can fail in an unlikely case of using a custom ``MainLoop``.
    /// 
    public final func createTween() -> Tween? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_create_tween, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_duplicate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("duplicate")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3511555459)!
            }
            
        }
        
    }()
    
    /// Duplicates the node, returning a new node with all of its properties, signals, groups, and children copied from the original. The behavior can be tweaked through the `flags` (see ``Node/DuplicateFlags``).
    /// 
    /// > Note: For nodes with a ``Script`` attached, if ``Object/_init()`` has been defined with required parameters, the duplicated node will not have a ``Script``.
    /// 
    public final func duplicate(flags: Int32 = 15) -> Node? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: flags) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_duplicate, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_replace_by: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("replace_by")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2570952461)!
            }
            
        }
        
    }()
    
    /// Replaces this node by the given `node`. All children of this node are moved to `node`.
    /// 
    /// If `keepGroups` is `true`, the `node` is added to the same groups that the replaced node is in (see ``addToGroup(_:persistent:)``).
    /// 
    /// > Warning: The replaced node is removed from the tree, but it is **not** deleted. To prevent memory leaks, store a reference to the node in a variable, or use ``Object/free()``.
    /// 
    public final func replaceBy(node: Node?, keepGroups: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: keepGroups) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_replace_by, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_scene_instance_load_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scene_instance_load_placeholder")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// If set to `true`, the node becomes a ``InstancePlaceholder`` when packed and instantiated from a ``PackedScene``. See also ``getSceneInstanceLoadPlaceholder()``.
    public final func setSceneInstanceLoadPlaceholder(_ loadPlaceholder: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: loadPlaceholder) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_scene_instance_load_placeholder, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scene_instance_load_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scene_instance_load_placeholder")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if this node is an instance load placeholder. See ``InstancePlaceholder`` and ``setSceneInstanceLoadPlaceholder(_:)``.
    public final func getSceneInstanceLoadPlaceholder() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_get_scene_instance_load_placeholder, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_editable_instance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editable_instance")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2731852923)!
            }
            
        }
        
    }()
    
    /// Set to `true` to allow all nodes owned by `node` to be available, and editable, in the Scene dock, even if their ``owner`` is not the scene root. This method is intended to be used in editor plugins and tools, but it also works in release builds. See also ``isEditableInstance(node:)``.
    public final func setEditableInstance(node: Node?, isEditable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: isEditable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_set_editable_instance, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_editable_instance: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_editable_instance")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3093956946)!
            }
            
        }
        
    }()
    
    /// Returns `true` if `node` has editable children enabled relative to this node. This method is intended to be used in editor plugins and tools. See also ``setEditableInstance(node:isEditable:)``.
    public final func isEditableInstance(node: Node?) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: node?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_is_editable_instance, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_viewport: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_viewport")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3596683776)!
            }
            
        }
        
    }()
    
    /// Returns the node's closest ``Viewport`` ancestor, if the node is inside the tree. Otherwise, returns `null`.
    public final func getViewport() -> Viewport? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_get_viewport, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_queue_free: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("queue_free")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Queues this node to be deleted at the end of the current frame. When deleted, all of its children are deleted as well, and all references to the node and its children become invalid.
    /// 
    /// Unlike with ``Object/free()``, the node is not deleted instantly, and it can still be accessed before deletion. It is also safe to call ``queueFree()`` multiple times. Use ``Object/isQueuedForDeletion()`` to check if the node will be deleted at the end of the frame.
    /// 
    /// > Note: The node will only be freed after all other deferred calls are finished. Using this method is not always the same as calling ``Object/free()`` through ``Object/callDeferred(method:)``.
    /// 
    public final func queueFree() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method_queue_free, handle, nil, nil)
        
    }
    
    fileprivate static let method_request_ready: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("request_ready")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Requests ``_ready()`` to be called again the next time the node enters the tree. Does **not** immediately call ``_ready()``.
    /// 
    /// > Note: This method only affects the current node. If the node's children also need to request ready, this method needs to be called for each one of them. When the node and its children enter the tree again, the order of ``_ready()`` callbacks will be the same as normal.
    /// 
    public final func requestReady() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method_request_ready, handle, nil, nil)
        
    }
    
    fileprivate static let method_is_node_ready: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_node_ready")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is ready, i.e. it's inside scene tree and all its children are initialized.
    /// 
    /// ``requestReady()`` resets it back to `false`.
    /// 
    public final func isNodeReady() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_node_ready, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_multiplayer_authority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_multiplayer_authority")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 972357352)!
            }
            
        }
        
    }()
    
    /// Sets the node's multiplayer authority to the peer with the given peer `id`. The multiplayer authority is the peer that has authority over the node on the network. Defaults to peer ID 1 (the server). Useful in conjunction with ``rpcConfig(method:config:)`` and the ``MultiplayerAPI``.
    /// 
    /// If `recursive` is `true`, the given peer is recursively set as the authority for all children of this node.
    /// 
    /// > Warning: This does **not** automatically replicate the new authority to other peers. It is the developer's responsibility to do so. You may replicate the new authority's information using ``MultiplayerSpawner/spawnFunction``, an RPC, or a ``MultiplayerSynchronizer``. Furthermore, the parent's authority does **not** propagate to newly added children.
    /// 
    public final func setMultiplayerAuthority(id: Int32, recursive: Bool = true) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id) { pArg0 in
            withUnsafePointer(to: recursive) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_set_multiplayer_authority, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_multiplayer_authority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_multiplayer_authority")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the peer ID of the multiplayer authority for this node. See ``setMultiplayerAuthority(id:recursive:)``.
    public final func getMultiplayerAuthority() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(Node.method_get_multiplayer_authority, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_multiplayer_authority: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_multiplayer_authority")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the local system is the multiplayer authority of this node.
    public final func isMultiplayerAuthority() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_multiplayer_authority, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_multiplayer: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_multiplayer")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 406750475)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_multiplayer() -> MultiplayerAPI? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node.method_get_multiplayer, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_rpc_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rpc_config")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Changes the RPC configuration for the given `method`. `config` should either be `null` to disable the feature (as by default), or a ``VariantDictionary`` containing the following entries:
    /// 
    /// - `rpc_mode`: see ``MultiplayerAPI.RPCMode``;
    /// 
    /// - `transfer_mode`: see ``MultiplayerPeer.TransferMode``;
    /// 
    /// - `call_local`: if `true`, the method will also be called locally;
    /// 
    /// - `channel`: an integer representing the channel to send the RPC on.
    /// 
    /// > Note: In GDScript, this method corresponds to the [annotation @GDScript.@rpc] annotation, with various parameters passed (`@rpc(any)`, `@rpc(authority)`...). See also the <a href="https://docs.godotengine.org/en//tutorials/networking/high_level_multiplayer.html">high-level multiplayer</a> tutorial.
    /// 
    public final func rpcConfig(method: StringName, config: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: method.content) { pArg0 in
            withUnsafePointer(to: config.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_rpc_config, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rpc_config: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rpc_config")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1214101251)!
            }
            
        }
        
    }()
    
    /// Returns a ``VariantDictionary`` mapping method names to their RPC configuration defined for this node using ``rpcConfig(method:config:)``.
    public final func getRpcConfig() -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        gi.object_method_bind_ptrcall(Node.method_get_rpc_config, handle, nil, &_result)
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_editor_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_editor_description")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_editor_description(_ editorDescription: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let editorDescription = GString(editorDescription)
        withUnsafePointer(to: editorDescription.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_editor_description, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_editor_description: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_editor_description")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_editor_description() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(Node.method_get_editor_description, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_set_unique_name_in_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_unique_name_in_owner")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_unique_name_in_owner(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_set_unique_name_in_owner, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_unique_name_in_owner: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_unique_name_in_owner")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_unique_name_in_owner() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node.method_is_unique_name_in_owner, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_atr: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("atr")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3344478075)!
            }
            
        }
        
    }()
    
    /// Translates a `message`, using the translation catalogs configured in the Project Settings. Further `context` can be specified to help with the translation. Note that most ``Control`` nodes automatically translate their strings, so this method is mostly useful for formatted strings or custom drawn text.
    /// 
    /// This method works the same as ``Object/tr(message:context:)``, with the addition of respecting the ``autoTranslateMode`` state.
    /// 
    /// If ``Object/canTranslateMessages()`` is `false`, or no translation is available, this method returns the `message` without changes. See ``Object/setMessageTranslation(enable:)``.
    /// 
    /// For detailed examples, see <a href="https://docs.godotengine.org/en//tutorials/i18n/internationalizing_games.html">Internationalizing games</a>.
    /// 
    public final func atr(message: String, context: StringName = StringName ("")) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let message = GString(message)
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: context.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_atr, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_atr_n: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("atr_n")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 259354841)!
            }
            
        }
        
    }()
    
    /// Translates a `message` or `pluralMessage`, using the translation catalogs configured in the Project Settings. Further `context` can be specified to help with the translation.
    /// 
    /// This method works the same as ``Object/trN(message:pluralMessage:n:context:)``, with the addition of respecting the ``autoTranslateMode`` state.
    /// 
    /// If ``Object/canTranslateMessages()`` is `false`, or no translation is available, this method returns `message` or `pluralMessage`, without changes. See ``Object/setMessageTranslation(enable:)``.
    /// 
    /// The `n` is the number, or amount, of the message's subject. It is used by the translation system to fetch the correct plural form for the current language.
    /// 
    /// For detailed examples, see <a href="https://docs.godotengine.org/en//tutorials/i18n/localization_using_gettext.html">Localization using gettext</a>.
    /// 
    /// > Note: Negative and float numbers may not properly apply to some countable subjects. It's recommended to handle these cases with ``atr(message:context:)``.
    /// 
    public final func atrN(message: String, pluralMessage: StringName, n: Int32, context: StringName = StringName ("")) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        let message = GString(message)
        withUnsafePointer(to: message.content) { pArg0 in
            withUnsafePointer(to: pluralMessage.content) { pArg1 in
                withUnsafePointer(to: n) { pArg2 in
                    withUnsafePointer(to: context.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Node.method_atr_n, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_rpc: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rpc")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4047867050)!
            }
            
        }
        
    }()
    
    /// Sends a remote procedure call request for the given `method` to peers on the network (and locally), sending additional arguments to the method called by the RPC. The call request will only be received by nodes with the same ``NodePath``, including the exact same ``name``. Behavior depends on the RPC configuration for the given `method` (see ``rpcConfig(method:config:)`` and [annotation @GDScript.@rpc]). By default, methods are not exposed to RPCs.
    /// 
    /// May return ``GodotError/ok`` if the call is successful, ``GodotError/errInvalidParameter`` if the arguments passed in the `method` do not match, ``GodotError/errUnconfigured`` if the node's ``multiplayer`` cannot be fetched (such as when the node is not inside the tree), ``GodotError/errConnectionError`` if ``multiplayer``'s connection is not available.
    /// 
    /// > Note: You can only safely use RPCs on clients after you received the [signal MultiplayerAPI.connected_to_server] signal from the ``MultiplayerAPI``. You also need to keep track of the connection state, either by the ``MultiplayerAPI`` signals like [signal MultiplayerAPI.server_disconnected] or by checking (`get_multiplayer().peer.get_connection_status() == CONNECTION_CONNECTED`).
    /// 
    public final func rpc(method: StringName, _ arguments: Variant?...) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let method = method.toVariant()
        withUnsafePointer(to: method.content) { pArg0 in
            if arguments.isEmpty {
                withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                        gi.object_method_bind_call(Node.method_rpc, handle, pArgs, 1, &_result, nil)
                    }
                    
                }
                
            } else {
                // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 1 + arguments.count) { pArgsBuffer in
                    defer { pArgsBuffer.deinitialize() }
                    guard let pArgs = pArgsBuffer.baseAddress else {
                        fatalError("pArgsBuffer.baseAddress is nil")
                    }
                    pArgsBuffer.initializeElement(at: 0, to: pArg0)
                    // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                        defer { contentsBuffer.deinitialize() }
                        guard let contentsPtr = contentsBuffer.baseAddress else {
                            fatalError("contentsBuffer.baseAddress is nil")
                        }
                        
                        for i in 0..<arguments.count {
                            // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                            contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                            // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                            pArgsBuffer.initializeElement(at: 1 + i, to: contentsPtr + i)
                        }
                    
                        gi.object_method_bind_call(Node.method_rpc, handle, pArgs, Int64(1 + arguments.count), &_result, nil)
                    }                           
                }
                
            }
        }
        
        guard let variant = Variant(copying: _result) else {
            return .ok
        }
        
        guard let errorCode = Int(variant) else {
            return .ok
        }
        
        return GodotError(rawValue: Int64(errorCode))!                
    }
    
    fileprivate static let method_rpc_id: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rpc_id")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 361499283)!
            }
            
        }
        
    }()
    
    /// Sends a ``rpc(method:)`` to a specific peer identified by `peerId` (see ``MultiplayerPeer/setTargetPeer(id:)``).
    /// 
    /// May return ``GodotError/ok`` if the call is successful, ``GodotError/errInvalidParameter`` if the arguments passed in the `method` do not match, ``GodotError/errUnconfigured`` if the node's ``multiplayer`` cannot be fetched (such as when the node is not inside the tree), ``GodotError/errConnectionError`` if ``multiplayer``'s connection is not available.
    /// 
    public final func rpcId(peerId: Int64, method: StringName, _ arguments: Variant?...) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let peerId = peerId.toVariant()
        withUnsafePointer(to: peerId.content) { pArg0 in
            let method = method.toVariant()
            withUnsafePointer(to: method.content) { pArg1 in
                if arguments.isEmpty {
                    withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                            gi.object_method_bind_call(Node.method_rpc_id, handle, pArgs, 2, &_result, nil)
                        }
                        
                    }
                    
                } else {
                    // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 2 + arguments.count) { pArgsBuffer in
                        defer { pArgsBuffer.deinitialize() }
                        guard let pArgs = pArgsBuffer.baseAddress else {
                            fatalError("pArgsBuffer.baseAddress is nil")
                        }
                        pArgsBuffer.initializeElement(at: 0, to: pArg0)
                        pArgsBuffer.initializeElement(at: 1, to: pArg1)
                        // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                        withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                            defer { contentsBuffer.deinitialize() }
                            guard let contentsPtr = contentsBuffer.baseAddress else {
                                fatalError("contentsBuffer.baseAddress is nil")
                            }
                            
                            for i in 0..<arguments.count {
                                // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                                contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                                // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                                pArgsBuffer.initializeElement(at: 2 + i, to: contentsPtr + i)
                            }
                        
                            gi.object_method_bind_call(Node.method_rpc_id, handle, pArgs, Int64(2 + arguments.count), &_result, nil)
                        }                           
                    }
                    
                }
            }
            
        }
        
        guard let variant = Variant(copying: _result) else {
            return .ok
        }
        
        guard let errorCode = Int(variant) else {
            return .ok
        }
        
        return GodotError(rawValue: Int64(errorCode))!                
    }
    
    fileprivate static let method_update_configuration_warnings: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update_configuration_warnings")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Refreshes the warnings displayed for this node in the Scene dock. Use ``_getConfigurationWarnings()`` to customize the warning messages to display.
    public final func updateConfigurationWarnings() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node.method_update_configuration_warnings, handle, nil, nil)
        
    }
    
    fileprivate static let method_call_deferred_thread_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("call_deferred_thread_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3400424181)!
            }
            
        }
        
    }()
    
    /// This function is similar to ``Object/callDeferred(method:)`` except that the call will take place when the node thread group is processed. If the node thread group processes in sub-threads, then the call will be done on that thread, right before ``notificationProcess`` or ``notificationPhysicsProcess``, the ``_process(delta:)`` or ``_physicsProcess(delta:)`` or their internal versions are called.
    public final func callDeferredThreadGroup(method: StringName, _ arguments: Variant?...) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let method = method.toVariant()
        withUnsafePointer(to: method.content) { pArg0 in
            if arguments.isEmpty {
                withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                        gi.object_method_bind_call(Node.method_call_deferred_thread_group, handle, pArgs, 1, &_result, nil)
                    }
                    
                }
                
            } else {
                // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 1 + arguments.count) { pArgsBuffer in
                    defer { pArgsBuffer.deinitialize() }
                    guard let pArgs = pArgsBuffer.baseAddress else {
                        fatalError("pArgsBuffer.baseAddress is nil")
                    }
                    pArgsBuffer.initializeElement(at: 0, to: pArg0)
                    // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                        defer { contentsBuffer.deinitialize() }
                        guard let contentsPtr = contentsBuffer.baseAddress else {
                            fatalError("contentsBuffer.baseAddress is nil")
                        }
                        
                        for i in 0..<arguments.count {
                            // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                            contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                            // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                            pArgsBuffer.initializeElement(at: 1 + i, to: contentsPtr + i)
                        }
                    
                        gi.object_method_bind_call(Node.method_call_deferred_thread_group, handle, pArgs, Int64(1 + arguments.count), &_result, nil)
                    }                           
                }
                
            }
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_deferred_thread_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_deferred_thread_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Similar to ``callDeferredThreadGroup(method:)``, but for setting properties.
    public final func setDeferredThreadGroup(property: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_set_deferred_thread_group, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_notify_deferred_thread_group: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("notify_deferred_thread_group")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Similar to ``callDeferredThreadGroup(method:)``, but for notifications.
    public final func notifyDeferredThreadGroup(what: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: what) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_notify_deferred_thread_group, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_call_thread_safe: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("call_thread_safe")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3400424181)!
            }
            
        }
        
    }()
    
    /// This function ensures that the calling of this function will succeed, no matter whether it's being done from a thread or not. If called from a thread that is not allowed to call the function, the call will become deferred. Otherwise, the call will go through directly.
    public final func callThreadSafe(method: StringName, _ arguments: Variant?...) -> Variant? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Variant.ContentType = Variant.zero
        let method = method.toVariant()
        withUnsafePointer(to: method.content) { pArg0 in
            if arguments.isEmpty {
                withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                        gi.object_method_bind_call(Node.method_call_thread_safe, handle, pArgs, 1, &_result, nil)
                    }
                    
                }
                
            } else {
                // A temporary allocation containing pointers to `Variant.ContentType` of marshaled arguments
                withUnsafeTemporaryAllocation(of: UnsafeRawPointer?.self, capacity: 1 + arguments.count) { pArgsBuffer in
                    defer { pArgsBuffer.deinitialize() }
                    guard let pArgs = pArgsBuffer.baseAddress else {
                        fatalError("pArgsBuffer.baseAddress is nil")
                    }
                    pArgsBuffer.initializeElement(at: 0, to: pArg0)
                    // A temporary allocation containing `Variant.ContentType` of marshaled arguments
                    withUnsafeTemporaryAllocation(of: Variant.ContentType.self, capacity: arguments.count) { contentsBuffer in
                        defer { contentsBuffer.deinitialize() }
                        guard let contentsPtr = contentsBuffer.baseAddress else {
                            fatalError("contentsBuffer.baseAddress is nil")
                        }
                        
                        for i in 0..<arguments.count {
                            // Copy `content`s of the variadic `Variant`s into `contentBuffer`
                            contentsBuffer.initializeElement(at: i, to: arguments[i].content)
                            // Initialize `pArgs` elements following mandatory arguments to point at respective contents of `contentsBuffer`                                        
                            pArgsBuffer.initializeElement(at: 1 + i, to: contentsPtr + i)
                        }
                    
                        gi.object_method_bind_call(Node.method_call_thread_safe, handle, pArgs, Int64(1 + arguments.count), &_result, nil)
                    }                           
                }
                
            }
        }
        
        return Variant(takingOver: _result)
    }
    
    fileprivate static let method_set_thread_safe: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_thread_safe")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3776071444)!
            }
            
        }
        
    }()
    
    /// Similar to ``callThreadSafe(method:)``, but for setting properties.
    public final func setThreadSafe(property: StringName, value: Variant?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: property.content) { pArg0 in
            withUnsafePointer(to: value.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node.method_set_thread_safe, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_notify_thread_safe: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("notify_thread_safe")
        return withUnsafePointer(to: &Node.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Similar to ``callThreadSafe(method:)``, but for notifications.
    public final func notifyThreadSafe(what: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: what) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node.method_notify_thread_safe, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    override class func getVirtualDispatcher(name: StringName) -> GDExtensionClassCallVirtual? {
        guard implementedOverrides().contains(name) else { return nil }
        switch name.description {
            case "_enter_tree":
                return _Node_proxy_enter_tree
            case "_exit_tree":
                return _Node_proxy_exit_tree
            case "_get_configuration_warnings":
                return _Node_proxy_get_configuration_warnings
            case "_input":
                return _Node_proxy_input
            case "_physics_process":
                return _Node_proxy_physics_process
            case "_process":
                return _Node_proxy_process
            case "_ready":
                return _Node_proxy_ready
            case "_shortcut_input":
                return _Node_proxy_shortcut_input
            case "_unhandled_input":
                return _Node_proxy_unhandled_input
            case "_unhandled_key_input":
                return _Node_proxy_unhandled_key_input
            default:
                return super.getVirtualDispatcher (name: name)
        }
        
    }
    
    // Signals 
    /// Emitted when the node is considered ready, after ``_ready()`` is called.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.ready.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var ready: SimpleSignal { SimpleSignal (target: self, signalName: "ready") }
    
    /// Emitted when the node's ``name`` is changed, if the node is inside the tree.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.renamed.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var renamed: SimpleSignal { SimpleSignal (target: self, signalName: "renamed") }
    
    /// Emitted when the node enters the tree.
    /// 
    /// This signal is emitted _after_ the related ``notificationEnterTree`` notification.
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
    /// obj.treeEntered.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var treeEntered: SimpleSignal { SimpleSignal (target: self, signalName: "tree_entered") }
    
    /// Emitted when the node is just about to exit the tree. The node is still valid. As such, this is the right place for de-initialization (or a "destructor", if you will).
    /// 
    /// This signal is emitted _after_ the node's ``_exitTree()``, and _before_ the related ``notificationExitTree``.
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
    /// obj.treeExiting.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var treeExiting: SimpleSignal { SimpleSignal (target: self, signalName: "tree_exiting") }
    
    /// Emitted after the node exits the tree and is no longer active.
    /// 
    /// This signal is emitted _after_ the related ``notificationExitTree`` notification.
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
    /// obj.treeExited.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var treeExited: SimpleSignal { SimpleSignal (target: self, signalName: "tree_exited") }
    
    /// Emitted when the child `node` enters the ``SceneTree``, usually because this node entered the tree (see [signal tree_entered]), or ``addChild(node:forceReadableName:`internal`:)`` has been called.
    /// 
    /// This signal is emitted _after_ the child node's own ``notificationEnterTree`` and [signal tree_entered].
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
    /// obj.childEnteredTree.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var childEnteredTree: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "child_entered_tree") }
    
    /// Emitted when the child `node` is about to exit the ``SceneTree``, usually because this node is exiting the tree (see [signal tree_exiting]), or because the child `node` is being removed or freed.
    /// 
    /// When this signal is received, the child `node` is still accessible inside the tree. This signal is emitted _after_ the child node's own [signal tree_exiting] and ``notificationExitTree``.
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
    /// obj.childExitingTree.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var childExitingTree: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "child_exiting_tree") }
    
    /// Emitted when the list of children is changed. This happens when child nodes are added, moved or removed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.childOrderChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var childOrderChanged: SimpleSignal { SimpleSignal (target: self, signalName: "child_order_changed") }
    
    /// Emitted when this node is being replaced by the `node`, see ``replaceBy(node:keepGroups:)``.
    /// 
    /// This signal is emitted _after_ `node` has been added as a child of the original parent node, but _before_ all original child nodes have been reparented to `node`.
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
    /// obj.replacingBy.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var replacingBy: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "replacing_by") }
    
    /// Emitted when the node's editor description field changed.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.editorDescriptionChanged.connect { node in
    ///    print ("caught signal")
    /// }
    /// ```
    public var editorDescriptionChanged: SignalWithArguments<Node?> { SignalWithArguments<Node?> (target: self, signalName: "editor_description_changed") }
    
    /// Emitted when an attribute of the node that is relevant to the editor is changed. Only emitted in the editor.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.editorStateChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var editorStateChanged: SimpleSignal { SimpleSignal (target: self, signalName: "editor_state_changed") }
    
}

// Support methods for proxies
func _Node_proxy_enter_tree (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    swiftObject._enterTree ()
}

func _Node_proxy_exit_tree (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    swiftObject._exitTree ()
}

func _Node_proxy_get_configuration_warnings (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    let ret = swiftObject._getConfigurationWarnings ()
    retPtr!.storeBytes (of: ret.content, as: type (of: ret.content)) // PackedStringArray
    ret.content = PackedStringArray.zero
}

func _Node_proxy_input (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._input (event: getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as! InputEvent)
}

func _Node_proxy_physics_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    swiftObject._physicsProcess (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _Node_proxy_process (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    swiftObject._process (delta: args [0]!.assumingMemoryBound (to: Double.self).pointee)
}

func _Node_proxy_ready (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    swiftObject._ready ()
}

func _Node_proxy_shortcut_input (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._shortcutInput (event: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? InputEvent)
}

func _Node_proxy_unhandled_input (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._unhandledInput (event: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? InputEvent)
}

func _Node_proxy_unhandled_key_input (instance: UnsafeMutableRawPointer?, args: UnsafePointer<UnsafeRawPointer?>?, retPtr: UnsafeMutableRawPointer?) {
    guard let instance else { return }
    guard let args else { return }
    let reference = Unmanaged<WrappedReference>.fromOpaque(instance).takeUnretainedValue()
    guard let swiftObject = reference.value as? Node else { return }
    let resolved_0 = args [0]!.load (as: GodotNativeObjectPointer?.self)
    
    swiftObject._unhandledKeyInput (event: resolved_0 == nil ? nil : getOrInitSwiftObject (nativeHandle: resolved_0!, ownsRef: false) as? InputEvent)
}

