/*
#define Debug_RootSignature                         \
    "RootFlags(0), "                                \
    "DescriptorTable(UAV(u0, numDescriptors = 1))," \
    "DescriptorTable(SRV(t0, numDescriptors = 1))," \
    "StaticSampler(s0,"                             \
        "addressU = TEXTURE_ADDRESS_CLAMP,"         \
        "addressV = TEXTURE_ADDRESS_CLAMP,"         \
        "addressW = TEXTURE_ADDRESS_CLAMP,"         \
        "filter = FILTER_MIN_MAG_MIP_LINEAR),"      \
    "StaticSampler(s1,"                             \
        "addressU = TEXTURE_ADDRESS_BORDER,"        \
        "addressV = TEXTURE_ADDRESS_BORDER,"        \
        "addressW = TEXTURE_ADDRESS_BORDER,"        \
        "borderColor = STATIC_BORDER_COLOR_TRANSPARENT_BLACK," \
        "filter = FILTER_MIN_MAG_MIP_LINEAR)"
*/

#define Debug_RootSignature                         \
    "RootFlags(0), "                                \
    "DescriptorTable(UAV(u0), SRV(t0)), "           \
    "StaticSampler(s0,"                             \
        "addressU = TEXTURE_ADDRESS_CLAMP,"         \
        "addressV = TEXTURE_ADDRESS_CLAMP,"         \
        "addressW = TEXTURE_ADDRESS_CLAMP,"         \
        "filter = FILTER_MIN_MAG_MIP_LINEAR),"      \
    "StaticSampler(s1,"                             \
        "addressU = TEXTURE_ADDRESS_BORDER,"        \
        "addressV = TEXTURE_ADDRESS_BORDER,"        \
        "addressW = TEXTURE_ADDRESS_BORDER,"        \
        "borderColor = STATIC_BORDER_COLOR_TRANSPARENT_BLACK," \
        "filter = FILTER_MIN_MAG_MIP_LINEAR)"