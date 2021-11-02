#define DebugShadowMap_RootSignature                                                      \
    "RootFlags(0), "                                                                      \
    "DescriptorTable(SRV(t0, numDescriptors = 1), visibility = SHADER_VISIBILITY_PIXEL)," \
    "StaticSampler"                                                                       \
        "("                                                                               \
        "s0,"                                                                             \
        "addressU = TEXTURE_ADDRESS_WRAP,"                                                \
        "addressV = TEXTURE_ADDRESS_WRAP,"                                                \
        "addressW = TEXTURE_ADDRESS_WRAP,"                                                \
        "filter   = FILTER_ANISOTROPIC"                                                   \
        ")"                                         