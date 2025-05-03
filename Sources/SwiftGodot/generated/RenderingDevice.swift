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


/// Abstraction for working with modern low-level graphics APIs.
/// 
/// ``RenderingDevice`` is an abstraction for working with modern low-level graphics APIs such as Vulkan. Compared to ``RenderingServer`` (which works with Godot's own rendering subsystems), ``RenderingDevice`` is much lower-level and allows working more directly with the underlying graphics APIs. ``RenderingDevice`` is used in Godot to provide support for several modern low-level graphics APIs while reducing the amount of code duplication required. ``RenderingDevice`` can also be used in your own projects to perform things that are not exposed by ``RenderingServer`` or high-level nodes, such as using compute shaders.
/// 
/// On startup, Godot creates a global ``RenderingDevice`` which can be retrieved using ``RenderingServer/getRenderingDevice()``. This global ``RenderingDevice`` performs drawing to the screen.
/// 
/// **Local RenderingDevices:** Using ``RenderingServer/createLocalRenderingDevice()``, you can create "secondary" rendering devices to perform drawing and GPU compute operations on separate threads.
/// 
/// > Note: ``RenderingDevice`` assumes intermediate knowledge of modern graphics APIs such as Vulkan, Direct3D 12, Metal or WebGPU. These graphics APIs are lower-level than OpenGL or Direct3D 11, requiring you to perform what was previously done by the graphics driver itself. If you have difficulty understanding the concepts used in this class, follow the <a href="https://vulkan-tutorial.com/">Vulkan Tutorial</a> or <a href="https://vkguide.dev/">Vulkan Guide</a>. It's recommended to have existing modern OpenGL or Direct3D 11 knowledge before attempting to learn a low-level graphics API.
/// 
/// > Note: ``RenderingDevice`` is not available when running in headless mode or when using the Compatibility rendering method.
/// 
open class RenderingDevice: Object {
    private static var className = StringName("RenderingDevice")
    override open class var godotClassName: StringName { className }
    public enum DeviceType: Int64, CaseIterable {
        /// Rendering device type does not match any of the other enum values or is unknown.
        case other = 0 // DEVICE_TYPE_OTHER
        /// Rendering device is an integrated GPU, which is typically _(but not always)_ slower than dedicated GPUs (``DeviceType/discreteGpu``). On Android and iOS, the rendering device type is always considered to be ``DeviceType/integratedGpu``.
        case integratedGpu = 1 // DEVICE_TYPE_INTEGRATED_GPU
        /// Rendering device is a dedicated GPU, which is typically _(but not always)_ faster than integrated GPUs (``DeviceType/integratedGpu``).
        case discreteGpu = 2 // DEVICE_TYPE_DISCRETE_GPU
        /// Rendering device is an emulated GPU in a virtual environment. This is typically much slower than the host GPU, which means the expected performance level on a dedicated GPU will be roughly equivalent to ``DeviceType/integratedGpu``. Virtual machine GPU passthrough (such as VFIO) will not report the device type as ``DeviceType/virtualGpu``. Instead, the host GPU's device type will be reported as if the GPU was not emulated.
        case virtualGpu = 3 // DEVICE_TYPE_VIRTUAL_GPU
        /// Rendering device is provided by software emulation (such as Lavapipe or <a href="https://github.com/google/swiftshader">SwiftShader</a>). This is the slowest kind of rendering device available; it's typically much slower than ``DeviceType/integratedGpu``.
        case cpu = 4 // DEVICE_TYPE_CPU
        /// Represents the size of the ``RenderingDevice/DeviceType`` enum.
        case max = 5 // DEVICE_TYPE_MAX
    }
    
    public enum DriverResource: Int64, CaseIterable {
        /// Specific device object based on a physical device.
        /// 
        /// - Vulkan: Vulkan device driver resource (`VkDevice`). (`rid` argument doesn't apply.)
        /// 
        case logicalDevice = 0 // DRIVER_RESOURCE_LOGICAL_DEVICE
        /// Physical device the specific logical device is based on.
        /// 
        /// - Vulkan: `VkDevice`. (`rid` argument doesn't apply.)
        /// 
        case physicalDevice = 1 // DRIVER_RESOURCE_PHYSICAL_DEVICE
        /// Top-most graphics API entry object.
        /// 
        /// - Vulkan: `VkInstance`. (`rid` argument doesn't apply.)
        /// 
        case topmostObject = 2 // DRIVER_RESOURCE_TOPMOST_OBJECT
        /// The main graphics-compute command queue.
        /// 
        /// - Vulkan: `VkQueue`. (`rid` argument doesn't apply.)
        /// 
        case commandQueue = 3 // DRIVER_RESOURCE_COMMAND_QUEUE
        /// The specific family the main queue belongs to.
        /// 
        /// - Vulkan: the queue family index, an `uint32_t`. (`rid` argument doesn't apply.)
        /// 
        case queueFamily = 4 // DRIVER_RESOURCE_QUEUE_FAMILY
        /// - Vulkan: `VkImage`.
        case texture = 5 // DRIVER_RESOURCE_TEXTURE
        /// The view of an owned or shared texture.
        /// 
        /// - Vulkan: `VkImageView`.
        /// 
        case textureView = 6 // DRIVER_RESOURCE_TEXTURE_VIEW
        /// The native id of the data format of the texture.
        /// 
        /// - Vulkan: `VkFormat`.
        /// 
        case textureDataFormat = 7 // DRIVER_RESOURCE_TEXTURE_DATA_FORMAT
        /// - Vulkan: `VkSampler`.
        case sampler = 8 // DRIVER_RESOURCE_SAMPLER
        /// - Vulkan: `VkDescriptorSet`.
        case uniformSet = 9 // DRIVER_RESOURCE_UNIFORM_SET
        /// Buffer of any kind of (storage, vertex, etc.).
        /// 
        /// - Vulkan: `VkBuffer`.
        /// 
        case buffer = 10 // DRIVER_RESOURCE_BUFFER
        /// - Vulkan: `VkPipeline`.
        case computePipeline = 11 // DRIVER_RESOURCE_COMPUTE_PIPELINE
        /// - Vulkan: `VkPipeline`.
        case renderPipeline = 12 // DRIVER_RESOURCE_RENDER_PIPELINE
        /// 
        // case vulkanDevice = 0 // DRIVER_RESOURCE_VULKAN_DEVICE
        /// 
        // case vulkanPhysicalDevice = 1 // DRIVER_RESOURCE_VULKAN_PHYSICAL_DEVICE
        /// 
        // case vulkanInstance = 2 // DRIVER_RESOURCE_VULKAN_INSTANCE
        /// 
        // case vulkanQueue = 3 // DRIVER_RESOURCE_VULKAN_QUEUE
        /// 
        // case vulkanQueueFamilyIndex = 4 // DRIVER_RESOURCE_VULKAN_QUEUE_FAMILY_INDEX
        /// 
        // case vulkanImage = 5 // DRIVER_RESOURCE_VULKAN_IMAGE
        /// 
        // case vulkanImageView = 6 // DRIVER_RESOURCE_VULKAN_IMAGE_VIEW
        /// 
        // case vulkanImageNativeTextureFormat = 7 // DRIVER_RESOURCE_VULKAN_IMAGE_NATIVE_TEXTURE_FORMAT
        /// 
        // case vulkanSampler = 8 // DRIVER_RESOURCE_VULKAN_SAMPLER
        /// 
        // case vulkanDescriptorSet = 9 // DRIVER_RESOURCE_VULKAN_DESCRIPTOR_SET
        /// 
        // case vulkanBuffer = 10 // DRIVER_RESOURCE_VULKAN_BUFFER
        /// 
        // case vulkanComputePipeline = 11 // DRIVER_RESOURCE_VULKAN_COMPUTE_PIPELINE
        /// 
        // case vulkanRenderPipeline = 12 // DRIVER_RESOURCE_VULKAN_RENDER_PIPELINE
    }
    
    public enum DataFormat: Int64, CaseIterable {
        /// 4-bit-per-channel red/green channel data format, packed into 8 bits. Values are in the `[0.0, 1.0]` range.
        /// 
        /// > Note: More information on all data formats can be found on the <a href="https://registry.khronos.org/vulkan/specs/1.1/html/vkspec.html#_identification_of_formats">Identification of formats</a> section of the Vulkan specification, as well as the <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/man/html/VkFormat.html">VkFormat</a> enum.
        /// 
        case r4g4UnormPack8 = 0 // DATA_FORMAT_R4G4_UNORM_PACK8
        /// 4-bit-per-channel red/green/blue/alpha channel data format, packed into 16 bits. Values are in the `[0.0, 1.0]` range.
        case r4g4b4a4UnormPack16 = 1 // DATA_FORMAT_R4G4B4A4_UNORM_PACK16
        /// 4-bit-per-channel blue/green/red/alpha channel data format, packed into 16 bits. Values are in the `[0.0, 1.0]` range.
        case b4g4r4a4UnormPack16 = 2 // DATA_FORMAT_B4G4R4A4_UNORM_PACK16
        /// Red/green/blue channel data format with 5 bits of red, 6 bits of green and 5 bits of blue, packed into 16 bits. Values are in the `[0.0, 1.0]` range.
        case r5g6b5UnormPack16 = 3 // DATA_FORMAT_R5G6B5_UNORM_PACK16
        /// Blue/green/red channel data format with 5 bits of blue, 6 bits of green and 5 bits of red, packed into 16 bits. Values are in the `[0.0, 1.0]` range.
        case b5g6r5UnormPack16 = 4 // DATA_FORMAT_B5G6R5_UNORM_PACK16
        /// Red/green/blue/alpha channel data format with 5 bits of red, 6 bits of green, 5 bits of blue and 1 bit of alpha, packed into 16 bits. Values are in the `[0.0, 1.0]` range.
        case r5g5b5a1UnormPack16 = 5 // DATA_FORMAT_R5G5B5A1_UNORM_PACK16
        /// Blue/green/red/alpha channel data format with 5 bits of blue, 6 bits of green, 5 bits of red and 1 bit of alpha, packed into 16 bits. Values are in the `[0.0, 1.0]` range.
        case b5g5r5a1UnormPack16 = 6 // DATA_FORMAT_B5G5R5A1_UNORM_PACK16
        /// Alpha/red/green/blue channel data format with 1 bit of alpha, 5 bits of red, 6 bits of green and 5 bits of blue, packed into 16 bits. Values are in the `[0.0, 1.0]` range.
        case a1r5g5b5UnormPack16 = 7 // DATA_FORMAT_A1R5G5B5_UNORM_PACK16
        /// 8-bit-per-channel unsigned floating-point red channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r8Unorm = 8 // DATA_FORMAT_R8_UNORM
        /// 8-bit-per-channel signed floating-point red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r8Snorm = 9 // DATA_FORMAT_R8_SNORM
        /// 8-bit-per-channel unsigned floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.
        case r8Uscaled = 10 // DATA_FORMAT_R8_USCALED
        /// 8-bit-per-channel signed floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.
        case r8Sscaled = 11 // DATA_FORMAT_R8_SSCALED
        /// 8-bit-per-channel unsigned integer red channel data format. Values are in the `[0, 255]` range.
        case r8Uint = 12 // DATA_FORMAT_R8_UINT
        /// 8-bit-per-channel signed integer red channel data format. Values are in the `[-127, 127]` range.
        case r8Sint = 13 // DATA_FORMAT_R8_SINT
        /// 8-bit-per-channel unsigned floating-point red channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.
        case r8Srgb = 14 // DATA_FORMAT_R8_SRGB
        /// 8-bit-per-channel unsigned floating-point red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r8g8Unorm = 15 // DATA_FORMAT_R8G8_UNORM
        /// 8-bit-per-channel signed floating-point red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r8g8Snorm = 16 // DATA_FORMAT_R8G8_SNORM
        /// 8-bit-per-channel unsigned floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.
        case r8g8Uscaled = 17 // DATA_FORMAT_R8G8_USCALED
        /// 8-bit-per-channel signed floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.
        case r8g8Sscaled = 18 // DATA_FORMAT_R8G8_SSCALED
        /// 8-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0, 255]` range.
        case r8g8Uint = 19 // DATA_FORMAT_R8G8_UINT
        /// 8-bit-per-channel signed integer red/green channel data format. Values are in the `[-127, 127]` range.
        case r8g8Sint = 20 // DATA_FORMAT_R8G8_SINT
        /// 8-bit-per-channel unsigned floating-point red/green channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.
        case r8g8Srgb = 21 // DATA_FORMAT_R8G8_SRGB
        /// 8-bit-per-channel unsigned floating-point red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r8g8b8Unorm = 22 // DATA_FORMAT_R8G8B8_UNORM
        /// 8-bit-per-channel signed floating-point red/green/blue channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r8g8b8Snorm = 23 // DATA_FORMAT_R8G8B8_SNORM
        /// 8-bit-per-channel unsigned floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.
        case r8g8b8Uscaled = 24 // DATA_FORMAT_R8G8B8_USCALED
        /// 8-bit-per-channel signed floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.
        case r8g8b8Sscaled = 25 // DATA_FORMAT_R8G8B8_SSCALED
        /// 8-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0, 255]` range.
        case r8g8b8Uint = 26 // DATA_FORMAT_R8G8B8_UINT
        /// 8-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[-127, 127]` range.
        case r8g8b8Sint = 27 // DATA_FORMAT_R8G8B8_SINT
        /// 8-bit-per-channel unsigned floating-point red/green/blue/blue channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.
        case r8g8b8Srgb = 28 // DATA_FORMAT_R8G8B8_SRGB
        /// 8-bit-per-channel unsigned floating-point blue/green/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case b8g8r8Unorm = 29 // DATA_FORMAT_B8G8R8_UNORM
        /// 8-bit-per-channel signed floating-point blue/green/red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case b8g8r8Snorm = 30 // DATA_FORMAT_B8G8R8_SNORM
        /// 8-bit-per-channel unsigned floating-point blue/green/red channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.
        case b8g8r8Uscaled = 31 // DATA_FORMAT_B8G8R8_USCALED
        /// 8-bit-per-channel signed floating-point blue/green/red channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.
        case b8g8r8Sscaled = 32 // DATA_FORMAT_B8G8R8_SSCALED
        /// 8-bit-per-channel unsigned integer blue/green/red channel data format. Values are in the `[0, 255]` range.
        case b8g8r8Uint = 33 // DATA_FORMAT_B8G8R8_UINT
        /// 8-bit-per-channel signed integer blue/green/red channel data format. Values are in the `[-127, 127]` range.
        case b8g8r8Sint = 34 // DATA_FORMAT_B8G8R8_SINT
        /// 8-bit-per-channel unsigned floating-point blue/green/red data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.
        case b8g8r8Srgb = 35 // DATA_FORMAT_B8G8R8_SRGB
        /// 8-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r8g8b8a8Unorm = 36 // DATA_FORMAT_R8G8B8A8_UNORM
        /// 8-bit-per-channel signed floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r8g8b8a8Snorm = 37 // DATA_FORMAT_R8G8B8A8_SNORM
        /// 8-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.
        case r8g8b8a8Uscaled = 38 // DATA_FORMAT_R8G8B8A8_USCALED
        /// 8-bit-per-channel signed floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.
        case r8g8b8a8Sscaled = 39 // DATA_FORMAT_R8G8B8A8_SSCALED
        /// 8-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0, 255]` range.
        case r8g8b8a8Uint = 40 // DATA_FORMAT_R8G8B8A8_UINT
        /// 8-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[-127, 127]` range.
        case r8g8b8a8Sint = 41 // DATA_FORMAT_R8G8B8A8_SINT
        /// 8-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.
        case r8g8b8a8Srgb = 42 // DATA_FORMAT_R8G8B8A8_SRGB
        /// 8-bit-per-channel unsigned floating-point blue/green/red/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case b8g8r8a8Unorm = 43 // DATA_FORMAT_B8G8R8A8_UNORM
        /// 8-bit-per-channel signed floating-point blue/green/red/alpha channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case b8g8r8a8Snorm = 44 // DATA_FORMAT_B8G8R8A8_SNORM
        /// 8-bit-per-channel unsigned floating-point blue/green/red/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 255.0]` range.
        case b8g8r8a8Uscaled = 45 // DATA_FORMAT_B8G8R8A8_USCALED
        /// 8-bit-per-channel signed floating-point blue/green/red/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[-127.0, 127.0]` range.
        case b8g8r8a8Sscaled = 46 // DATA_FORMAT_B8G8R8A8_SSCALED
        /// 8-bit-per-channel unsigned integer blue/green/red/alpha channel data format. Values are in the `[0, 255]` range.
        case b8g8r8a8Uint = 47 // DATA_FORMAT_B8G8R8A8_UINT
        /// 8-bit-per-channel signed integer blue/green/red/alpha channel data format. Values are in the `[-127, 127]` range.
        case b8g8r8a8Sint = 48 // DATA_FORMAT_B8G8R8A8_SINT
        /// 8-bit-per-channel unsigned floating-point blue/green/red/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range.
        case b8g8r8a8Srgb = 49 // DATA_FORMAT_B8G8R8A8_SRGB
        /// 8-bit-per-channel unsigned floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Values are in the `[0.0, 1.0]` range.
        case a8b8g8r8UnormPack32 = 50 // DATA_FORMAT_A8B8G8R8_UNORM_PACK32
        /// 8-bit-per-channel signed floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Values are in the `[-1.0, 1.0]` range.
        case a8b8g8r8SnormPack32 = 51 // DATA_FORMAT_A8B8G8R8_SNORM_PACK32
        /// 8-bit-per-channel unsigned floating-point alpha/red/green/blue channel data format with scaled value (value is converted from integer to float), packed in 32 bits. Values are in the `[0.0, 255.0]` range.
        case a8b8g8r8UscaledPack32 = 52 // DATA_FORMAT_A8B8G8R8_USCALED_PACK32
        /// 8-bit-per-channel signed floating-point alpha/red/green/blue channel data format with scaled value (value is converted from integer to float), packed in 32 bits. Values are in the `[-127.0, 127.0]` range.
        case a8b8g8r8SscaledPack32 = 53 // DATA_FORMAT_A8B8G8R8_SSCALED_PACK32
        /// 8-bit-per-channel unsigned integer alpha/red/green/blue channel data format, packed in 32 bits. Values are in the `[0, 255]` range.
        case a8b8g8r8UintPack32 = 54 // DATA_FORMAT_A8B8G8R8_UINT_PACK32
        /// 8-bit-per-channel signed integer alpha/red/green/blue channel data format, packed in 32 bits. Values are in the `[-127, 127]` range.
        case a8b8g8r8SintPack32 = 55 // DATA_FORMAT_A8B8G8R8_SINT_PACK32
        /// 8-bit-per-channel unsigned floating-point alpha/red/green/blue channel data format with normalized value and non-linear sRGB encoding, packed in 32 bits. Values are in the `[0.0, 1.0]` range.
        case a8b8g8r8SrgbPack32 = 56 // DATA_FORMAT_A8B8G8R8_SRGB_PACK32
        /// Unsigned floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[0.0, 1.0]` range.
        case a2r10g10b10UnormPack32 = 57 // DATA_FORMAT_A2R10G10B10_UNORM_PACK32
        /// Signed floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[-1.0, 1.0]` range.
        case a2r10g10b10SnormPack32 = 58 // DATA_FORMAT_A2R10G10B10_SNORM_PACK32
        /// Unsigned floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[0.0, 1023.0]` range for red/green/blue and `[0.0, 3.0]` for alpha.
        case a2r10g10b10UscaledPack32 = 59 // DATA_FORMAT_A2R10G10B10_USCALED_PACK32
        /// Signed floating-point alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[-511.0, 511.0]` range for red/green/blue and `[-1.0, 1.0]` for alpha.
        case a2r10g10b10SscaledPack32 = 60 // DATA_FORMAT_A2R10G10B10_SSCALED_PACK32
        /// Unsigned integer alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[0, 1023]` range for red/green/blue and `[0, 3]` for alpha.
        case a2r10g10b10UintPack32 = 61 // DATA_FORMAT_A2R10G10B10_UINT_PACK32
        /// Signed integer alpha/red/green/blue channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of red, 10 bits of green and 10 bits of blue. Values are in the `[-511, 511]` range for red/green/blue and `[-1, 1]` for alpha.
        case a2r10g10b10SintPack32 = 62 // DATA_FORMAT_A2R10G10B10_SINT_PACK32
        /// Unsigned floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[0.0, 1.0]` range.
        case a2b10g10r10UnormPack32 = 63 // DATA_FORMAT_A2B10G10R10_UNORM_PACK32
        /// Signed floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[-1.0, 1.0]` range.
        case a2b10g10r10SnormPack32 = 64 // DATA_FORMAT_A2B10G10R10_SNORM_PACK32
        /// Unsigned floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[0.0, 1023.0]` range for blue/green/red and `[0.0, 3.0]` for alpha.
        case a2b10g10r10UscaledPack32 = 65 // DATA_FORMAT_A2B10G10R10_USCALED_PACK32
        /// Signed floating-point alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[-511.0, 511.0]` range for blue/green/red and `[-1.0, 1.0]` for alpha.
        case a2b10g10r10SscaledPack32 = 66 // DATA_FORMAT_A2B10G10R10_SSCALED_PACK32
        /// Unsigned integer alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[0, 1023]` range for blue/green/red and `[0, 3]` for alpha.
        case a2b10g10r10UintPack32 = 67 // DATA_FORMAT_A2B10G10R10_UINT_PACK32
        /// Signed integer alpha/blue/green/red channel data format with normalized value, packed in 32 bits. Format contains 2 bits of alpha, 10 bits of blue, 10 bits of green and 10 bits of red. Values are in the `[-511, 511]` range for blue/green/red and `[-1, 1]` for alpha.
        case a2b10g10r10SintPack32 = 68 // DATA_FORMAT_A2B10G10R10_SINT_PACK32
        /// 16-bit-per-channel unsigned floating-point red channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r16Unorm = 69 // DATA_FORMAT_R16_UNORM
        /// 16-bit-per-channel signed floating-point red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r16Snorm = 70 // DATA_FORMAT_R16_SNORM
        /// 16-bit-per-channel unsigned floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.
        case r16Uscaled = 71 // DATA_FORMAT_R16_USCALED
        /// 16-bit-per-channel signed floating-point red channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.
        case r16Sscaled = 72 // DATA_FORMAT_R16_SSCALED
        /// 16-bit-per-channel unsigned integer red channel data format. Values are in the `[0.0, 65535]` range.
        case r16Uint = 73 // DATA_FORMAT_R16_UINT
        /// 16-bit-per-channel signed integer red channel data format. Values are in the `[-32767, 32767]` range.
        case r16Sint = 74 // DATA_FORMAT_R16_SINT
        /// 16-bit-per-channel signed floating-point red channel data format with the value stored as-is.
        case r16Sfloat = 75 // DATA_FORMAT_R16_SFLOAT
        /// 16-bit-per-channel unsigned floating-point red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r16g16Unorm = 76 // DATA_FORMAT_R16G16_UNORM
        /// 16-bit-per-channel signed floating-point red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r16g16Snorm = 77 // DATA_FORMAT_R16G16_SNORM
        /// 16-bit-per-channel unsigned floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.
        case r16g16Uscaled = 78 // DATA_FORMAT_R16G16_USCALED
        /// 16-bit-per-channel signed floating-point red/green channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.
        case r16g16Sscaled = 79 // DATA_FORMAT_R16G16_SSCALED
        /// 16-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0.0, 65535]` range.
        case r16g16Uint = 80 // DATA_FORMAT_R16G16_UINT
        /// 16-bit-per-channel signed integer red/green channel data format. Values are in the `[-32767, 32767]` range.
        case r16g16Sint = 81 // DATA_FORMAT_R16G16_SINT
        /// 16-bit-per-channel signed floating-point red/green channel data format with the value stored as-is.
        case r16g16Sfloat = 82 // DATA_FORMAT_R16G16_SFLOAT
        /// 16-bit-per-channel unsigned floating-point red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r16g16b16Unorm = 83 // DATA_FORMAT_R16G16B16_UNORM
        /// 16-bit-per-channel signed floating-point red/green/blue channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r16g16b16Snorm = 84 // DATA_FORMAT_R16G16B16_SNORM
        /// 16-bit-per-channel unsigned floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.
        case r16g16b16Uscaled = 85 // DATA_FORMAT_R16G16B16_USCALED
        /// 16-bit-per-channel signed floating-point red/green/blue channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.
        case r16g16b16Sscaled = 86 // DATA_FORMAT_R16G16B16_SSCALED
        /// 16-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0.0, 65535]` range.
        case r16g16b16Uint = 87 // DATA_FORMAT_R16G16B16_UINT
        /// 16-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[-32767, 32767]` range.
        case r16g16b16Sint = 88 // DATA_FORMAT_R16G16B16_SINT
        /// 16-bit-per-channel signed floating-point red/green/blue channel data format with the value stored as-is.
        case r16g16b16Sfloat = 89 // DATA_FORMAT_R16G16B16_SFLOAT
        /// 16-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case r16g16b16a16Unorm = 90 // DATA_FORMAT_R16G16B16A16_UNORM
        /// 16-bit-per-channel signed floating-point red/green/blue/alpha channel data format with normalized value. Values are in the `[-1.0, 1.0]` range.
        case r16g16b16a16Snorm = 91 // DATA_FORMAT_R16G16B16A16_SNORM
        /// 16-bit-per-channel unsigned floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[0.0, 65535.0]` range.
        case r16g16b16a16Uscaled = 92 // DATA_FORMAT_R16G16B16A16_USCALED
        /// 16-bit-per-channel signed floating-point red/green/blue/alpha channel data format with scaled value (value is converted from integer to float). Values are in the `[-32767.0, 32767.0]` range.
        case r16g16b16a16Sscaled = 93 // DATA_FORMAT_R16G16B16A16_SSCALED
        /// 16-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0.0, 65535]` range.
        case r16g16b16a16Uint = 94 // DATA_FORMAT_R16G16B16A16_UINT
        /// 16-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[-32767, 32767]` range.
        case r16g16b16a16Sint = 95 // DATA_FORMAT_R16G16B16A16_SINT
        /// 16-bit-per-channel signed floating-point red/green/blue/alpha channel data format with the value stored as-is.
        case r16g16b16a16Sfloat = 96 // DATA_FORMAT_R16G16B16A16_SFLOAT
        /// 32-bit-per-channel unsigned integer red channel data format. Values are in the `[0, 2^32 - 1]` range.
        case r32Uint = 97 // DATA_FORMAT_R32_UINT
        /// 32-bit-per-channel signed integer red channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.
        case r32Sint = 98 // DATA_FORMAT_R32_SINT
        /// 32-bit-per-channel signed floating-point red channel data format with the value stored as-is.
        case r32Sfloat = 99 // DATA_FORMAT_R32_SFLOAT
        /// 32-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0, 2^32 - 1]` range.
        case r32g32Uint = 100 // DATA_FORMAT_R32G32_UINT
        /// 32-bit-per-channel signed integer red/green channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.
        case r32g32Sint = 101 // DATA_FORMAT_R32G32_SINT
        /// 32-bit-per-channel signed floating-point red/green channel data format with the value stored as-is.
        case r32g32Sfloat = 102 // DATA_FORMAT_R32G32_SFLOAT
        /// 32-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0, 2^32 - 1]` range.
        case r32g32b32Uint = 103 // DATA_FORMAT_R32G32B32_UINT
        /// 32-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.
        case r32g32b32Sint = 104 // DATA_FORMAT_R32G32B32_SINT
        /// 32-bit-per-channel signed floating-point red/green/blue channel data format with the value stored as-is.
        case r32g32b32Sfloat = 105 // DATA_FORMAT_R32G32B32_SFLOAT
        /// 32-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0, 2^32 - 1]` range.
        case r32g32b32a32Uint = 106 // DATA_FORMAT_R32G32B32A32_UINT
        /// 32-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[2^31 + 1, 2^31 - 1]` range.
        case r32g32b32a32Sint = 107 // DATA_FORMAT_R32G32B32A32_SINT
        /// 32-bit-per-channel signed floating-point red/green/blue/alpha channel data format with the value stored as-is.
        case r32g32b32a32Sfloat = 108 // DATA_FORMAT_R32G32B32A32_SFLOAT
        /// 64-bit-per-channel unsigned integer red channel data format. Values are in the `[0, 2^64 - 1]` range.
        case r64Uint = 109 // DATA_FORMAT_R64_UINT
        /// 64-bit-per-channel signed integer red channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.
        case r64Sint = 110 // DATA_FORMAT_R64_SINT
        /// 64-bit-per-channel signed floating-point red channel data format with the value stored as-is.
        case r64Sfloat = 111 // DATA_FORMAT_R64_SFLOAT
        /// 64-bit-per-channel unsigned integer red/green channel data format. Values are in the `[0, 2^64 - 1]` range.
        case r64g64Uint = 112 // DATA_FORMAT_R64G64_UINT
        /// 64-bit-per-channel signed integer red/green channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.
        case r64g64Sint = 113 // DATA_FORMAT_R64G64_SINT
        /// 64-bit-per-channel signed floating-point red/green channel data format with the value stored as-is.
        case r64g64Sfloat = 114 // DATA_FORMAT_R64G64_SFLOAT
        /// 64-bit-per-channel unsigned integer red/green/blue channel data format. Values are in the `[0, 2^64 - 1]` range.
        case r64g64b64Uint = 115 // DATA_FORMAT_R64G64B64_UINT
        /// 64-bit-per-channel signed integer red/green/blue channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.
        case r64g64b64Sint = 116 // DATA_FORMAT_R64G64B64_SINT
        /// 64-bit-per-channel signed floating-point red/green/blue channel data format with the value stored as-is.
        case r64g64b64Sfloat = 117 // DATA_FORMAT_R64G64B64_SFLOAT
        /// 64-bit-per-channel unsigned integer red/green/blue/alpha channel data format. Values are in the `[0, 2^64 - 1]` range.
        case r64g64b64a64Uint = 118 // DATA_FORMAT_R64G64B64A64_UINT
        /// 64-bit-per-channel signed integer red/green/blue/alpha channel data format. Values are in the `[2^63 + 1, 2^63 - 1]` range.
        case r64g64b64a64Sint = 119 // DATA_FORMAT_R64G64B64A64_SINT
        /// 64-bit-per-channel signed floating-point red/green/blue/alpha channel data format with the value stored as-is.
        case r64g64b64a64Sfloat = 120 // DATA_FORMAT_R64G64B64A64_SFLOAT
        /// Unsigned floating-point blue/green/red data format with the value stored as-is, packed in 32 bits. The format's precision is 10 bits of blue channel, 11 bits of green channel and 11 bits of red channel.
        case b10g11r11UfloatPack32 = 121 // DATA_FORMAT_B10G11R11_UFLOAT_PACK32
        /// Unsigned floating-point exposure/blue/green/red data format with the value stored as-is, packed in 32 bits. The format's precision is 5 bits of exposure, 9 bits of blue channel, 9 bits of green channel and 9 bits of red channel.
        case e5b9g9r9UfloatPack32 = 122 // DATA_FORMAT_E5B9G9R9_UFLOAT_PACK32
        /// 16-bit unsigned floating-point depth data format with normalized value. Values are in the `[0.0, 1.0]` range.
        case d16Unorm = 123 // DATA_FORMAT_D16_UNORM
        /// 24-bit unsigned floating-point depth data format with normalized value, plus 8 unused bits, packed in 32 bits. Values for depth are in the `[0.0, 1.0]` range.
        case x8D24UnormPack32 = 124 // DATA_FORMAT_X8_D24_UNORM_PACK32
        /// 32-bit signed floating-point depth data format with the value stored as-is.
        case d32Sfloat = 125 // DATA_FORMAT_D32_SFLOAT
        /// 8-bit unsigned integer stencil data format.
        case s8Uint = 126 // DATA_FORMAT_S8_UINT
        /// 16-bit unsigned floating-point depth data format with normalized value, plus 8 bits of stencil in unsigned integer format. Values for depth are in the `[0.0, 1.0]` range. Values for stencil are in the `[0, 255]` range.
        case d16UnormS8Uint = 127 // DATA_FORMAT_D16_UNORM_S8_UINT
        /// 24-bit unsigned floating-point depth data format with normalized value, plus 8 bits of stencil in unsigned integer format. Values for depth are in the `[0.0, 1.0]` range. Values for stencil are in the `[0, 255]` range.
        case d24UnormS8Uint = 128 // DATA_FORMAT_D24_UNORM_S8_UINT
        /// 32-bit signed floating-point depth data format with the value stored as-is, plus 8 bits of stencil in unsigned integer format. Values for stencil are in the `[0, 255]` range.
        case d32SfloatS8Uint = 129 // DATA_FORMAT_D32_SFLOAT_S8_UINT
        /// VRAM-compressed unsigned red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel and 5 bits of blue channel. Using BC1 texture compression (also known as S3TC DXT1).
        case bc1RgbUnormBlock = 130 // DATA_FORMAT_BC1_RGB_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel and 5 bits of blue channel. Using BC1 texture compression (also known as S3TC DXT1).
        case bc1RgbSrgbBlock = 131 // DATA_FORMAT_BC1_RGB_SRGB_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 1 bit of alpha channel. Using BC1 texture compression (also known as S3TC DXT1).
        case bc1RgbaUnormBlock = 132 // DATA_FORMAT_BC1_RGBA_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 1 bit of alpha channel. Using BC1 texture compression (also known as S3TC DXT1).
        case bc1RgbaSrgbBlock = 133 // DATA_FORMAT_BC1_RGBA_SRGB_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 4 bits of alpha channel. Using BC2 texture compression (also known as S3TC DXT3).
        case bc2UnormBlock = 134 // DATA_FORMAT_BC2_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 4 bits of alpha channel. Using BC2 texture compression (also known as S3TC DXT3).
        case bc2SrgbBlock = 135 // DATA_FORMAT_BC2_SRGB_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 8 bits of alpha channel. Using BC3 texture compression (also known as S3TC DXT5).
        case bc3UnormBlock = 136 // DATA_FORMAT_BC3_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is 5 bits of red channel, 6 bits of green channel, 5 bits of blue channel and 8 bits of alpha channel. Using BC3 texture compression (also known as S3TC DXT5).
        case bc3SrgbBlock = 137 // DATA_FORMAT_BC3_SRGB_BLOCK
        /// VRAM-compressed unsigned red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 8 bits of red channel. Using BC4 texture compression.
        case bc4UnormBlock = 138 // DATA_FORMAT_BC4_UNORM_BLOCK
        /// VRAM-compressed signed red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. The format's precision is 8 bits of red channel. Using BC4 texture compression.
        case bc4SnormBlock = 139 // DATA_FORMAT_BC4_SNORM_BLOCK
        /// VRAM-compressed unsigned red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is 8 bits of red channel and 8 bits of green channel. Using BC5 texture compression (also known as S3TC RGTC).
        case bc5UnormBlock = 140 // DATA_FORMAT_BC5_UNORM_BLOCK
        /// VRAM-compressed signed red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. The format's precision is 8 bits of red channel and 8 bits of green channel. Using BC5 texture compression (also known as S3TC RGTC).
        case bc5SnormBlock = 141 // DATA_FORMAT_BC5_SNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue channel data format with the floating-point value stored as-is. The format's precision is between 10 and 13 bits for the red/green/blue channels. Using BC6H texture compression (also known as BPTC HDR).
        case bc6hUfloatBlock = 142 // DATA_FORMAT_BC6H_UFLOAT_BLOCK
        /// VRAM-compressed signed red/green/blue channel data format with the floating-point value stored as-is. The format's precision is between 10 and 13 bits for the red/green/blue channels. Using BC6H texture compression (also known as BPTC HDR).
        case bc6hSfloatBlock = 143 // DATA_FORMAT_BC6H_SFLOAT_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. The format's precision is between 4 and 7 bits for the red/green/blue channels and between 0 and 8 bits for the alpha channel. Also known as BPTC LDR.
        case bc7UnormBlock = 144 // DATA_FORMAT_BC7_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. The format's precision is between 4 and 7 bits for the red/green/blue channels and between 0 and 8 bits for the alpha channel. Also known as BPTC LDR.
        case bc7SrgbBlock = 145 // DATA_FORMAT_BC7_SRGB_BLOCK
        /// VRAM-compressed unsigned red/green/blue channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.
        case etc2R8g8b8UnormBlock = 146 // DATA_FORMAT_ETC2_R8G8B8_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.
        case etc2R8g8b8SrgbBlock = 147 // DATA_FORMAT_ETC2_R8G8B8_SRGB_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bit of precision each, with alpha using 1 bit of precision. Using ETC2 texture compression.
        case etc2R8g8b8a1UnormBlock = 148 // DATA_FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bit of precision each, with alpha using 1 bit of precision. Using ETC2 texture compression.
        case etc2R8g8b8a1SrgbBlock = 149 // DATA_FORMAT_ETC2_R8G8B8A1_SRGB_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bits of precision each, with alpha using 8 bits of precision. Using ETC2 texture compression.
        case etc2R8g8b8a8UnormBlock = 150 // DATA_FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK
        /// VRAM-compressed unsigned red/green/blue/alpha channel data format with normalized value and non-linear sRGB encoding. Values are in the `[0.0, 1.0]` range. Red/green/blue use 8 bits of precision each, with alpha using 8 bits of precision. Using ETC2 texture compression.
        case etc2R8g8b8a8SrgbBlock = 151 // DATA_FORMAT_ETC2_R8G8B8A8_SRGB_BLOCK
        /// 11-bit VRAM-compressed unsigned red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.
        case eacR11UnormBlock = 152 // DATA_FORMAT_EAC_R11_UNORM_BLOCK
        /// 11-bit VRAM-compressed signed red channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. Using ETC2 texture compression.
        case eacR11SnormBlock = 153 // DATA_FORMAT_EAC_R11_SNORM_BLOCK
        /// 11-bit VRAM-compressed unsigned red/green channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Using ETC2 texture compression.
        case eacR11g11UnormBlock = 154 // DATA_FORMAT_EAC_R11G11_UNORM_BLOCK
        /// 11-bit VRAM-compressed signed red/green channel data format with normalized value. Values are in the `[-1.0, 1.0]` range. Using ETC2 texture compression.
        case eacR11g11SnormBlock = 155 // DATA_FORMAT_EAC_R11G11_SNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 4×4 blocks (highest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc4x4UnormBlock = 156 // DATA_FORMAT_ASTC_4x4_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 4×4 blocks (highest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc4x4SrgbBlock = 157 // DATA_FORMAT_ASTC_4x4_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 5×4 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc5x4UnormBlock = 158 // DATA_FORMAT_ASTC_5x4_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 5×4 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc5x4SrgbBlock = 159 // DATA_FORMAT_ASTC_5x4_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 5×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc5x5UnormBlock = 160 // DATA_FORMAT_ASTC_5x5_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 5×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc5x5SrgbBlock = 161 // DATA_FORMAT_ASTC_5x5_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 6×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc6x5UnormBlock = 162 // DATA_FORMAT_ASTC_6x5_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 6×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc6x5SrgbBlock = 163 // DATA_FORMAT_ASTC_6x5_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 6×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc6x6UnormBlock = 164 // DATA_FORMAT_ASTC_6x6_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 6×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc6x6SrgbBlock = 165 // DATA_FORMAT_ASTC_6x6_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 8×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc8x5UnormBlock = 166 // DATA_FORMAT_ASTC_8x5_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 8×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc8x5SrgbBlock = 167 // DATA_FORMAT_ASTC_8x5_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 8×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc8x6UnormBlock = 168 // DATA_FORMAT_ASTC_8x6_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 8×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc8x6SrgbBlock = 169 // DATA_FORMAT_ASTC_8x6_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 8×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc8x8UnormBlock = 170 // DATA_FORMAT_ASTC_8x8_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 8×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc8x8SrgbBlock = 171 // DATA_FORMAT_ASTC_8x8_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x5UnormBlock = 172 // DATA_FORMAT_ASTC_10x5_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×5 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x5SrgbBlock = 173 // DATA_FORMAT_ASTC_10x5_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x6UnormBlock = 174 // DATA_FORMAT_ASTC_10x6_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×6 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x6SrgbBlock = 175 // DATA_FORMAT_ASTC_10x6_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x8UnormBlock = 176 // DATA_FORMAT_ASTC_10x8_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×8 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x8SrgbBlock = 177 // DATA_FORMAT_ASTC_10x8_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 10×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x10UnormBlock = 178 // DATA_FORMAT_ASTC_10x10_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 10×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc10x10SrgbBlock = 179 // DATA_FORMAT_ASTC_10x10_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 12×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc12x10UnormBlock = 180 // DATA_FORMAT_ASTC_12x10_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 12×10 blocks. Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc12x10SrgbBlock = 181 // DATA_FORMAT_ASTC_12x10_SRGB_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value, packed in 12 blocks (lowest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc12x12UnormBlock = 182 // DATA_FORMAT_ASTC_12x12_UNORM_BLOCK
        /// VRAM-compressed unsigned floating-point data format with normalized value and non-linear sRGB encoding, packed in 12 blocks (lowest quality). Values are in the `[0.0, 1.0]` range. Using ASTC compression.
        case astc12x12SrgbBlock = 183 // DATA_FORMAT_ASTC_12x12_SRGB_BLOCK
        /// 8-bit-per-channel unsigned floating-point green/blue/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g8b8g8r8422Unorm = 184 // DATA_FORMAT_G8B8G8R8_422_UNORM
        /// 8-bit-per-channel unsigned floating-point blue/green/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case b8g8r8g8422Unorm = 185 // DATA_FORMAT_B8G8R8G8_422_UNORM
        /// 8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g8B8R83plane420Unorm = 186 // DATA_FORMAT_G8_B8_R8_3PLANE_420_UNORM
        /// 8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g8B8r82plane420Unorm = 187 // DATA_FORMAT_G8_B8R8_2PLANE_420_UNORM
        /// 8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g8B8R83plane422Unorm = 188 // DATA_FORMAT_G8_B8_R8_3PLANE_422_UNORM
        /// 8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g8B8r82plane422Unorm = 189 // DATA_FORMAT_G8_B8R8_2PLANE_422_UNORM
        /// 8-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, stored across 3 separate planes. Values are in the `[0.0, 1.0]` range.
        case g8B8R83plane444Unorm = 190 // DATA_FORMAT_G8_B8_R8_3PLANE_444_UNORM
        /// 10-bit-per-channel unsigned floating-point red channel data with normalized value, plus 6 unused bits, packed in 16 bits. Values are in the `[0.0, 1.0]` range.
        case r10x6UnormPack16 = 191 // DATA_FORMAT_R10X6_UNORM_PACK16
        /// 10-bit-per-channel unsigned floating-point red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 2×16 bits. Values are in the `[0.0, 1.0]` range.
        case r10x6g10x6Unorm2pack16 = 192 // DATA_FORMAT_R10X6G10X6_UNORM_2PACK16
        /// 10-bit-per-channel unsigned floating-point red/green/blue/alpha channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range.
        case r10x6g10x6b10x6a10x6Unorm4pack16 = 193 // DATA_FORMAT_R10X6G10X6B10X6A10X6_UNORM_4PACK16
        /// 10-bit-per-channel unsigned floating-point green/blue/green/red channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.
        case g10x6b10x6g10x6r10x6422Unorm4pack16 = 194 // DATA_FORMAT_G10X6B10X6G10X6R10X6_422_UNORM_4PACK16
        /// 10-bit-per-channel unsigned floating-point blue/green/red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.
        case b10x6g10x6r10x6g10x6422Unorm4pack16 = 195 // DATA_FORMAT_B10X6G10X6R10X6G10X6_422_UNORM_4PACK16
        /// 10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g10x6B10x6R10x63plane420Unorm3pack16 = 196 // DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_420_UNORM_3PACK16
        /// 10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g10x6B10x6r10x62plane420Unorm3pack16 = 197 // DATA_FORMAT_G10X6_B10X6R10X6_2PLANE_420_UNORM_3PACK16
        /// 10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g10x6B10x6R10x63plane422Unorm3pack16 = 198 // DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_422_UNORM_3PACK16
        /// 10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g10x6B10x6r10x62plane422Unorm3pack16 = 199 // DATA_FORMAT_G10X6_B10X6R10X6_2PLANE_422_UNORM_3PACK16
        /// 10-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range.
        case g10x6B10x6R10x63plane444Unorm3pack16 = 200 // DATA_FORMAT_G10X6_B10X6_R10X6_3PLANE_444_UNORM_3PACK16
        /// 12-bit-per-channel unsigned floating-point red channel data with normalized value, plus 6 unused bits, packed in 16 bits. Values are in the `[0.0, 1.0]` range.
        case r12x4UnormPack16 = 201 // DATA_FORMAT_R12X4_UNORM_PACK16
        /// 12-bit-per-channel unsigned floating-point red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 2×16 bits. Values are in the `[0.0, 1.0]` range.
        case r12x4g12x4Unorm2pack16 = 202 // DATA_FORMAT_R12X4G12X4_UNORM_2PACK16
        /// 12-bit-per-channel unsigned floating-point red/green/blue/alpha channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range.
        case r12x4g12x4b12x4a12x4Unorm4pack16 = 203 // DATA_FORMAT_R12X4G12X4B12X4A12X4_UNORM_4PACK16
        /// 12-bit-per-channel unsigned floating-point green/blue/green/red channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.
        case g12x4b12x4g12x4r12x4422Unorm4pack16 = 204 // DATA_FORMAT_G12X4B12X4G12X4R12X4_422_UNORM_4PACK16
        /// 12-bit-per-channel unsigned floating-point blue/green/red/green channel data with normalized value, plus 6 unused bits after each channel, packed in 4×16 bits. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel). The green channel is listed twice, but contains different values to allow it to be represented at full resolution.
        case b12x4g12x4r12x4g12x4422Unorm4pack16 = 205 // DATA_FORMAT_B12X4G12X4R12X4G12X4_422_UNORM_4PACK16
        /// 12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g12x4B12x4R12x43plane420Unorm3pack16 = 206 // DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_420_UNORM_3PACK16
        /// 12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g12x4B12x4r12x42plane420Unorm3pack16 = 207 // DATA_FORMAT_G12X4_B12X4R12X4_2PLANE_420_UNORM_3PACK16
        /// 12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g12x4B12x4R12x43plane422Unorm3pack16 = 208 // DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_422_UNORM_3PACK16
        /// 12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g12x4B12x4r12x42plane422Unorm3pack16 = 209 // DATA_FORMAT_G12X4_B12X4R12X4_2PLANE_422_UNORM_3PACK16
        /// 12-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Packed in 3×16 bits and stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range.
        case g12x4B12x4R12x43plane444Unorm3pack16 = 210 // DATA_FORMAT_G12X4_B12X4_R12X4_3PLANE_444_UNORM_3PACK16
        /// 16-bit-per-channel unsigned floating-point green/blue/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g16b16g16r16422Unorm = 211 // DATA_FORMAT_G16B16G16R16_422_UNORM
        /// 16-bit-per-channel unsigned floating-point blue/green/red channel data format with normalized value. Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case b16g16r16g16422Unorm = 212 // DATA_FORMAT_B16G16R16G16_422_UNORM
        /// 16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 2 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g16B16R163plane420Unorm = 213 // DATA_FORMAT_G16_B16_R16_3PLANE_420_UNORM
        /// 16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 2 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal and vertical resolution (i.e. 2×2 adjacent pixels will share the same value for the blue/red channel).
        case g16B16r162plane420Unorm = 214 // DATA_FORMAT_G16_B16R16_2PLANE_420_UNORM
        /// 16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g16B16R163plane422Unorm = 215 // DATA_FORMAT_G16_B16_R16_3PLANE_422_UNORM
        /// 16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 3 separate planes (green + blue/red). Values are in the `[0.0, 1.0]` range. Blue and red channel data is stored at halved horizontal resolution (i.e. 2 horizontally adjacent pixels will share the same value for the blue/red channel).
        case g16B16r162plane422Unorm = 216 // DATA_FORMAT_G16_B16R16_2PLANE_422_UNORM
        /// 16-bit-per-channel unsigned floating-point green/blue/red channel data with normalized value, plus 6 unused bits after each channel. Stored across 3 separate planes (green + blue + red). Values are in the `[0.0, 1.0]` range.
        case g16B16R163plane444Unorm = 217 // DATA_FORMAT_G16_B16_R16_3PLANE_444_UNORM
        /// 
        case astc4x4SfloatBlock = 218 // DATA_FORMAT_ASTC_4x4_SFLOAT_BLOCK
        /// 
        case astc5x4SfloatBlock = 219 // DATA_FORMAT_ASTC_5x4_SFLOAT_BLOCK
        /// 
        case astc5x5SfloatBlock = 220 // DATA_FORMAT_ASTC_5x5_SFLOAT_BLOCK
        /// 
        case astc6x5SfloatBlock = 221 // DATA_FORMAT_ASTC_6x5_SFLOAT_BLOCK
        /// 
        case astc6x6SfloatBlock = 222 // DATA_FORMAT_ASTC_6x6_SFLOAT_BLOCK
        /// 
        case astc8x5SfloatBlock = 223 // DATA_FORMAT_ASTC_8x5_SFLOAT_BLOCK
        /// 
        case astc8x6SfloatBlock = 224 // DATA_FORMAT_ASTC_8x6_SFLOAT_BLOCK
        /// 
        case astc8x8SfloatBlock = 225 // DATA_FORMAT_ASTC_8x8_SFLOAT_BLOCK
        /// 
        case astc10x5SfloatBlock = 226 // DATA_FORMAT_ASTC_10x5_SFLOAT_BLOCK
        /// 
        case astc10x6SfloatBlock = 227 // DATA_FORMAT_ASTC_10x6_SFLOAT_BLOCK
        /// 
        case astc10x8SfloatBlock = 228 // DATA_FORMAT_ASTC_10x8_SFLOAT_BLOCK
        /// 
        case astc10x10SfloatBlock = 229 // DATA_FORMAT_ASTC_10x10_SFLOAT_BLOCK
        /// 
        case astc12x10SfloatBlock = 230 // DATA_FORMAT_ASTC_12x10_SFLOAT_BLOCK
        /// 
        case astc12x12SfloatBlock = 231 // DATA_FORMAT_ASTC_12x12_SFLOAT_BLOCK
        /// Represents the size of the ``RenderingDevice/DataFormat`` enum.
        case max = 232 // DATA_FORMAT_MAX
    }
    
    public struct BarrierMask: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Vertex shader barrier mask.
        public static let vertex = BarrierMask (rawValue: 1)
        /// Fragment shader barrier mask.
        public static let fragment = BarrierMask (rawValue: 8)
        /// Compute barrier mask.
        public static let compute = BarrierMask (rawValue: 2)
        /// Transfer barrier mask.
        public static let transfer = BarrierMask (rawValue: 4)
        /// Raster barrier mask (vertex and fragment). Equivalent to `BARRIER_MASK_VERTEX | BARRIER_MASK_FRAGMENT`.
        public static let raster = BarrierMask (rawValue: 9)
        /// Barrier mask for all types (vertex, fragment, compute, transfer).
        public static let allBarriers = BarrierMask (rawValue: 32767)
        /// No barrier for any type.
        public static let noBarrier = BarrierMask (rawValue: 32768)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.vertex) { result += "vertex, " }
            if self.contains (.fragment) { result += "fragment, " }
            if self.contains (.compute) { result += "compute, " }
            if self.contains (.transfer) { result += "transfer, " }
            if self.contains (.raster) { result += "raster, " }
            if self.contains (.allBarriers) { result += "allBarriers, " }
            if self.contains (.noBarrier) { result += "noBarrier, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    public enum TextureType: Int64, CaseIterable {
        /// 1-dimensional texture.
        case textureType1d = 0 // TEXTURE_TYPE_1D
        /// 2-dimensional texture.
        case textureType2d = 1 // TEXTURE_TYPE_2D
        /// 3-dimensional texture.
        case textureType3d = 2 // TEXTURE_TYPE_3D
        /// ``Cubemap`` texture.
        case cube = 3 // TEXTURE_TYPE_CUBE
        /// Array of 1-dimensional textures.
        case textureType1dArray = 4 // TEXTURE_TYPE_1D_ARRAY
        /// Array of 2-dimensional textures.
        case textureType2dArray = 5 // TEXTURE_TYPE_2D_ARRAY
        /// Array of ``Cubemap`` textures.
        case cubeArray = 6 // TEXTURE_TYPE_CUBE_ARRAY
        /// Represents the size of the ``RenderingDevice/TextureType`` enum.
        case max = 7 // TEXTURE_TYPE_MAX
    }
    
    public enum TextureSamples: Int64, CaseIterable {
        /// Perform 1 texture sample (this is the fastest but lowest-quality for antialiasing).
        case textureSamples1 = 0 // TEXTURE_SAMPLES_1
        /// Perform 2 texture samples.
        case textureSamples2 = 1 // TEXTURE_SAMPLES_2
        /// Perform 4 texture samples.
        case textureSamples4 = 2 // TEXTURE_SAMPLES_4
        /// Perform 8 texture samples. Not supported on mobile GPUs (including Apple Silicon).
        case textureSamples8 = 3 // TEXTURE_SAMPLES_8
        /// Perform 16 texture samples. Not supported on mobile GPUs and many desktop GPUs.
        case textureSamples16 = 4 // TEXTURE_SAMPLES_16
        /// Perform 32 texture samples. Not supported on most GPUs.
        case textureSamples32 = 5 // TEXTURE_SAMPLES_32
        /// Perform 64 texture samples (this is the slowest but highest-quality for antialiasing). Not supported on most GPUs.
        case textureSamples64 = 6 // TEXTURE_SAMPLES_64
        /// Represents the size of the ``RenderingDevice/TextureSamples`` enum.
        case max = 7 // TEXTURE_SAMPLES_MAX
    }
    
    public struct TextureUsageBits: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Texture can be sampled.
        public static let samplingBit = TextureUsageBits (rawValue: 1)
        /// Texture can be used as a color attachment in a framebuffer.
        public static let colorAttachmentBit = TextureUsageBits (rawValue: 2)
        /// Texture can be used as a depth/stencil attachment in a framebuffer.
        public static let depthStencilAttachmentBit = TextureUsageBits (rawValue: 4)
        /// Texture can be used as a <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#descriptorsets-storageimage">storage image</a>.
        public static let storageBit = TextureUsageBits (rawValue: 8)
        /// Texture can be used as a <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#descriptorsets-storageimage">storage image</a> with support for atomic operations.
        public static let storageAtomicBit = TextureUsageBits (rawValue: 16)
        /// Texture can be read back on the CPU using ``textureGetData(texture:layer:)`` faster than without this bit, since it is always kept in the system memory.
        public static let cpuReadBit = TextureUsageBits (rawValue: 32)
        /// Texture can be updated using ``textureUpdate(texture:layer:data:)``.
        public static let canUpdateBit = TextureUsageBits (rawValue: 64)
        /// Texture can be a source for ``textureCopy(fromTexture:toTexture:fromPos:toPos:size:srcMipmap:dstMipmap:srcLayer:dstLayer:)``.
        public static let canCopyFromBit = TextureUsageBits (rawValue: 128)
        /// Texture can be a destination for ``textureCopy(fromTexture:toTexture:fromPos:toPos:size:srcMipmap:dstMipmap:srcLayer:dstLayer:)``.
        public static let canCopyToBit = TextureUsageBits (rawValue: 256)
        /// Texture can be used as a <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#descriptorsets-inputattachment">input attachment</a> in a framebuffer.
        public static let inputAttachmentBit = TextureUsageBits (rawValue: 512)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.samplingBit) { result += "samplingBit, " }
            if self.contains (.colorAttachmentBit) { result += "colorAttachmentBit, " }
            if self.contains (.depthStencilAttachmentBit) { result += "depthStencilAttachmentBit, " }
            if self.contains (.storageBit) { result += "storageBit, " }
            if self.contains (.storageAtomicBit) { result += "storageAtomicBit, " }
            if self.contains (.cpuReadBit) { result += "cpuReadBit, " }
            if self.contains (.canUpdateBit) { result += "canUpdateBit, " }
            if self.contains (.canCopyFromBit) { result += "canCopyFromBit, " }
            if self.contains (.canCopyToBit) { result += "canCopyToBit, " }
            if self.contains (.inputAttachmentBit) { result += "inputAttachmentBit, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    public enum TextureSwizzle: Int64, CaseIterable {
        /// Return the sampled value as-is.
        case identity = 0 // TEXTURE_SWIZZLE_IDENTITY
        /// Always return `0.0` when sampling.
        case zero = 1 // TEXTURE_SWIZZLE_ZERO
        /// Always return `1.0` when sampling.
        case one = 2 // TEXTURE_SWIZZLE_ONE
        /// Sample the red color channel.
        case r = 3 // TEXTURE_SWIZZLE_R
        /// Sample the green color channel.
        case g = 4 // TEXTURE_SWIZZLE_G
        /// Sample the blue color channel.
        case b = 5 // TEXTURE_SWIZZLE_B
        /// Sample the alpha channel.
        case a = 6 // TEXTURE_SWIZZLE_A
        /// Represents the size of the ``RenderingDevice/TextureSwizzle`` enum.
        case max = 7 // TEXTURE_SWIZZLE_MAX
    }
    
    public enum TextureSliceType: Int64, CaseIterable {
        /// 2-dimensional texture slice.
        case textureSlice2d = 0 // TEXTURE_SLICE_2D
        /// Cubemap texture slice.
        case cubemap = 1 // TEXTURE_SLICE_CUBEMAP
        /// 3-dimensional texture slice.
        case textureSlice3d = 2 // TEXTURE_SLICE_3D
    }
    
    public enum SamplerFilter: Int64, CaseIterable {
        /// Nearest-neighbor sampler filtering. Sampling at higher resolutions than the source will result in a pixelated look.
        case nearest = 0 // SAMPLER_FILTER_NEAREST
        /// Bilinear sampler filtering. Sampling at higher resolutions than the source will result in a blurry look.
        case linear = 1 // SAMPLER_FILTER_LINEAR
    }
    
    public enum SamplerRepeatMode: Int64, CaseIterable {
        /// Sample with repeating enabled.
        case `repeat` = 0 // SAMPLER_REPEAT_MODE_REPEAT
        /// Sample with mirrored repeating enabled. When sampling outside the `[0.0, 1.0]` range, return a mirrored version of the sampler. This mirrored version is mirrored again if sampling further away, with the pattern repeating indefinitely.
        case mirroredRepeat = 1 // SAMPLER_REPEAT_MODE_MIRRORED_REPEAT
        /// Sample with repeating disabled. When sampling outside the `[0.0, 1.0]` range, return the color of the last pixel on the edge.
        case clampToEdge = 2 // SAMPLER_REPEAT_MODE_CLAMP_TO_EDGE
        /// Sample with repeating disabled. When sampling outside the `[0.0, 1.0]` range, return the specified ``RDSamplerState/borderColor``.
        case clampToBorder = 3 // SAMPLER_REPEAT_MODE_CLAMP_TO_BORDER
        /// Sample with mirrored repeating enabled, but only once. When sampling in the `[-1.0, 0.0]` range, return a mirrored version of the sampler. When sampling outside the `[-1.0, 1.0]` range, return the color of the last pixel on the edge.
        case mirrorClampToEdge = 4 // SAMPLER_REPEAT_MODE_MIRROR_CLAMP_TO_EDGE
        /// Represents the size of the ``RenderingDevice/SamplerRepeatMode`` enum.
        case max = 5 // SAMPLER_REPEAT_MODE_MAX
    }
    
    public enum SamplerBorderColor: Int64, CaseIterable {
        /// Return a floating-point transparent black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is ``SamplerRepeatMode/clampToBorder``.
        case floatTransparentBlack = 0 // SAMPLER_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK
        /// Return a integer transparent black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is ``SamplerRepeatMode/clampToBorder``.
        case intTransparentBlack = 1 // SAMPLER_BORDER_COLOR_INT_TRANSPARENT_BLACK
        /// Return a floating-point opaque black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is ``SamplerRepeatMode/clampToBorder``.
        case floatOpaqueBlack = 2 // SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_BLACK
        /// Return a integer opaque black color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is ``SamplerRepeatMode/clampToBorder``.
        case intOpaqueBlack = 3 // SAMPLER_BORDER_COLOR_INT_OPAQUE_BLACK
        /// Return a floating-point opaque white color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is ``SamplerRepeatMode/clampToBorder``.
        case floatOpaqueWhite = 4 // SAMPLER_BORDER_COLOR_FLOAT_OPAQUE_WHITE
        /// Return a integer opaque white color when sampling outside the `[0.0, 1.0]` range. Only effective if the sampler repeat mode is ``SamplerRepeatMode/clampToBorder``.
        case intOpaqueWhite = 5 // SAMPLER_BORDER_COLOR_INT_OPAQUE_WHITE
        /// Represents the size of the ``RenderingDevice/SamplerBorderColor`` enum.
        case max = 6 // SAMPLER_BORDER_COLOR_MAX
    }
    
    public enum VertexFrequency: Int64, CaseIterable {
        /// Vertex attribute addressing is a function of the vertex. This is used to specify the rate at which vertex attributes are pulled from buffers.
        case vertex = 0 // VERTEX_FREQUENCY_VERTEX
        /// Vertex attribute addressing is a function of the instance index. This is used to specify the rate at which vertex attributes are pulled from buffers.
        case instance = 1 // VERTEX_FREQUENCY_INSTANCE
    }
    
    public enum IndexBufferFormat: Int64, CaseIterable {
        /// Index buffer in 16-bit unsigned integer format. This limits the maximum index that can be specified to `65535`.
        case uint16 = 0 // INDEX_BUFFER_FORMAT_UINT16
        /// Index buffer in 32-bit unsigned integer format. This limits the maximum index that can be specified to `4294967295`.
        case uint32 = 1 // INDEX_BUFFER_FORMAT_UINT32
    }
    
    public struct StorageBufferUsage: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// 
        public static let storageBufferUsageDispatchIndirect = StorageBufferUsage (rawValue: 1)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.storageBufferUsageDispatchIndirect) { result += "storageBufferUsageDispatchIndirect, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    public struct BufferCreationBits: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Optionally, set this flag if you wish to use ``bufferGetDeviceAddress(buffer:)`` functionality. You must first check the GPU supports it:
        /// 
        public static let deviceAddressBit = BufferCreationBits (rawValue: 1)
        /// Set this flag so that it is created as storage. This is useful if Compute Shaders need access (for reading or writing) to the buffer, e.g. skeletal animations are processed in Compute Shaders which need access to vertex buffers, to be later consumed by vertex shaders as part of the regular rasterization pipeline.
        public static let asStorageBit = BufferCreationBits (rawValue: 2)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.deviceAddressBit) { result += "deviceAddressBit, " }
            if self.contains (.asStorageBit) { result += "asStorageBit, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    public enum UniformType: Int64, CaseIterable {
        /// Sampler uniform.
        case sampler = 0 // UNIFORM_TYPE_SAMPLER
        /// Sampler uniform with a texture.
        case samplerWithTexture = 1 // UNIFORM_TYPE_SAMPLER_WITH_TEXTURE
        /// Texture uniform.
        case texture = 2 // UNIFORM_TYPE_TEXTURE
        /// Image uniform.
        case image = 3 // UNIFORM_TYPE_IMAGE
        /// Texture buffer uniform.
        case textureBuffer = 4 // UNIFORM_TYPE_TEXTURE_BUFFER
        /// Sampler uniform with a texture buffer.
        case samplerWithTextureBuffer = 5 // UNIFORM_TYPE_SAMPLER_WITH_TEXTURE_BUFFER
        /// Image buffer uniform.
        case imageBuffer = 6 // UNIFORM_TYPE_IMAGE_BUFFER
        /// Uniform buffer uniform.
        case uniformBuffer = 7 // UNIFORM_TYPE_UNIFORM_BUFFER
        /// <a href="https://vkguide.dev/docs/chapter-4/storage_buffers/">Storage buffer</a> uniform.
        case storageBuffer = 8 // UNIFORM_TYPE_STORAGE_BUFFER
        /// Input attachment uniform.
        case inputAttachment = 9 // UNIFORM_TYPE_INPUT_ATTACHMENT
        /// Represents the size of the ``RenderingDevice/UniformType`` enum.
        case max = 10 // UNIFORM_TYPE_MAX
    }
    
    public enum RenderPrimitive: Int64, CaseIterable {
        /// Point rendering primitive (with constant size, regardless of distance from camera).
        case points = 0 // RENDER_PRIMITIVE_POINTS
        /// Line list rendering primitive. Lines are drawn separated from each other.
        case lines = 1 // RENDER_PRIMITIVE_LINES
        /// <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-line-lists-with-adjacency">Line list rendering primitive with adjacency.</a>
        /// 
        /// > Note: Adjacency is only useful with geometry shaders, which Godot does not expose.
        /// 
        case linesWithAdjacency = 2 // RENDER_PRIMITIVE_LINES_WITH_ADJACENCY
        /// Line strip rendering primitive. Lines drawn are connected to the previous vertex.
        case linestrips = 3 // RENDER_PRIMITIVE_LINESTRIPS
        /// <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-line-strips-with-adjacency">Line strip rendering primitive with adjacency.</a>
        /// 
        /// > Note: Adjacency is only useful with geometry shaders, which Godot does not expose.
        /// 
        case linestripsWithAdjacency = 4 // RENDER_PRIMITIVE_LINESTRIPS_WITH_ADJACENCY
        /// Triangle list rendering primitive. Triangles are drawn separated from each other.
        case triangles = 5 // RENDER_PRIMITIVE_TRIANGLES
        /// <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-triangle-lists-with-adjacency">Triangle list rendering primitive with adjacency.</a>
        /// 
        /// > Note: Adjacency is only useful with geometry shaders, which Godot does not expose.
        /// 
        case trianglesWithAdjacency = 6 // RENDER_PRIMITIVE_TRIANGLES_WITH_ADJACENCY
        /// Triangle strip rendering primitive. Triangles drawn are connected to the previous triangle.
        case triangleStrips = 7 // RENDER_PRIMITIVE_TRIANGLE_STRIPS
        /// <a href="https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-triangle-strips-with-adjacency">Triangle strip rendering primitive with adjacency.</a>
        /// 
        /// > Note: Adjacency is only useful with geometry shaders, which Godot does not expose.
        /// 
        case triangleStripsWithAjacency = 8 // RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_AJACENCY
        /// Triangle strip rendering primitive with _primitive restart_ enabled. Triangles drawn are connected to the previous triangle, but a primitive restart index can be specified before drawing to create a second triangle strip after the specified index.
        /// 
        /// > Note: Only compatible with indexed draws.
        /// 
        case triangleStripsWithRestartIndex = 9 // RENDER_PRIMITIVE_TRIANGLE_STRIPS_WITH_RESTART_INDEX
        /// Tessellation patch rendering primitive. Only useful with tessellation shaders, which can be used to deform these patches.
        case tesselationPatch = 10 // RENDER_PRIMITIVE_TESSELATION_PATCH
        /// Represents the size of the ``RenderingDevice/RenderPrimitive`` enum.
        case max = 11 // RENDER_PRIMITIVE_MAX
    }
    
    public enum PolygonCullMode: Int64, CaseIterable {
        /// Do not use polygon front face or backface culling.
        case disabled = 0 // POLYGON_CULL_DISABLED
        /// Use polygon frontface culling (faces pointing towards the camera are hidden).
        case front = 1 // POLYGON_CULL_FRONT
        /// Use polygon backface culling (faces pointing away from the camera are hidden).
        case back = 2 // POLYGON_CULL_BACK
    }
    
    public enum PolygonFrontFace: Int64, CaseIterable {
        /// Clockwise winding order to determine which face of a polygon is its front face.
        case clockwise = 0 // POLYGON_FRONT_FACE_CLOCKWISE
        /// Counter-clockwise winding order to determine which face of a polygon is its front face.
        case counterClockwise = 1 // POLYGON_FRONT_FACE_COUNTER_CLOCKWISE
    }
    
    public enum StencilOperation: Int64, CaseIterable {
        /// Keep the current stencil value.
        case keep = 0 // STENCIL_OP_KEEP
        /// Set the stencil value to `0`.
        case zero = 1 // STENCIL_OP_ZERO
        /// Replace the existing stencil value with the new one.
        case replace = 2 // STENCIL_OP_REPLACE
        /// Increment the existing stencil value and clamp to the maximum representable unsigned value if reached. Stencil bits are considered as an unsigned integer.
        case incrementAndClamp = 3 // STENCIL_OP_INCREMENT_AND_CLAMP
        /// Decrement the existing stencil value and clamp to the minimum value if reached. Stencil bits are considered as an unsigned integer.
        case decrementAndClamp = 4 // STENCIL_OP_DECREMENT_AND_CLAMP
        /// Bitwise-invert the existing stencil value.
        case invert = 5 // STENCIL_OP_INVERT
        /// Increment the stencil value and wrap around to `0` if reaching the maximum representable unsigned. Stencil bits are considered as an unsigned integer.
        case incrementAndWrap = 6 // STENCIL_OP_INCREMENT_AND_WRAP
        /// Decrement the stencil value and wrap around to the maximum representable unsigned if reaching the minimum. Stencil bits are considered as an unsigned integer.
        case decrementAndWrap = 7 // STENCIL_OP_DECREMENT_AND_WRAP
        /// Represents the size of the ``RenderingDevice/StencilOperation`` enum.
        case max = 8 // STENCIL_OP_MAX
    }
    
    public enum CompareOperator: Int64, CaseIterable {
        /// "Never" comparison (opposite of ``CompareOperator/always``).
        case never = 0 // COMPARE_OP_NEVER
        /// "Less than" comparison.
        case less = 1 // COMPARE_OP_LESS
        /// "Equal" comparison.
        case equal = 2 // COMPARE_OP_EQUAL
        /// "Less than or equal" comparison.
        case lessOrEqual = 3 // COMPARE_OP_LESS_OR_EQUAL
        /// "Greater than" comparison.
        case greater = 4 // COMPARE_OP_GREATER
        /// "Not equal" comparison.
        case notEqual = 5 // COMPARE_OP_NOT_EQUAL
        /// "Greater than or equal" comparison.
        case greaterOrEqual = 6 // COMPARE_OP_GREATER_OR_EQUAL
        /// "Always" comparison (opposite of ``CompareOperator/never``).
        case always = 7 // COMPARE_OP_ALWAYS
        /// Represents the size of the ``RenderingDevice/CompareOperator`` enum.
        case max = 8 // COMPARE_OP_MAX
    }
    
    public enum LogicOperation: Int64, CaseIterable {
        /// Clear logic operation (result is always `0`). See also ``LogicOperation/set``.
        case clear = 0 // LOGIC_OP_CLEAR
        /// AND logic operation.
        case and = 1 // LOGIC_OP_AND
        /// AND logic operation with the _destination_ operand being inverted. See also ``LogicOperation/andInverted``.
        case andReverse = 2 // LOGIC_OP_AND_REVERSE
        /// Copy logic operation (keeps the _source_ value as-is). See also ``LogicOperation/copyInverted`` and ``LogicOperation/noOp``.
        case copy = 3 // LOGIC_OP_COPY
        /// AND logic operation with the _source_ operand being inverted. See also ``LogicOperation/andReverse``.
        case andInverted = 4 // LOGIC_OP_AND_INVERTED
        /// No-op logic operation (keeps the _destination_ value as-is). See also ``LogicOperation/copy``.
        case noOp = 5 // LOGIC_OP_NO_OP
        /// Exclusive or (XOR) logic operation.
        case xor = 6 // LOGIC_OP_XOR
        /// OR logic operation.
        case or = 7 // LOGIC_OP_OR
        /// Not-OR (NOR) logic operation.
        case nor = 8 // LOGIC_OP_NOR
        /// Not-XOR (XNOR) logic operation.
        case equivalent = 9 // LOGIC_OP_EQUIVALENT
        /// Invert logic operation.
        case invert = 10 // LOGIC_OP_INVERT
        /// OR logic operation with the _destination_ operand being inverted. See also ``LogicOperation/orReverse``.
        case orReverse = 11 // LOGIC_OP_OR_REVERSE
        /// NOT logic operation (inverts the value). See also ``LogicOperation/copy``.
        case copyInverted = 12 // LOGIC_OP_COPY_INVERTED
        /// OR logic operation with the _source_ operand being inverted. See also ``LogicOperation/orReverse``.
        case orInverted = 13 // LOGIC_OP_OR_INVERTED
        /// Not-AND (NAND) logic operation.
        case nand = 14 // LOGIC_OP_NAND
        /// SET logic operation (result is always `1`). See also ``LogicOperation/clear``.
        case set = 15 // LOGIC_OP_SET
        /// Represents the size of the ``RenderingDevice/LogicOperation`` enum.
        case max = 16 // LOGIC_OP_MAX
    }
    
    public enum BlendFactor: Int64, CaseIterable {
        /// Constant `0.0` blend factor.
        case zero = 0 // BLEND_FACTOR_ZERO
        /// Constant `1.0` blend factor.
        case one = 1 // BLEND_FACTOR_ONE
        /// Color blend factor is `source color`. Alpha blend factor is `source alpha`.
        case srcColor = 2 // BLEND_FACTOR_SRC_COLOR
        /// Color blend factor is `1.0 - source color`. Alpha blend factor is `1.0 - source alpha`.
        case oneMinusSrcColor = 3 // BLEND_FACTOR_ONE_MINUS_SRC_COLOR
        /// Color blend factor is `destination color`. Alpha blend factor is `destination alpha`.
        case dstColor = 4 // BLEND_FACTOR_DST_COLOR
        /// Color blend factor is `1.0 - destination color`. Alpha blend factor is `1.0 - destination alpha`.
        case oneMinusDstColor = 5 // BLEND_FACTOR_ONE_MINUS_DST_COLOR
        /// Color and alpha blend factor is `source alpha`.
        case srcAlpha = 6 // BLEND_FACTOR_SRC_ALPHA
        /// Color and alpha blend factor is `1.0 - source alpha`.
        case oneMinusSrcAlpha = 7 // BLEND_FACTOR_ONE_MINUS_SRC_ALPHA
        /// Color and alpha blend factor is `destination alpha`.
        case dstAlpha = 8 // BLEND_FACTOR_DST_ALPHA
        /// Color and alpha blend factor is `1.0 - destination alpha`.
        case oneMinusDstAlpha = 9 // BLEND_FACTOR_ONE_MINUS_DST_ALPHA
        /// Color blend factor is `blend constant color`. Alpha blend factor is `blend constant alpha` (see ``drawListSetBlendConstants(drawList:color:)``).
        case constantColor = 10 // BLEND_FACTOR_CONSTANT_COLOR
        /// Color blend factor is `1.0 - blend constant color`. Alpha blend factor is `1.0 - blend constant alpha` (see ``drawListSetBlendConstants(drawList:color:)``).
        case oneMinusConstantColor = 11 // BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR
        /// Color and alpha blend factor is `blend constant alpha` (see ``drawListSetBlendConstants(drawList:color:)``).
        case constantAlpha = 12 // BLEND_FACTOR_CONSTANT_ALPHA
        /// Color and alpha blend factor is `1.0 - blend constant alpha` (see ``drawListSetBlendConstants(drawList:color:)``).
        case oneMinusConstantAlpha = 13 // BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA
        /// Color blend factor is `min(source alpha, 1.0 - destination alpha)`. Alpha blend factor is `1.0`.
        case srcAlphaSaturate = 14 // BLEND_FACTOR_SRC_ALPHA_SATURATE
        /// Color blend factor is `second source color`. Alpha blend factor is `second source alpha`. Only relevant for dual-source blending.
        case src1Color = 15 // BLEND_FACTOR_SRC1_COLOR
        /// Color blend factor is `1.0 - second source color`. Alpha blend factor is `1.0 - second source alpha`. Only relevant for dual-source blending.
        case oneMinusSrc1Color = 16 // BLEND_FACTOR_ONE_MINUS_SRC1_COLOR
        /// Color and alpha blend factor is `second source alpha`. Only relevant for dual-source blending.
        case src1Alpha = 17 // BLEND_FACTOR_SRC1_ALPHA
        /// Color and alpha blend factor is `1.0 - second source alpha`. Only relevant for dual-source blending.
        case oneMinusSrc1Alpha = 18 // BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA
        /// Represents the size of the ``RenderingDevice/BlendFactor`` enum.
        case max = 19 // BLEND_FACTOR_MAX
    }
    
    public enum BlendOperation: Int64, CaseIterable {
        /// Additive blending operation (`source + destination`).
        case add = 0 // BLEND_OP_ADD
        /// Subtractive blending operation (`source - destination`).
        case subtract = 1 // BLEND_OP_SUBTRACT
        /// Reverse subtractive blending operation (`destination - source`).
        case reverseSubtract = 2 // BLEND_OP_REVERSE_SUBTRACT
        /// Minimum blending operation (keep the lowest value of the two).
        case minimum = 3 // BLEND_OP_MINIMUM
        /// Maximum blending operation (keep the highest value of the two).
        case maximum = 4 // BLEND_OP_MAXIMUM
        /// Represents the size of the ``RenderingDevice/BlendOperation`` enum.
        case max = 5 // BLEND_OP_MAX
    }
    
    public struct PipelineDynamicStateFlags: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Allows dynamically changing the width of rendering lines.
        public static let lineWidth = PipelineDynamicStateFlags (rawValue: 1)
        /// Allows dynamically changing the depth bias.
        public static let depthBias = PipelineDynamicStateFlags (rawValue: 2)
        /// 
        public static let blendConstants = PipelineDynamicStateFlags (rawValue: 4)
        /// 
        public static let depthBounds = PipelineDynamicStateFlags (rawValue: 8)
        /// 
        public static let stencilCompareMask = PipelineDynamicStateFlags (rawValue: 16)
        /// 
        public static let stencilWriteMask = PipelineDynamicStateFlags (rawValue: 32)
        /// 
        public static let stencilReference = PipelineDynamicStateFlags (rawValue: 64)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.lineWidth) { result += "lineWidth, " }
            if self.contains (.depthBias) { result += "depthBias, " }
            if self.contains (.blendConstants) { result += "blendConstants, " }
            if self.contains (.depthBounds) { result += "depthBounds, " }
            if self.contains (.stencilCompareMask) { result += "stencilCompareMask, " }
            if self.contains (.stencilWriteMask) { result += "stencilWriteMask, " }
            if self.contains (.stencilReference) { result += "stencilReference, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    public enum InitialAction: Int64, CaseIterable {
        /// Load the previous contents of the framebuffer.
        case load = 0 // INITIAL_ACTION_LOAD
        /// Clear the whole framebuffer or its specified region.
        case clear = 1 // INITIAL_ACTION_CLEAR
        /// Ignore the previous contents of the framebuffer. This is the fastest option if you'll overwrite all of the pixels and don't need to read any of them.
        case discard = 2 // INITIAL_ACTION_DISCARD
        /// Represents the size of the ``RenderingDevice/InitialAction`` enum.
        case max = 3 // INITIAL_ACTION_MAX
        /// 
        // case clearRegion = 1 // INITIAL_ACTION_CLEAR_REGION
        /// 
        // case clearRegionContinue = 1 // INITIAL_ACTION_CLEAR_REGION_CONTINUE
        /// 
        // case keep = 0 // INITIAL_ACTION_KEEP
        /// 
        // case drop = 2 // INITIAL_ACTION_DROP
        /// 
        // case `continue` = 0 // INITIAL_ACTION_CONTINUE
    }
    
    public enum FinalAction: Int64, CaseIterable {
        /// Store the result of the draw list in the framebuffer. This is generally what you want to do.
        case store = 0 // FINAL_ACTION_STORE
        /// Discard the contents of the framebuffer. This is the fastest option if you don't need to use the results of the draw list.
        case discard = 1 // FINAL_ACTION_DISCARD
        /// Represents the size of the ``RenderingDevice/FinalAction`` enum.
        case max = 2 // FINAL_ACTION_MAX
        /// 
        // case read = 0 // FINAL_ACTION_READ
        /// 
        // case `continue` = 0 // FINAL_ACTION_CONTINUE
    }
    
    public enum ShaderStage: Int64, CaseIterable {
        /// Vertex shader stage. This can be used to manipulate vertices from a shader (but not create new vertices).
        case vertex = 0 // SHADER_STAGE_VERTEX
        /// Fragment shader stage (called "pixel shader" in Direct3D). This can be used to manipulate pixels from a shader.
        case fragment = 1 // SHADER_STAGE_FRAGMENT
        /// Tessellation control shader stage. This can be used to create additional geometry from a shader.
        case tesselationControl = 2 // SHADER_STAGE_TESSELATION_CONTROL
        /// Tessellation evaluation shader stage. This can be used to create additional geometry from a shader.
        case tesselationEvaluation = 3 // SHADER_STAGE_TESSELATION_EVALUATION
        /// Compute shader stage. This can be used to run arbitrary computing tasks in a shader, performing them on the GPU instead of the CPU.
        case compute = 4 // SHADER_STAGE_COMPUTE
        /// Represents the size of the ``RenderingDevice/ShaderStage`` enum.
        case max = 5 // SHADER_STAGE_MAX
        /// Vertex shader stage bit (see also ``ShaderStage/vertex``).
        // case vertexBit = 1 // SHADER_STAGE_VERTEX_BIT
        /// Fragment shader stage bit (see also ``ShaderStage/fragment``).
        // case fragmentBit = 2 // SHADER_STAGE_FRAGMENT_BIT
        /// Tessellation control shader stage bit (see also ``ShaderStage/tesselationControl``).
        // case tesselationControlBit = 4 // SHADER_STAGE_TESSELATION_CONTROL_BIT
        /// Tessellation evaluation shader stage bit (see also ``ShaderStage/tesselationEvaluation``).
        case tesselationEvaluationBit = 8 // SHADER_STAGE_TESSELATION_EVALUATION_BIT
        /// Compute shader stage bit (see also ``ShaderStage/compute``).
        case computeBit = 16 // SHADER_STAGE_COMPUTE_BIT
    }
    
    public enum ShaderLanguage: Int64, CaseIterable {
        /// Khronos' GLSL shading language (used natively by OpenGL and Vulkan). This is the language used for core Godot shaders.
        case glsl = 0 // SHADER_LANGUAGE_GLSL
        /// Microsoft's High-Level Shading Language (used natively by Direct3D, but can also be used in Vulkan).
        case hlsl = 1 // SHADER_LANGUAGE_HLSL
    }
    
    public enum PipelineSpecializationConstantType: Int64, CaseIterable {
        /// Boolean specialization constant.
        case bool = 0 // PIPELINE_SPECIALIZATION_CONSTANT_TYPE_BOOL
        /// Integer specialization constant.
        case int = 1 // PIPELINE_SPECIALIZATION_CONSTANT_TYPE_INT
        /// Floating-point specialization constant.
        case float = 2 // PIPELINE_SPECIALIZATION_CONSTANT_TYPE_FLOAT
    }
    
    public enum Features: Int64, CaseIterable {
        /// Features support for buffer device address extension.
        case supportsBufferDeviceAddress = 6 // SUPPORTS_BUFFER_DEVICE_ADDRESS
    }
    
    public enum Limit: Int64, CaseIterable {
        /// Maximum number of uniform sets that can be bound at a given time.
        case maxBoundUniformSets = 0 // LIMIT_MAX_BOUND_UNIFORM_SETS
        /// Maximum number of color framebuffer attachments that can be used at a given time.
        case maxFramebufferColorAttachments = 1 // LIMIT_MAX_FRAMEBUFFER_COLOR_ATTACHMENTS
        /// Maximum number of textures that can be used per uniform set.
        case maxTexturesPerUniformSet = 2 // LIMIT_MAX_TEXTURES_PER_UNIFORM_SET
        /// Maximum number of samplers that can be used per uniform set.
        case maxSamplersPerUniformSet = 3 // LIMIT_MAX_SAMPLERS_PER_UNIFORM_SET
        /// Maximum number of <a href="https://vkguide.dev/docs/chapter-4/storage_buffers/">storage buffers</a> per uniform set.
        case maxStorageBuffersPerUniformSet = 4 // LIMIT_MAX_STORAGE_BUFFERS_PER_UNIFORM_SET
        /// Maximum number of storage images per uniform set.
        case maxStorageImagesPerUniformSet = 5 // LIMIT_MAX_STORAGE_IMAGES_PER_UNIFORM_SET
        /// Maximum number of uniform buffers per uniform set.
        case maxUniformBuffersPerUniformSet = 6 // LIMIT_MAX_UNIFORM_BUFFERS_PER_UNIFORM_SET
        /// Maximum index for an indexed draw command.
        case maxDrawIndexedIndex = 7 // LIMIT_MAX_DRAW_INDEXED_INDEX
        /// Maximum height of a framebuffer (in pixels).
        case maxFramebufferHeight = 8 // LIMIT_MAX_FRAMEBUFFER_HEIGHT
        /// Maximum width of a framebuffer (in pixels).
        case maxFramebufferWidth = 9 // LIMIT_MAX_FRAMEBUFFER_WIDTH
        /// Maximum number of texture array layers.
        case maxTextureArrayLayers = 10 // LIMIT_MAX_TEXTURE_ARRAY_LAYERS
        /// Maximum supported 1-dimensional texture size (in pixels on a single axis).
        case maxTextureSize1d = 11 // LIMIT_MAX_TEXTURE_SIZE_1D
        /// Maximum supported 2-dimensional texture size (in pixels on a single axis).
        case maxTextureSize2d = 12 // LIMIT_MAX_TEXTURE_SIZE_2D
        /// Maximum supported 3-dimensional texture size (in pixels on a single axis).
        case maxTextureSize3d = 13 // LIMIT_MAX_TEXTURE_SIZE_3D
        /// Maximum supported cubemap texture size (in pixels on a single axis of a single face).
        case maxTextureSizeCube = 14 // LIMIT_MAX_TEXTURE_SIZE_CUBE
        /// Maximum number of textures per shader stage.
        case maxTexturesPerShaderStage = 15 // LIMIT_MAX_TEXTURES_PER_SHADER_STAGE
        /// Maximum number of samplers per shader stage.
        case maxSamplersPerShaderStage = 16 // LIMIT_MAX_SAMPLERS_PER_SHADER_STAGE
        /// Maximum number of <a href="https://vkguide.dev/docs/chapter-4/storage_buffers/">storage buffers</a> per shader stage.
        case maxStorageBuffersPerShaderStage = 17 // LIMIT_MAX_STORAGE_BUFFERS_PER_SHADER_STAGE
        /// Maximum number of storage images per shader stage.
        case maxStorageImagesPerShaderStage = 18 // LIMIT_MAX_STORAGE_IMAGES_PER_SHADER_STAGE
        /// Maximum number of uniform buffers per uniform set.
        case maxUniformBuffersPerShaderStage = 19 // LIMIT_MAX_UNIFORM_BUFFERS_PER_SHADER_STAGE
        /// Maximum size of a push constant. A lot of devices are limited to 128 bytes, so try to avoid exceeding 128 bytes in push constants to ensure compatibility even if your GPU is reporting a higher value.
        case maxPushConstantSize = 20 // LIMIT_MAX_PUSH_CONSTANT_SIZE
        /// Maximum size of a uniform buffer.
        case maxUniformBufferSize = 21 // LIMIT_MAX_UNIFORM_BUFFER_SIZE
        /// Maximum vertex input attribute offset.
        case maxVertexInputAttributeOffset = 22 // LIMIT_MAX_VERTEX_INPUT_ATTRIBUTE_OFFSET
        /// Maximum number of vertex input attributes.
        case maxVertexInputAttributes = 23 // LIMIT_MAX_VERTEX_INPUT_ATTRIBUTES
        /// Maximum number of vertex input bindings.
        case maxVertexInputBindings = 24 // LIMIT_MAX_VERTEX_INPUT_BINDINGS
        /// Maximum vertex input binding stride.
        case maxVertexInputBindingStride = 25 // LIMIT_MAX_VERTEX_INPUT_BINDING_STRIDE
        /// Minimum uniform buffer offset alignment.
        case minUniformBufferOffsetAlignment = 26 // LIMIT_MIN_UNIFORM_BUFFER_OFFSET_ALIGNMENT
        /// Maximum shared memory size for compute shaders.
        case maxComputeSharedMemorySize = 27 // LIMIT_MAX_COMPUTE_SHARED_MEMORY_SIZE
        /// Maximum number of workgroups for compute shaders on the X axis.
        case maxComputeWorkgroupCountX = 28 // LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_X
        /// Maximum number of workgroups for compute shaders on the Y axis.
        case maxComputeWorkgroupCountY = 29 // LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_Y
        /// Maximum number of workgroups for compute shaders on the Z axis.
        case maxComputeWorkgroupCountZ = 30 // LIMIT_MAX_COMPUTE_WORKGROUP_COUNT_Z
        /// Maximum number of workgroup invocations for compute shaders.
        case maxComputeWorkgroupInvocations = 31 // LIMIT_MAX_COMPUTE_WORKGROUP_INVOCATIONS
        /// Maximum workgroup size for compute shaders on the X axis.
        case maxComputeWorkgroupSizeX = 32 // LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_X
        /// Maximum workgroup size for compute shaders on the Y axis.
        case maxComputeWorkgroupSizeY = 33 // LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_Y
        /// Maximum workgroup size for compute shaders on the Z axis.
        case maxComputeWorkgroupSizeZ = 34 // LIMIT_MAX_COMPUTE_WORKGROUP_SIZE_Z
        /// Maximum viewport width (in pixels).
        case maxViewportDimensionsX = 35 // LIMIT_MAX_VIEWPORT_DIMENSIONS_X
        /// Maximum viewport height (in pixels).
        case maxViewportDimensionsY = 36 // LIMIT_MAX_VIEWPORT_DIMENSIONS_Y
        /// Returns the smallest value for ``ProjectSettings/rendering/scaling3d/scale`` when using the MetalFX temporal upscaler.
        /// 
        /// > Note: The returned value is multiplied by a factor of `1000000` to preserve 6 digits of precision. It must be divided by `1000000.0` to convert the value to a floating point number.
        /// 
        case metalfxTemporalScalerMinScale = 46 // LIMIT_METALFX_TEMPORAL_SCALER_MIN_SCALE
        /// Returns the largest value for ``ProjectSettings/rendering/scaling3d/scale`` when using the MetalFX temporal upscaler.
        /// 
        /// > Note: The returned value is multiplied by a factor of `1000000` to preserve 6 digits of precision. It must be divided by `1000000.0` to convert the value to a floating point number.
        /// 
        case metalfxTemporalScalerMaxScale = 47 // LIMIT_METALFX_TEMPORAL_SCALER_MAX_SCALE
    }
    
    public enum MemoryType: Int64, CaseIterable {
        /// Memory taken by textures.
        case textures = 0 // MEMORY_TEXTURES
        /// Memory taken by buffers.
        case buffers = 1 // MEMORY_BUFFERS
        /// Total memory taken. This is greater than the sum of ``MemoryType/textures`` and ``MemoryType/buffers``, as it also includes miscellaneous memory usage.
        case total = 2 // MEMORY_TOTAL
    }
    
    public enum BreadcrumbMarker: Int64, CaseIterable {
        /// 
        case none = 0 // NONE
        /// 
        case reflectionProbes = 65536 // REFLECTION_PROBES
        /// 
        case skyPass = 131072 // SKY_PASS
        /// 
        case lightmapperPass = 196608 // LIGHTMAPPER_PASS
        /// 
        case shadowPassDirectional = 262144 // SHADOW_PASS_DIRECTIONAL
        /// 
        case shadowPassCube = 327680 // SHADOW_PASS_CUBE
        /// 
        case opaquePass = 393216 // OPAQUE_PASS
        /// 
        case alphaPass = 458752 // ALPHA_PASS
        /// 
        case transparentPass = 524288 // TRANSPARENT_PASS
        /// 
        case postProcessingPass = 589824 // POST_PROCESSING_PASS
        /// 
        case blitPass = 655360 // BLIT_PASS
        /// 
        case uiPass = 720896 // UI_PASS
        /// 
        case debugPass = 786432 // DEBUG_PASS
    }
    
    public struct DrawFlags: OptionSet, CustomDebugStringConvertible {
        public let rawValue: Int
        public init (rawValue: Int) {
            self.rawValue = rawValue
        }
        
        /// Clear the first color attachment.
        public static let clearColor0 = DrawFlags (rawValue: 1)
        /// Clear the second color attachment.
        public static let clearColor1 = DrawFlags (rawValue: 2)
        /// Clear the third color attachment.
        public static let clearColor2 = DrawFlags (rawValue: 4)
        /// Clear the fourth color attachment.
        public static let clearColor3 = DrawFlags (rawValue: 8)
        /// Clear the fifth color attachment.
        public static let clearColor4 = DrawFlags (rawValue: 16)
        /// Clear the sixth color attachment.
        public static let clearColor5 = DrawFlags (rawValue: 32)
        /// Clear the seventh color attachment.
        public static let clearColor6 = DrawFlags (rawValue: 64)
        /// Clear the eighth color attachment.
        public static let clearColor7 = DrawFlags (rawValue: 128)
        /// Mask for clearing all color attachments.
        public static let clearColorMask = DrawFlags (rawValue: 255)
        /// Clear all color attachments.
        public static let clearColorAll = DrawFlags (rawValue: 255)
        /// Ignore the previous contents of the first color attachment.
        public static let ignoreColor0 = DrawFlags (rawValue: 256)
        /// Ignore the previous contents of the second color attachment.
        public static let ignoreColor1 = DrawFlags (rawValue: 512)
        /// Ignore the previous contents of the third color attachment.
        public static let ignoreColor2 = DrawFlags (rawValue: 1024)
        /// Ignore the previous contents of the fourth color attachment.
        public static let ignoreColor3 = DrawFlags (rawValue: 2048)
        /// Ignore the previous contents of the fifth color attachment.
        public static let ignoreColor4 = DrawFlags (rawValue: 4096)
        /// Ignore the previous contents of the sixth color attachment.
        public static let ignoreColor5 = DrawFlags (rawValue: 8192)
        /// Ignore the previous contents of the seventh color attachment.
        public static let ignoreColor6 = DrawFlags (rawValue: 16384)
        /// Ignore the previous contents of the eighth color attachment.
        public static let ignoreColor7 = DrawFlags (rawValue: 32768)
        /// Mask for ignoring all the previous contents of the color attachments.
        public static let ignoreColorMask = DrawFlags (rawValue: 65280)
        /// Ignore the previous contents of all color attachments.
        public static let ignoreColorAll = DrawFlags (rawValue: 65280)
        /// Clear the depth attachment.
        public static let clearDepth = DrawFlags (rawValue: 65536)
        /// Ignore the previous contents of the depth attachment.
        public static let ignoreDepth = DrawFlags (rawValue: 131072)
        /// Clear the stencil attachment.
        public static let clearStencil = DrawFlags (rawValue: 262144)
        /// Ignore the previous contents of the stencil attachment.
        public static let ignoreStencil = DrawFlags (rawValue: 524288)
        /// Clear all attachments.
        public static let clearAll = DrawFlags (rawValue: 327935)
        /// Ignore the previous contents of all attachments.
        public static let ignoreAll = DrawFlags (rawValue: 720640)
        /// A textual representation of this instance, suitable for debugging
        public var debugDescription: String {
            var result = ""
            if self.contains (.clearColor0) { result += "clearColor0, " }
            if self.contains (.clearColor1) { result += "clearColor1, " }
            if self.contains (.clearColor2) { result += "clearColor2, " }
            if self.contains (.clearColor3) { result += "clearColor3, " }
            if self.contains (.clearColor4) { result += "clearColor4, " }
            if self.contains (.clearColor5) { result += "clearColor5, " }
            if self.contains (.clearColor6) { result += "clearColor6, " }
            if self.contains (.clearColor7) { result += "clearColor7, " }
            if self.contains (.clearColorMask) { result += "clearColorMask, " }
            if self.contains (.clearColorAll) { result += "clearColorAll, " }
            if self.contains (.ignoreColor0) { result += "ignoreColor0, " }
            if self.contains (.ignoreColor1) { result += "ignoreColor1, " }
            if self.contains (.ignoreColor2) { result += "ignoreColor2, " }
            if self.contains (.ignoreColor3) { result += "ignoreColor3, " }
            if self.contains (.ignoreColor4) { result += "ignoreColor4, " }
            if self.contains (.ignoreColor5) { result += "ignoreColor5, " }
            if self.contains (.ignoreColor6) { result += "ignoreColor6, " }
            if self.contains (.ignoreColor7) { result += "ignoreColor7, " }
            if self.contains (.ignoreColorMask) { result += "ignoreColorMask, " }
            if self.contains (.ignoreColorAll) { result += "ignoreColorAll, " }
            if self.contains (.clearDepth) { result += "clearDepth, " }
            if self.contains (.ignoreDepth) { result += "ignoreDepth, " }
            if self.contains (.clearStencil) { result += "clearStencil, " }
            if self.contains (.ignoreStencil) { result += "ignoreStencil, " }
            if self.contains (.clearAll) { result += "clearAll, " }
            if self.contains (.ignoreAll) { result += "ignoreAll, " }
            if result.hasSuffix (", ") { result.removeLast (2) }
            return result
        }
        
    }
    
    /* Constants */
    /// Returned by functions that return an ID if a value is invalid.
    public static let invalidId = -1
    /// Returned by functions that return a format ID if a value is invalid.
    public static let invalidFormatId = -1
    /* Methods */
    fileprivate static let method_texture_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3709173589)!
            }
            
        }
        
    }()
    
    /// Creates a new texture. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    /// > Note: Not to be confused with ``RenderingServer/texture2dCreate(image:)``, which creates the Godot-specific ``Texture2D`` resource as opposed to the graphics API's own texture type.
    /// 
    public final func textureCreate(format: RDTextureFormat?, view: RDTextureView?, data: TypedArray<PackedByteArray> = TypedArray<PackedByteArray> ()) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: format?.handle) { pArg0 in
            withUnsafePointer(to: view?.handle) { pArg1 in
                withUnsafePointer(to: data.array.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_texture_create, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_create_shared: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_create_shared")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3178156134)!
            }
            
        }
        
    }()
    
    /// Creates a shared texture using the specified `view` and the texture information from `withTexture`.
    public final func textureCreateShared(view: RDTextureView?, withTexture: RID) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: view?.handle) { pArg0 in
            withUnsafePointer(to: withTexture.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_texture_create_shared, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_create_shared_from_slice: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_create_shared_from_slice")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1808971279)!
            }
            
        }
        
    }()
    
    /// Creates a shared texture using the specified `view` and the texture information from `withTexture`'s `layer` and `mipmap`. The number of included mipmaps from the original texture can be controlled using the `mipmaps` parameter. Only relevant for textures with multiple layers, such as 3D textures, texture arrays and cubemaps. For single-layer textures, use ``textureCreateShared(view:withTexture:)``.
    /// 
    /// For 2D textures (which only have one layer), `layer` must be `0`.
    /// 
    /// > Note: Layer slicing is only supported for 2D texture arrays, not 3D textures or cubemaps.
    /// 
    public final func textureCreateSharedFromSlice(view: RDTextureView?, withTexture: RID, layer: UInt32, mipmap: UInt32, mipmaps: UInt32 = 1, sliceType: RenderingDevice.TextureSliceType = .textureSlice2d) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: view?.handle) { pArg0 in
            withUnsafePointer(to: withTexture.content) { pArg1 in
                withUnsafePointer(to: layer) { pArg2 in
                    withUnsafePointer(to: mipmap) { pArg3 in
                        withUnsafePointer(to: mipmaps) { pArg4 in
                            withUnsafePointer(to: sliceType.rawValue) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(RenderingDevice.method_texture_create_shared_from_slice, handle, pArgs, &_result.content)
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
    
    fileprivate static let method_texture_create_from_extension: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_create_from_extension")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1397171480)!
            }
            
        }
        
    }()
    
    /// Returns an RID for an existing `image` (`VkImage`) with the given `type`, `format`, `samples`, `usageFlags`, `width`, `height`, `depth`, and `layers`. This can be used to allow Godot to render onto foreign images.
    public final func textureCreateFromExtension(type: RenderingDevice.TextureType, format: RenderingDevice.DataFormat, samples: RenderingDevice.TextureSamples, usageFlags: RenderingDevice.TextureUsageBits, image: UInt, width: UInt, height: UInt, depth: UInt, layers: UInt) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: format.rawValue) { pArg1 in
                withUnsafePointer(to: samples.rawValue) { pArg2 in
                    withUnsafePointer(to: usageFlags.rawValue) { pArg3 in
                        withUnsafePointer(to: image) { pArg4 in
                            withUnsafePointer(to: width) { pArg5 in
                                withUnsafePointer(to: height) { pArg6 in
                                    withUnsafePointer(to: depth) { pArg7 in
                                        withUnsafePointer(to: layers) { pArg8 in
                                            withUnsafePointer(to: UnsafeRawPointersN9(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8)) { pArgs in
                                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 9) { pArgs in
                                                    gi.object_method_bind_ptrcall(RenderingDevice.method_texture_create_from_extension, handle, pArgs, &_result.content)
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
    
    fileprivate static let method_texture_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_update")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1349464008)!
            }
            
        }
        
    }()
    
    /// Updates texture data with new data, replacing the previous data in place. The updated texture data must have the same dimensions and format. For 2D textures (which only have one layer), `layer` must be `0`. Returns ``@GlobalScope.OK`` if the update was successful, ``@GlobalScope.ERR_INVALID_PARAMETER`` otherwise.
    /// 
    /// > Note: Updating textures is forbidden during creation of a draw or compute list.
    /// 
    /// > Note: The existing `texture` can't be updated while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to ``FinalAction/`continue```) to update this texture.
    /// 
    /// > Note: The existing `texture` requires the ``TextureUsageBits/canUpdateBit`` to be updatable.
    /// 
    public final func textureUpdate(texture: RID, layer: UInt32, data: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_texture_update, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_texture_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_get_data")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1859412099)!
            }
            
        }
        
    }()
    
    /// Returns the `texture` data for the specified `layer` as raw binary data. For 2D textures (which only have one layer), `layer` must be `0`.
    /// 
    /// > Note: `texture` can't be retrieved while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to ``FinalAction/`continue```) to retrieve this texture. Otherwise, an error is printed and a empty ``PackedByteArray`` is returned.
    /// 
    /// > Note: `texture` requires the ``TextureUsageBits/canCopyFromBit`` to be retrieved. Otherwise, an error is printed and a empty ``PackedByteArray`` is returned.
    /// 
    /// > Note: This method will block the GPU from working until the data is retrieved. Refer to ``textureGetDataAsync(texture:layer:callback:)`` for an alternative that returns the data in more performant way.
    /// 
    public final func textureGetData(texture: RID, layer: UInt32) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_texture_get_data, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_get_data_async: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_get_data_async")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 498832090)!
            }
            
        }
        
    }()
    
    /// Asynchronous version of ``textureGetData(texture:layer:)``. RenderingDevice will call `callback` in a certain amount of frames with the data the texture had at the time of the request.
    /// 
    /// > Note: At the moment, the delay corresponds to the amount of frames specified by ``ProjectSettings/rendering/renderingDevice/vsync/frameQueueSize``.
    /// 
    /// > Note: Downloading large textures can have a prohibitive cost for real-time even when using the asynchronous method due to hardware bandwidth limitations. When dealing with large resources, you can adjust settings such as ``ProjectSettings/rendering/renderingDevice/stagingBuffer/textureDownloadRegionSizePx`` and ``ProjectSettings/rendering/renderingDevice/stagingBuffer/blockSizeKb`` to improve the transfer speed at the cost of extra memory.
    /// 
    public final func textureGetDataAsync(texture: RID, layer: UInt32, callback: Callable) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: layer) { pArg1 in
                withUnsafePointer(to: callback.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_texture_get_data_async, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_texture_is_format_supported_for_usage: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_is_format_supported_for_usage")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2592520478)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the specified `format` is supported for the given `usageFlags`, `false` otherwise.
    public final func textureIsFormatSupportedForUsage(format: RenderingDevice.DataFormat, usageFlags: RenderingDevice.TextureUsageBits) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: format.rawValue) { pArg0 in
            withUnsafePointer(to: usageFlags.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_texture_is_format_supported_for_usage, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_is_shared: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_is_shared")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `texture` is shared, `false` otherwise. See ``RDTextureView``.
    public final func textureIsShared(texture: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_texture_is_shared, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_is_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_is_valid")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `texture` is valid, `false` otherwise.
    public final func textureIsValid(texture: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_texture_is_valid, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_set_discardable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_set_discardable")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1265174801)!
            }
            
        }
        
    }()
    
    /// Updates the discardable property of `texture`.
    /// 
    /// If a texture is discardable, its contents do not need to be preserved between frames. This flag is only relevant when the texture is used as target in a draw list.
    /// 
    /// This information is used by ``RenderingDevice`` to figure out if a texture's contents can be discarded, eliminating unnecessary writes to memory and boosting performance.
    /// 
    public final func textureSetDiscardable(texture: RID, discardable: Bool) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: discardable) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_texture_set_discardable, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_texture_is_discardable: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_is_discardable")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `texture` is discardable, `false` otherwise. See ``RDTextureFormat`` or ``textureSetDiscardable(texture:discardable:)``.
    public final func textureIsDiscardable(texture: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_texture_is_discardable, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_copy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_copy")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2859522160)!
            }
            
        }
        
    }()
    
    /// Copies the `fromTexture` to `toTexture` with the specified `fromPos`, `toPos` and `size` coordinates. The Z axis of the `fromPos`, `toPos` and `size` must be `0` for 2-dimensional textures. Source and destination mipmaps/layers must also be specified, with these parameters being `0` for textures without mipmaps or single-layer textures. Returns ``@GlobalScope.OK`` if the texture copy was successful or ``@GlobalScope.ERR_INVALID_PARAMETER`` otherwise.
    /// 
    /// > Note: `fromTexture` texture can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to ``FinalAction/`continue```) to copy this texture.
    /// 
    /// > Note: `fromTexture` texture requires the ``TextureUsageBits/canCopyFromBit`` to be retrieved.
    /// 
    /// > Note: `toTexture` can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to ``FinalAction/`continue```) to copy this texture.
    /// 
    /// > Note: `toTexture` requires the ``TextureUsageBits/canCopyToBit`` to be retrieved.
    /// 
    /// > Note: `fromTexture` and `toTexture` must be of the same type (color or depth).
    /// 
    public final func textureCopy(fromTexture: RID, toTexture: RID, fromPos: Vector3, toPos: Vector3, size: Vector3, srcMipmap: UInt32, dstMipmap: UInt32, srcLayer: UInt32, dstLayer: UInt32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: fromTexture.content) { pArg0 in
            withUnsafePointer(to: toTexture.content) { pArg1 in
                withUnsafePointer(to: fromPos) { pArg2 in
                    withUnsafePointer(to: toPos) { pArg3 in
                        withUnsafePointer(to: size) { pArg4 in
                            withUnsafePointer(to: srcMipmap) { pArg5 in
                                withUnsafePointer(to: dstMipmap) { pArg6 in
                                    withUnsafePointer(to: srcLayer) { pArg7 in
                                        withUnsafePointer(to: dstLayer) { pArg8 in
                                            withUnsafePointer(to: UnsafeRawPointersN9(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8)) { pArgs in
                                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 9) { pArgs in
                                                    gi.object_method_bind_ptrcall(RenderingDevice.method_texture_copy, handle, pArgs, &_result)
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
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_texture_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_clear")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3477703247)!
            }
            
        }
        
    }()
    
    /// Clears the specified `texture` by replacing all of its pixels with the specified `color`. `baseMipmap` and `mipmapCount` determine which mipmaps of the texture are affected by this clear operation, while `baseLayer` and `layerCount` determine which layers of a 3D texture (or texture array) are affected by this clear operation. For 2D textures (which only have one layer by design), `baseLayer` must be `0` and `layerCount` must be `1`.
    /// 
    /// > Note: `texture` can't be cleared while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to ``FinalAction/`continue```) to clear this texture.
    /// 
    public final func textureClear(texture: RID, color: Color, baseMipmap: UInt32, mipmapCount: UInt32, baseLayer: UInt32, layerCount: UInt32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: baseMipmap) { pArg2 in
                    withUnsafePointer(to: mipmapCount) { pArg3 in
                        withUnsafePointer(to: baseLayer) { pArg4 in
                            withUnsafePointer(to: layerCount) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(RenderingDevice.method_texture_clear, handle, pArgs, &_result)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_texture_resolve_multisample: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_resolve_multisample")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3181288260)!
            }
            
        }
        
    }()
    
    /// Resolves the `fromTexture` texture onto `toTexture` with multisample antialiasing enabled. This must be used when rendering a framebuffer for MSAA to work. Returns ``@GlobalScope.OK`` if successful, ``@GlobalScope.ERR_INVALID_PARAMETER`` otherwise.
    /// 
    /// > Note: `fromTexture` and `toTexture` textures must have the same dimension, format and type (color or depth).
    /// 
    /// > Note: `fromTexture` can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to ``FinalAction/`continue```) to resolve this texture.
    /// 
    /// > Note: `fromTexture` requires the ``TextureUsageBits/canCopyFromBit`` to be retrieved.
    /// 
    /// > Note: `fromTexture` must be multisampled and must also be 2D (or a slice of a 3D/cubemap texture).
    /// 
    /// > Note: `toTexture` can't be copied while a draw list that uses it as part of a framebuffer is being created. Ensure the draw list is finalized (and that the color/depth texture using it is not set to ``FinalAction/`continue```) to resolve this texture.
    /// 
    /// > Note: `toTexture` texture requires the ``TextureUsageBits/canCopyToBit`` to be retrieved.
    /// 
    /// > Note: `toTexture` texture must **not** be multisampled and must also be 2D (or a slice of a 3D/cubemap texture).
    /// 
    public final func textureResolveMultisample(fromTexture: RID, toTexture: RID) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: fromTexture.content) { pArg0 in
            withUnsafePointer(to: toTexture.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_texture_resolve_multisample, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_texture_get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_get_format")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1374471690)!
            }
            
        }
        
    }()
    
    /// Returns the data format used to create this texture.
    public final func textureGetFormat(texture: RID) -> RDTextureFormat? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_texture_get_format, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_texture_get_native_handle: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_get_native_handle")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3917799429)!
            }
            
        }
        
    }()
    
    /// Returns the internal graphics handle for this texture object. For use when communicating with third-party APIs mostly with GDExtension.
    /// 
    /// > Note: This function returns a `uint64_t` which internally maps to a `GLuint` (OpenGL) or `VkImage` (Vulkan).
    /// 
    public final func textureGetNativeHandle(texture: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: texture.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_texture_get_native_handle, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_format_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_format_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 697032759)!
            }
            
        }
        
    }()
    
    /// Creates a new framebuffer format with the specified `attachments` and `viewCount`. Returns the new framebuffer's unique framebuffer format ID.
    /// 
    /// If `viewCount` is greater than or equal to `2`, enables multiview which is used for VR rendering. This requires support for the Vulkan multiview extension.
    /// 
    public final func framebufferFormatCreate(attachments: TypedArray<RDAttachmentFormat?>, viewCount: UInt32 = 1) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: attachments.array.content) { pArg0 in
            withUnsafePointer(to: viewCount) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_format_create, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_format_create_multipass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_format_create_multipass")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2647479094)!
            }
            
        }
        
    }()
    
    /// Creates a multipass framebuffer format with the specified `attachments`, `passes` and `viewCount` and returns its ID. If `viewCount` is greater than or equal to `2`, enables multiview which is used for VR rendering. This requires support for the Vulkan multiview extension.
    public final func framebufferFormatCreateMultipass(attachments: TypedArray<RDAttachmentFormat?>, passes: TypedArray<RDFramebufferPass?>, viewCount: UInt32 = 1) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: attachments.array.content) { pArg0 in
            withUnsafePointer(to: passes.array.content) { pArg1 in
                withUnsafePointer(to: viewCount) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_format_create_multipass, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_format_create_empty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_format_create_empty")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 555930169)!
            }
            
        }
        
    }()
    
    /// Creates a new empty framebuffer format with the specified number of `samples` and returns its ID.
    public final func framebufferFormatCreateEmpty(samples: RenderingDevice.TextureSamples = .textureSamples1) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: samples.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_format_create_empty, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_format_get_texture_samples: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_format_get_texture_samples")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4223391010)!
            }
            
        }
        
    }()
    
    /// Returns the number of texture samples used for the given framebuffer `format` ID (returned by ``framebufferGetFormat(framebuffer:)``).
    public final func framebufferFormatGetTextureSamples(format: Int, renderPass: UInt32 = 0) -> RenderingDevice.TextureSamples {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: format) { pArg0 in
            withUnsafePointer(to: renderPass) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_format_get_texture_samples, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return RenderingDevice.TextureSamples (rawValue: _result)!
    }
    
    fileprivate static let method_framebuffer_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3284231055)!
            }
            
        }
        
    }()
    
    /// Creates a new framebuffer. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func framebufferCreate(textures: TypedArray<RID>, validateWithFormat: Int = -1, viewCount: UInt32 = 1) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: textures.array.content) { pArg0 in
            withUnsafePointer(to: validateWithFormat) { pArg1 in
                withUnsafePointer(to: viewCount) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_create, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_create_multipass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_create_multipass")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1750306695)!
            }
            
        }
        
    }()
    
    /// Creates a new multipass framebuffer. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func framebufferCreateMultipass(textures: TypedArray<RID>, passes: TypedArray<RDFramebufferPass?>, validateWithFormat: Int = -1, viewCount: UInt32 = 1) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: textures.array.content) { pArg0 in
            withUnsafePointer(to: passes.array.content) { pArg1 in
                withUnsafePointer(to: validateWithFormat) { pArg2 in
                    withUnsafePointer(to: viewCount) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_create_multipass, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_create_empty: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_create_empty")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3058360618)!
            }
            
        }
        
    }()
    
    /// Creates a new empty framebuffer. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func framebufferCreateEmpty(size: Vector2i, samples: RenderingDevice.TextureSamples = .textureSamples1, validateWithFormat: Int = -1) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: size) { pArg0 in
            withUnsafePointer(to: samples.rawValue) { pArg1 in
                withUnsafePointer(to: validateWithFormat) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_create_empty, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_get_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_get_format")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3917799429)!
            }
            
        }
        
    }()
    
    /// Returns the format ID of the framebuffer specified by the `framebuffer` RID. This ID is guaranteed to be unique for the same formats and does not need to be freed.
    public final func framebufferGetFormat(framebuffer: RID) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: framebuffer.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_get_format, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_framebuffer_is_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("framebuffer_is_valid")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4155700596)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the framebuffer specified by the `framebuffer` RID is valid, `false` otherwise.
    public final func framebufferIsValid(framebuffer: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: framebuffer.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_framebuffer_is_valid, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_sampler_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("sampler_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2327892535)!
            }
            
        }
        
    }()
    
    /// Creates a new sampler. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func samplerCreate(state: RDSamplerState?) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: state?.handle) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_sampler_create, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_sampler_is_format_supported_for_filter: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("sampler_is_format_supported_for_filter")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2247922238)!
            }
            
        }
        
    }()
    
    /// Returns `true` if implementation supports using a texture of `format` with the given `samplerFilter`.
    public final func samplerIsFormatSupportedForFilter(format: RenderingDevice.DataFormat, samplerFilter: RenderingDevice.SamplerFilter) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: format.rawValue) { pArg0 in
            withUnsafePointer(to: samplerFilter.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_sampler_is_format_supported_for_filter, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_vertex_buffer_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("vertex_buffer_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2089548973)!
            }
            
        }
        
    }()
    
    /// It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func vertexBufferCreate(sizeBytes: UInt32, data: PackedByteArray = PackedByteArray(), creationBits: RenderingDevice.BufferCreationBits = []) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: sizeBytes) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: creationBits.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_vertex_buffer_create, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_vertex_format_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("vertex_format_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1242678479)!
            }
            
        }
        
    }()
    
    /// Creates a new vertex format with the specified `vertexDescriptions`. Returns a unique vertex format ID corresponding to the newly created vertex format.
    public final func vertexFormatCreate(vertexDescriptions: TypedArray<RDVertexAttribute?>) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: vertexDescriptions.array.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_vertex_format_create, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_vertex_array_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("vertex_array_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3799816279)!
            }
            
        }
        
    }()
    
    /// Creates a vertex array based on the specified buffers. Optionally, `offsets` (in bytes) may be defined for each buffer.
    public final func vertexArrayCreate(vertexCount: UInt32, vertexFormat: Int, srcBuffers: TypedArray<RID>, offsets: PackedInt64Array = PackedInt64Array()) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: vertexCount) { pArg0 in
            withUnsafePointer(to: vertexFormat) { pArg1 in
                withUnsafePointer(to: srcBuffers.array.content) { pArg2 in
                    withUnsafePointer(to: offsets.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderingDevice.method_vertex_array_create, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_index_buffer_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("index_buffer_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2368684885)!
            }
            
        }
        
    }()
    
    /// Creates a new index buffer. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func indexBufferCreate(sizeIndices: UInt32, format: RenderingDevice.IndexBufferFormat, data: PackedByteArray = PackedByteArray(), useRestartIndices: Bool = false, creationBits: RenderingDevice.BufferCreationBits = []) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: sizeIndices) { pArg0 in
            withUnsafePointer(to: format.rawValue) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: useRestartIndices) { pArg3 in
                        withUnsafePointer(to: creationBits.rawValue) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(RenderingDevice.method_index_buffer_create, handle, pArgs, &_result.content)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_index_array_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("index_array_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2256026069)!
            }
            
        }
        
    }()
    
    /// Creates a new index array. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func indexArrayCreate(indexBuffer: RID, indexOffset: UInt32, indexCount: UInt32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: indexBuffer.content) { pArg0 in
            withUnsafePointer(to: indexOffset) { pArg1 in
                withUnsafePointer(to: indexCount) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_index_array_create, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shader_compile_spirv_from_source: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shader_compile_spirv_from_source")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1178973306)!
            }
            
        }
        
    }()
    
    /// Compiles a SPIR-V from the shader source code in `shaderSource` and returns the SPIR-V as a ``RDShaderSPIRV``. This intermediate language shader is portable across different GPU models and driver versions, but cannot be run directly by GPUs until compiled into a binary shader using ``shaderCompileBinaryFromSpirv(spirvData:name:)``.
    /// 
    /// If `allowCache` is `true`, make use of the shader cache generated by Godot. This avoids a potentially lengthy shader compilation step if the shader is already in cache. If `allowCache` is `false`, Godot's shader cache is ignored and the shader will always be recompiled.
    /// 
    public final func shaderCompileSpirvFromSource(shaderSource: RDShaderSource?, allowCache: Bool = true) -> RDShaderSPIRV? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        withUnsafePointer(to: shaderSource?.handle) { pArg0 in
            withUnsafePointer(to: allowCache) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_shader_compile_spirv_from_source, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_shader_compile_binary_from_spirv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shader_compile_binary_from_spirv")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 134910450)!
            }
            
        }
        
    }()
    
    /// Compiles a binary shader from `spirvData` and returns the compiled binary data as a ``PackedByteArray``. This compiled shader is specific to the GPU model and driver version used; it will not work on different GPU models or even different driver versions. See also ``shaderCompileSpirvFromSource(shaderSource:allowCache:)``.
    /// 
    /// `name` is an optional human-readable name that can be given to the compiled shader for organizational purposes.
    /// 
    public final func shaderCompileBinaryFromSpirv(spirvData: RDShaderSPIRV?, name: String = "") -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: spirvData?.handle) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_shader_compile_binary_from_spirv, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shader_create_from_spirv: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shader_create_from_spirv")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 342949005)!
            }
            
        }
        
    }()
    
    /// Creates a new shader instance from SPIR-V intermediate code. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method. See also ``shaderCompileSpirvFromSource(shaderSource:allowCache:)`` and ``shaderCreateFromBytecode(binaryData:placeholderRid:)``.
    /// 
    public final func shaderCreateFromSpirv(spirvData: RDShaderSPIRV?, name: String = "") -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: spirvData?.handle) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_shader_create_from_spirv, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shader_create_from_bytecode: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shader_create_from_bytecode")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1687031350)!
            }
            
        }
        
    }()
    
    /// Creates a new shader instance from a binary compiled shader. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method. See also ``shaderCompileBinaryFromSpirv(spirvData:name:)`` and ``shaderCreateFromSpirv(spirvData:name:)``.
    /// 
    public final func shaderCreateFromBytecode(binaryData: PackedByteArray, placeholderRid: RID = RID()) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: binaryData.content) { pArg0 in
            withUnsafePointer(to: placeholderRid.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_shader_create_from_bytecode, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_shader_create_placeholder: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shader_create_placeholder")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 529393457)!
            }
            
        }
        
    }()
    
    /// Create a placeholder RID by allocating an RID without initializing it for use in ``shaderCreateFromBytecode(binaryData:placeholderRid:)``. This allows you to create an RID for a shader and pass it around, but defer compiling the shader to a later time.
    public final func shaderCreatePlaceholder() -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        gi.object_method_bind_ptrcall(RenderingDevice.method_shader_create_placeholder, handle, nil, &_result.content)
        return _result
    }
    
    fileprivate static let method_shader_get_vertex_input_attribute_mask: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("shader_get_vertex_input_attribute_mask")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3917799429)!
            }
            
        }
        
    }()
    
    /// Returns the internal vertex input mask. Internally, the vertex input mask is an unsigned integer consisting of the locations (specified in GLSL via. `layout(location = ...)`) of the input variables (specified in GLSL by the `in` keyword).
    public final func shaderGetVertexInputAttributeMask(shader: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: shader.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_shader_get_vertex_input_attribute_mask, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_uniform_buffer_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("uniform_buffer_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2089548973)!
            }
            
        }
        
    }()
    
    /// Creates a new uniform buffer. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func uniformBufferCreate(sizeBytes: UInt32, data: PackedByteArray = PackedByteArray(), creationBits: RenderingDevice.BufferCreationBits = []) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: sizeBytes) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: creationBits.rawValue) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_uniform_buffer_create, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_storage_buffer_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("storage_buffer_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1609052553)!
            }
            
        }
        
    }()
    
    /// Creates a <a href="https://vkguide.dev/docs/chapter-4/storage_buffers/">storage buffer</a> with the specified `data` and `usage`. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func storageBufferCreate(sizeBytes: UInt32, data: PackedByteArray = PackedByteArray(), usage: RenderingDevice.StorageBufferUsage = [], creationBits: RenderingDevice.BufferCreationBits = []) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: sizeBytes) { pArg0 in
            withUnsafePointer(to: data.content) { pArg1 in
                withUnsafePointer(to: usage.rawValue) { pArg2 in
                    withUnsafePointer(to: creationBits.rawValue) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderingDevice.method_storage_buffer_create, handle, pArgs, &_result.content)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_texture_buffer_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("texture_buffer_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1470338698)!
            }
            
        }
        
    }()
    
    /// Creates a new texture buffer. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func textureBufferCreate(sizeBytes: UInt32, format: RenderingDevice.DataFormat, data: PackedByteArray = PackedByteArray()) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: sizeBytes) { pArg0 in
            withUnsafePointer(to: format.rawValue) { pArg1 in
                withUnsafePointer(to: data.content) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_texture_buffer_create, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_uniform_set_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("uniform_set_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2280795797)!
            }
            
        }
        
    }()
    
    /// Creates a new uniform set. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func uniformSetCreate(uniforms: TypedArray<RDUniform?>, shader: RID, shaderSet: UInt32) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: uniforms.array.content) { pArg0 in
            withUnsafePointer(to: shader.content) { pArg1 in
                withUnsafePointer(to: shaderSet) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_uniform_set_create, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_uniform_set_is_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("uniform_set_is_valid")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// Checks if the `uniformSet` is valid, i.e. is owned.
    public final func uniformSetIsValid(uniformSet: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: uniformSet.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_uniform_set_is_valid, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_buffer_copy: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("buffer_copy")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 864257779)!
            }
            
        }
        
    }()
    
    /// Copies `size` bytes from the `srcBuffer` at `srcOffset` into `dstBuffer` at `dstOffset`.
    /// 
    /// Prints an error if:
    /// 
    /// - `size` exceeds the size of either `srcBuffer` or `dstBuffer` at their corresponding offsets
    /// 
    /// - a draw list is currently active (created by ``drawListBegin(framebuffer:drawFlags:clearColorValues:clearDepthValue:clearStencilValue:region:breadcrumb:)``)
    /// 
    /// - a compute list is currently active (created by ``computeListBegin()``)
    /// 
    public final func bufferCopy(srcBuffer: RID, dstBuffer: RID, srcOffset: UInt32, dstOffset: UInt32, size: UInt32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: srcBuffer.content) { pArg0 in
            withUnsafePointer(to: dstBuffer.content) { pArg1 in
                withUnsafePointer(to: srcOffset) { pArg2 in
                    withUnsafePointer(to: dstOffset) { pArg3 in
                        withUnsafePointer(to: size) { pArg4 in
                            withUnsafePointer(to: UnsafeRawPointersN5(pArg0, pArg1, pArg2, pArg3, pArg4)) { pArgs in
                                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 5) { pArgs in
                                    gi.object_method_bind_ptrcall(RenderingDevice.method_buffer_copy, handle, pArgs, &_result)
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_buffer_update: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("buffer_update")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3454956949)!
            }
            
        }
        
    }()
    
    /// Updates a region of `sizeBytes` bytes, starting at `offset`, in the buffer, with the specified `data`.
    /// 
    /// Prints an error if:
    /// 
    /// - the region specified by `offset` + `sizeBytes` exceeds the buffer
    /// 
    /// - a draw list is currently active (created by ``drawListBegin(framebuffer:drawFlags:clearColorValues:clearDepthValue:clearStencilValue:region:breadcrumb:)``)
    /// 
    /// - a compute list is currently active (created by ``computeListBegin()``)
    /// 
    public final func bufferUpdate(buffer: RID, offset: UInt32, sizeBytes: UInt32, data: PackedByteArray) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: buffer.content) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: sizeBytes) { pArg2 in
                    withUnsafePointer(to: data.content) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderingDevice.method_buffer_update, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_buffer_clear: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("buffer_clear")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2452320800)!
            }
            
        }
        
    }()
    
    /// Clears the contents of the `buffer`, clearing `sizeBytes` bytes, starting at `offset`.
    /// 
    /// Prints an error if:
    /// 
    /// - the size isn't a multiple of four
    /// 
    /// - the region specified by `offset` + `sizeBytes` exceeds the buffer
    /// 
    /// - a draw list is currently active (created by ``drawListBegin(framebuffer:drawFlags:clearColorValues:clearDepthValue:clearStencilValue:region:breadcrumb:)``)
    /// 
    /// - a compute list is currently active (created by ``computeListBegin()``)
    /// 
    public final func bufferClear(buffer: RID, offset: UInt32, sizeBytes: UInt32) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: buffer.content) { pArg0 in
            withUnsafePointer(to: offset) { pArg1 in
                withUnsafePointer(to: sizeBytes) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_buffer_clear, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_buffer_get_data: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("buffer_get_data")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3101830688)!
            }
            
        }
        
    }()
    
    /// Returns a copy of the data of the specified `buffer`, optionally `offsetBytes` and `sizeBytes` can be set to copy only a portion of the buffer.
    /// 
    /// > Note: This method will block the GPU from working until the data is retrieved. Refer to ``bufferGetDataAsync(buffer:callback:offsetBytes:sizeBytes:)`` for an alternative that returns the data in more performant way.
    /// 
    public final func bufferGetData(buffer: RID, offsetBytes: UInt32 = 0, sizeBytes: UInt32 = 0) -> PackedByteArray {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedByteArray = PackedByteArray ()
        withUnsafePointer(to: buffer.content) { pArg0 in
            withUnsafePointer(to: offsetBytes) { pArg1 in
                withUnsafePointer(to: sizeBytes) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_buffer_get_data, handle, pArgs, &_result.content)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_buffer_get_data_async: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("buffer_get_data_async")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2370287848)!
            }
            
        }
        
    }()
    
    /// Asynchronous version of ``bufferGetData(buffer:offsetBytes:sizeBytes:)``. RenderingDevice will call `callback` in a certain amount of frames with the data the buffer had at the time of the request.
    /// 
    /// > Note: At the moment, the delay corresponds to the amount of frames specified by ``ProjectSettings/rendering/renderingDevice/vsync/frameQueueSize``.
    /// 
    /// > Note: Downloading large buffers can have a prohibitive cost for real-time even when using the asynchronous method due to hardware bandwidth limitations. When dealing with large resources, you can adjust settings such as ``ProjectSettings/rendering/renderingDevice/stagingBuffer/blockSizeKb`` to improve the transfer speed at the cost of extra memory.
    /// 
    public final func bufferGetDataAsync(buffer: RID, callback: Callable, offsetBytes: UInt32 = 0, sizeBytes: UInt32 = 0) -> GodotError {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int64 = 0 // to avoid packed enums on the stack
        withUnsafePointer(to: buffer.content) { pArg0 in
            withUnsafePointer(to: callback.content) { pArg1 in
                withUnsafePointer(to: offsetBytes) { pArg2 in
                    withUnsafePointer(to: sizeBytes) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderingDevice.method_buffer_get_data_async, handle, pArgs, &_result)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return GodotError (rawValue: _result)!
    }
    
    fileprivate static let method_buffer_get_device_address: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("buffer_get_device_address")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3917799429)!
            }
            
        }
        
    }()
    
    /// Returns the address of the given `buffer` which can be passed to shaders in any way to access underlying data. Buffer must have been created with this feature enabled.
    /// 
    /// > Note: You must check that the GPU supports this functionality by calling ``hasFeature(_:)`` with ``Features/supportsBufferDeviceAddress`` as a parameter.
    /// 
    public final func bufferGetDeviceAddress(buffer: RID) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: buffer.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_buffer_get_device_address, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_render_pipeline_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("render_pipeline_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2385451958)!
            }
            
        }
        
    }()
    
    /// Creates a new render pipeline. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func renderPipelineCreate(shader: RID, framebufferFormat: Int, vertexFormat: Int, primitive: RenderingDevice.RenderPrimitive, rasterizationState: RDPipelineRasterizationState?, multisampleState: RDPipelineMultisampleState?, stencilState: RDPipelineDepthStencilState?, colorBlendState: RDPipelineColorBlendState?, dynamicStateFlags: RenderingDevice.PipelineDynamicStateFlags = [], forRenderPass: UInt32 = 0, specializationConstants: TypedArray<RDPipelineSpecializationConstant?>) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: shader.content) { pArg0 in
            withUnsafePointer(to: framebufferFormat) { pArg1 in
                withUnsafePointer(to: vertexFormat) { pArg2 in
                    withUnsafePointer(to: primitive.rawValue) { pArg3 in
                        withUnsafePointer(to: rasterizationState?.handle) { pArg4 in
                            withUnsafePointer(to: multisampleState?.handle) { pArg5 in
                                withUnsafePointer(to: stencilState?.handle) { pArg6 in
                                    withUnsafePointer(to: colorBlendState?.handle) { pArg7 in
                                        withUnsafePointer(to: dynamicStateFlags.rawValue) { pArg8 in
                                            withUnsafePointer(to: forRenderPass) { pArg9 in
                                                withUnsafePointer(to: specializationConstants.array.content) { pArg10 in
                                                    withUnsafePointer(to: UnsafeRawPointersN11(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10)) { pArgs in
                                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 11) { pArgs in
                                                            gi.object_method_bind_ptrcall(RenderingDevice.method_render_pipeline_create, handle, pArgs, &_result.content)
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
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_render_pipeline_is_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("render_pipeline_is_valid")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the render pipeline specified by the `renderPipeline` RID is valid, `false` otherwise.
    public final func renderPipelineIsValid(renderPipeline: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: renderPipeline.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_render_pipeline_is_valid, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_compute_pipeline_create: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_pipeline_create")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1448838280)!
            }
            
        }
        
    }()
    
    /// Creates a new compute pipeline. It can be accessed with the RID that is returned.
    /// 
    /// Once finished with your RID, you will want to free the RID using the RenderingDevice's ``freeRid(_:)`` method.
    /// 
    public final func computePipelineCreate(shader: RID, specializationConstants: TypedArray<RDPipelineSpecializationConstant?>) -> RID {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: RID = RID ()
        withUnsafePointer(to: shader.content) { pArg0 in
            withUnsafePointer(to: specializationConstants.array.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_compute_pipeline_create, handle, pArgs, &_result.content)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_compute_pipeline_is_valid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_pipeline_is_valid")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3521089500)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the compute pipeline specified by the `computePipeline` RID is valid, `false` otherwise.
    public final func computePipelineIsValid(computePipeline: RID) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: computePipeline.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_compute_pipeline_is_valid, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_screen_get_width: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("screen_get_width")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the window width matching the graphics API context for the given window ID (in pixels). Despite the parameter being named `screen`, this returns the _window_ size. See also ``screenGetHeight(screen:)``.
    /// 
    /// > Note: Only the main ``RenderingDevice`` returned by ``RenderingServer/getRenderingDevice()`` has a width. If called on a local ``RenderingDevice``, this method prints an error and returns ``invalidId``.
    /// 
    public final func screenGetWidth(screen: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: screen) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_screen_get_width, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_screen_get_height: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("screen_get_height")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the window height matching the graphics API context for the given window ID (in pixels). Despite the parameter being named `screen`, this returns the _window_ size. See also ``screenGetWidth(screen:)``.
    /// 
    /// > Note: Only the main ``RenderingDevice`` returned by ``RenderingServer/getRenderingDevice()`` has a height. If called on a local ``RenderingDevice``, this method prints an error and returns ``invalidId``.
    /// 
    public final func screenGetHeight(screen: Int32 = 0) -> Int32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int32 = 0
        withUnsafePointer(to: screen) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_screen_get_height, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_screen_get_framebuffer_format: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("screen_get_framebuffer_format")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1591665591)!
            }
            
        }
        
    }()
    
    /// Returns the framebuffer format of the given screen.
    /// 
    /// > Note: Only the main ``RenderingDevice`` returned by ``RenderingServer/getRenderingDevice()`` has a format. If called on a local ``RenderingDevice``, this method prints an error and returns ``invalidId``.
    /// 
    public final func screenGetFramebufferFormat(screen: Int32 = 0) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: screen) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_screen_get_framebuffer_format, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_draw_list_begin_for_screen: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_begin_for_screen")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3988079995)!
            }
            
        }
        
    }()
    
    /// High-level variant of ``drawListBegin(framebuffer:drawFlags:clearColorValues:clearDepthValue:clearStencilValue:region:breadcrumb:)``, with the parameters automatically being adjusted for drawing onto the window specified by the `screen` ID.
    /// 
    /// > Note: Cannot be used with local RenderingDevices, as these don't have a screen. If called on a local RenderingDevice, ``drawListBeginForScreen(_:clearColor:)`` returns ``invalidId``.
    /// 
    public final func drawListBeginForScreen(_ screen: Int32 = 0, clearColor: Color = Color (r: 0, g: 0, b: 0, a: 1)) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: screen) { pArg0 in
            withUnsafePointer(to: clearColor) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_begin_for_screen, handle, pArgs, &_result)
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_draw_list_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_begin")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1317926357)!
            }
            
        }
        
    }()
    
    /// Starts a list of raster drawing commands created with the `draw_*` methods. The returned value should be passed to other `draw_list_*` functions.
    /// 
    /// Multiple draw lists cannot be created at the same time; you must finish the previous draw list first using ``drawListEnd()``.
    /// 
    /// A simple drawing operation might look like this (code is not a complete example):
    /// 
    /// The `drawFlags` indicates if the texture attachments of the framebuffer should be cleared or ignored. Only one of the two flags can be used for each individual attachment. Ignoring an attachment means that any contents that existed before the draw list will be completely discarded, reducing the memory bandwidth used by the render pass but producing garbage results if the pixels aren't replaced. The default behavior allows the engine to figure out the right operation to use if the texture is discardable, which can result in increased performance. See ``RDTextureFormat`` or ``textureSetDiscardable(texture:discardable:)``.
    /// 
    /// The `breadcrumb` parameter can be an arbitrary 32-bit integer that is useful to diagnose GPU crashes. If Godot is built in dev or debug mode; when the GPU crashes Godot will dump all shaders that were being executed at the time of the crash and the breadcrumb is useful to diagnose what passes did those shaders belong to.
    /// 
    /// It does not affect rendering behavior and can be set to 0. It is recommended to use ``RenderingDevice/BreadcrumbMarker`` enumerations for consistency but it's not required. It is also possible to use bitwise operations to add extra data. e.g.
    /// 
    public final func drawListBegin(framebuffer: RID, drawFlags: RenderingDevice.DrawFlags = [], clearColorValues: PackedColorArray = PackedColorArray(), clearDepthValue: Double = 1.0, clearStencilValue: UInt32 = 0, region: Rect2 = Rect2 (x: 0, y: 0, width: 0, height: 0), breadcrumb: UInt32 = 0) -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        withUnsafePointer(to: framebuffer.content) { pArg0 in
            withUnsafePointer(to: drawFlags.rawValue) { pArg1 in
                withUnsafePointer(to: clearColorValues.content) { pArg2 in
                    withUnsafePointer(to: clearDepthValue) { pArg3 in
                        withUnsafePointer(to: clearStencilValue) { pArg4 in
                            withUnsafePointer(to: region) { pArg5 in
                                withUnsafePointer(to: breadcrumb) { pArg6 in
                                    withUnsafePointer(to: UnsafeRawPointersN7(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6)) { pArgs in
                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 7) { pArgs in
                                            gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_begin, handle, pArgs, &_result)
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
    
    fileprivate static let method_draw_list_begin_split: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_begin_split")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2406300660)!
            }
            
        }
        
    }()
    
    /// This method does nothing and always returns an empty ``PackedInt64Array``.
    public final func drawListBeginSplit(framebuffer: RID, splits: UInt32, initialColorAction: RenderingDevice.InitialAction, finalColorAction: RenderingDevice.FinalAction, initialDepthAction: RenderingDevice.InitialAction, finalDepthAction: RenderingDevice.FinalAction, clearColorValues: PackedColorArray = PackedColorArray(), clearDepth: Double = 1.0, clearStencil: UInt32 = 0, region: Rect2 = Rect2 (x: 0, y: 0, width: 0, height: 0), storageTextures: TypedArray<RID> = TypedArray<RID> ()) -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        withUnsafePointer(to: framebuffer.content) { pArg0 in
            withUnsafePointer(to: splits) { pArg1 in
                withUnsafePointer(to: initialColorAction.rawValue) { pArg2 in
                    withUnsafePointer(to: finalColorAction.rawValue) { pArg3 in
                        withUnsafePointer(to: initialDepthAction.rawValue) { pArg4 in
                            withUnsafePointer(to: finalDepthAction.rawValue) { pArg5 in
                                withUnsafePointer(to: clearColorValues.content) { pArg6 in
                                    withUnsafePointer(to: clearDepth) { pArg7 in
                                        withUnsafePointer(to: clearStencil) { pArg8 in
                                            withUnsafePointer(to: region) { pArg9 in
                                                withUnsafePointer(to: storageTextures.array.content) { pArg10 in
                                                    withUnsafePointer(to: UnsafeRawPointersN11(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5, pArg6, pArg7, pArg8, pArg9, pArg10)) { pArgs in
                                                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 11) { pArgs in
                                                            gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_begin_split, handle, pArgs, &_result.content)
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
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_draw_list_set_blend_constants: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_set_blend_constants")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2878471219)!
            }
            
        }
        
    }()
    
    /// Sets blend constants for the specified `drawList` to `color`. Blend constants are used only if the graphics pipeline is created with ``PipelineDynamicStateFlags/blendConstants`` flag set.
    public final func drawListSetBlendConstants(drawList: Int, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_set_blend_constants, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_bind_render_pipeline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_bind_render_pipeline")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4040184819)!
            }
            
        }
        
    }()
    
    /// Binds `renderPipeline` to the specified `drawList`.
    public final func drawListBindRenderPipeline(drawList: Int, renderPipeline: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: renderPipeline.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_bind_render_pipeline, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_bind_uniform_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_bind_uniform_set")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 749655778)!
            }
            
        }
        
    }()
    
    /// Binds `uniformSet` to the specified `drawList`. A `setIndex` must also be specified, which is an identifier starting from `0` that must match the one expected by the draw list.
    public final func drawListBindUniformSet(drawList: Int, uniformSet: RID, setIndex: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: uniformSet.content) { pArg1 in
                withUnsafePointer(to: setIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_bind_uniform_set, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_bind_vertex_array: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_bind_vertex_array")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4040184819)!
            }
            
        }
        
    }()
    
    /// Binds `vertexArray` to the specified `drawList`.
    public final func drawListBindVertexArray(drawList: Int, vertexArray: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: vertexArray.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_bind_vertex_array, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_bind_index_array: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_bind_index_array")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4040184819)!
            }
            
        }
        
    }()
    
    /// Binds `indexArray` to the specified `drawList`.
    public final func drawListBindIndexArray(drawList: Int, indexArray: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: indexArray.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_bind_index_array, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_set_push_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_set_push_constant")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2772371345)!
            }
            
        }
        
    }()
    
    /// Sets the push constant data to `buffer` for the specified `drawList`. The shader determines how this binary data is used. The buffer's size in bytes must also be specified in `sizeBytes` (this can be obtained by calling the ``PackedByteArray/size()`` method on the passed `buffer`).
    public final func drawListSetPushConstant(drawList: Int, buffer: PackedByteArray, sizeBytes: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: buffer.content) { pArg1 in
                withUnsafePointer(to: sizeBytes) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_set_push_constant, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_draw: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_draw")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4230067973)!
            }
            
        }
        
    }()
    
    /// Submits `drawList` for rendering on the GPU. This is the raster equivalent to ``computeListDispatch(computeList:xGroups:yGroups:zGroups:)``.
    public final func drawListDraw(drawList: Int, useIndices: Bool, instances: UInt32, proceduralVertexCount: UInt32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: useIndices) { pArg1 in
                withUnsafePointer(to: instances) { pArg2 in
                    withUnsafePointer(to: proceduralVertexCount) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_draw, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_draw_indirect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_draw_indirect")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1092133571)!
            }
            
        }
        
    }()
    
    /// Submits `drawList` for rendering on the GPU with the given parameters stored in the `buffer` at `offset`. Parameters being integers: vertex count, instance count, first vertex, first instance. And when using indices: index count, instance count, first index, vertex offset, first instance. Buffer must have been created with ``StorageBufferUsage/storageBufferUsageDispatchIndirect`` flag.
    public final func drawListDrawIndirect(drawList: Int, useIndices: Bool, buffer: RID, offset: UInt32 = 0, drawCount: UInt32 = 1, stride: UInt32 = 0) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: useIndices) { pArg1 in
                withUnsafePointer(to: buffer.content) { pArg2 in
                    withUnsafePointer(to: offset) { pArg3 in
                        withUnsafePointer(to: drawCount) { pArg4 in
                            withUnsafePointer(to: stride) { pArg5 in
                                withUnsafePointer(to: UnsafeRawPointersN6(pArg0, pArg1, pArg2, pArg3, pArg4, pArg5)) { pArgs in
                                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 6) { pArgs in
                                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_draw_indirect, handle, pArgs, nil)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_enable_scissor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_enable_scissor")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 244650101)!
            }
            
        }
        
    }()
    
    /// Creates a scissor rectangle and enables it for the specified `drawList`. Scissor rectangles are used for clipping by discarding fragments that fall outside a specified rectangular portion of the screen. See also ``drawListDisableScissor(drawList:)``.
    /// 
    /// > Note: The specified `rect` is automatically intersected with the screen's dimensions, which means it cannot exceed the screen's dimensions.
    /// 
    public final func drawListEnableScissor(drawList: Int, rect: Rect2 = Rect2 (x: 0, y: 0, width: 0, height: 0)) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: rect) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_enable_scissor, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_disable_scissor: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_disable_scissor")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Removes and disables the scissor rectangle for the specified `drawList`. See also ``drawListEnableScissor(drawList:rect:)``.
    public final func drawListDisableScissor(drawList: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: drawList) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_disable_scissor, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_list_switch_to_next_pass: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_switch_to_next_pass")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Switches to the next draw pass.
    public final func drawListSwitchToNextPass() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_switch_to_next_pass, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_draw_list_switch_to_next_pass_split: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_switch_to_next_pass_split")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2865087369)!
            }
            
        }
        
    }()
    
    /// This method does nothing and always returns an empty ``PackedInt64Array``.
    public final func drawListSwitchToNextPassSplit(splits: UInt32) -> PackedInt64Array {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result: PackedInt64Array = PackedInt64Array ()
        withUnsafePointer(to: splits) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_switch_to_next_pass_split, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_draw_list_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_list_end")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Finishes a list of raster drawing commands created with the `draw_*` methods.
    public final func drawListEnd() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_list_end, handle, nil, nil)
        
    }
    
    fileprivate static let method_compute_list_begin: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_begin")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2455072627)!
            }
            
        }
        
    }()
    
    /// Starts a list of compute commands created with the `compute_*` methods. The returned value should be passed to other `compute_list_*` functions.
    /// 
    /// Multiple compute lists cannot be created at the same time; you must finish the previous compute list first using ``computeListEnd()``.
    /// 
    /// A simple compute operation might look like this (code is not a complete example):
    /// 
    public final func computeListBegin() -> Int {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Int = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_begin, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_compute_list_bind_compute_pipeline: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_bind_compute_pipeline")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4040184819)!
            }
            
        }
        
    }()
    
    /// Tells the GPU what compute pipeline to use when processing the compute list. If the shader has changed since the last time this function was called, Godot will unbind all descriptor sets and will re-bind them inside ``computeListDispatch(computeList:xGroups:yGroups:zGroups:)``.
    public final func computeListBindComputePipeline(computeList: Int, computePipeline: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: computeList) { pArg0 in
            withUnsafePointer(to: computePipeline.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_bind_compute_pipeline, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compute_list_set_push_constant: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_set_push_constant")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2772371345)!
            }
            
        }
        
    }()
    
    /// Sets the push constant data to `buffer` for the specified `computeList`. The shader determines how this binary data is used. The buffer's size in bytes must also be specified in `sizeBytes` (this can be obtained by calling the ``PackedByteArray/size()`` method on the passed `buffer`).
    public final func computeListSetPushConstant(computeList: Int, buffer: PackedByteArray, sizeBytes: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: computeList) { pArg0 in
            withUnsafePointer(to: buffer.content) { pArg1 in
                withUnsafePointer(to: sizeBytes) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_set_push_constant, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compute_list_bind_uniform_set: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_bind_uniform_set")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 749655778)!
            }
            
        }
        
    }()
    
    /// Binds the `uniformSet` to this `computeList`. Godot ensures that all textures in the uniform set have the correct Vulkan access masks. If Godot had to change access masks of textures, it will raise a Vulkan image memory barrier.
    public final func computeListBindUniformSet(computeList: Int, uniformSet: RID, setIndex: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: computeList) { pArg0 in
            withUnsafePointer(to: uniformSet.content) { pArg1 in
                withUnsafePointer(to: setIndex) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_bind_uniform_set, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compute_list_dispatch: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_dispatch")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 4275841770)!
            }
            
        }
        
    }()
    
    /// Submits the compute list for processing on the GPU. This is the compute equivalent to ``drawListDraw(drawList:useIndices:instances:proceduralVertexCount:)``.
    public final func computeListDispatch(computeList: Int, xGroups: UInt32, yGroups: UInt32, zGroups: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: computeList) { pArg0 in
            withUnsafePointer(to: xGroups) { pArg1 in
                withUnsafePointer(to: yGroups) { pArg2 in
                    withUnsafePointer(to: zGroups) { pArg3 in
                        withUnsafePointer(to: UnsafeRawPointersN4(pArg0, pArg1, pArg2, pArg3)) { pArgs in
                            pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 4) { pArgs in
                                gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_dispatch, handle, pArgs, nil)
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compute_list_dispatch_indirect: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_dispatch_indirect")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 749655778)!
            }
            
        }
        
    }()
    
    /// Submits the compute list for processing on the GPU with the given group counts stored in the `buffer` at `offset`. Buffer must have been created with ``StorageBufferUsage/storageBufferUsageDispatchIndirect`` flag.
    public final func computeListDispatchIndirect(computeList: Int, buffer: RID, offset: UInt32) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: computeList) { pArg0 in
            withUnsafePointer(to: buffer.content) { pArg1 in
                withUnsafePointer(to: offset) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_dispatch_indirect, handle, pArgs, nil)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compute_list_add_barrier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_add_barrier")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1286410249)!
            }
            
        }
        
    }()
    
    /// Raises a Vulkan compute barrier in the specified `computeList`.
    public final func computeListAddBarrier(computeList: Int) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: computeList) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_add_barrier, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_compute_list_end: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("compute_list_end")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Finishes a list of compute commands created with the `compute_*` methods.
    public final func computeListEnd() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RenderingDevice.method_compute_list_end, handle, nil, nil)
        
    }
    
    fileprivate static let method_free_rid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("free_rid")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2722037293)!
            }
            
        }
        
    }()
    
    /// Tries to free an object in the RenderingDevice. To avoid memory leaks, this should be called after using an object as memory management does not occur automatically when using RenderingDevice directly.
    public final func freeRid(_ rid: RID) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: rid.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_free_rid, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_capture_timestamp: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("capture_timestamp")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 83702148)!
            }
            
        }
        
    }()
    
    /// Creates a timestamp marker with the specified `name`. This is used for performance reporting with the ``getCapturedTimestampCpuTime(index:)``, ``getCapturedTimestampGpuTime(index:)`` and ``getCapturedTimestampName(index:)`` methods.
    public final func captureTimestamp(name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_capture_timestamp, handle, pArgs, nil)
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_get_captured_timestamps_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_captured_timestamps_count")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the total number of timestamps (rendering steps) available for profiling.
    public final func getCapturedTimestampsCount() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_captured_timestamps_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_captured_timestamps_frame: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_captured_timestamps_frame")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the index of the last frame rendered that has rendering timestamps available for querying.
    public final func getCapturedTimestampsFrame() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_captured_timestamps_frame, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_captured_timestamp_gpu_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_captured_timestamp_gpu_time")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the timestamp in GPU time for the rendering step specified by `index` (in microseconds since the engine started). See also ``getCapturedTimestampCpuTime(index:)`` and ``captureTimestamp(name:)``.
    public final func getCapturedTimestampGpuTime(index: UInt32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_captured_timestamp_gpu_time, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_captured_timestamp_cpu_time: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_captured_timestamp_cpu_time")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Returns the timestamp in CPU time for the rendering step specified by `index` (in microseconds since the engine started). See also ``getCapturedTimestampGpuTime(index:)`` and ``captureTimestamp(name:)``.
    public final func getCapturedTimestampCpuTime(index: UInt32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_captured_timestamp_cpu_time, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_captured_timestamp_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_captured_timestamp_name")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the timestamp's name for the rendering step specified by `index`. See also ``captureTimestamp(name:)``.
    public final func getCapturedTimestampName(index: UInt32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: index) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_captured_timestamp_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_has_feature: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("has_feature")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1772728326)!
            }
            
        }
        
    }()
    
    /// Returns `true` if the `feature` is supported by the GPU.
    public final func hasFeature(_ feature: RenderingDevice.Features) -> Bool {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: Bool = false
        withUnsafePointer(to: feature.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_has_feature, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_limit_get: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("limit_get")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1559202131)!
            }
            
        }
        
    }()
    
    /// Returns the value of the specified `limit`. This limit varies depending on the current graphics hardware (and sometimes the driver version). If the given limit is exceeded, rendering errors will occur.
    /// 
    /// Limits for various graphics hardware can be found in the <a href="https://vulkan.gpuinfo.org/">Vulkan Hardware Database</a>.
    /// 
    public final func limitGet(limit: RenderingDevice.Limit) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: limit.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_limit_get, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_frame_delay: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_frame_delay")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns the frame count kept by the graphics API. Higher values result in higher input lag, but with more consistent throughput. For the main ``RenderingDevice``, frames are cycled (usually 3 with triple-buffered V-Sync enabled). However, local ``RenderingDevice``s only have 1 frame.
    public final func getFrameDelay() -> UInt32 {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt32 = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_frame_delay, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_submit: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("submit")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Pushes the frame setup and draw command buffers then marks the local device as currently processing (which allows calling ``sync()``).
    /// 
    /// > Note: Only available in local RenderingDevices.
    /// 
    public final func submit() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RenderingDevice.method_submit, handle, nil, nil)
        
    }
    
    fileprivate static let method_sync: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("sync")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Forces a synchronization between the CPU and GPU, which may be required in certain cases. Only call this when needed, as CPU-GPU synchronization has a performance cost.
    /// 
    /// > Note: Only available in local RenderingDevices.
    /// 
    /// > Note: ``sync()`` can only be called after a ``submit()``.
    /// 
    public final func sync() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RenderingDevice.method_sync, handle, nil, nil)
        
    }
    
    fileprivate static let method_barrier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("barrier")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3718155691)!
            }
            
        }
        
    }()
    
    /// This method does nothing.
    public final func barrier(from: RenderingDevice.BarrierMask = [.vertex, .fragment, .compute, .transfer, .raster, .allBarriers], to: RenderingDevice.BarrierMask = [.vertex, .fragment, .compute, .transfer, .raster, .allBarriers]) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: from.rawValue) { pArg0 in
            withUnsafePointer(to: to.rawValue) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_barrier, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_full_barrier: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("full_barrier")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// This method does nothing.
    public final func fullBarrier() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RenderingDevice.method_full_barrier, handle, nil, nil)
        
    }
    
    fileprivate static let method_create_local_device: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("create_local_device")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2846302423)!
            }
            
        }
        
    }()
    
    /// Create a new local ``RenderingDevice``. This is most useful for performing compute operations on the GPU independently from the rest of the engine.
    public final func createLocalDevice() -> RenderingDevice? {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result = GodotNativeObjectPointer(bitPattern: 0)
        gi.object_method_bind_ptrcall(RenderingDevice.method_create_local_device, handle, nil, &_result)
        guard let _result else { return nil } ; return getOrInitSwiftObject (nativeHandle: _result, ownsRef: true)
    }
    
    fileprivate static let method_set_resource_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("set_resource_name")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 2726140452)!
            }
            
        }
        
    }()
    
    /// Sets the resource name for `id` to `name`. This is used for debugging with third-party tools such as <a href="https://renderdoc.org/">RenderDoc</a>.
    /// 
    /// The following types of resources can be named: texture, sampler, vertex buffer, index buffer, uniform buffer, texture buffer, storage buffer, uniform set buffer, shader, render pipeline and compute pipeline. Framebuffers cannot be named. Attempting to name an incompatible resource type will print an error.
    /// 
    /// > Note: Resource names are only set when the engine runs in verbose mode (``OS/isStdoutVerbose()`` = `true`), or when using an engine build compiled with the `dev_mode=yes` SCons option. The graphics driver must also support the `VK_EXT_DEBUG_UTILS_EXTENSION_NAME` Vulkan extension for named resources to work.
    /// 
    public final func setResourceName(id: RID, name: String) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        withUnsafePointer(to: id.content) { pArg0 in
            let name = GString(name)
            withUnsafePointer(to: name.content) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_set_resource_name, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_command_begin_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_command_begin_label")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1636512886)!
            }
            
        }
        
    }()
    
    /// Create a command buffer debug label region that can be displayed in third-party tools such as <a href="https://renderdoc.org/">RenderDoc</a>. All regions must be ended with a ``drawCommandEndLabel()`` call. When viewed from the linear series of submissions to a single queue, calls to ``drawCommandBeginLabel(name:color:)`` and ``drawCommandEndLabel()`` must be matched and balanced.
    /// 
    /// The `VK_EXT_DEBUG_UTILS_EXTENSION_NAME` Vulkan extension must be available and enabled for command buffer debug label region to work. See also ``drawCommandEndLabel()``.
    /// 
    public final func drawCommandBeginLabel(name: String, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_command_begin_label, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_command_insert_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_command_insert_label")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 1636512886)!
            }
            
        }
        
    }()
    
    /// This method does nothing.
    public final func drawCommandInsertLabel(name: String, color: Color) {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let name = GString(name)
        withUnsafePointer(to: name.content) { pArg0 in
            withUnsafePointer(to: color) { pArg1 in
                withUnsafePointer(to: UnsafeRawPointersN2(pArg0, pArg1)) { pArgs in
                    pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 2) { pArgs in
                        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_command_insert_label, handle, pArgs, nil)
                    }
                    
                }
                
            }
            
        }
        
        
    }
    
    fileprivate static let method_draw_command_end_label: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("draw_command_end_label")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3218959716)!
            }
            
        }
        
    }()
    
    /// Ends the command buffer debug label region started by a ``drawCommandBeginLabel(name:color:)`` call.
    public final func drawCommandEndLabel() {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        gi.object_method_bind_ptrcall(RenderingDevice.method_draw_command_end_label, handle, nil, nil)
        
    }
    
    fileprivate static let method_get_device_vendor_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device_vendor_name")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the vendor of the video adapter (e.g. "NVIDIA Corporation"). Equivalent to ``RenderingServer/getVideoAdapterVendor()``. See also ``getDeviceName()``.
    public final func getDeviceVendorName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_device_vendor_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_device_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device_name")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the name of the video adapter (e.g. "GeForce GTX 1080/PCIe/SSE2"). Equivalent to ``RenderingServer/getVideoAdapterName()``. See also ``getDeviceVendorName()``.
    public final func getDeviceName() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_device_name, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_device_pipeline_cache_uuid: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device_pipeline_cache_uuid")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns the universally unique identifier for the pipeline cache. This is used to cache shader files on disk, which avoids shader recompilations on subsequent engine runs. This UUID varies depending on the graphics card model, but also the driver version. Therefore, updating graphics drivers will invalidate the shader cache.
    public final func getDevicePipelineCacheUuid() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_device_pipeline_cache_uuid, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_memory_usage: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_memory_usage")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 251690689)!
            }
            
        }
        
    }()
    
    /// Returns the memory usage in bytes corresponding to the given `type`. When using Vulkan, these statistics are calculated by <a href="https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator">Vulkan Memory Allocator</a>.
    public final func getMemoryUsage(type: RenderingDevice.MemoryType) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: type.rawValue) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_memory_usage, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_driver_resource: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_driver_resource")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 501815484)!
            }
            
        }
        
    }()
    
    /// Returns the unique identifier of the driver `resource` for the specified `rid`. Some driver resource types ignore the specified `rid` (see ``RenderingDevice/DriverResource`` descriptions). `index` is always ignored but must be specified anyway.
    public final func getDriverResource(_ resource: RenderingDevice.DriverResource, rid: RID, index: UInt) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: resource.rawValue) { pArg0 in
            withUnsafePointer(to: rid.content) { pArg1 in
                withUnsafePointer(to: index) { pArg2 in
                    withUnsafePointer(to: UnsafeRawPointersN3(pArg0, pArg1, pArg2)) { pArgs in
                        pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 3) { pArgs in
                            gi.object_method_bind_ptrcall(RenderingDevice.method_get_driver_resource, handle, pArgs, &_result)
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_perf_report: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_perf_report")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns a string with a performance report from the past frame. Updates every frame.
    public final func getPerfReport() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_perf_report, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_driver_and_device_memory_report: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_driver_and_device_memory_report")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 201670096)!
            }
            
        }
        
    }()
    
    /// Returns string report in CSV format using the following methods:
    /// 
    /// - ``getTrackedObjectName(typeIndex:)``
    /// 
    /// - ``getTrackedObjectTypeCount()``
    /// 
    /// - ``getDriverTotalMemory()``
    /// 
    /// - ``getDriverAllocationCount()``
    /// 
    /// - ``getDriverMemoryByObjectType(_:)``
    /// 
    /// - ``getDriverAllocsByObjectType(_:)``
    /// 
    /// - ``getDeviceTotalMemory()``
    /// 
    /// - ``getDeviceAllocationCount()``
    /// 
    /// - ``getDeviceMemoryByObjectType(_:)``
    /// 
    /// - ``getDeviceAllocsByObjectType(_:)``
    /// 
    /// This is only used by Vulkan in debug builds. Godot must also be started with the `--extra-gpu-memory-tracking` <a href="https://docs.godotengine.org/en//tutorials/editor/command_line_tutorial.html">command line argument</a>.
    /// 
    public final func getDriverAndDeviceMemoryReport() -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_driver_and_device_memory_report, handle, nil, &_result.content)
        return _result.description
    }
    
    fileprivate static let method_get_tracked_object_name: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tracked_object_name")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 844755477)!
            }
            
        }
        
    }()
    
    /// Returns the name of the type of object for the given `typeIndex`. This value must be in range `[0; get_tracked_object_type_count - 1]`. If ``getTrackedObjectTypeCount()`` is 0, then type argument is ignored and always returns the same string.
    /// 
    /// The return value is important because it gives meaning to the types passed to ``getDriverMemoryByObjectType(_:)``, ``getDriverAllocsByObjectType(_:)``, ``getDeviceMemoryByObjectType(_:)``, and ``getDeviceAllocsByObjectType(_:)``. Examples of strings it can return (not exhaustive):
    /// 
    /// - DEVICE_MEMORY
    /// 
    /// - PIPELINE_CACHE
    /// 
    /// - SWAPCHAIN_KHR
    /// 
    /// - COMMAND_POOL
    /// 
    /// Thus if e.g. `get_tracked_object_name(5)` returns "COMMAND_POOL", then `get_device_memory_by_object_type(5)` returns the bytes used by the GPU for command pools.
    /// 
    /// This is only used by Vulkan in debug builds. Godot must also be started with the `--extra-gpu-memory-tracking` <a href="https://docs.godotengine.org/en//tutorials/editor/command_line_tutorial.html">command line argument</a>.
    /// 
    public final func getTrackedObjectName(typeIndex: UInt32) -> String {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        let _result = GString ()
        withUnsafePointer(to: typeIndex) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_tracked_object_name, handle, pArgs, &_result.content)
                }
                
            }
            
        }
        
        return _result.description
    }
    
    fileprivate static let method_get_tracked_object_type_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_tracked_object_type_count")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns how many types of trackable objects are.
    /// 
    /// This is only used by Vulkan in debug builds. Godot must also be started with the `--extra-gpu-memory-tracking` <a href="https://docs.godotengine.org/en//tutorials/editor/command_line_tutorial.html">command line argument</a>.
    /// 
    public final func getTrackedObjectTypeCount() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_tracked_object_type_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_driver_total_memory: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_driver_total_memory")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns how much bytes the GPU driver is using for internal driver structures.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDriverTotalMemory() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_driver_total_memory, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_driver_allocation_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_driver_allocation_count")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns how many allocations the GPU driver has performed for internal driver structures.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDriverAllocationCount() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_driver_allocation_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_driver_memory_by_object_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_driver_memory_by_object_type")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Same as ``getDriverTotalMemory()`` but filtered for a given object type.
    /// 
    /// The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If ``getTrackedObjectTypeCount()`` is 0, then type argument is ignored and always returns 0.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDriverMemoryByObjectType(_ type: UInt32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_driver_memory_by_object_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_driver_allocs_by_object_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_driver_allocs_by_object_type")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Same as ``getDriverAllocationCount()`` but filtered for a given object type.
    /// 
    /// The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If ``getTrackedObjectTypeCount()`` is 0, then type argument is ignored and always returns 0.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDriverAllocsByObjectType(_ type: UInt32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_driver_allocs_by_object_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_device_total_memory: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device_total_memory")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns how much bytes the GPU is using.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDeviceTotalMemory() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_device_total_memory, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_device_allocation_count: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device_allocation_count")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 3905245786)!
            }
            
        }
        
    }()
    
    /// Returns how many allocations the GPU has performed for internal driver structures.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDeviceAllocationCount() -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        gi.object_method_bind_ptrcall(RenderingDevice.method_get_device_allocation_count, handle, nil, &_result)
        return _result
    }
    
    fileprivate static let method_get_device_memory_by_object_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device_memory_by_object_type")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Same as ``getDeviceTotalMemory()`` but filtered for a given object type.
    /// 
    /// The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If ``getTrackedObjectTypeCount()`` is 0, then type argument is ignored and always returns 0.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDeviceMemoryByObjectType(_ type: UInt32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_device_memory_by_object_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
    fileprivate static let method_get_device_allocs_by_object_type: GDExtensionMethodBindPtr = {
        var methodName = FastStringName("get_device_allocs_by_object_type")
        return withUnsafePointer(to: &RenderingDevice.godotClassName.content) { classPtr in
            withUnsafePointer(to: &methodName.content) { mnamePtr in
                gi.classdb_get_method_bind(classPtr, mnamePtr, 923996154)!
            }
            
        }
        
    }()
    
    /// Same as ``getDeviceAllocationCount()`` but filtered for a given object type.
    /// 
    /// The type argument must be in range `[0; get_tracked_object_type_count - 1]`. If ``getTrackedObjectTypeCount()`` is 0, then type argument is ignored and always returns 0.
    /// 
    /// This is only used by Vulkan in debug builds and can return 0 when this information is not tracked or unknown.
    /// 
    public final func getDeviceAllocsByObjectType(_ type: UInt32) -> UInt {
        if handle == nil { Wrapped.attemptToUseObjectFreedByGodot() }
        var _result: UInt = 0
        withUnsafePointer(to: type) { pArg0 in
            withUnsafePointer(to: UnsafeRawPointersN1(pArg0)) { pArgs in
                pArgs.withMemoryRebound(to: UnsafeRawPointer?.self, capacity: 1) { pArgs in
                    gi.object_method_bind_ptrcall(RenderingDevice.method_get_device_allocs_by_object_type, handle, pArgs, &_result)
                }
                
            }
            
        }
        
        return _result
    }
    
}

