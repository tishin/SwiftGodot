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


/// Most basic 3D game object, parent of all 3D-related nodes.
/// 
/// Most basic 3D game object, with a ``Transform3D`` and visibility settings. All other 3D game objects inherit from ``Node3D``. Use ``Node3D`` as a parent node to move, scale, rotate and show/hide children in a 3D project.
/// 
/// Affine operations (rotate, scale, translate) happen in parent's local coordinate system, unless the ``Node3D`` object is set as top-level. Affine operations in this coordinate system correspond to direct affine operations on the ``Node3D``'s transform. The word local below refers to this coordinate system. The coordinate system that is attached to the ``Node3D`` object itself is referred to as object-local coordinate system.
/// 
/// > Note: Unless otherwise specified, all methods that have angle parameters must have angles specified as _radians_. To convert degrees to radians, use ``@GlobalScope.deg_to_rad``.
/// 
/// > Note: Be aware that "Spatial" nodes are now called "Node3D" starting with Godot 4. Any Godot 3.x references to "Spatial" nodes refer to "Node3D" in Godot 4.
/// 
/// 
/// 
/// This object emits the following signals:
/// 
/// - ``visibilityChanged``
open class Node3D: Node {
    private static var className = StringName("Node3D")
    override open class var godotClassName: StringName { className }
    public enum RotationEditMode: Int64, CaseIterable {
        /// The rotation is edited using ``Vector3`` Euler angles.
        case euler = 0 // ROTATION_EDIT_MODE_EULER
        /// The rotation is edited using a ``Quaternion``.
        case quaternion = 1 // ROTATION_EDIT_MODE_QUATERNION
        /// The rotation is edited using a ``Basis``. In this mode, ``scale`` can't be edited separately.
        case basis = 2 // ROTATION_EDIT_MODE_BASIS
    }
    
    /* Constants */
    /// ``Node3D`` nodes receive this notification when their global transform changes. This means that either the current or a parent node changed its transform.
    /// 
    /// In order for ``notificationTransformChanged`` to work, users first need to ask for it, with ``setNotifyTransform(enable:)``. The notification is also sent if the node is in the editor context and it has at least one valid gizmo.
    /// 
    public static let notificationTransformChanged = 2000
    /// ``Node3D`` nodes receive this notification when they are registered to new ``World3D`` resource.
    public static let notificationEnterWorld = 41
    /// ``Node3D`` nodes receive this notification when they are unregistered from current ``World3D`` resource.
    public static let notificationExitWorld = 42
    /// ``Node3D`` nodes receive this notification when their visibility changes.
    public static let notificationVisibilityChanged = 43
    /// ``Node3D`` nodes receive this notification when their local transform changes. This is not received when the transform of a parent node is changed.
    /// 
    /// In order for ``notificationLocalTransformChanged`` to work, users first need to ask for it, with ``setNotifyLocalTransform(enable:)``.
    /// 
    public static let notificationLocalTransformChanged = 44
    
    /* Properties */
    
    /// Local space ``Transform3D`` of this node, with respect to the parent node.
    final public var transform: Transform3D {
        get {
            return get_transform ()
        }
        
        set {
            set_transform (newValue)
        }
        
    }
    
    /// World3D space (global) ``Transform3D`` of this node.
    final public var globalTransform: Transform3D {
        get {
            return get_global_transform ()
        }
        
        set {
            set_global_transform (newValue)
        }
        
    }
    
    /// Local position or translation of this node relative to the parent. This is equivalent to `transform.origin`.
    final public var position: Vector3 {
        get {
            return get_position ()
        }
        
        set {
            set_position (newValue)
        }
        
    }
    
    /// Rotation part of the local transformation in radians, specified in terms of Euler angles. The angles construct a rotation in the order specified by the ``rotationOrder`` property.
    /// 
    /// > Note: In the mathematical sense, rotation is a matrix and not a vector. The three Euler angles, which are the three independent parameters of the Euler-angle parametrization of the rotation matrix, are stored in a ``Vector3`` data structure not because the rotation is a vector, but only because ``Vector3`` exists as a convenient data-structure to store 3 floating-point numbers. Therefore, applying affine operations on the rotation "vector" is not meaningful.
    /// 
    /// > Note: This property is edited in the inspector in degrees. If you want to use degrees in a script, use ``rotationDegrees``.
    /// 
    final public var rotation: Vector3 {
        get {
            return get_rotation ()
        }
        
        set {
            set_rotation (newValue)
        }
        
    }
    
    /// Helper property to access ``rotation`` in degrees instead of radians.
    final public var rotationDegrees: Vector3 {
        get {
            return get_rotation_degrees ()
        }
        
        set {
            set_rotation_degrees (newValue)
        }
        
    }
    
    /// Access to the node rotation as a ``Quaternion``. This property is ideal for tweening complex rotations.
    final public var quaternion: Quaternion {
        get {
            return get_quaternion ()
        }
        
        set {
            set_quaternion (newValue)
        }
        
    }
    
    /// Basis of the ``transform`` property. Represents the rotation, scale, and shear of this node.
    final public var basis: Basis {
        get {
            return get_basis ()
        }
        
        set {
            set_basis (newValue)
        }
        
    }
    
    /// Scale part of the local transformation.
    /// 
    /// > Note: Mixed negative scales in 3D are not decomposable from the transformation matrix. Due to the way scale is represented with transformation matrices in Godot, the scale values will either be all positive or all negative.
    /// 
    /// > Note: Not all nodes are visually scaled by the ``scale`` property. For example, ``Light3D``s are not visually affected by ``scale``.
    /// 
    final public var scale: Vector3 {
        get {
            return get_scale ()
        }
        
        set {
            set_scale (newValue)
        }
        
    }
    
    /// Specify how rotation (and scale) will be presented in the editor.
    final public var rotationEditMode: Node3D.RotationEditMode {
        get {
            return get_rotation_edit_mode ()
        }
        
        set {
            set_rotation_edit_mode (newValue)
        }
        
    }
    
    /// Specify the axis rotation order of the ``rotation`` property. The final orientation is constructed by rotating the Euler angles in the order specified by this property.
    final public var rotationOrder: EulerOrder {
        get {
            return get_rotation_order ()
        }
        
        set {
            set_rotation_order (newValue)
        }
        
    }
    
    /// If `true`, the node will not inherit its transformations from its parent. Node transformations are only in global space.
    final public var topLevel: Bool {
        get {
            return is_set_as_top_level ()
        }
        
        set {
            set_as_top_level (newValue)
        }
        
    }
    
    /// Global position of this node. This is equivalent to `global_transform.origin`.
    final public var globalPosition: Vector3 {
        get {
            return get_global_position ()
        }
        
        set {
            set_global_position (newValue)
        }
        
    }
    
    /// Global basis of this node. This is equivalent to `global_transform.basis`.
    final public var globalBasis: Basis {
        get {
            return get_global_basis ()
        }
        
        set {
            set_global_basis (newValue)
        }
        
    }
    
    /// Rotation part of the global transformation in radians, specified in terms of YXZ-Euler angles in the format (X angle, Y angle, Z angle).
    /// 
    /// > Note: In the mathematical sense, rotation is a matrix and not a vector. The three Euler angles, which are the three independent parameters of the Euler-angle parametrization of the rotation matrix, are stored in a ``Vector3`` data structure not because the rotation is a vector, but only because ``Vector3`` exists as a convenient data-structure to store 3 floating-point numbers. Therefore, applying affine operations on the rotation "vector" is not meaningful.
    /// 
    final public var globalRotation: Vector3 {
        get {
            return get_global_rotation ()
        }
        
        set {
            set_global_rotation (newValue)
        }
        
    }
    
    /// Helper property to access ``globalRotation`` in degrees instead of radians.
    final public var globalRotationDegrees: Vector3 {
        get {
            return get_global_rotation_degrees ()
        }
        
        set {
            set_global_rotation_degrees (newValue)
        }
        
    }
    
    /// If `true`, this node is drawn. The node is only visible if all of its ancestors are visible as well (in other words, ``isVisibleInTree()`` must return `true`).
    final public var visible: Bool {
        get {
            return is_visible ()
        }
        
        set {
            set_visible (newValue)
        }
        
    }
    
    /// Defines the visibility range parent for this node and its subtree. The visibility parent must be a GeometryInstance3D. Any visual instance will only be visible if the visibility parent (and all of its visibility ancestors) is hidden by being closer to the camera than its own ``GeometryInstance3D/visibilityRangeBegin``. Nodes hidden via the ``Node3D/visible`` property are essentially removed from the visibility dependency tree, so dependent instances will not take the hidden node or its ancestors into account.
    final public var visibilityParent: NodePath {
        get {
            return get_visibility_parent ()
        }
        
        set {
            set_visibility_parent (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_transform")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_transform(_ local: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: local) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_transform")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_transform() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(Node3D.method_get_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_position")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_position(_ position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_position")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_position() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Node3D.method_get_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rotation")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotation(_ eulerRadians: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: eulerRadians) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_rotation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rotation")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rotation() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Node3D.method_get_rotation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_rotation_degrees: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rotation_degrees")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotation_degrees(_ eulerDegrees: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: eulerDegrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_rotation_degrees, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rotation_degrees: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rotation_degrees")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rotation_degrees() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Node3D.method_get_rotation_degrees, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_rotation_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rotation_order")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1820889989)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotation_order(_ order: EulerOrder) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: order.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_rotation_order, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rotation_order: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rotation_order")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 916939469)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rotation_order() -> EulerOrder {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Node3D.method_get_rotation_order, handle, nil, &_result)
        return EulerOrder (rawValue: _result)!
    }
    
    fileprivate static let method_set_rotation_edit_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_rotation_edit_mode")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 141483330)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_rotation_edit_mode(_ editMode: Node3D.RotationEditMode) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: editMode.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_rotation_edit_mode, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_rotation_edit_mode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_rotation_edit_mode")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1572188370)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_rotation_edit_mode() -> Node3D.RotationEditMode {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(Node3D.method_get_rotation_edit_mode, handle, nil, &_result)
        return Node3D.RotationEditMode (rawValue: _result)!
    }
    
    fileprivate static let method_set_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_scale")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_scale(_ scale: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_scale")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_scale() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Node3D.method_get_scale, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_quaternion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_quaternion")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1727505552)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_quaternion(_ quaternion: Quaternion) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: quaternion) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_quaternion, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_quaternion: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_quaternion")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1222331677)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_quaternion() -> Quaternion {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Quaternion = Quaternion ()
        gi.object_method_bind_ptrcall(Node3D.method_get_quaternion, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_basis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_basis")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1055510324)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_basis(_ basis: Basis) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: basis) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_basis, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_basis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_basis")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2716978435)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_basis() -> Basis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Basis = Basis ()
        gi.object_method_bind_ptrcall(Node3D.method_get_basis, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_transform")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2952846383)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_global_transform(_ global: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: global) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_global_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_transform")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3229777777)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_global_transform() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(Node3D.method_get_global_transform, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_global_transform_interpolated: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_transform_interpolated")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4183770049)!
            }
            
        }
        
    }()
    
    /// When using physics interpolation, there will be circumstances in which you want to know the interpolated (displayed) transform of a node rather than the standard transform (which may only be accurate to the most recent physics tick).
    /// 
    /// This is particularly important for frame-based operations that take place in ``Node/_process(delta:)``, rather than ``Node/_physicsProcess(delta:)``. Examples include ``Camera3D``s focusing on a node, or finding where to fire lasers from on a frame rather than physics tick.
    /// 
    /// > Note: This function creates an interpolation pump on the ``Node3D`` the first time it is called, which can respond to physics interpolation resets. If you get problems with "streaking" when initially following a ``Node3D``, be sure to call ``getGlobalTransformInterpolated()`` at least once _before_ resetting the ``Node3D`` physics interpolation.
    /// 
    public final func getGlobalTransformInterpolated() -> Transform3D {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Transform3D = Transform3D ()
        gi.object_method_bind_ptrcall(Node3D.method_get_global_transform_interpolated, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_position")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_global_position(_ position: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_global_position, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_position")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_global_position() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Node3D.method_get_global_position, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_basis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_basis")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1055510324)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_global_basis(_ basis: Basis) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: basis) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_global_basis, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_basis: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_basis")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2716978435)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_global_basis() -> Basis {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Basis = Basis ()
        gi.object_method_bind_ptrcall(Node3D.method_get_global_basis, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_rotation")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_global_rotation(_ eulerRadians: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: eulerRadians) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_global_rotation, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_rotation: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_rotation")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_global_rotation() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Node3D.method_get_global_rotation, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_global_rotation_degrees: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_global_rotation_degrees")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_global_rotation_degrees(_ eulerDegrees: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: eulerDegrees) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_global_rotation_degrees, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_global_rotation_degrees: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_global_rotation_degrees")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3360562783)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_global_rotation_degrees() -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        gi.object_method_bind_ptrcall(Node3D.method_get_global_rotation_degrees, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_parent_node_3d: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_parent_node_3d")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 151077316)!
            }
            
        }
        
    }()
    
    /// Returns the parent ``Node3D``, or `null` if no parent exists, the parent is not of type ``Node3D``, or ``topLevel`` is `true`.
    /// 
    /// > Note: Calling this method is not equivalent to `get_parent() as Node3D`, which does not take ``topLevel`` into account.
    /// 
    public final func getParentNode3d() -> Node3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node3D.method_get_parent_node_3d, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_ignore_transform_notification: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_ignore_transform_notification")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets whether the node ignores notification that its transformation (global or local) changed.
    public final func setIgnoreTransformNotification(enabled: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enabled) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_ignore_transform_notification, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_as_top_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_as_top_level")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_as_top_level(_ enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_as_top_level, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_set_as_top_level: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_set_as_top_level")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_set_as_top_level() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node3D.method_is_set_as_top_level, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_disable_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_disable_scale")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets whether the node uses a scale of `(1, 1, 1)` or its local transformation scale. Changes to the local transformation scale are preserved.
    public final func setDisableScale(disable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: disable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_disable_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_scale_disabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_scale_disabled")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether this node uses a scale of `(1, 1, 1)` or its local transformation scale.
    public final func isScaleDisabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node3D.method_is_scale_disabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_world_3d: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_world_3d")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 317588385)!
            }
            
        }
        
    }()
    
    /// Returns the current ``World3D`` resource this ``Node3D`` node is registered to.
    public final func getWorld3d() -> World3D? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(Node3D.method_get_world_3d, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_force_update_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("force_update_transform")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces the transform to update. Transform changes in physics are not instant for performance reasons. Transforms are accumulated and then set. Use this if you need an up-to-date transform when doing physics operations.
    public final func forceUpdateTransform() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_force_update_transform, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_visibility_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visibility_parent")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1348162250)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visibility_parent(_ path: NodePath) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: path.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_visibility_parent, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_visibility_parent: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_visibility_parent")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4075236667)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_visibility_parent() -> NodePath {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: NodePath = NodePath ()
        gi.object_method_bind_ptrcall(Node3D.method_get_visibility_parent, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_update_gizmos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("update_gizmos")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Updates all the ``Node3D`` gizmos attached to this node.
    public final func updateGizmos() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_update_gizmos, handle, nil, nil)
        
    }
    
    fileprivate static let method_add_gizmo: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("add_gizmo")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1544533845)!
            }
            
        }
        
    }()
    
    /// Attach an editor gizmo to this ``Node3D``.
    /// 
    /// > Note: The gizmo object would typically be an instance of ``EditorNode3DGizmo``, but the argument type is kept generic to avoid creating a dependency on editor classes in ``Node3D``.
    /// 
    public final func addGizmo(_ gizmo: Node3DGizmo?) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_add_gizmo, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_gizmos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_gizmos")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3995934104)!
            }
            
        }
        
    }()
    
    /// Returns all the gizmos attached to this ``Node3D``.
    public final func getGizmos() -> TypedArray<Node3DGizmo?> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        gi.object_method_bind_ptrcall(Node3D.method_get_gizmos, handle, nil, &_result)
        return TypedArray<Node3DGizmo?>(takingOver: _result)
    }
    
    fileprivate static let method_clear_gizmos: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_gizmos")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clear all gizmos attached to this ``Node3D``.
    public final func clearGizmos() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_clear_gizmos, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_subgizmo_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_subgizmo_selection")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3317607635)!
            }
            
        }
        
    }()
    
    /// Set subgizmo selection for this node in the editor.
    /// 
    /// > Note: The gizmo object would typically be an instance of ``EditorNode3DGizmo``, but the argument type is kept generic to avoid creating a dependency on editor classes in ``Node3D``.
    /// 
    public final func setSubgizmoSelection(gizmo: Node3DGizmo?, id: Int32, transform: Transform3D) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: gizmo?.handle) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: transform) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Node3D.method_set_subgizmo_selection, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_clear_subgizmo_selection: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("clear_subgizmo_selection")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Clears subgizmo selection for this node in the editor. Useful when subgizmo IDs become invalid after a property change.
    public final func clearSubgizmoSelection() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_clear_subgizmo_selection, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_visible")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_visible(_ visible: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: visible) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_visible, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_visible: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visible")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func is_visible() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node3D.method_is_visible, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_is_visible_in_tree: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_visible_in_tree")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the node is present in the ``SceneTree``, its ``visible`` property is `true` and all its ancestors are also visible. If any ancestor is hidden, this node will not be visible in the scene tree.
    /// 
    /// Visibility is checked only in parent nodes that inherit from ``Node3D``. If the parent is of any other type (such as ``Node``, ``AnimationPlayer``, or ``Node2D``), it is assumed to be visible.
    /// 
    /// > Note: This method does not take ``VisualInstance3D/layers`` into account, so even if this method returns `true`, the node might end up not being rendered.
    /// 
    public final func isVisibleInTree() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node3D.method_is_visible_in_tree, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_show: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("show")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Enables rendering of this node. Changes ``visible`` to `true`.
    public final func show() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_show, handle, nil, nil)
        
    }
    
    fileprivate static let method_hide: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("hide")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Disables rendering of this node. Changes ``visible`` to `false`.
    public final func hide() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_hide, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_notify_local_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_notify_local_transform")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets whether the node notifies about its local transformation changes. ``Node3D`` will not propagate this by default.
    public final func setNotifyLocalTransform(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_notify_local_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_local_transform_notification_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_local_transform_notification_enabled")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether node notifies about its local transformation changes. ``Node3D`` will not propagate this by default.
    public final func isLocalTransformNotificationEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node3D.method_is_local_transform_notification_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_set_notify_transform: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_notify_transform")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2586408642)!
            }
            
        }
        
    }()
    
    /// Sets whether the node notifies about its global and local transformation changes. ``Node3D`` will not propagate this by default, unless it is in the editor context and it has a valid gizmo.
    public final func setNotifyTransform(enable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: enable) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_set_notify_transform, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_is_transform_notification_enabled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("is_transform_notification_enabled")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 36873697)!
            }
            
        }
        
    }()
    
    /// Returns whether the node notifies about its global and local transformation changes. ``Node3D`` will not propagate this by default.
    public final func isTransformNotificationEnabled() -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        gi.object_method_bind_ptrcall(Node3D.method_is_transform_notification_enabled, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_rotate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rotate")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3436291937)!
            }
            
        }
        
    }()
    
    /// Rotates the local transformation around axis, a unit ``Vector3``, by specified angle in radians.
    public final func rotate(axis: Vector3, angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axis) { pArg0 in
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node3D.method_rotate, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_global_rotate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("global_rotate")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3436291937)!
            }
            
        }
        
    }()
    
    /// Rotates the global (world) transformation around axis, a unit ``Vector3``, by specified angle in radians. The rotation axis is in global coordinate system.
    public final func globalRotate(axis: Vector3, angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axis) { pArg0 in
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node3D.method_global_rotate, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_global_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("global_scale")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Scales the global (world) transformation by the given ``Vector3`` scale factors.
    public final func globalScale(_ scale: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_global_scale, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_global_translate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("global_translate")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Moves the global (world) transformation by ``Vector3`` offset. The offset is in global coordinate system.
    public final func globalTranslate(offset: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_global_translate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rotate_object_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rotate_object_local")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3436291937)!
            }
            
        }
        
    }()
    
    /// Rotates the local transformation around axis, a unit ``Vector3``, by specified angle in radians. The rotation axis is in object-local coordinate system.
    public final func rotateObjectLocal(axis: Vector3, angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: axis) { pArg0 in
            withUnsafePointer(to: angle) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(Node3D.method_rotate_object_local, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_scale_object_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("scale_object_local")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Scales the local transformation by given 3D scale factors in object-local coordinate system.
    public final func scaleObjectLocal(scale: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: scale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_scale_object_local, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_translate_object_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("translate_object_local")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Changes the node's position by the given offset ``Vector3`` in local space.
    public final func translateObjectLocal(offset: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_translate_object_local, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rotate_x: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rotate_x")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Rotates the local transformation around the X axis by angle in radians.
    public final func rotateX(angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_rotate_x, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rotate_y: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rotate_y")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Rotates the local transformation around the Y axis by angle in radians.
    public final func rotateY(angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_rotate_y, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_rotate_z: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("rotate_z")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// Rotates the local transformation around the Z axis by angle in radians.
    public final func rotateZ(angle: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: angle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_rotate_z, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_translate: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("translate")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3460891852)!
            }
            
        }
        
    }()
    
    /// Changes the node's position by the given offset ``Vector3``.
    /// 
    /// Note that the translation `offset` is affected by the node's scale, so if scaled by e.g. `(10, 1, 1)`, a translation by an offset of `(2, 0, 0)` would actually add 20 (`2 * 10`) to the X coordinate.
    /// 
    public final func translate(offset: Vector3) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: offset) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_translate, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_orthonormalize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("orthonormalize")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Resets this node's transformations (like scale, skew and taper) preserving its rotation and translation by performing Gram-Schmidt orthonormalization on this node's ``Transform3D``.
    public final func orthonormalize() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_orthonormalize, handle, nil, nil)
        
    }
    
    fileprivate static let method_set_identity: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_identity")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Reset all transformations for this node (sets its ``Transform3D`` to the identity matrix).
    public final func setIdentity() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(Node3D.method_set_identity, handle, nil, nil)
        
    }
    
    fileprivate static let method_look_at: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("look_at")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2882425029)!
            }
            
        }
        
    }()
    
    /// Rotates the node so that the local forward axis (-Z, ``Vector3/forward``) points toward the `target` position.
    /// 
    /// The local up axis (+Y) points as close to the `up` vector as possible while staying perpendicular to the local forward axis. The resulting transform is orthogonal, and the scale is preserved. Non-uniform scaling may not work correctly.
    /// 
    /// The `target` position cannot be the same as the node's position, the `up` vector cannot be zero.
    /// 
    /// The `target` and the `up` cannot be ``Vector3/zero``, and shouldn't be colinear to avoid unintended rotation around local Z axis.
    /// 
    /// Operations take place in global space, which means that the node must be in the scene tree.
    /// 
    /// If `useModelFront` is `true`, the +Z axis (asset front) is treated as forward (implies +X is left) and points toward the `target` position. By default, the -Z axis (camera forward) is treated as forward (implies +X is right).
    /// 
    public final func lookAt(target: Vector3, up: Vector3 = Vector3 (x: 0, y: 1, z: 0), useModelFront: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: target) { pArg0 in
            withUnsafePointer(to: up) { pArg1 in
                withUnsafePointer(to: useModelFront) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(Node3D.method_look_at, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_look_at_from_position: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("look_at_from_position")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2086826090)!
            }
            
        }
        
    }()
    
    /// Moves the node to the specified `position`, and then rotates the node to point toward the `target` as per ``lookAt(target:up:useModelFront:)``. Operations take place in global space.
    public final func lookAtFromPosition(_ position: Vector3, target: Vector3, up: Vector3 = Vector3 (x: 0, y: 1, z: 0), useModelFront: Bool = false) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: target) { pArg1 in
                withUnsafePointer(to: up) { pArg2 in
                    withUnsafePointer(to: useModelFront) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(Node3D.method_look_at_from_position, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_to_local: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("to_local")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 192990374)!
            }
            
        }
        
    }()
    
    /// Transforms `globalPoint` from world space to this node's local space.
    public final func toLocal(globalPoint: Vector3) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: globalPoint) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_to_local, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_to_global: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("to_global")
        return withUnsafePointer(to: &Node3D.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 192990374)!
            }
            
        }
        
    }()
    
    /// Transforms `localPoint` from this node's local space to world space.
    public final func toGlobal(localPoint: Vector3) -> Vector3 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector3 = Vector3 ()
        withUnsafePointer(to: localPoint) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(Node3D.method_to_global, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    // Signals 
    /// Emitted when node visibility changes.
    ///
    /// To connect to this signal, reference this property and call the
    /// 
    /// `connect` method with the method you want to invoke
    /// 
    /// 
    /// 
    /// Example:
    /// ```swift
    /// obj.visibilityChanged.connect {
    ///    print ("caught signal")
    /// }
    /// ```
    public var visibilityChanged: SimpleSignal { SimpleSignal (target: self, signalName: "visibility_changed") }
    
}

