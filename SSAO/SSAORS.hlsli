#define SSAO_RootSig                                           \
    "RootFlags(0), "                                           \
    "RootConstants(b0, num32BitConstants = 4), "               \
    "CBV(b1), "                                                \
    "DescriptorTable(UAV(u0, numDescriptors = 5)),"            \
    "DescriptorTable(SRV(t0, numDescriptors = 5)),"            \
    "StaticSampler(s0,"                                        \
        "addressU = TEXTURE_ADDRESS_CLAMP,"                    \
        "addressV = TEXTURE_ADDRESS_CLAMP,"                    \
        "addressW = TEXTURE_ADDRESS_CLAMP,"                    \
        "filter = FILTER_MIN_MAG_MIP_LINEAR),"                 \
    "StaticSampler(s1,"                                        \
        "addressU = TEXTURE_ADDRESS_BORDER,"                   \
        "addressV = TEXTURE_ADDRESS_BORDER,"                   \
        "addressW = TEXTURE_ADDRESS_BORDER,"                   \
        "borderColor = STATIC_BORDER_COLOR_TRANSPARENT_BLACK," \
        "filter = FILTER_MIN_MAG_MIP_LINEAR)"