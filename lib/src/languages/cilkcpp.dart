// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_28 = Grammar();
  final definition_30 = Grammar();
  final definition_35 = Grammar();
  final definition_41 = Grammar();
  const definition_24 =
      '\\/\\/(?:[^\\r\\n\\\\]|\\\\(?:\\r\\n?|\\n|(?![\\r\\n])))*|\\/\\*[\\s\\S]*?(?:\\*\\/|\$)';
  const definition_25 = '\'(?:\\\\(?:\\r\\n|[\\s\\S])|[^\'\\\\\\r\\n]){0,32}\'';
  const definition_26 =
      '(^[\\t ]*)#\\s*[a-z](?:[^\\r\\n\\\\/]|\\/(?!\\*)|\\/\\*(?:[^*]|\\*(?!\\/))*\\*\\/|\\\\(?:\\r\\n|[\\s\\S]))*';
  const definition_92 = '^(#\\s*include\\s*)<[^>]+>';
  const definition_33 = '"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"';
  const definition_93 = '(^#\\s*define\\s+)\\w+\\b(?!\\()';
  const definition_94 = '(^#\\s*define\\s+)\\w+\\b(?=\\()';
  const definition_88 = '^(#\\s*)[a-z]+';
  const definition_60 = '^#';
  const definition_61 = '##|\\\\(?=[\\r\\n])';
  const definition_89 = '\\S[\\s\\S]*';
  const definition_29 =
      '(\\b(?:import|module)\\s+)(?:"(?:\\\\(?:\\r\\n|[\\s\\S])|[^"\\\\\\r\\n])*"|<[^<>\\r\\n]*>|\\b(?!\\b(?:alignas|alignof|asm|auto|bool|break|case|catch|char|char16_t|char32_t|char8_t|class|co_await|co_return|co_yield|compl|concept|const|const_cast|consteval|constexpr|constinit|continue|decltype|default|delete|do|double|dynamic_cast|else|enum|explicit|export|extern|final|float|for|friend|goto|if|import|inline|int|int16_t|int32_t|int64_t|int8_t|long|module|mutable|namespace|new|noexcept|nullptr|operator|override|private|protected|public|register|reinterpret_cast|requires|return|short|signed|sizeof|static|static_assert|static_cast|struct|switch|template|this|thread_local|throw|try|typedef|typeid|typename|uint16_t|uint32_t|uint64_t|uint8_t|union|unsigned|using|virtual|void|volatile|wchar_t|while)\\b)\\w+(?:\\s*\\.\\s*\\w+)*\\b(?:\\s*:\\s*\\b(?!\\b(?:alignas|alignof|asm|auto|bool|break|case|catch|char|char16_t|char32_t|char8_t|class|co_await|co_return|co_yield|compl|concept|const|const_cast|consteval|constexpr|constinit|continue|decltype|default|delete|do|double|dynamic_cast|else|enum|explicit|export|extern|final|float|for|friend|goto|if|import|inline|int|int16_t|int32_t|int64_t|int8_t|long|module|mutable|namespace|new|noexcept|nullptr|operator|override|private|protected|public|register|reinterpret_cast|requires|return|short|signed|sizeof|static|static_assert|static_cast|struct|switch|template|this|thread_local|throw|try|typedef|typeid|typename|uint16_t|uint32_t|uint64_t|uint8_t|union|unsigned|using|virtual|void|volatile|wchar_t|while)\\b)\\w+(?:\\s*\\.\\s*\\w+)*\\b)?|:\\s*\\b(?!\\b(?:alignas|alignof|asm|auto|bool|break|case|catch|char|char16_t|char32_t|char8_t|class|co_await|co_return|co_yield|compl|concept|const|const_cast|consteval|constexpr|constinit|continue|decltype|default|delete|do|double|dynamic_cast|else|enum|explicit|export|extern|final|float|for|friend|goto|if|import|inline|int|int16_t|int32_t|int64_t|int8_t|long|module|mutable|namespace|new|noexcept|nullptr|operator|override|private|protected|public|register|reinterpret_cast|requires|return|short|signed|sizeof|static|static_assert|static_cast|struct|switch|template|this|thread_local|throw|try|typedef|typeid|typename|uint16_t|uint32_t|uint64_t|uint8_t|union|unsigned|using|virtual|void|volatile|wchar_t|while)\\b)\\w+(?:\\s*\\.\\s*\\w+)*\\b)';
  const definition_63 = '^[<"][\\s\\S]+';
  const definition_64 = ':';
  const definition_65 = '\\.';
  const definition_31 = 'R"([^()\\\\ ]{0,16})\\([\\s\\S]*?\\)\\1"';
  const definition_34 =
      '(\\b(?:class|struct)\\s+\\w+\\s*:\\s*)[^;{}"\'\\s]+(?:\\s+[^;{}"\'\\s]+)*(?=\\s*[;{])';
  const definition_40 =
      '\\b(?!operator\\b)[a-z_]\\w*\\s*<(?:[^<>]|<[^<>]*>)*>(?=\\s*\\()';
  const definition_82 = '^\\w+';
  const definition_90 = '<[\\s\\S]+';
  const definition_42 =
      '\\b(?:cl_(?:GLenum|GLint|GLuin|addressing_mode|bitfield|bool|buffer_create_type|build_status|channel_(?:order|type)|(?:u?(?:char|int|long|short)|double|float)(?:2|3|4|8|16)?|command_(?:queue(?:_info|_properties)?|type)|context(?:_info|_properties)?|device_(?:exec_capabilities|fp_config|id|info|local_mem_type|mem_cache_type|type)|(?:event|sampler)(?:_info)?|filter_mode|half|image_info|kernel(?:_info|_work_group_info)?|map_flags|mem(?:_flags|_info|_object_type)?|platform_(?:id|info)|profiling_info|program(?:_build_info|_info)?))\\b';
  const definition_44 = '\\bCL_(?:FALSE|TRUE)\\b';
  const definition_46 =
      '\\bCL_(?:A|ABGR|ADDRESS_(?:CLAMP(?:_TO_EDGE)?|MIRRORED_REPEAT|NONE|REPEAT)|ARGB|BGRA|BLOCKING|BUFFER_CREATE_TYPE_REGION|BUILD_(?:ERROR|IN_PROGRESS|NONE|PROGRAM_FAILURE|SUCCESS)|COMMAND_(?:ACQUIRE_GL_OBJECTS|BARRIER|COPY_(?:BUFFER(?:_RECT|_TO_IMAGE)?|IMAGE(?:_TO_BUFFER)?)|FILL_(?:BUFFER|IMAGE)|MAP(?:_BUFFER|_IMAGE)|MARKER|MIGRATE(?:_SVM)?_MEM_OBJECTS|NATIVE_KERNEL|NDRANGE_KERNEL|READ_(?:BUFFER(?:_RECT)?|IMAGE)|RELEASE_GL_OBJECTS|SVM_(?:FREE|MAP|MEMCPY|MEMFILL|UNMAP)|TASK|UNMAP_MEM_OBJECT|USER|WRITE_(?:BUFFER(?:_RECT)?|IMAGE))|COMPILER_NOT_AVAILABLE|COMPILE_PROGRAM_FAILURE|COMPLETE|CONTEXT_(?:DEVICES|INTEROP_USER_SYNC|NUM_DEVICES|PLATFORM|PROPERTIES|REFERENCE_COUNT)|DEPTH(?:_STENCIL)?|DEVICE_(?:ADDRESS_BITS|AFFINITY_DOMAIN_(?:L[1-4]_CACHE|NEXT_PARTITIONABLE|NUMA)|AVAILABLE|BUILT_IN_KERNELS|COMPILER_AVAILABLE|DOUBLE_FP_CONFIG|ENDIAN_LITTLE|ERROR_CORRECTION_SUPPORT|EXECUTION_CAPABILITIES|EXTENSIONS|GLOBAL_(?:MEM_(?:CACHELINE_SIZE|CACHE_SIZE|CACHE_TYPE|SIZE)|VARIABLE_PREFERRED_TOTAL_SIZE)|HOST_UNIFIED_MEMORY|IL_VERSION|IMAGE(?:2D_MAX_(?:HEIGHT|WIDTH)|3D_MAX_(?:DEPTH|HEIGHT|WIDTH)|_BASE_ADDRESS_ALIGNMENT|_MAX_ARRAY_SIZE|_MAX_BUFFER_SIZE|_PITCH_ALIGNMENT|_SUPPORT)|LINKER_AVAILABLE|LOCAL_MEM_SIZE|LOCAL_MEM_TYPE|MAX_(?:CLOCK_FREQUENCY|COMPUTE_UNITS|CONSTANT_ARGS|CONSTANT_BUFFER_SIZE|GLOBAL_VARIABLE_SIZE|MEM_ALLOC_SIZE|NUM_SUB_GROUPS|ON_DEVICE_(?:EVENTS|QUEUES)|PARAMETER_SIZE|PIPE_ARGS|READ_IMAGE_ARGS|READ_WRITE_IMAGE_ARGS|SAMPLERS|WORK_GROUP_SIZE|WORK_ITEM_DIMENSIONS|WORK_ITEM_SIZES|WRITE_IMAGE_ARGS)|MEM_BASE_ADDR_ALIGN|MIN_DATA_TYPE_ALIGN_SIZE|NAME|NATIVE_VECTOR_WIDTH_(?:CHAR|DOUBLE|FLOAT|HALF|INT|LONG|SHORT)|NOT_(?:AVAILABLE|FOUND)|OPENCL_C_VERSION|PARENT_DEVICE|PARTITION_(?:AFFINITY_DOMAIN|BY_AFFINITY_DOMAIN|BY_COUNTS|BY_COUNTS_LIST_END|EQUALLY|FAILED|MAX_SUB_DEVICES|PROPERTIES|TYPE)|PIPE_MAX_(?:ACTIVE_RESERVATIONS|PACKET_SIZE)|PLATFORM|PREFERRED_(?:GLOBAL_ATOMIC_ALIGNMENT|INTEROP_USER_SYNC|LOCAL_ATOMIC_ALIGNMENT|PLATFORM_ATOMIC_ALIGNMENT|VECTOR_WIDTH_(?:CHAR|DOUBLE|FLOAT|HALF|INT|LONG|SHORT))|PRINTF_BUFFER_SIZE|PROFILE|PROFILING_TIMER_RESOLUTION|QUEUE_(?:ON_(?:DEVICE_(?:MAX_SIZE|PREFERRED_SIZE|PROPERTIES)|HOST_PROPERTIES)|PROPERTIES)|REFERENCE_COUNT|SINGLE_FP_CONFIG|SUB_GROUP_INDEPENDENT_FORWARD_PROGRESS|SVM_(?:ATOMICS|CAPABILITIES|COARSE_GRAIN_BUFFER|FINE_GRAIN_BUFFER|FINE_GRAIN_SYSTEM)|TYPE(?:_ACCELERATOR|_ALL|_CPU|_CUSTOM|_DEFAULT|_GPU)?|VENDOR(?:_ID)?|VERSION)|DRIVER_VERSION|EVENT_(?:COMMAND_(?:EXECUTION_STATUS|QUEUE|TYPE)|CONTEXT|REFERENCE_COUNT)|EXEC_(?:KERNEL|NATIVE_KERNEL|STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST)|FILTER_(?:LINEAR|NEAREST)|FLOAT|FP_(?:CORRECTLY_ROUNDED_DIVIDE_SQRT|DENORM|FMA|INF_NAN|ROUND_TO_INF|ROUND_TO_NEAREST|ROUND_TO_ZERO|SOFT_FLOAT)|GLOBAL|HALF_FLOAT|IMAGE_(?:ARRAY_SIZE|BUFFER|DEPTH|ELEMENT_SIZE|FORMAT|FORMAT_MISMATCH|FORMAT_NOT_SUPPORTED|HEIGHT|NUM_MIP_LEVELS|NUM_SAMPLES|ROW_PITCH|SLICE_PITCH|WIDTH)|INTENSITY|INVALID_(?:ARG_INDEX|ARG_SIZE|ARG_VALUE|BINARY|BUFFER_SIZE|BUILD_OPTIONS|COMMAND_QUEUE|COMPILER_OPTIONS|CONTEXT|DEVICE|DEVICE_PARTITION_COUNT|DEVICE_QUEUE|DEVICE_TYPE|EVENT|EVENT_WAIT_LIST|GLOBAL_OFFSET|GLOBAL_WORK_SIZE|GL_OBJECT|HOST_PTR|IMAGE_DESCRIPTOR|IMAGE_FORMAT_DESCRIPTOR|IMAGE_SIZE|KERNEL|KERNEL_ARGS|KERNEL_DEFINITION|KERNEL_NAME|LINKER_OPTIONS|MEM_OBJECT|MIP_LEVEL|OPERATION|PIPE_SIZE|PLATFORM|PROGRAM|PROGRAM_EXECUTABLE|PROPERTY|QUEUE_PROPERTIES|SAMPLER|VALUE|WORK_DIMENSION|WORK_GROUP_SIZE|WORK_ITEM_SIZE)|KERNEL_(?:ARG_(?:ACCESS_(?:NONE|QUALIFIER|READ_ONLY|READ_WRITE|WRITE_ONLY)|ADDRESS_(?:CONSTANT|GLOBAL|LOCAL|PRIVATE|QUALIFIER)|INFO_NOT_AVAILABLE|NAME|TYPE_(?:CONST|NAME|NONE|PIPE|QUALIFIER|RESTRICT|VOLATILE))|ATTRIBUTES|COMPILE_NUM_SUB_GROUPS|COMPILE_WORK_GROUP_SIZE|CONTEXT|EXEC_INFO_SVM_FINE_GRAIN_SYSTEM|EXEC_INFO_SVM_PTRS|FUNCTION_NAME|GLOBAL_WORK_SIZE|LOCAL_MEM_SIZE|LOCAL_SIZE_FOR_SUB_GROUP_COUNT|MAX_NUM_SUB_GROUPS|MAX_SUB_GROUP_SIZE_FOR_NDRANGE|NUM_ARGS|PREFERRED_WORK_GROUP_SIZE_MULTIPLE|PRIVATE_MEM_SIZE|PROGRAM|REFERENCE_COUNT|SUB_GROUP_COUNT_FOR_NDRANGE|WORK_GROUP_SIZE)|LINKER_NOT_AVAILABLE|LINK_PROGRAM_FAILURE|LOCAL|LUMINANCE|MAP_(?:FAILURE|READ|WRITE|WRITE_INVALIDATE_REGION)|MEM_(?:ALLOC_HOST_PTR|ASSOCIATED_MEMOBJECT|CONTEXT|COPY_HOST_PTR|COPY_OVERLAP|FLAGS|HOST_NO_ACCESS|HOST_PTR|HOST_READ_ONLY|HOST_WRITE_ONLY|KERNEL_READ_AND_WRITE|MAP_COUNT|OBJECT_(?:ALLOCATION_FAILURE|BUFFER|IMAGE1D|IMAGE1D_ARRAY|IMAGE1D_BUFFER|IMAGE2D|IMAGE2D_ARRAY|IMAGE3D|PIPE)|OFFSET|READ_ONLY|READ_WRITE|REFERENCE_COUNT|SIZE|SVM_ATOMICS|SVM_FINE_GRAIN_BUFFER|TYPE|USES_SVM_POINTER|USE_HOST_PTR|WRITE_ONLY)|MIGRATE_MEM_OBJECT_(?:CONTENT_UNDEFINED|HOST)|MISALIGNED_SUB_BUFFER_OFFSET|NONE|NON_BLOCKING|OUT_OF_(?:HOST_MEMORY|RESOURCES)|PIPE_(?:MAX_PACKETS|PACKET_SIZE)|PLATFORM_(?:EXTENSIONS|HOST_TIMER_RESOLUTION|NAME|PROFILE|VENDOR|VERSION)|PROFILING_(?:COMMAND_(?:COMPLETE|END|QUEUED|START|SUBMIT)|INFO_NOT_AVAILABLE)|PROGRAM_(?:BINARIES|BINARY_SIZES|BINARY_TYPE(?:_COMPILED_OBJECT|_EXECUTABLE|_LIBRARY|_NONE)?|BUILD_(?:GLOBAL_VARIABLE_TOTAL_SIZE|LOG|OPTIONS|STATUS)|CONTEXT|DEVICES|IL|KERNEL_NAMES|NUM_DEVICES|NUM_KERNELS|REFERENCE_COUNT|SOURCE)|QUEUED|QUEUE_(?:CONTEXT|DEVICE|DEVICE_DEFAULT|ON_DEVICE|ON_DEVICE_DEFAULT|OUT_OF_ORDER_EXEC_MODE_ENABLE|PROFILING_ENABLE|PROPERTIES|REFERENCE_COUNT|SIZE)|R|RA|READ_(?:ONLY|WRITE)_CACHE|RG|RGB|RGBA|RGBx|RGx|RUNNING|Rx|SAMPLER_(?:ADDRESSING_MODE|CONTEXT|FILTER_MODE|LOD_MAX|LOD_MIN|MIP_FILTER_MODE|NORMALIZED_COORDS|REFERENCE_COUNT)|(?:UN)?SIGNED_INT(?:8|16|32)|SNORM_INT(?:8|16)|SUBMITTED|SUCCESS|UNORM_INT(?:8|16|24|_101010|_101010_2)|UNORM_SHORT_(?:555|565)|VERSION_(?:1_0|1_1|1_2|2_0|2_1)|sBGRA|sRGB|sRGBA|sRGBx)\\b';
  const definition_48 =
      '\\bcl(?:BuildProgram|CloneKernel|CompileProgram|Create(?:Buffer|CommandQueue(?:WithProperties)?|Context|ContextFromType|Image|Image2D|Image3D|Kernel|KernelsInProgram|Pipe|ProgramWith(?:Binary|BuiltInKernels|IL|Source)|Sampler|SamplerWithProperties|SubBuffer|SubDevices|UserEvent)|Enqueue(?:(?:Barrier|Marker)(?:WithWaitList)?|Copy(?:Buffer(?:Rect|ToImage)?|Image(?:ToBuffer)?)|(?:Fill|Map)(?:Buffer|Image)|MigrateMemObjects|NDRangeKernel|NativeKernel|(?:Read|Write)(?:Buffer(?:Rect)?|Image)|SVM(?:Free|Map|MemFill|Memcpy|MigrateMem|Unmap)|Task|UnmapMemObject|WaitForEvents)|Finish|Flush|Get(?:CommandQueueInfo|ContextInfo|Device(?:AndHostTimer|IDs|Info)|Event(?:Profiling)?Info|ExtensionFunctionAddress(?:ForPlatform)?|HostTimer|ImageInfo|Kernel(?:ArgInfo|Info|SubGroupInfo|WorkGroupInfo)|MemObjectInfo|PipeInfo|Platform(?:IDs|Info)|Program(?:Build)?Info|SamplerInfo|SupportedImageFormats)|LinkProgram|(?:Release|Retain)(?:CommandQueue|Context|Device|Event|Kernel|MemObject|Program|Sampler)|SVM(?:Alloc|Free)|Set(?:CommandQueueProperty|DefaultDeviceCommandQueue|EventCallback|Kernel|Kernel(?:Arg(?:SVMPointer)?|ExecInfo)|MemObjectDestructorCallback|UserEventStatus)|Unload(?:Platform)?Compiler|WaitForEvents)\\b';
  const definition_50 =
      '\\b(?:Buffer|BufferGL|BufferRenderGL|CommandQueue|Context|Device|DeviceCommandQueue|EnqueueArgs|Event|Image|Image1D|Image1DArray|Image1DBuffer|Image2D|Image2DArray|Image2DGL|Image3D|Image3DGL|ImageFormat|ImageGL|Kernel|KernelFunctor|LocalSpaceArg|Memory|NDRange|Pipe|Platform|Program|SVMAllocator|SVMTraitAtomic|SVMTraitCoarse|SVMTraitFine|SVMTraitReadOnly|SVMTraitReadWrite|SVMTraitWriteOnly|Sampler|UserEvent)\\b';
  const definition_15 =
      '\\b(?:alignas|alignof|asm|auto|bool|break|case|catch|char|char16_t|char32_t|char8_t|class|co_await|co_return|co_yield|compl|concept|const|const_cast|consteval|constexpr|constinit|continue|decltype|default|delete|do|double|dynamic_cast|else|enum|explicit|export|extern|final|float|for|friend|goto|if|import|inline|int|int16_t|int32_t|int64_t|int8_t|long|module|mutable|namespace|new|noexcept|nullptr|operator|override|private|protected|public|register|reinterpret_cast|requires|return|short|signed|sizeof|static|static_assert|static_cast|struct|switch|template|this|thread_local|throw|try|typedef|typeid|typename|uint16_t|uint32_t|uint64_t|uint8_t|union|unsigned|using|virtual|void|volatile|wchar_t|while)\\b';
  const definition_16 =
      '\\b(?:EOF|NULL|SEEK_CUR|SEEK_END|SEEK_SET|__DATE__|__FILE__|__LINE__|__TIMESTAMP__|__TIME__|__func__|stderr|stdin|stdout)\\b';
  const definition_18 = '\\b[a-z_]\\w*(?=\\s*\\()';
  const definition_52 =
      '(?:\\b0b[01\']+|\\b0x(?:[\\da-f\']+(?:\\.[\\da-f\']*)?|\\.[\\da-f\']+)(?:p[+-]?[\\d\']+)?|(?:\\b[\\d\']+(?:\\.[\\d\']*)?|\\B\\.[\\d\']+)(?:e[+-]?[\\d\']+)?)[ful]{0,4}';
  const definition_79 = '\\b[a-z_]\\w*\\b(?!\\s*::)';
  const definition_53 = '::';
  const definition_21 =
      '>>=?|<<=?|->|--|\\+\\+|&&|\\|\\||[?:~]|<=>|[-+*/%&|^!=<>]=?|\\b(?:and|and_eq|bitand|bitor|not|not_eq|or|or_eq|xor|xor_eq)\\b';
  const definition_22 = '[{}[\\];(),.:]';
  const definition_23 = '\\b(?:false|true)\\b';
  const definition_81 =
      '(\\b(?:class|concept|enum|struct|typename)\\s+)(?!\\b(?:alignas|alignof|asm|auto|bool|break|case|catch|char|char16_t|char32_t|char8_t|class|co_await|co_return|co_yield|compl|concept|const|const_cast|consteval|constexpr|constinit|continue|decltype|default|delete|do|double|dynamic_cast|else|enum|explicit|export|extern|final|float|for|friend|goto|if|import|inline|int|int16_t|int32_t|int64_t|int8_t|long|module|mutable|namespace|new|noexcept|nullptr|operator|override|private|protected|public|register|reinterpret_cast|requires|return|short|signed|sizeof|static|static_assert|static_cast|struct|switch|template|this|thread_local|throw|try|typedef|typeid|typename|uint16_t|uint32_t|uint64_t|uint8_t|union|unsigned|using|virtual|void|volatile|wchar_t|while)\\b)\\w+';
  const definition_37 = '\\b[A-Z]\\w*(?=\\s*::\\s*\\w+\\s*\\()';
  const definition_38 = '\\b[A-Z_]\\w*(?=\\s*::\\s*~\\w+\\s*\\()';
  const definition_39 =
      '\\b\\w+(?=\\s*<(?:[^<>]|<(?:[^<>]|<[^<>]*>)*>)*>\\s*::\\s*\\w+\\s*\\()';
  const definition_51 = '\\bcilk_(?:for|reducer|s(?:cope|pawn|ync))\\b';
  final definition_1 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_3 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    inside: definition_28,
    global: true,
  );
  final definition_84 = GrammarToken(
    pattern: RegExp(definition_92),
    lookbehind: true,
  );
  final definition_85 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    global: true,
  );
  final definition_56 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_57 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_86 = GrammarToken(
    pattern: RegExp(definition_93, caseSensitive: false),
    lookbehind: true,
  );
  final definition_87 = GrammarToken(
    pattern: RegExp(definition_94, caseSensitive: false),
    lookbehind: true,
    aliases: ['function'],
  );
  final definition_59 = GrammarToken(
    pattern: RegExp(definition_88),
    lookbehind: true,
    aliases: ['keyword'],
  );
  final definition_62 = GrammarToken(
    pattern: RegExp(definition_89),
    inside: definition_0,
  );
  final definition_4 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    greedy: true,
    inside: definition_30,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_31),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    global: true,
  );
  final definition_7 = GrammarToken(
    pattern: RegExp(definition_34),
    lookbehind: true,
    greedy: true,
    inside: definition_35,
    global: true,
  );
  final definition_66 = GrammarToken(
    pattern: RegExp(definition_24),
    greedy: true,
    global: true,
  );
  final definition_67 = GrammarToken(
    pattern: RegExp(definition_25),
    greedy: true,
    global: true,
  );
  final definition_68 = GrammarToken(
    pattern: RegExp(definition_26, caseSensitive: false, multiLine: true),
    lookbehind: true,
    greedy: true,
    aliases: ['property'],
    inside: definition_28,
    global: true,
  );
  final definition_69 = GrammarToken(
    pattern: RegExp(definition_29),
    lookbehind: true,
    greedy: true,
    inside: definition_30,
    global: true,
  );
  final definition_70 = GrammarToken(
    pattern: RegExp(definition_31),
    greedy: true,
    aliases: ['string'],
    global: true,
  );
  final definition_71 = GrammarToken(
    pattern: RegExp(definition_33),
    greedy: true,
    global: true,
  );
  final definition_72 = GrammarToken(
    pattern: RegExp(definition_40, caseSensitive: false),
    inside: definition_41,
  );
  final definition_83 = GrammarToken(
    pattern: RegExp(definition_90),
    aliases: ['class-name'],
    inside: definition_0,
  );
  final definition_73 = GrammarToken(
    pattern: RegExp(definition_42),
    aliases: ['keyword'],
  );
  final definition_74 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['boolean'],
  );
  final definition_75 = GrammarToken(
    pattern: RegExp(definition_46),
    aliases: ['constant'],
  );
  final definition_76 = GrammarToken(
    pattern: RegExp(definition_48),
    aliases: ['function'],
  );
  final definition_77 = GrammarToken(
    pattern: RegExp(definition_50),
    aliases: ['keyword'],
  );
  final definition_78 = GrammarToken(
    pattern: RegExp(definition_52, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_80 = GrammarToken(
    pattern: RegExp(definition_53),
    aliases: ['punctuation'],
  );
  final definition_36 = GrammarToken(
    pattern: RegExp(definition_81),
    lookbehind: true,
  );
  final definition_9 = GrammarToken(
    pattern: RegExp(definition_40, caseSensitive: false),
    inside: definition_41,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_42),
    aliases: ['keyword'],
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_44),
    aliases: ['boolean'],
  );
  final definition_12 = GrammarToken(
    pattern: RegExp(definition_46),
    aliases: ['constant'],
  );
  final definition_13 = GrammarToken(
    pattern: RegExp(definition_48),
    aliases: ['function'],
  );
  final definition_14 = GrammarToken(
    pattern: RegExp(definition_50),
    aliases: ['keyword'],
  );
  final definition_17 = GrammarToken(
    pattern: RegExp(definition_51),
    aliases: ['keyword'],
  );
  final definition_19 = GrammarToken(
    pattern: RegExp(definition_52, caseSensitive: false),
    greedy: true,
    global: true,
  );
  final definition_20 = GrammarToken(
    pattern: RegExp(definition_53),
    aliases: ['punctuation'],
  );
  definition_28.addAllTokens({
    'string': [
      definition_84,
      definition_85,
    ],
    'char': [definition_56],
    'comment': [definition_57],
    'macro-name': [
      definition_86,
      definition_87,
    ],
    'directive': [definition_59],
    'directive-hash': [GrammarToken(pattern: RegExp(definition_60))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_61))],
    'expression': [definition_62],
  });
  definition_30.addAllTokens({
    'string': [GrammarToken(pattern: RegExp(definition_63))],
    'operator': [GrammarToken(pattern: RegExp(definition_64))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_65))],
  });
  definition_41.addAllTokens({
    'function': [GrammarToken(pattern: RegExp(definition_82))],
    'generic': [definition_83],
  });
  definition_35.addAllTokens({
    'comment': [definition_66],
    'char': [definition_67],
    'macro': [definition_68],
    'module': [definition_69],
    'raw-string': [definition_70],
    'string': [definition_71],
    'generic-function': [definition_72],
    'type-opencl-host': [definition_73],
    'boolean-opencl-host': [definition_74],
    'constant-opencl-host': [definition_75],
    'function-opencl-host': [definition_76],
    'type-opencl-host-cpp': [definition_77],
    'keyword': [GrammarToken(pattern: RegExp(definition_15))],
    'constant': [GrammarToken(pattern: RegExp(definition_16))],
    'function': [
      GrammarToken(pattern: RegExp(definition_18, caseSensitive: false))
    ],
    'number': [definition_78],
    'class-name': [
      GrammarToken(pattern: RegExp(definition_79, caseSensitive: false))
    ],
    'double-colon': [definition_80],
    'operator': [GrammarToken(pattern: RegExp(definition_21))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
    'boolean': [GrammarToken(pattern: RegExp(definition_23))],
  });
  definition_0.addAllTokens({
    'comment': [definition_1],
    'char': [definition_2],
    'macro': [definition_3],
    'module': [definition_4],
    'raw-string': [definition_5],
    'string': [definition_6],
    'base-clause': [definition_7],
    'class-name': [
      definition_36,
      GrammarToken(pattern: RegExp(definition_37)),
      GrammarToken(pattern: RegExp(definition_38, caseSensitive: false)),
      GrammarToken(pattern: RegExp(definition_39)),
    ],
    'generic-function': [definition_9],
    'type-opencl-host': [definition_10],
    'boolean-opencl-host': [definition_11],
    'constant-opencl-host': [definition_12],
    'function-opencl-host': [definition_13],
    'type-opencl-host-cpp': [definition_14],
    'keyword': [GrammarToken(pattern: RegExp(definition_15))],
    'constant': [GrammarToken(pattern: RegExp(definition_16))],
    'parallel-keyword': [definition_17],
    'function': [
      GrammarToken(pattern: RegExp(definition_18, caseSensitive: false))
    ],
    'number': [definition_19],
    'double-colon': [definition_20],
    'operator': [GrammarToken(pattern: RegExp(definition_21))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_22))],
    'boolean': [GrammarToken(pattern: RegExp(definition_23))],
  });

  return LanguageProto(
    'cilkcpp',
    definition_0,
    aliases: ['cilk-cpp', 'cilk'],
    requiredDependencies: ['cpp', 'c', 'clike'],
  );
}

final languageCilkcpp = _create();
