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


/// Boolean matrix.
/// 
/// A two-dimensional array of boolean values, can be used to efficiently store a binary matrix (every matrix element takes only one bit) and query the values using natural cartesian coordinates.
open class BitMap: Resource {
    private static var className = StringName("BitMap")
    override open class var godotClassName: StringName { className }
    
    /* Properties */
    
    /* Methods */
    fileprivate static let method_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    /// Creates a bitmap with the specified size, filled with `false`.
    public final func create(size: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BitMap.method_create, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_create_from_image_alpha: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_from_image_alpha")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 106271684)!
            }
            
        }
        
    }()
    
    /// Creates a bitmap that matches the given image dimensions, every element of the bitmap is set to `false` if the alpha value of the image at that position is equal to `threshold` or less, and `true` in other case.
    public final func createFromImageAlpha(image: Image?, threshold: Double = 0.1) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: image?.handle) { pArg0 in
            withUnsafePointer(to: threshold) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(BitMap.method_create_from_image_alpha, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_bitv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bitv")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4153096796)!
            }
            
        }
        
    }()
    
    /// Sets the bitmap's element at the specified position, to the specified value.
    public final func setBitv(position: Vector2i, bit: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: bit) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(BitMap.method_set_bitv, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_bit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bit")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1383440665)!
            }
            
        }
        
    }()
    
    /// Sets the bitmap's element at the specified position, to the specified value.
    public final func setBit(x: Int32, y: Int32, bit: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: y) { pArg1 in
                withUnsafePointer(to: bit) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(BitMap.method_set_bit, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_bitv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bitv")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3900751641)!
            }
            
        }
        
    }()
    
    /// Returns bitmap's value at the specified position.
    public final func getBitv(position: Vector2i) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: position) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BitMap.method_get_bitv, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_bit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_bit")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2522259332)!
            }
            
        }
        
    }()
    
    /// Returns bitmap's value at the specified position.
    public final func getBit(x: Int32, y: Int32) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: x) { pArg0 in
            withUnsafePointer(to: y) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(BitMap.method_get_bit, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_set_bit_rect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_bit_rect")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 472162941)!
            }
            
        }
        
    }()
    
    /// Sets a rectangular portion of the bitmap to the specified value.
    public final func setBitRect(_ rect: Rect2i, bit: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: bit) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(BitMap.method_set_bit_rect, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_true_bit_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_true_bit_count")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the number of bitmap elements that are set to `true`.
    public final func getTrueBitCount() -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        gi.object_method_bind_ptrcall(BitMap.method_get_true_bit_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_size: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_size")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3690982128)!
            }
            
        }
        
    }()
    
    /// Returns bitmap's dimensions.
    public final func getSize() -> Vector2i {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Vector2i = Vector2i ()
        gi.object_method_bind_ptrcall(BitMap.method_get_size, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_resize: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("resize")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1130785943)!
            }
            
        }
        
    }()
    
    /// Resizes the image to `newSize`.
    public final func resize(newSize: Vector2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: newSize) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(BitMap.method_resize, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_grow_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("grow_mask")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3317281434)!
            }
            
        }
        
    }()
    
    /// Applies morphological dilation or erosion to the bitmap. If `pixels` is positive, dilation is applied to the bitmap. If `pixels` is negative, erosion is applied to the bitmap. `rect` defines the area where the morphological operation is applied. Pixels located outside the `rect` are unaffected by ``growMask(pixels:rect:)``.
    public final func growMask(pixels: Int32, rect: Rect2i) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: pixels) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(BitMap.method_grow_mask, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_convert_to_image: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("convert_to_image")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4190603485)!
            }
            
        }
        
    }()
    
    /// Returns an image of the same size as the bitmap and with a ``Image.Format`` of type ``Image/Format/l8``. `true` bits of the bitmap are being converted into white pixels, and `false` bits into black.
    public final func convertToImage() -> Image? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(BitMap.method_convert_to_image, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_opaque_to_polygons: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("opaque_to_polygons")
        return withUnsafePointer(to: &BitMap.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 48478126)!
            }
            
        }
        
    }()
    
    /// Creates an ``VariantArray`` of polygons covering a rectangular portion of the bitmap. It uses a marching squares algorithm, followed by Ramer-Douglas-Peucker (RDP) reduction of the number of vertices. Each polygon is described as a ``PackedVector2Array`` of its vertices.
    /// 
    /// To get polygons covering the whole bitmap, pass:
    /// 
    /// `epsilon` is passed to RDP to control how accurately the polygons cover the bitmap: a lower `epsilon` corresponds to more points in the polygons.
    /// 
    public final func opaqueToPolygons(rect: Rect2i, epsilon: Double = 2.0) -> TypedArray<PackedVector2Array> {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0
        withUnsafePointer(to: rect) { pArg0 in
            withUnsafePointer(to: epsilon) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(BitMap.method_opaque_to_polygons, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return TypedArray<PackedVector2Array>(takingOver: _result)
    }
    
}

