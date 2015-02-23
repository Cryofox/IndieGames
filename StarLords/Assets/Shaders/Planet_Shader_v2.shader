// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:0,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32489,y:32726|diff-361-OUT,spec-43-OUT,gloss-70-OUT,normal-29-RGB,emission-778-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33242,y:32432,ptlb:Default_Tex,ptin:_Default_Tex,tex:479be0992cdeca04cbb7eb6f7c8d5237,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8,x:32654,y:33284,ptlb:Em_CityLights,ptin:_Em_CityLights,tex:39e513f811617b446ad706fd6dfc8f4e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:29,x:33023,y:32762,ptlb:Bump,ptin:_Bump,tex:eb6543fb4c88d3f4f99fbd7c4a8a4374,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:35,x:33416,y:32588,ptlb:Specular,ptin:_Specular,tex:72c8939c6fb974746b18901094a80077,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:41,x:33542,y:32925,ptlb:Specular_PWR,ptin:_Specular_PWR,min:0,cur:0.7854286,max:10;n:type:ShaderForge.SFN_Exp,id:42,x:33336,y:32761,et:0|IN-41-OUT;n:type:ShaderForge.SFN_Multiply,id:43,x:33167,y:32644|A-35-RGB,B-42-OUT;n:type:ShaderForge.SFN_Slider,id:70,x:33542,y:33022,ptlb:Gloss_PWR,ptin:_Gloss_PWR,min:0,cur:0.8212286,max:1;n:type:ShaderForge.SFN_Fresnel,id:80,x:33653,y:33586;n:type:ShaderForge.SFN_Tex2d,id:159,x:33262,y:31960,ptlb:node_159,ptin:_node_159,tex:807f3bbcb07293145966f9e627b5fc0b,ntxv:0,isnm:False|UVIN-354-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:226,x:34343,y:31809,ptlb:Cloud Speed,ptin:_CloudSpeed,glob:False,v1:0.1;n:type:ShaderForge.SFN_Time,id:298,x:34354,y:31920;n:type:ShaderForge.SFN_Panner,id:300,x:33985,y:31807,spu:1,spv:0|UVIN-338-UVOUT,DIST-321-OUT;n:type:ShaderForge.SFN_Multiply,id:321,x:34139,y:31982|A-226-OUT,B-298-TSL;n:type:ShaderForge.SFN_TexCoord,id:338,x:34167,y:31642,uv:0;n:type:ShaderForge.SFN_Parallax,id:354,x:33536,y:32102|UVIN-300-UVOUT,HEI-355-OUT;n:type:ShaderForge.SFN_Slider,id:355,x:33794,y:32153,ptlb:Cloud_Depth,ptin:_Cloud_Depth,min:0,cur:1.651204,max:2;n:type:ShaderForge.SFN_Add,id:361,x:32757,y:32211|A-367-OUT,B-452-OUT;n:type:ShaderForge.SFN_Multiply,id:367,x:32960,y:32094|A-159-RGB,B-368-OUT;n:type:ShaderForge.SFN_Slider,id:368,x:33217,y:32244,ptlb:Cloud_Intensity,ptin:_Cloud_Intensity,min:0,cur:0.1533443,max:1;n:type:ShaderForge.SFN_Multiply,id:452,x:32905,y:32428|A-453-RGB,B-2-RGB;n:type:ShaderForge.SFN_Color,id:453,x:33076,y:32294,ptlb:node_453,ptin:_node_453,glob:False,c1:0.6764706,c2:0.6920892,c3:1,c4:1;n:type:ShaderForge.SFN_ViewVector,id:565,x:33682,y:34050;n:type:ShaderForge.SFN_Power,id:572,x:32908,y:34024|VAL-619-OUT,EXP-573-OUT;n:type:ShaderForge.SFN_Slider,id:573,x:33156,y:33247,ptlb:Rim_Power,ptin:_Rim_Power,min:0.1,cur:2.911753,max:3;n:type:ShaderForge.SFN_Dot,id:606,x:33468,y:34127,dt:0|A-565-OUT,B-644-OUT;n:type:ShaderForge.SFN_Subtract,id:619,x:33122,y:34024|A-728-OUT,B-710-OUT;n:type:ShaderForge.SFN_NormalVector,id:644,x:33682,y:34174,pt:True;n:type:ShaderForge.SFN_Clamp01,id:710,x:33296,y:34127|IN-606-OUT;n:type:ShaderForge.SFN_Vector1,id:728,x:33284,y:34024,v1:1;n:type:ShaderForge.SFN_Power,id:778,x:33109,y:33538|VAL-80-OUT,EXP-573-OUT;n:type:ShaderForge.SFN_Subtract,id:780,x:33667,y:33303|A-782-OUT,B-80-OUT;n:type:ShaderForge.SFN_Vector1,id:782,x:33996,y:33365,v1:1;proporder:2-8-29-35-41-70-159-226-355-368-453-573;pass:END;sub:END;*/

Shader "Shader Forge/Planet_Shader_v2" {
    Properties {
        _Default_Tex ("Default_Tex", 2D) = "white" {}
        _Em_CityLights ("Em_CityLights", 2D) = "white" {}
        _Bump ("Bump", 2D) = "white" {}
        _Specular ("Specular", 2D) = "white" {}
        _Specular_PWR ("Specular_PWR", Range(0, 10)) = 0.7854286
        _Gloss_PWR ("Gloss_PWR", Range(0, 1)) = 0.8212286
        _node_159 ("node_159", 2D) = "white" {}
        _CloudSpeed ("Cloud Speed", Float ) = 0.1
        _Cloud_Depth ("Cloud_Depth", Range(0, 2)) = 1.651204
        _Cloud_Intensity ("Cloud_Intensity", Range(0, 1)) = 0.1533443
        _node_453 ("node_453", Color) = (0.6764706,0.6920892,1,1)
        _Rim_Power ("Rim_Power", Range(0.1, 3)) = 2.911753
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Default_Tex; uniform float4 _Default_Tex_ST;
            uniform sampler2D _Bump; uniform float4 _Bump_ST;
            uniform sampler2D _Specular; uniform float4 _Specular_ST;
            uniform float _Specular_PWR;
            uniform float _Gloss_PWR;
            uniform sampler2D _node_159; uniform float4 _node_159_ST;
            uniform float _CloudSpeed;
            uniform float _Cloud_Depth;
            uniform float _Cloud_Intensity;
            uniform float4 _node_453;
            uniform float _Rim_Power;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_792 = i.uv0;
                float3 normalLocal = tex2D(_Bump,TRANSFORM_TEX(node_792.rg, _Bump)).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
////// Emissive:
                float node_80 = (1.0-max(0,dot(normalDirection, viewDirection)));
                float node_778 = pow(node_80,_Rim_Power);
                float3 emissive = float3(node_778,node_778,node_778);
///////// Gloss:
                float gloss = _Gloss_PWR;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                NdotL = max(0.0, NdotL);
                float3 specularColor = (tex2D(_Specular,TRANSFORM_TEX(node_792.rg, _Specular)).rgb*exp(_Specular_PWR));
                float3 specular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow) * specularColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float4 node_298 = _Time + _TimeEditor;
                float2 node_354 = (0.05*(_Cloud_Depth - 0.5)*mul(tangentTransform, viewDirection).xy + (i.uv0.rg+(_CloudSpeed*node_298.r)*float2(1,0)));
                finalColor += diffuseLight * ((tex2D(_node_159,TRANSFORM_TEX(node_354.rg, _node_159)).rgb*_Cloud_Intensity)+(_node_453.rgb*tex2D(_Default_Tex,TRANSFORM_TEX(node_792.rg, _Default_Tex)).rgb));
                finalColor += specular;
                finalColor += emissive;
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
