//
// Copyright (c) Microsoft. All rights reserved.
// This code is licensed under the MIT License (MIT).
// THIS CODE IS PROVIDED *AS IS* WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING ANY
// IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR
// PURPOSE, MERCHANTABILITY, OR NON-INFRINGEMENT.
//
#include "SSAORS.hlsli"

Texture2D<float> SsaoBuffer  : register( t0 );
RWTexture2D<float3> OutColor : register( u0 );

[RootSignature(SSAO_RootSig)]
[numthreads( 8, 8, 1 )]
// 240, 135
void main( uint3 DTid : SV_DispatchThreadID )
{
    OutColor[DTid.xy] = SsaoBuffer[DTid.xy].xxx;
}
