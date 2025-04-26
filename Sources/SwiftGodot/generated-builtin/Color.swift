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


/// A color represented in RGBA format.
/// 
/// A color represented in RGBA format by a red (``r``), green (``g``), blue (``b``), and alpha (``a``) component. Each component is a 32-bit floating-point value, usually ranging from `0.0` to `1.0`. Some properties (such as ``CanvasItem/modulate``) may support values greater than `1.0`, for overbright or HDR (High Dynamic Range) colors.
/// 
/// Colors can be created in various ways: By the various ``Color`` constructors, by static methods such as ``fromHsv(h:s:v:alpha:)``, and by using a name from the set of standardized colors based on <a href="https://en.wikipedia.org/wiki/X11_color_names">X11 color names</a> with the addition of ``transparent``. GDScript also provides ``@GDScript.Color8``, which uses integers from `0` to `255` and doesn't support overbright colors.
/// 
/// > Note: In a boolean context, a Color will evaluate to `false` if it is equal to `Color(0, 0, 0, 1)` (opaque black). Otherwise, a Color will always evaluate to `true`.
/// 
/// <a href="https://raw.githubusercontent.com/godotengine/godot-docs/master/img/color_constants.png">Color constants cheatsheet</a>
/// 
public struct Color: _GodotBridgeableBuiltin, Equatable, Hashable {
    /// The color's red component, typically on the range of 0 to 1.
    public var red: Float
    /// The color's green component, typically on the range of 0 to 1.
    public var green: Float
    /// The color's blue component, typically on the range of 0 to 1.
    public var blue: Float
    /// The color's alpha component, typically on the range of 0 to 1. A value of 0 means that the color is fully transparent. A value of 1 means that the color is fully opaque.
    public var alpha: Float
    /// Alice blue color.
    public static var aliceBlue: Color { Color (r: 0.941176, g: 0.972549, b: 1, a: 1) }
    /// Antique white color.
    public static var antiqueWhite: Color { Color (r: 0.980392, g: 0.921569, b: 0.843137, a: 1) }
    /// Aqua color.
    public static var aqua: Color { Color (r: 0, g: 1, b: 1, a: 1) }
    /// Aquamarine color.
    public static var aquamarine: Color { Color (r: 0.498039, g: 1, b: 0.831373, a: 1) }
    /// Azure color.
    public static var azure: Color { Color (r: 0.941176, g: 1, b: 1, a: 1) }
    /// Beige color.
    public static var beige: Color { Color (r: 0.960784, g: 0.960784, b: 0.862745, a: 1) }
    /// Bisque color.
    public static var bisque: Color { Color (r: 1, g: 0.894118, b: 0.768627, a: 1) }
    /// Black color. In GDScript, this is the default value of any color.
    public static var black: Color { Color (r: 0, g: 0, b: 0, a: 1) }
    /// Blanched almond color.
    public static var blanchedAlmond: Color { Color (r: 1, g: 0.921569, b: 0.803922, a: 1) }
    /// Blue color.
    public static var blue: Color { Color (r: 0, g: 0, b: 1, a: 1) }
    /// Blue violet color.
    public static var blueViolet: Color { Color (r: 0.541176, g: 0.168627, b: 0.886275, a: 1) }
    /// Brown color.
    public static var brown: Color { Color (r: 0.647059, g: 0.164706, b: 0.164706, a: 1) }
    /// Burlywood color.
    public static var burlywood: Color { Color (r: 0.870588, g: 0.721569, b: 0.529412, a: 1) }
    /// Cadet blue color.
    public static var cadetBlue: Color { Color (r: 0.372549, g: 0.619608, b: 0.627451, a: 1) }
    /// Chartreuse color.
    public static var chartreuse: Color { Color (r: 0.498039, g: 1, b: 0, a: 1) }
    /// Chocolate color.
    public static var chocolate: Color { Color (r: 0.823529, g: 0.411765, b: 0.117647, a: 1) }
    /// Coral color.
    public static var coral: Color { Color (r: 1, g: 0.498039, b: 0.313726, a: 1) }
    /// Cornflower blue color.
    public static var cornflowerBlue: Color { Color (r: 0.392157, g: 0.584314, b: 0.929412, a: 1) }
    /// Cornsilk color.
    public static var cornsilk: Color { Color (r: 1, g: 0.972549, b: 0.862745, a: 1) }
    /// Crimson color.
    public static var crimson: Color { Color (r: 0.862745, g: 0.0784314, b: 0.235294, a: 1) }
    /// Cyan color.
    public static var cyan: Color { Color (r: 0, g: 1, b: 1, a: 1) }
    /// Dark blue color.
    public static var darkBlue: Color { Color (r: 0, g: 0, b: 0.545098, a: 1) }
    /// Dark cyan color.
    public static var darkCyan: Color { Color (r: 0, g: 0.545098, b: 0.545098, a: 1) }
    /// Dark goldenrod color.
    public static var darkGoldenrod: Color { Color (r: 0.721569, g: 0.52549, b: 0.0431373, a: 1) }
    /// Dark gray color.
    public static var darkGray: Color { Color (r: 0.662745, g: 0.662745, b: 0.662745, a: 1) }
    /// Dark green color.
    public static var darkGreen: Color { Color (r: 0, g: 0.392157, b: 0, a: 1) }
    /// Dark khaki color.
    public static var darkKhaki: Color { Color (r: 0.741176, g: 0.717647, b: 0.419608, a: 1) }
    /// Dark magenta color.
    public static var darkMagenta: Color { Color (r: 0.545098, g: 0, b: 0.545098, a: 1) }
    /// Dark olive green color.
    public static var darkOliveGreen: Color { Color (r: 0.333333, g: 0.419608, b: 0.184314, a: 1) }
    /// Dark orange color.
    public static var darkOrange: Color { Color (r: 1, g: 0.54902, b: 0, a: 1) }
    /// Dark orchid color.
    public static var darkOrchid: Color { Color (r: 0.6, g: 0.196078, b: 0.8, a: 1) }
    /// Dark red color.
    public static var darkRed: Color { Color (r: 0.545098, g: 0, b: 0, a: 1) }
    /// Dark salmon color.
    public static var darkSalmon: Color { Color (r: 0.913725, g: 0.588235, b: 0.478431, a: 1) }
    /// Dark sea green color.
    public static var darkSeaGreen: Color { Color (r: 0.560784, g: 0.737255, b: 0.560784, a: 1) }
    /// Dark slate blue color.
    public static var darkSlateBlue: Color { Color (r: 0.282353, g: 0.239216, b: 0.545098, a: 1) }
    /// Dark slate gray color.
    public static var darkSlateGray: Color { Color (r: 0.184314, g: 0.309804, b: 0.309804, a: 1) }
    /// Dark turquoise color.
    public static var darkTurquoise: Color { Color (r: 0, g: 0.807843, b: 0.819608, a: 1) }
    /// Dark violet color.
    public static var darkViolet: Color { Color (r: 0.580392, g: 0, b: 0.827451, a: 1) }
    /// Deep pink color.
    public static var deepPink: Color { Color (r: 1, g: 0.0784314, b: 0.576471, a: 1) }
    /// Deep sky blue color.
    public static var deepSkyBlue: Color { Color (r: 0, g: 0.74902, b: 1, a: 1) }
    /// Dim gray color.
    public static var dimGray: Color { Color (r: 0.411765, g: 0.411765, b: 0.411765, a: 1) }
    /// Dodger blue color.
    public static var dodgerBlue: Color { Color (r: 0.117647, g: 0.564706, b: 1, a: 1) }
    /// Firebrick color.
    public static var firebrick: Color { Color (r: 0.698039, g: 0.133333, b: 0.133333, a: 1) }
    /// Floral white color.
    public static var floralWhite: Color { Color (r: 1, g: 0.980392, b: 0.941176, a: 1) }
    /// Forest green color.
    public static var forestGreen: Color { Color (r: 0.133333, g: 0.545098, b: 0.133333, a: 1) }
    /// Fuchsia color.
    public static var fuchsia: Color { Color (r: 1, g: 0, b: 1, a: 1) }
    /// Gainsboro color.
    public static var gainsboro: Color { Color (r: 0.862745, g: 0.862745, b: 0.862745, a: 1) }
    /// Ghost white color.
    public static var ghostWhite: Color { Color (r: 0.972549, g: 0.972549, b: 1, a: 1) }
    /// Gold color.
    public static var gold: Color { Color (r: 1, g: 0.843137, b: 0, a: 1) }
    /// Goldenrod color.
    public static var goldenrod: Color { Color (r: 0.854902, g: 0.647059, b: 0.12549, a: 1) }
    /// Gray color.
    public static var gray: Color { Color (r: 0.745098, g: 0.745098, b: 0.745098, a: 1) }
    /// Green color.
    public static var green: Color { Color (r: 0, g: 1, b: 0, a: 1) }
    /// Green yellow color.
    public static var greenYellow: Color { Color (r: 0.678431, g: 1, b: 0.184314, a: 1) }
    /// Honeydew color.
    public static var honeydew: Color { Color (r: 0.941176, g: 1, b: 0.941176, a: 1) }
    /// Hot pink color.
    public static var hotPink: Color { Color (r: 1, g: 0.411765, b: 0.705882, a: 1) }
    /// Indian red color.
    public static var indianRed: Color { Color (r: 0.803922, g: 0.360784, b: 0.360784, a: 1) }
    /// Indigo color.
    public static var indigo: Color { Color (r: 0.294118, g: 0, b: 0.509804, a: 1) }
    /// Ivory color.
    public static var ivory: Color { Color (r: 1, g: 1, b: 0.941176, a: 1) }
    /// Khaki color.
    public static var khaki: Color { Color (r: 0.941176, g: 0.901961, b: 0.54902, a: 1) }
    /// Lavender color.
    public static var lavender: Color { Color (r: 0.901961, g: 0.901961, b: 0.980392, a: 1) }
    /// Lavender blush color.
    public static var lavenderBlush: Color { Color (r: 1, g: 0.941176, b: 0.960784, a: 1) }
    /// Lawn green color.
    public static var lawnGreen: Color { Color (r: 0.486275, g: 0.988235, b: 0, a: 1) }
    /// Lemon chiffon color.
    public static var lemonChiffon: Color { Color (r: 1, g: 0.980392, b: 0.803922, a: 1) }
    /// Light blue color.
    public static var lightBlue: Color { Color (r: 0.678431, g: 0.847059, b: 0.901961, a: 1) }
    /// Light coral color.
    public static var lightCoral: Color { Color (r: 0.941176, g: 0.501961, b: 0.501961, a: 1) }
    /// Light cyan color.
    public static var lightCyan: Color { Color (r: 0.878431, g: 1, b: 1, a: 1) }
    /// Light goldenrod color.
    public static var lightGoldenrod: Color { Color (r: 0.980392, g: 0.980392, b: 0.823529, a: 1) }
    /// Light gray color.
    public static var lightGray: Color { Color (r: 0.827451, g: 0.827451, b: 0.827451, a: 1) }
    /// Light green color.
    public static var lightGreen: Color { Color (r: 0.564706, g: 0.933333, b: 0.564706, a: 1) }
    /// Light pink color.
    public static var lightPink: Color { Color (r: 1, g: 0.713726, b: 0.756863, a: 1) }
    /// Light salmon color.
    public static var lightSalmon: Color { Color (r: 1, g: 0.627451, b: 0.478431, a: 1) }
    /// Light sea green color.
    public static var lightSeaGreen: Color { Color (r: 0.12549, g: 0.698039, b: 0.666667, a: 1) }
    /// Light sky blue color.
    public static var lightSkyBlue: Color { Color (r: 0.529412, g: 0.807843, b: 0.980392, a: 1) }
    /// Light slate gray color.
    public static var lightSlateGray: Color { Color (r: 0.466667, g: 0.533333, b: 0.6, a: 1) }
    /// Light steel blue color.
    public static var lightSteelBlue: Color { Color (r: 0.690196, g: 0.768627, b: 0.870588, a: 1) }
    /// Light yellow color.
    public static var lightYellow: Color { Color (r: 1, g: 1, b: 0.878431, a: 1) }
    /// Lime color.
    public static var lime: Color { Color (r: 0, g: 1, b: 0, a: 1) }
    /// Lime green color.
    public static var limeGreen: Color { Color (r: 0.196078, g: 0.803922, b: 0.196078, a: 1) }
    /// Linen color.
    public static var linen: Color { Color (r: 0.980392, g: 0.941176, b: 0.901961, a: 1) }
    /// Magenta color.
    public static var magenta: Color { Color (r: 1, g: 0, b: 1, a: 1) }
    /// Maroon color.
    public static var maroon: Color { Color (r: 0.690196, g: 0.188235, b: 0.376471, a: 1) }
    /// Medium aquamarine color.
    public static var mediumAquamarine: Color { Color (r: 0.4, g: 0.803922, b: 0.666667, a: 1) }
    /// Medium blue color.
    public static var mediumBlue: Color { Color (r: 0, g: 0, b: 0.803922, a: 1) }
    /// Medium orchid color.
    public static var mediumOrchid: Color { Color (r: 0.729412, g: 0.333333, b: 0.827451, a: 1) }
    /// Medium purple color.
    public static var mediumPurple: Color { Color (r: 0.576471, g: 0.439216, b: 0.858824, a: 1) }
    /// Medium sea green color.
    public static var mediumSeaGreen: Color { Color (r: 0.235294, g: 0.701961, b: 0.443137, a: 1) }
    /// Medium slate blue color.
    public static var mediumSlateBlue: Color { Color (r: 0.482353, g: 0.407843, b: 0.933333, a: 1) }
    /// Medium spring green color.
    public static var mediumSpringGreen: Color { Color (r: 0, g: 0.980392, b: 0.603922, a: 1) }
    /// Medium turquoise color.
    public static var mediumTurquoise: Color { Color (r: 0.282353, g: 0.819608, b: 0.8, a: 1) }
    /// Medium violet red color.
    public static var mediumVioletRed: Color { Color (r: 0.780392, g: 0.0823529, b: 0.521569, a: 1) }
    /// Midnight blue color.
    public static var midnightBlue: Color { Color (r: 0.0980392, g: 0.0980392, b: 0.439216, a: 1) }
    /// Mint cream color.
    public static var mintCream: Color { Color (r: 0.960784, g: 1, b: 0.980392, a: 1) }
    /// Misty rose color.
    public static var mistyRose: Color { Color (r: 1, g: 0.894118, b: 0.882353, a: 1) }
    /// Moccasin color.
    public static var moccasin: Color { Color (r: 1, g: 0.894118, b: 0.709804, a: 1) }
    /// Navajo white color.
    public static var navajoWhite: Color { Color (r: 1, g: 0.870588, b: 0.678431, a: 1) }
    /// Navy blue color.
    public static var navyBlue: Color { Color (r: 0, g: 0, b: 0.501961, a: 1) }
    /// Old lace color.
    public static var oldLace: Color { Color (r: 0.992157, g: 0.960784, b: 0.901961, a: 1) }
    /// Olive color.
    public static var olive: Color { Color (r: 0.501961, g: 0.501961, b: 0, a: 1) }
    /// Olive drab color.
    public static var oliveDrab: Color { Color (r: 0.419608, g: 0.556863, b: 0.137255, a: 1) }
    /// Orange color.
    public static var orange: Color { Color (r: 1, g: 0.647059, b: 0, a: 1) }
    /// Orange red color.
    public static var orangeRed: Color { Color (r: 1, g: 0.270588, b: 0, a: 1) }
    /// Orchid color.
    public static var orchid: Color { Color (r: 0.854902, g: 0.439216, b: 0.839216, a: 1) }
    /// Pale goldenrod color.
    public static var paleGoldenrod: Color { Color (r: 0.933333, g: 0.909804, b: 0.666667, a: 1) }
    /// Pale green color.
    public static var paleGreen: Color { Color (r: 0.596078, g: 0.984314, b: 0.596078, a: 1) }
    /// Pale turquoise color.
    public static var paleTurquoise: Color { Color (r: 0.686275, g: 0.933333, b: 0.933333, a: 1) }
    /// Pale violet red color.
    public static var paleVioletRed: Color { Color (r: 0.858824, g: 0.439216, b: 0.576471, a: 1) }
    /// Papaya whip color.
    public static var papayaWhip: Color { Color (r: 1, g: 0.937255, b: 0.835294, a: 1) }
    /// Peach puff color.
    public static var peachPuff: Color { Color (r: 1, g: 0.854902, b: 0.72549, a: 1) }
    /// Peru color.
    public static var peru: Color { Color (r: 0.803922, g: 0.521569, b: 0.247059, a: 1) }
    /// Pink color.
    public static var pink: Color { Color (r: 1, g: 0.752941, b: 0.796078, a: 1) }
    /// Plum color.
    public static var plum: Color { Color (r: 0.866667, g: 0.627451, b: 0.866667, a: 1) }
    /// Powder blue color.
    public static var powderBlue: Color { Color (r: 0.690196, g: 0.878431, b: 0.901961, a: 1) }
    /// Purple color.
    public static var purple: Color { Color (r: 0.627451, g: 0.12549, b: 0.941176, a: 1) }
    /// Rebecca purple color.
    public static var rebeccaPurple: Color { Color (r: 0.4, g: 0.2, b: 0.6, a: 1) }
    /// Red color.
    public static var red: Color { Color (r: 1, g: 0, b: 0, a: 1) }
    /// Rosy brown color.
    public static var rosyBrown: Color { Color (r: 0.737255, g: 0.560784, b: 0.560784, a: 1) }
    /// Royal blue color.
    public static var royalBlue: Color { Color (r: 0.254902, g: 0.411765, b: 0.882353, a: 1) }
    /// Saddle brown color.
    public static var saddleBrown: Color { Color (r: 0.545098, g: 0.270588, b: 0.0745098, a: 1) }
    /// Salmon color.
    public static var salmon: Color { Color (r: 0.980392, g: 0.501961, b: 0.447059, a: 1) }
    /// Sandy brown color.
    public static var sandyBrown: Color { Color (r: 0.956863, g: 0.643137, b: 0.376471, a: 1) }
    /// Sea green color.
    public static var seaGreen: Color { Color (r: 0.180392, g: 0.545098, b: 0.341176, a: 1) }
    /// Seashell color.
    public static var seashell: Color { Color (r: 1, g: 0.960784, b: 0.933333, a: 1) }
    /// Sienna color.
    public static var sienna: Color { Color (r: 0.627451, g: 0.321569, b: 0.176471, a: 1) }
    /// Silver color.
    public static var silver: Color { Color (r: 0.752941, g: 0.752941, b: 0.752941, a: 1) }
    /// Sky blue color.
    public static var skyBlue: Color { Color (r: 0.529412, g: 0.807843, b: 0.921569, a: 1) }
    /// Slate blue color.
    public static var slateBlue: Color { Color (r: 0.415686, g: 0.352941, b: 0.803922, a: 1) }
    /// Slate gray color.
    public static var slateGray: Color { Color (r: 0.439216, g: 0.501961, b: 0.564706, a: 1) }
    /// Snow color.
    public static var snow: Color { Color (r: 1, g: 0.980392, b: 0.980392, a: 1) }
    /// Spring green color.
    public static var springGreen: Color { Color (r: 0, g: 1, b: 0.498039, a: 1) }
    /// Steel blue color.
    public static var steelBlue: Color { Color (r: 0.27451, g: 0.509804, b: 0.705882, a: 1) }
    /// Tan color.
    public static var tan: Color { Color (r: 0.823529, g: 0.705882, b: 0.54902, a: 1) }
    /// Teal color.
    public static var teal: Color { Color (r: 0, g: 0.501961, b: 0.501961, a: 1) }
    /// Thistle color.
    public static var thistle: Color { Color (r: 0.847059, g: 0.74902, b: 0.847059, a: 1) }
    /// Tomato color.
    public static var tomato: Color { Color (r: 1, g: 0.388235, b: 0.278431, a: 1) }
    /// Transparent color (white with zero alpha).
    public static var transparent: Color { Color (r: 1, g: 1, b: 1, a: 0) }
    /// Turquoise color.
    public static var turquoise: Color { Color (r: 0.25098, g: 0.878431, b: 0.815686, a: 1) }
    /// Violet color.
    public static var violet: Color { Color (r: 0.933333, g: 0.509804, b: 0.933333, a: 1) }
    /// Web gray color.
    public static var webGray: Color { Color (r: 0.501961, g: 0.501961, b: 0.501961, a: 1) }
    /// Web green color.
    public static var webGreen: Color { Color (r: 0, g: 0.501961, b: 0, a: 1) }
    /// Web maroon color.
    public static var webMaroon: Color { Color (r: 0.501961, g: 0, b: 0, a: 1) }
    /// Web purple color.
    public static var webPurple: Color { Color (r: 0.501961, g: 0, b: 0.501961, a: 1) }
    /// Wheat color.
    public static var wheat: Color { Color (r: 0.960784, g: 0.870588, b: 0.701961, a: 1) }
    /// White color.
    public static var white: Color { Color (r: 1, g: 1, b: 1, a: 1) }
    /// White smoke color.
    public static var whiteSmoke: Color { Color (r: 0.960784, g: 0.960784, b: 0.960784, a: 1) }
    /// Yellow color.
    public static var yellow: Color { Color (r: 1, g: 1, b: 0, a: 1) }
    /// Yellow green color.
    public static var yellowGreen: Color { Color (r: 0.603922, g: 0.803922, b: 0.196078, a: 1) }
    /// Constructs a default ``Color`` from opaque black. This is the same as ``black``.
    /// 
    /// > Note: In C#, this constructs a ``Color`` with all of its components set to `0.0` (transparent black).
    /// 
    public init() {
        self.red = 0
        self.green = 0
        self.blue = 0
        self.alpha = 1
    }
    
    /// Constructs a ``Color`` as a copy of the given ``Color``.
    public init(from: Color) {
        self.red = 0
        self.green = 0
        self.blue = 0
        self.alpha = 1
        withUnsafePointer(to: from) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForColor.constructor1(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Color`` from the existing color, with ``a`` set to the given `alpha` value.
    /// 
    public init(from: Color, alpha: Float) {
        self.red = 0
        self.green = 0
        self.blue = 0
        self.alpha = 1
        withUnsafePointer(to: from) { pArg0 in
            let alpha = Double(alpha)
            withUnsafePointer(to: alpha) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForColor.constructor2(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Color`` from RGB values, typically between 0.0 and 1.0. ``a`` is set to 1.0.
    /// 
    public init(r: Float, g: Float, b: Float) {
        self.red = 0
        self.green = 0
        self.blue = 0
        self.alpha = 1
        let r = Double(r)
        withUnsafePointer(to: r) { pArg0 in
            let g = Double(g)
            withUnsafePointer(to: g) { pArg1 in
                let b = Double(b)
                withUnsafePointer(to: b) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            GodotInterfaceForColor.constructor3(&self, pArgs)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Color`` from RGBA values, typically between 0.0 and 1.0.
    /// 
    public init(r: Float, g: Float, b: Float, a: Float) {
        self.red = 0
        self.green = 0
        self.blue = 0
        self.alpha = 1
        let r = Double(r)
        withUnsafePointer(to: r) { pArg0 in
            let g = Double(g)
            withUnsafePointer(to: g) { pArg1 in
                let b = Double(b)
                withUnsafePointer(to: b) { pArg2 in
                    let a = Double(a)
                    withUnsafePointer(to: a) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForColor.constructor4(&self, pArgs)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Color`` either from an HTML color code or from a standardized color name. The supported color names are the same as the constants.
    public init(code: String) {
        self.red = 0
        self.green = 0
        self.blue = 0
        self.alpha = 1
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForColor.constructor5(&self, pArgs)
                }
                
            }
            
        }
        
    }
    
    /// Constructs a ``Color`` either from an HTML color code or from a standardized color name, with `alpha` on the range of 0.0 to 1.0. The supported color names are the same as the constants.
    public init(code: String, alpha: Float) {
        self.red = 0
        self.green = 0
        self.blue = 0
        self.alpha = 1
        let code = GString(code)
        withUnsafePointer(to: code.content) { pArg0 in
            let alpha = Double(alpha)
            withUnsafePointer(to: alpha) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForColor.constructor6(&self, pArgs)
                    }
                    
                }
                
            }
            
        }
        
    }
    
    
    /* Methods */
    
    /// Returns the color converted to a 32-bit integer in ARGB format (each component is 8 bits). ARGB is more compatible with DirectX.
    /// 
    public func toArgb32() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_to_argb32(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to a 32-bit integer in ABGR format (each component is 8 bits). ABGR is the reversed version of the default RGBA format.
    /// 
    public func toAbgr32() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_to_abgr32(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to a 32-bit integer in RGBA format (each component is 8 bits). RGBA is Godot's default format. This method is the inverse of ``hex(hex:)``.
    /// 
    public func toRgba32() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_to_rgba32(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to a 64-bit integer in ARGB format (each component is 16 bits). ARGB is more compatible with DirectX.
    /// 
    public func toArgb64() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_to_argb64(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to a 64-bit integer in ABGR format (each component is 16 bits). ABGR is the reversed version of the default RGBA format.
    /// 
    public func toAbgr64() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_to_abgr64(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to a 64-bit integer in RGBA format (each component is 16 bits). RGBA is Godot's default format. This method is the inverse of ``hex64(hex:)``.
    /// 
    public func toRgba64() -> Int64 {
        var result: Int64 = Int64()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_to_rgba64(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to an HTML hexadecimal color ``String`` in RGBA format, without the hash (`#`) prefix.
    /// 
    /// Setting `withAlpha` to `false`, excludes alpha from the hexadecimal string, using RGB format instead of RGBA format.
    /// 
    public func toHtml(withAlpha: Bool = true) -> String {
        let result = GString ()
        withUnsafePointer(to: withAlpha) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForColor.method_to_html(ptr, pArgs, &result.content, 1)
                    }
                }
                
            }
            
        }
        
        return result.description
    }
    
    /// Returns a new color with all components clamped between the components of `min` and `max`, by running ``@GlobalScope.clamp`` on each component.
    public func clamp(min: Color = Color (r: 0, g: 0, b: 0, a: 0), max: Color = Color (r: 1, g: 1, b: 1, a: 1)) -> Color {
        var result: Color = Color()
        withUnsafePointer(to: min) { pArg0 in
            withUnsafePointer(to: max) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        var mutSelfCopy = self
                        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                           GodotInterfaceForColor.method_clamp(ptr, pArgs, &result, 2)
                        }
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the color with its ``r``, ``g``, and ``b`` components inverted (`(1 - r, 1 - g, 1 - b, a)`).
    /// 
    public func inverted() -> Color {
        var result: Color = Color()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_inverted(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns a new color resulting from making this color lighter by the specified `amount`, which should be a ratio from 0.0 to 1.0. See also ``darkened(amount:)``.
    /// 
    public func lightened(amount: Double) -> Color {
        var result: Color = Color()
        let amount = Double(amount)
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForColor.method_lightened(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new color resulting from making this color darker by the specified `amount` (ratio from 0.0 to 1.0). See also ``lightened(amount:)``.
    /// 
    public func darkened(amount: Double) -> Color {
        var result: Color = Color()
        let amount = Double(amount)
        withUnsafePointer(to: amount) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForColor.method_darkened(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new color resulting from overlaying this color over the given color. In a painting program, you can imagine it as the `over` color painted over this color (including alpha).
    /// 
    public func blend(over: Color) -> Color {
        var result: Color = Color()
        withUnsafePointer(to: over) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForColor.method_blend(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the light intensity of the color, as a value between 0.0 and 1.0 (inclusive). This is useful when determining light or dark color. Colors with a luminance smaller than 0.5 can be generally considered dark.
    /// 
    /// > Note: ``getLuminance()`` relies on the color being in the linear color space to return an accurate relative luminance value. If the color is in the sRGB color space, use ``srgbToLinear()`` to convert it to the linear color space first.
    /// 
    public func getLuminance() -> Double {
        var result: Double = Double()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_get_luminance(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to the linear color space. This method assumes the original color already is in the sRGB color space. See also ``linearToSrgb()`` which performs the opposite operation.
    public func srgbToLinear() -> Color {
        var result: Color = Color()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_srgb_to_linear(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns the color converted to the <a href="https://en.wikipedia.org/wiki/SRGB">sRGB</a> color space. This method assumes the original color is in the linear color space. See also ``srgbToLinear()`` which performs the opposite operation.
    public func linearToSrgb() -> Color {
        var result: Color = Color()
        var mutSelfCopy = self
        withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
           GodotInterfaceForColor.method_linear_to_srgb(ptr, nil, &result, 0)
        }
        return result
    }
    
    /// Returns `true` if this color and `to` are approximately equal, by running ``@GlobalScope.is_equal_approx`` on each component.
    public func isEqualApprox(to: Color) -> Bool {
        var result: Bool = Bool()
        withUnsafePointer(to: to) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    var mutSelfCopy = self
                    withUnsafeMutablePointer (to: &mutSelfCopy) { ptr in
                       GodotInterfaceForColor.method_is_equal_approx(ptr, pArgs, &result, 1)
                    }
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the ``Color`` associated with the provided `hex` integer in 32-bit RGBA format (8 bits per channel). This method is the inverse of ``toRgba32()``.
    /// 
    /// In GDScript and C#, the integer is best visualized with hexadecimal notation (`"0x"` prefix, making it `"0xRRGGBBAA"`).
    /// 
    /// If you want to use hex notation in a constant expression, use the equivalent constructor instead (i.e. `Color(0xRRGGBBAA)`).
    /// 
    public static func hex(hex: Int64) -> Color {
        var result: Color = Color()
        withUnsafePointer(to: hex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForColor.method_hex(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns the ``Color`` associated with the provided `hex` integer in 64-bit RGBA format (16 bits per channel). This method is the inverse of ``toRgba64()``.
    /// 
    /// In GDScript and C#, the integer is best visualized with hexadecimal notation (`"0x"` prefix, making it `"0xRRRRGGGGBBBBAAAA"`).
    /// 
    public static func hex64(hex: Int64) -> Color {
        var result: Color = Color()
        withUnsafePointer(to: hex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForColor.method_hex64(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a new color from `rgba`, an HTML hexadecimal color string. `rgba` is not case-sensitive, and may be prefixed by a hash sign (`#`).
    /// 
    /// `rgba` must be a valid three-digit or six-digit hexadecimal color string, and may contain an alpha channel value. If `rgba` does not contain an alpha channel value, an alpha channel value of 1.0 is applied. If `rgba` is invalid, returns an empty color.
    /// 
    public static func html(rgba: String) -> Color {
        var result: Color = Color()
        let rgba = GString(rgba)
        withUnsafePointer(to: rgba.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForColor.method_html(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if `color` is a valid HTML hexadecimal color string. The string must be a hexadecimal value (case-insensitive) of either 3, 4, 6 or 8 digits, and may be prefixed by a hash sign (`#`). This method is identical to ``GString/isValidHtmlColor()``.
    /// 
    public static func htmlIsValid(color: String) -> Bool {
        var result: Bool = Bool()
        let color = GString(color)
        withUnsafePointer(to: color.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForColor.method_html_is_valid(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Creates a ``Color`` from the given string, which can be either an HTML color code or a named color (case-insensitive). Returns `default` if the color cannot be inferred from the string.
    /// 
    /// If you want to create a color from String in a constant expression, use the equivalent constructor instead (i.e. `Color("color string")`).
    /// 
    public static func fromString(str: String, `default`: Color) -> Color {
        var result: Color = Color()
        let str = GString(str)
        withUnsafePointer(to: str.content) { pArg0 in
            withUnsafePointer(to: `default`) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        GodotInterfaceForColor.method_from_string(nil, pArgs, &result, 2)
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Constructs a color from an <a href="https://en.wikipedia.org/wiki/HSL_and_HSV">HSV profile</a>. The hue (`h`), saturation (`s`), and value (`v`) are typically between 0.0 and 1.0.
    /// 
    public static func fromHsv(h: Double, s: Double, v: Double, alpha: Double = 1.0) -> Color {
        var result: Color = Color()
        let h = Double(h)
        withUnsafePointer(to: h) { pArg0 in
            let s = Double(s)
            withUnsafePointer(to: s) { pArg1 in
                let v = Double(v)
                withUnsafePointer(to: v) { pArg2 in
                    let alpha = Double(alpha)
                    withUnsafePointer(to: alpha) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForColor.method_from_hsv(nil, pArgs, &result, 4)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Constructs a color from an <a href="https://bottosson.github.io/posts/colorpicker/">OK HSL profile</a>. The hue (`h`), saturation (`s`), and lightness (`l`) are typically between 0.0 and 1.0.
    /// 
    public static func fromOkHsl(h: Double, s: Double, l: Double, alpha: Double = 1.0) -> Color {
        var result: Color = Color()
        let h = Double(h)
        withUnsafePointer(to: h) { pArg0 in
            let s = Double(s)
            withUnsafePointer(to: s) { pArg1 in
                let l = Double(l)
                withUnsafePointer(to: l) { pArg2 in
                    let alpha = Double(alpha)
                    withUnsafePointer(to: alpha) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForColor.method_from_ok_hsl(nil, pArgs, &result, 4)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    /// Decodes a ``Color`` from an RGBE9995 format integer. See ``Image/Format/rgbe9995``.
    public static func fromRgbe9995(rgbe: Int64) -> Color {
        var result: Color = Color()
        withUnsafePointer(to: rgbe) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    GodotInterfaceForColor.method_from_rgbe9995(nil, pArgs, &result, 1)
                }
                
            }
            
        }
        
        return result
    }
    
    /// Returns a ``Color`` constructed from red (`r8`), green (`g8`), blue (`b8`), and optionally alpha (`a8`) integer channels, each divided by `255.0` for their final value.
    /// 
    /// > Note: Due to the lower precision of ``fromRgba8(r8:g8:b8:a8:)`` compared to the standard ``Color`` constructor, a color created with ``fromRgba8(r8:g8:b8:a8:)`` will generally not be equal to the same color created with the standard ``Color`` constructor. Use ``isEqualApprox(to:)`` for comparisons to avoid issues with floating-point precision error.
    /// 
    public static func fromRgba8(r8: Int64, g8: Int64, b8: Int64, a8: Int64 = 255) -> Color {
        var result: Color = Color()
        withUnsafePointer(to: r8) { pArg0 in
            withUnsafePointer(to: g8) { pArg1 in
                withUnsafePointer(to: b8) { pArg2 in
                    withUnsafePointer(to: a8) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                GodotInterfaceForColor.method_from_rgba8(nil, pArgs, &result, 4)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return result
    }
    
    public subscript(index: Int64) -> Double {
        mutating get {
            var result = Double()
            GodotInterfaceForColor.indexed_getter (&self, index, &result)
            return result
        }
        
        set {
            var value = newValue
            GodotInterfaceForColor.indexed_setter (&self, index, &value)
        }
        
    }
    
    /// Multiplies each component of the ``Color`` by the given integer.
    public static func *(lhs: Color, rhs: Int64) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_5(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Color`` by the given integer.
    public static func /(lhs: Color, rhs: Int64) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_6(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Color`` by the given float.
    public static func *(lhs: Color, rhs: Double) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_7(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Color`` by the given float.
    public static func /(lhs: Color, rhs: Double) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            let rhs = Double(rhs)
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_8(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the colors are exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(to:)`` instead, which is more reliable.
    /// 
    public static func ==(lhs: Color, rhs: Color) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_9(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Returns `true` if the colors are not exactly equal.
    /// 
    /// > Note: Due to floating-point precision errors, consider using ``isEqualApprox(to:)`` instead, which is more reliable.
    /// 
    public static func !=(lhs: Color, rhs: Color) -> Bool  {
        var result: Bool = Bool()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_10(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Adds each component of the ``Color`` with the components of the given ``Color``.
    public static func +(lhs: Color, rhs: Color) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_11(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Subtracts each component of the ``Color`` by the components of the given ``Color``.
    public static func -(lhs: Color, rhs: Color) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_12(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Multiplies each component of the ``Color`` by the components of the given ``Color``.
    public static func *(lhs: Color, rhs: Color) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_13(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Divides each component of the ``Color`` by the components of the given ``Color``.
    public static func /(lhs: Color, rhs: Color) -> Color  {
        var result: Color = Color()
        withUnsafePointer(to: lhs) { pArg0 in
            withUnsafePointer(to: rhs) { pArg1 in
                GodotInterfaceForColor.operator_14(pArg0, pArg1, &result)
            }
            
        }
        
        return result
    }
    
    /// Wrap ``Color`` into a ``Variant``
    @inline(__always)
    @inlinable
    public func toVariant() -> Variant {
        Variant(self)
    }
    
    /// Wrap ``Color`` into a ``Variant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toVariant() -> Variant? {
        Variant(self)
    }
    
    /// Wrap ``Color`` into a ``FastVariant``
    @inline(__always)
    @inlinable
    public func toFastVariant() -> FastVariant {
        FastVariant(self)
    }
    
    /// Wrap ``Color`` into a ``FastVariant?``
    @inline(__always)
    @inlinable
    @_disfavoredOverload
    public func toFastVariant() -> FastVariant? {
        FastVariant(self)
    }
    
    /// Extract ``Color`` from a ``Variant``. Throws `VariantConversionError` if it's not possible.
    @inline(__always)
    @inlinable
    public static func fromVariantOrThrow(_ variant: Variant) throws(VariantConversionError) -> Self {                
        guard let value = Self(variant) else {
            throw .unexpectedContent(parsing: self, from: variant)
        }
        return value                
    }
    
    @inline(__always)
    @inlinable
    public static func fromFastVariantOrThrow(_ variant: borrowing FastVariant) throws(VariantConversionError) -> Self {                
        guard let value = Self(variant) else {
            throw .unexpectedContent(parsing: self, from: variant)
        }
        return value                
    }
    
    /// Initialze ``Color`` from ``Variant``. Fails if `variant` doesn't contain ``Color``
    @inline(__always)                
    public init?(_ variant: Variant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForColor.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Color`` from ``Variant``. Fails if `variant` doesn't contain ``Color`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: Variant?) {
        guard let variant else { return nil }
        self.init(variant)
    }
    
    /// Initialze ``Color`` from ``FastVariant``. Fails if `variant` doesn't contain ``Color``
    @inline(__always)                
    public init?(_ variant: borrowing FastVariant) {
        guard Self._variantType == variant.gtype else { return nil }
        self.init()
        
        withUnsafeMutablePointer(to: &self) { pPayload in
            variant.constructType(into: pPayload, constructor: GodotInterfaceForColor.selfFromVariant)                        
        }
    }
    
    /// Initialze ``Color`` from ``FastVariant``. Fails if `variant` doesn't contain ``Color`` or is `nil`
    @inline(__always)
    @inlinable
    public init?(_ variant: borrowing FastVariant?) {
        switch variant {
        case .some(let variant):
            self.init(variant)
        case .none:
            return nil
        }
    }
    
    /// Internal API. For indicating that Godot `Array` of ``Color`` has type `Array[Color]`
    @inline(__always)
    @inlinable
    public static var _variantType: Variant.GType {
        .color 
    }
}

public extension Variant {
    /// Initialize ``Variant`` by wrapping ``Color?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    convenience init?(_ from: Color?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``Variant`` by wrapping ``Color``
    @inline(__always)
    convenience init(_ from: Color) {
        self.init(payload: from, constructor: GodotInterfaceForColor.variantFromSelf)
    }
    
}

public extension FastVariant {
    /// Initialize ``FastVariant`` by wrapping ``Color?``, fails if it's `nil`
    @inline(__always)
    @inlinable
    init?(_ from: Color?) {
        guard let from else {
            return nil
        }
        self.init(from)
    }
    
    /// Initialize ``FastVariant`` by wrapping ``Color``
    @inline(__always)
    init(_ from: Color) {
        self.init(payload: from, constructor: GodotInterfaceForColor.variantFromSelf)
    }
    
}

/// Static storage for keeping pointers to Godot implementation wrapped by Color
enum GodotInterfaceForColor {
    // MARK: - Constructors
    static let constructor0: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_COLOR, 0)!
    }()
    
    static let constructor1: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_COLOR, 1)!
    }()
    
    static let constructor2: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_COLOR, 2)!
    }()
    
    static let constructor3: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_COLOR, 3)!
    }()
    
    static let constructor4: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_COLOR, 4)!
    }()
    
    static let constructor5: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_COLOR, 5)!
    }()
    
    static let constructor6: GDExtensionPtrConstructor = {
        gi.variant_get_ptr_constructor(GDEXTENSION_VARIANT_TYPE_COLOR, 6)!
    }()
    
    // MARK: - Methods
    static let method_to_argb32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_argb32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3173160232)!
    }()
    
    static let method_to_abgr32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_abgr32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3173160232)!
    }()
    
    static let method_to_rgba32: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_rgba32")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3173160232)!
    }()
    
    static let method_to_argb64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_argb64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3173160232)!
    }()
    
    static let method_to_abgr64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_abgr64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3173160232)!
    }()
    
    static let method_to_rgba64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_rgba64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3173160232)!
    }()
    
    static let method_to_html: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("to_html")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3429816538)!
    }()
    
    static let method_clamp: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("clamp")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 105651410)!
    }()
    
    static let method_inverted: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("inverted")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3334027602)!
    }()
    
    static let method_lightened: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("lightened")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 1466039168)!
    }()
    
    static let method_darkened: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("darkened")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 1466039168)!
    }()
    
    static let method_blend: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("blend")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3803690977)!
    }()
    
    static let method_get_luminance: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("get_luminance")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 466405837)!
    }()
    
    static let method_srgb_to_linear: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("srgb_to_linear")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3334027602)!
    }()
    
    static let method_linear_to_srgb: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("linear_to_srgb")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3334027602)!
    }()
    
    static let method_is_equal_approx: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("is_equal_approx")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3167426256)!
    }()
    
    static let method_hex: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hex")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 351421375)!
    }()
    
    static let method_hex64: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("hex64")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 351421375)!
    }()
    
    static let method_html: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("html")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 2500054655)!
    }()
    
    static let method_html_is_valid: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("html_is_valid")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 2942997125)!
    }()
    
    static let method_from_string: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_string")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3755044230)!
    }()
    
    static let method_from_hsv: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_hsv")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 1573799446)!
    }()
    
    static let method_from_ok_hsl: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_ok_hsl")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 1573799446)!
    }()
    
    static let method_from_rgbe9995: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_rgbe9995")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 351421375)!
    }()
    
    static let method_from_rgba8: GDExtensionPtrBuiltInMethod = {
        var name = FastStringName("from_rgba8")
        return gi.variant_get_ptr_builtin_method(GDEXTENSION_VARIANT_TYPE_COLOR, &name.content, 3072934735)!
    }()
    
    static let indexed_getter: GDExtensionPtrIndexedGetter = {
        return gi.variant_get_ptr_indexed_getter (GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let indexed_setter: GDExtensionPtrIndexedSetter = {
        return gi.variant_get_ptr_indexed_setter (GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    // MARK: - Operators
    static let operator_5: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_6: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_INT)!
    }()
    
    static let operator_7: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_8: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_FLOAT)!
    }()
    
    static let operator_9: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_EQUAL, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let operator_10: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_NOT_EQUAL, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let operator_11: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_ADD, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let operator_12: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_SUBTRACT, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let operator_13: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_MULTIPLY, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let operator_14: GDExtensionPtrOperatorEvaluator = {
        return gi.variant_get_ptr_operator_evaluator(GDEXTENSION_VARIANT_OP_DIVIDE, GDEXTENSION_VARIANT_TYPE_COLOR, GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    // MARK: - Variant conversion
    static let variantFromSelf: GDExtensionVariantFromTypeConstructorFunc = {
        gi.get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    static let selfFromVariant: GDExtensionTypeFromVariantConstructorFunc = {
        gi.get_variant_to_type_constructor(GDEXTENSION_VARIANT_TYPE_COLOR)!
    }()
    
    
}

