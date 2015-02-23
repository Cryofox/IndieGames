// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:0,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:32603,y:32733|normal-18-RGB,custl-229-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33871,y:33926,ptlb:diffuse,ptin:_diffuse,tex:479be0992cdeca04cbb7eb6f7c8d5237,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:18,x:32932,y:32651,ptlb:Normal_Tex,ptin:_Normal_Tex,tex:eb6543fb4c88d3f4f99fbd7c4a8a4374,ntxv:3,isnm:False;n:type:ShaderForge.SFN_LightAttenuation,id:227,x:33082,y:33158;n:type:ShaderForge.SFN_LightColor,id:228,x:33082,y:33045;n:type:ShaderForge.SFN_Multiply,id:229,x:32878,y:33158|A-228-RGB,B-227-OUT,C-245-OUT;n:type:ShaderForge.SFN_LightVector,id:241,x:34106,y:33943;n:type:ShaderForge.SFN_NormalVector,id:242,x:34106,y:34198,pt:True;n:type:ShaderForge.SFN_Dot,id:243,x:33807,y:34105,dt:1|A-241-OUT,B-242-OUT;n:type:ShaderForge.SFN_Multiply,id:245,x:33507,y:33930|A-2-RGB,B-243-OUT;n:type:ShaderForge.SFN_HalfVector,id:279,x:34106,y:34350;n:type:ShaderForge.SFN_Dot,id:281,x:33807,y:34260,dt:1|A-242-OUT,B-279-OUT;n:type:ShaderForge.SFN_Power,id:290,x:33557,y:34260|VAL-281-OUT,EXP-316-OUT;n:type:ShaderForge.SFN_Add,id:292,x:33127,y:34016|A-245-OUT,B-306-OUT;n:type:ShaderForge.SFN_Slider,id:299,x:33959,y:34582,ptlb:Glossyness,ptin:_Glossyness,min:1,cur:7.160231,max:11;n:type:ShaderForge.SFN_Multiply,id:306,x:33277,y:34250|A-290-OUT,B-309-OUT;n:type:ShaderForge.SFN_Slider,id:309,x:33198,y:34463,ptlb:Specular,ptin:_Specular,min:0,cur:0.7040264,max:4;n:type:ShaderForge.SFN_Exp,id:316,x:33744,y:34530,et:1|IN-299-OUT;n:type:ShaderForge.SFN_AmbientLight,id:329,x:33532,y:33001;n:type:ShaderForge.SFN_Multiply,id:331,x:33264,y:33045|A-329-RGB,B-2-RGB;n:type:ShaderForge.SFN_ViewPosition,id:342,x:34107,y:33169;n:type:ShaderForge.SFN_Fresnel,id:343,x:33844,y:33499|EXP-371-RFAR;n:type:ShaderForge.SFN_Power,id:344,x:33641,y:33499|VAL-343-OUT,EXP-345-OUT;n:type:ShaderForge.SFN_Slider,id:345,x:33844,y:33689,ptlb:Rim_Lighting,ptin:_Rim_Lighting,min:0,cur:75.35897,max:100;n:type:ShaderForge.SFN_ProjectionParameters,id:371,x:33884,y:33057;proporder:2-18-299-309-345;pass:END;sub:END;*/

Shader "Shader Forge/planet_Shader" {
    Properties {
        _diffuse ("diffuse", 2D) = "white" {}
        _Normal_Tex ("Normal_Tex", 2D) = "bump" {}
        _Glossyness ("Glossyness", Range(1, 11)) = 7.160231
        _Specular ("Specular", Range(0, 4)) = 0.7040264
        _Rim_Lighting ("Rim_Lighting", Range(0, 100)) = 75.35897
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
            uniform sampler2D _diffuse; uniform float4 _diffuse_ST;
            uniform sampler2D _Normal_Tex; uniform float4 _Normal_Tex_ST;
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
/////// Normals:
                float2 node_430 = i.uv0;
                float3 normalLocal = tex2D(_Normal_Tex,TRANSFORM_TEX(node_430.rg, _Normal_Tex)).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = 1;
                float4 node_2 = tex2D(_diffuse,TRANSFORM_TEX(node_430.rg, _diffuse));
                float3 node_242 = normalDirection;
                float3 node_245 = (node_2.rgb*max(0,dot(lightDirection,node_242)));
                float3 finalColor = (_LightColor0.rgb*attenuation*node_245);
/// Final Color:
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _diffuse; uniform float4 _diffuse_ST;
            uniform sampler2D _Normal_Tex; uniform float4 _Normal_Tex_ST;
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
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Normals:
                float2 node_431 = i.uv0;
                float3 normalLocal = tex2D(_Normal_Tex,TRANSFORM_TEX(node_431.rg, _Normal_Tex)).rgb;
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_2 = tex2D(_diffuse,TRANSFORM_TEX(node_431.rg, _diffuse));
                float3 node_242 = normalDirection;
                float3 node_245 = (node_2.rgb*max(0,dot(lightDirection,node_242)));
                float3 finalColor = (_LightColor0.rgb*attenuation*node_245);
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
