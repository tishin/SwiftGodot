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


open class DisplayServerEmbedded: DisplayServer {
    private static var className = StringName("DisplayServerEmbedded")
    override open class var godotClassName: StringName { className }
    /* Methods */
    fileprivate static let method_set_native_surface: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_native_surface")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2894024005)!
            }
            
        }
        
    }()
    
    /// 
    public static func setNativeSurface(_ nativeSurface: RenderingNativeSurface?) {
        withUnsafePointer(to: nativeSurface?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(method_set_native_surface, nil, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_singleton: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_singleton")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 287655567)!
            }
            
        }
        
    }()
    
    /// 
    public static func getSingleton() -> DisplayServerEmbedded? {
        var _result = UnsafeRawPointer (bitPattern: 0)
        gi.object_method_bind_ptrcall(method_get_singleton, nil, nil, &_result)
        guard let _result else { return nil } ; return lookupObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_resize_window: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("resize_window")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3200960707)!
            }
            
        }
        
    }()
    
    /// 
    public final func resizeWindow(size: Vector2i, id: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: id) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(DisplayServerEmbedded.method_resize_window, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_set_content_scale: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_content_scale")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 373806689)!
            }
            
        }
        
    }()
    
    /// 
    public final func setContentScale(_ contentScale: Double) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: contentScale) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(DisplayServerEmbedded.method_set_content_scale, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_touch_press: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("touch_press")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2276808320)!
            }
            
        }
        
    }()
    
    /// 
    public final func touchPress(idx: Int32, x: Int32, y: Int32, pressed: Bool, doubleClick: Bool, window: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: x) { pArg1 in
                withUnsafePointer(to: y) { pArg2 in
                    withUnsafePointer(to: pressed) { pArg3 in
                        withUnsafePointer(to: doubleClick) { pArg4 in
                            withUnsafePointer(to: window) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(DisplayServerEmbedded.method_touch_press, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_touch_drag: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("touch_drag")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 413772270)!
            }
            
        }
        
    }()
    
    /// 
    public final func touchDrag(idx: Int32, prevX: Int32, prevY: Int32, x: Int32, y: Int32, pressure: Double, tilt: Vector2, window: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: prevX) { pArg1 in
                withUnsafePointer(to: prevY) { pArg2 in
                    withUnsafePointer(to: x) { pArg3 in
                        withUnsafePointer(to: y) { pArg4 in
                            withUnsafePointer(to: pressure) { pArg5 in
                                withUnsafePointer(to: tilt) { pArg6 in
                                    withUnsafePointer(to: window) { pArg7 in
                                        withUnsafePointer(to: UnsafeRawPointersN8(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7)) { pArgs in
                                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 8) { pArgs in
                                                gi.object_method_bind_ptrcall(DisplayServerEmbedded.method_touch_drag, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
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
    
    fileprivate static let method_touches_canceled: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("touches_canceled")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3937882851)!
            }
            
        }
        
    }()
    
    /// 
    public final func touchesCanceled(idx: Int32, window: Int32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: idx) { pArg0 in
            withUnsafePointer(to: window) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(DisplayServerEmbedded.method_touches_canceled, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_key: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("key")
        return withUnsafePointer(to: &DisplayServerEmbedded.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 293311468)!
            }
            
        }
        
    }()
    
    /// 
    public final func key(key: Key, char: Int32, unshifted: Key, physical: Key, modifiers: KeyModifierMask, pressed: Bool, window: Int32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: key.rawValue) { pArg0 in
            withUnsafePointer(to: char) { pArg1 in
                withUnsafePointer(to: unshifted.rawValue) { pArg2 in
                    withUnsafePointer(to: physical.rawValue) { pArg3 in
                        withUnsafePointer(to: modifiers.rawValue) { pArg4 in
                            withUnsafePointer(to: pressed) { pArg5 in
                                withUnsafePointer(to: window) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(DisplayServerEmbedded.method_key, UnsafeMutableRawPointer(mutating: handle), pArgs, nil)
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

