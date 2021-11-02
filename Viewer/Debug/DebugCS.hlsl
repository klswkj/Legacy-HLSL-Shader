#include "DebugRS.hlsli"

Texture2D<float3> TargetBuffer : register(t0);
RWTexture2D<float3> OutColor : register(u0);

[RootSignature(Debug_RootSignature)]
[numthreads(8, 8, 1)]
// 240, 135
void main(uint3 DTid : SV_DispatchThreadID)
{
    OutColor[DTid.xy] = TargetBuffer[DTid.xy].xyz;
}
