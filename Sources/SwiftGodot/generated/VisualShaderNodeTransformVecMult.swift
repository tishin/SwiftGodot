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


/// Multiplies a ``Transform3D`` and a ``Vector3`` within the visual shader graph.
/// 
/// A multiplication operation on a transform (4×4 matrix) and a vector, with support for different multiplication operators.
open class VisualShaderNodeTransformVecMult: VisualShaderNode {
    private static var className = StringName("VisualShaderNodeTransformVecMult")
    override open class var godotClassName: StringName { className }
    public enum Operator: Int64, CaseIterable {
        /// Multiplies transform `a` by the vector `b`.
        case axb = 0 // OP_AxB
        /// Multiplies vector `b` by the transform `a`.
        case bxa = 1 // OP_BxA
        /// Multiplies transform `a` by the vector `b`, skipping the last row and column of the transform.
        case op3x3AxB = 2 // OP_3x3_AxB
        /// Multiplies vector `b` by the transform `a`, skipping the last row and column of the transform.
        case op3x3BxA = 3 // OP_3x3_BxA
        /// Represents the size of the ``VisualShaderNodeTransformVecMult/Operator`` enum.
        case max = 4 // OP_MAX
    }
    
    
    /* Properties */
    
    /// The multiplication type to be performed. See ``VisualShaderNodeTransformVecMult/Operator`` for options.
    final public var `operator`: VisualShaderNodeTransformVecMult.Operator {
        get {
            return get_operator ()
        }
        
        set {
            set_operator (newValue)
        }
        
    }
    
    /* Methods */
    fileprivate static let method_set_operator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_operator")
        return withUnsafePointer(to: &VisualShaderNodeTransformVecMult.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1785665912)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func set_operator(_ op: VisualShaderNodeTransformVecMult.Operator) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: op.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(VisualShaderNodeTransformVecMult.method_set_operator, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_operator: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_operator")
        return withUnsafePointer(to: &VisualShaderNodeTransformVecMult.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1622088722)!
            }
            
        }
        
    }()
    
    @inline(__always)
    fileprivate final func get_operator() -> VisualShaderNodeTransformVecMult.Operator {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        gi.object_method_bind_ptrcall(VisualShaderNodeTransformVecMult.method_get_operator, handle, nil, &_result)
        return VisualShaderNodeTransformVecMult.Operator (rawValue: _result)!
    }
    
}

