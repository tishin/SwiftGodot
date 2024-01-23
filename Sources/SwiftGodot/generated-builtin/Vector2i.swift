// This file is autogenerated, do not edit

@_implementationOnly import GDExtension

/// A 2D vector using integer coordinates.
/// 
/// A 2-element structure that can be used to represent 2D grid coordinates or any other pair of integers.
/// 
/// It uses integer coordinates and is therefore preferable to ``Vector2`` when exact precision is required. Note that the values are limited to 32 bits, and unlike ``Vector2`` this cannot be configured with an engine build option. Use integer or ``PackedInt64Array`` if 64-bit values are needed.
/// 
/// > Note: In a boolean context, a Vector2i will evaluate to `false` if it's equal to `Vector2i(0, 0)`. Otherwise, a Vector2i will always evaluate to `true`.
/// 
public struct Vector2i: Equatable, Hashable {
    /// The vector's X component. Also accessible by using the index position `[0]`.
    public var x: Int32
    /// The vector's Y component. Also accessible by using the index position `[1]`.
    public var y: Int32
    public enum Axis: Int64 {
        /// Enumerated value for the X axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case x = 0 // AXIS_X
        /// Enumerated value for the Y axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
        case y = 1 // AXIS_Y
    }
    
    static var constructor0: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR2I, 0)!
    
    /// Constructs a default-initialized ``Vector2i`` with all components set to `0`.
    public init () {
        self.x = Int32 ()
        self.y = Int32 ()
    }
    
    static var constructor1: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR2I, 1)!
    
    /// Constructs a ``Vector2i`` as a copy of the given ``Vector2i``.
    public init (from: Vector2i) {
        self.x = Int32 ()
        self.y = Int32 ()
        var copy_from = from
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_from) { p0 in
            args.append (p0)
        
            Vector2i.constructor1 (&self, &args)
        }
    }
    
    static var constructor2: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR2I, 2)!
    
    /// Constructs a new ``Vector2i`` from the given ``Vector2`` by truncating components' fractional parts (rounding towards zero). For a different behavior consider passing the result of ``Vector2/ceil()``, ``Vector2/floor()`` or ``Vector2/round()`` to this constructor instead.
    public init (from: Vector2) {
        self.x = Int32 ()
        self.y = Int32 ()
        var copy_from = from
        var args: [UnsafeRawPointer?] = []
        withUnsafePointer (to: &copy_from) { p0 in
            args.append (p0)
        
            Vector2i.constructor2 (&self, &args)
        }
    }
    
    static var constructor3: GDExtensionPtrConstructor = gi.variant_get_ptr_constructor (GDEXTENSION_VARIANT_TYPE_VECTOR2I, 3)!
    
    /// Constructs a new ``Vector2i`` from the given `x` and `y`.
    public init (x: Int32, y: Int32) {
        self.x = x
        self.y = y
    }
    
    
    /* Methods */
    
    static var method_aspect: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("aspect")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 466405837)!
    }()
    
    /// Returns the aspect ratio of this vector, the ratio of ``x`` to ``y``.
    public func aspect ()-> Double {
        var result: Double = Double()
        withUnsafePointer (to: self) { ptr in 
            Vector2i.method_aspect (UnsafeMutableRawPointer (mutating: ptr), nil, &result, 0)
        }
        return result
    }
    
    static var method_max_axis_index: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("max_axis_index")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 3173160232)!
    }()
    
    /// Returns the axis of the vector's highest value. See `AXIS_*` constants. If all components are equal, this method returns .x.
    public func maxAxisIndex ()-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer (to: self) { ptr in 
            Vector2i.method_max_axis_index (UnsafeMutableRawPointer (mutating: ptr), nil, &result, 0)
        }
        return result
    }
    
    static var method_min_axis_index: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("min_axis_index")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 3173160232)!
    }()
    
    /// Returns the axis of the vector's lowest value. See `AXIS_*` constants. If all components are equal, this method returns .y.
    public func minAxisIndex ()-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer (to: self) { ptr in 
            Vector2i.method_min_axis_index (UnsafeMutableRawPointer (mutating: ptr), nil, &result, 0)
        }
        return result
    }
    
    static var method_length: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("length")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 466405837)!
    }()
    
    /// Returns the length (magnitude) of this vector.
    public func length ()-> Double {
        var result: Double = Double()
        withUnsafePointer (to: self) { ptr in 
            Vector2i.method_length (UnsafeMutableRawPointer (mutating: ptr), nil, &result, 0)
        }
        return result
    }
    
    static var method_length_squared: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("length_squared")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 3173160232)!
    }()
    
    /// Returns the squared length (squared magnitude) of this vector.
    /// 
    /// This method runs faster than ``length()``, so prefer it if you need to compare vectors or need the squared distance for some formula.
    /// 
    public func lengthSquared ()-> Int64 {
        var result: Int64 = Int64()
        withUnsafePointer (to: self) { ptr in 
            Vector2i.method_length_squared (UnsafeMutableRawPointer (mutating: ptr), nil, &result, 0)
        }
        return result
    }
    
    static var method_sign: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("sign")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 3444277866)!
    }()
    
    /// Returns a new vector with each component set to `1` if it's positive, `-1` if it's negative, and `0` if it's zero. The result is identical to calling ``@GlobalScope.sign`` on each component.
    public func sign ()-> Vector2i {
        var result: Vector2i = Vector2i()
        withUnsafePointer (to: self) { ptr in 
            Vector2i.method_sign (UnsafeMutableRawPointer (mutating: ptr), nil, &result, 0)
        }
        return result
    }
    
    static var method_abs: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("abs")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 3444277866)!
    }()
    
    /// Returns a new vector with all components in absolute values (i.e. positive).
    public func abs ()-> Vector2i {
        var result: Vector2i = Vector2i()
        withUnsafePointer (to: self) { ptr in 
            Vector2i.method_abs (UnsafeMutableRawPointer (mutating: ptr), nil, &result, 0)
        }
        return result
    }
    
    static var method_clamp: GDExtensionPtrBuiltInMethod = {
        let name = StringName ("clamp")
        return gi.variant_get_ptr_builtin_method (GDEXTENSION_VARIANT_TYPE_VECTOR2I, &name.content, 186568249)!
    }()
    
    /// Returns a new vector with all components clamped between the components of `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clamp (min: Vector2i, max: Vector2i)-> Vector2i {
        var result: Vector2i = Vector2i()
        var copy_min = min
        var copy_max = max
        var args: [UnsafeRawPointer?] = []
        return withUnsafePointer (to: &copy_min) { p0 in
            args.append (p0)
            return withUnsafePointer (to: &copy_max) { p1 in
                args.append (p1)
        
                withUnsafePointer (to: self) { ptr in 
                    Vector2i.method_clamp (UnsafeMutableRawPointer (mutating: ptr), &args, &result, 2)
                }
                return result
            }
        }
    }
    
    private static var indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    private static var indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
     public subscript (index: Int64) -> Int64 {
        mutating get {
            var result = Int64 ()
            Self.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            Self.indexed_setter (&self, index, &value)
        }
        
    }
    
    static var operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    /// Multiplies each component of the ``Vector2i`` by the given integer.
    public static func * (lhs: Vector2i, rhs: Int64) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_5 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    /// Divides each component of the ``Vector2i`` by the given integer.
    public static func / (lhs: Vector2i, rhs: Int64) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_6 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    /// Gets the remainder of each component of the ``Vector2i`` with the given integer. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using ``@GlobalScope.posmod`` instead if you want to handle negative numbers.
    /// 
    public static func % (lhs: Vector2i, rhs: Int64) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_7 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    /// Multiplies each component of the ``Vector2i`` by the given integer.
    public static func * (lhs: Vector2i, rhs: Double) -> Vector2  {
        var result: Vector2 = Vector2()
        var copy_lhs = lhs
        var copy_rhs = Double (rhs)
        
        Vector2i.operator_8 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    /// Divides each component of the ``Vector2i`` by the given integer.
    public static func / (lhs: Vector2i, rhs: Double) -> Vector2  {
        var result: Vector2 = Vector2()
        var copy_lhs = lhs
        var copy_rhs = Double (rhs)
        
        Vector2i.operator_9 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Returns `true` if the vectors are equal.
    public static func == (lhs: Vector2i, rhs: Vector2i) -> Bool  {
        var result: Bool = Bool()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_10 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Returns `true` if the vectors are not equal.
    public static func != (lhs: Vector2i, rhs: Vector2i) -> Bool  {
        var result: Bool = Bool()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_11 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_LESS_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Compares two ``Vector2i`` vectors by first checking if the X value of the left vector is less than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    public static func < (lhs: Vector2i, rhs: Vector2i) -> Bool  {
        var result: Bool = Bool()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_12 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_LESS, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Compares two ``Vector2i`` vectors by first checking if the X value of the left vector is less than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    public static func <= (lhs: Vector2i, rhs: Vector2i) -> Bool  {
        var result: Bool = Bool()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_13 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_GREATER, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Compares two ``Vector2i`` vectors by first checking if the X value of the left vector is greater than the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    public static func > (lhs: Vector2i, rhs: Vector2i) -> Bool  {
        var result: Bool = Bool()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_14 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_15: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_GREATER_EQUAL, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Compares two ``Vector2i`` vectors by first checking if the X value of the left vector is greater than or equal to the X value of the `right` vector. If the X values are exactly equal, then it repeats this check with the Y values of the two vectors. This operator is useful for sorting vectors.
    public static func >= (lhs: Vector2i, rhs: Vector2i) -> Bool  {
        var result: Bool = Bool()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_15 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_16: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Adds each component of the ``Vector2i`` by the components of the given ``Vector2i``.
    /// 
    public static func + (lhs: Vector2i, rhs: Vector2i) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_16 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_17: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Subtracts each component of the ``Vector2i`` by the components of the given ``Vector2i``.
    /// 
    public static func - (lhs: Vector2i, rhs: Vector2i) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_17 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_18: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Multiplies each component of the ``Vector2i`` by the given integer.
    public static func * (lhs: Vector2i, rhs: Vector2i) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_18 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_19: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Divides each component of the ``Vector2i`` by the given integer.
    public static func / (lhs: Vector2i, rhs: Vector2i) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_19 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    static var operator_20: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator (GDEXTENSION_VARIANT_OP_MODULE, GDEXTENSION_VARIANT_TYPE_VECTOR2I, GDEXTENSION_VARIANT_TYPE_VECTOR2I)!
    }()
    
    /// Gets the remainder of each component of the ``Vector2i`` with the given integer. This operation uses truncated division, which is often not desired as it does not work well with negative numbers. Consider using ``@GlobalScope.posmod`` instead if you want to handle negative numbers.
    /// 
    public static func % (lhs: Vector2i, rhs: Vector2i) -> Vector2i  {
        var result: Vector2i = Vector2i()
        var copy_lhs = lhs
        var copy_rhs = rhs
        
        Vector2i.operator_20 (&copy_lhs, &copy_rhs, &result)
        return result
    }
    
    /// Enumerated value for the X axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
    public static let axisX = 0
    /// Enumerated value for the Y axis. Returned by ``maxAxisIndex()`` and ``minAxisIndex()``.
    public static let axisY = 1
    /// Zero vector, a vector with all components set to `0`.
    public static let zero = Vector2i (x: 0, y: 0)
    /// One vector, a vector with all components set to `1`.
    public static let one = Vector2i (x: 1, y: 1)
    /// Min vector, a vector with all components equal to `INT32_MIN`. Can be used as a negative integer equivalent of ``Vector2.INF``.
    public static let min = Vector2i (x: -2147483648, y: -2147483648)
    /// Max vector, a vector with all components equal to `INT32_MAX`. Can be used as an integer equivalent of ``Vector2.INF``.
    public static let max = Vector2i (x: 2147483647, y: 2147483647)
    /// Left unit vector. Represents the direction of left.
    public static let left = Vector2i (x: -1, y: 0)
    /// Right unit vector. Represents the direction of right.
    public static let right = Vector2i (x: 1, y: 0)
    /// Up unit vector. Y is down in 2D, so this vector points -Y.
    public static let up = Vector2i (x: 0, y: -1)
    /// Down unit vector. Y is down in 2D, so this vector points +Y.
    public static let down = Vector2i (x: 0, y: 1)
}

