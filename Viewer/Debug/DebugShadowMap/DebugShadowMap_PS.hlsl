#include "DebugShadowMap_RS.hlsli"

struct VertexOut
{
    float4 position  : SV_Position;
    float2 texcoord0 : TexCoord0;
};

Texture2D    ShadowMap         : register(t0);
SamplerState LinearWrapSampler : register(s0);

[RootSignature(DebugShadowMap_RootSignature)]
float4 main(VertexOut vsOutput) : SV_Target0
{
    return float4(ShadowMap.Sample(LinearWrapSampler, vsOutput.texcoord0).rrr, 1.0f);
}