// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:2,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:31091,y:32359|diff-75-OUT,emission-940-OUT,clip-385-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33173,y:32689,ptlb:Clip_Texture,ptin:_Clip_Texture,tex:eb98e587e32e91144b7ca36e2ccfc06c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:4,x:32881,y:32840|A-2-A,B-117-OUT;n:type:ShaderForge.SFN_Multiply,id:10,x:32704,y:32881|A-4-OUT,B-117-OUT;n:type:ShaderForge.SFN_Color,id:49,x:33139,y:31939,ptlb:ConstructionColor,ptin:_ConstructionColor,glob:False,c1:0,c2:0.01156185,c3:0.04411763,c4:1;n:type:ShaderForge.SFN_Tex2d,id:58,x:33139,y:32260,ptlb:ObjectTexture,ptin:_ObjectTexture,tex:b0b8aaeb0301f6a4f841b8119cef70b6,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:60,x:32927,y:32260|A-58-RGB,B-137-OUT;n:type:ShaderForge.SFN_Multiply,id:70,x:32667,y:31987|A-49-RGB,B-71-OUT;n:type:ShaderForge.SFN_Subtract,id:71,x:33139,y:32081|A-308-OUT,B-137-OUT;n:type:ShaderForge.SFN_Add,id:75,x:31747,y:31900|A-70-OUT,B-60-OUT;n:type:ShaderForge.SFN_Slider,id:84,x:33959,y:32911,ptlb:Construction_Progress,ptin:_Construction_Progress,min:0.29,cur:0.3933039,max:1;n:type:ShaderForge.SFN_Clamp,id:105,x:33559,y:32902|IN-84-OUT,MIN-106-OUT,MAX-108-OUT;n:type:ShaderForge.SFN_Vector1,id:106,x:33941,y:32647,v1:0;n:type:ShaderForge.SFN_Vector1,id:108,x:33941,y:32698,v1:0.5;n:type:ShaderForge.SFN_Clamp,id:110,x:33783,y:32380|IN-84-OUT,MIN-112-OUT,MAX-114-OUT;n:type:ShaderForge.SFN_Vector1,id:112,x:33955,y:32401,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:114,x:33955,y:32467,v1:1;n:type:ShaderForge.SFN_Multiply,id:117,x:33152,y:32900|A-105-OUT,B-119-OUT;n:type:ShaderForge.SFN_Vector1,id:119,x:33559,y:33045,v1:2;n:type:ShaderForge.SFN_Subtract,id:133,x:33512,y:32371|A-110-OUT,B-135-OUT;n:type:ShaderForge.SFN_Vector1,id:135,x:33659,y:32453,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:137,x:33338,y:32371|A-133-OUT,B-119-OUT;n:type:ShaderForge.SFN_Vector1,id:308,x:33474,y:32047,v1:1;n:type:ShaderForge.SFN_Add,id:381,x:32466,y:32794|A-516-OUT,B-10-OUT;n:type:ShaderForge.SFN_Power,id:383,x:32278,y:32861|VAL-381-OUT,EXP-384-OUT;n:type:ShaderForge.SFN_Vector1,id:384,x:32466,y:32985,v1:100;n:type:ShaderForge.SFN_ConstantClamp,id:385,x:32113,y:32861,min:0,max:1|IN-383-OUT;n:type:ShaderForge.SFN_Vector1,id:516,x:32704,y:32794,v1:0.25;n:type:ShaderForge.SFN_Add,id:894,x:32912,y:33168|A-2-A,B-912-OUT;n:type:ShaderForge.SFN_Multiply,id:896,x:32702,y:33168|A-894-OUT,B-912-OUT;n:type:ShaderForge.SFN_Add,id:898,x:32464,y:33148|A-906-OUT,B-896-OUT;n:type:ShaderForge.SFN_Power,id:900,x:32276,y:33148|VAL-898-OUT,EXP-902-OUT;n:type:ShaderForge.SFN_Vector1,id:902,x:32464,y:33272,v1:100;n:type:ShaderForge.SFN_ConstantClamp,id:904,x:32111,y:33148,min:0,max:1|IN-900-OUT;n:type:ShaderForge.SFN_Vector1,id:906,x:32702,y:33081,v1:0.25;n:type:ShaderForge.SFN_Subtract,id:907,x:33302,y:33188|A-117-OUT,B-908-OUT;n:type:ShaderForge.SFN_Vector1,id:908,x:33545,y:33210,v1:0.02;n:type:ShaderForge.SFN_Subtract,id:909,x:31855,y:33009|A-385-OUT,B-904-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:912,x:33128,y:33188,min:0,max:1|IN-907-OUT;n:type:ShaderForge.SFN_Multiply,id:914,x:31788,y:32470|A-1148-OUT,B-909-OUT;n:type:ShaderForge.SFN_OneMinus,id:938,x:32016,y:32312|IN-909-OUT;n:type:ShaderForge.SFN_Multiply,id:939,x:31788,y:32312|A-70-OUT,B-938-OUT;n:type:ShaderForge.SFN_Add,id:940,x:31565,y:32312|A-939-OUT,B-914-OUT;n:type:ShaderForge.SFN_Multiply,id:1138,x:32459,y:32391|A-49-RGB,B-1139-OUT;n:type:ShaderForge.SFN_Vector1,id:1139,x:32709,y:32391,v1:100;n:type:ShaderForge.SFN_Clamp01,id:1148,x:32043,y:32470|IN-1138-OUT;proporder:2-49-58-84;pass:END;sub:END;*/

Shader "Custom/ConstructionShader" {
    Properties {
        _Clip_Texture ("Clip_Texture", 2D) = "white" {}
        _ConstructionColor ("ConstructionColor", Color) = (0,0.01156185,0.04411763,1)
        _ObjectTexture ("ObjectTexture", 2D) = "white" {}
        _Construction_Progress ("Construction_Progress", Range(0.29, 1)) = 0.3933039
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Clip_Texture; uniform float4 _Clip_Texture_ST;
            uniform float4 _ConstructionColor;
            uniform sampler2D _ObjectTexture; uniform float4 _ObjectTexture_ST;
            uniform float _Construction_Progress;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float2 node_1160 = i.uv0;
                float4 node_2 = tex2D(_Clip_Texture,TRANSFORM_TEX(node_1160.rg, _Clip_Texture));
                float node_119 = 2.0;
                float node_117 = (clamp(_Construction_Progress,0.0,0.5)*node_119);
                float node_385 = clamp(pow((0.25+((node_2.a+node_117)*node_117)),100.0),0,1);
                clip(node_385 - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
////// Emissive:
                float node_137 = ((clamp(_Construction_Progress,0.5,1.0)-0.5)*node_119);
                float3 node_70 = (_ConstructionColor.rgb*(1.0-node_137));
                float node_912 = clamp((node_117-0.02),0,1);
                float node_909 = (node_385-clamp(pow((0.25+((node_2.a+node_912)*node_912)),100.0),0,1));
                float3 emissive = ((node_70*(1.0 - node_909))+(saturate((_ConstructionColor.rgb*100.0))*node_909));
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (node_70+(tex2D(_ObjectTexture,TRANSFORM_TEX(node_1160.rg, _ObjectTexture)).rgb*node_137));
                finalColor += emissive;
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
            Cull Off
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Clip_Texture; uniform float4 _Clip_Texture_ST;
            uniform float4 _ConstructionColor;
            uniform sampler2D _ObjectTexture; uniform float4 _ObjectTexture_ST;
            uniform float _Construction_Progress;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(float4(v.normal,0), _World2Object).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float3 normalDirection =  i.normalDir;
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
                float2 node_1161 = i.uv0;
                float4 node_2 = tex2D(_Clip_Texture,TRANSFORM_TEX(node_1161.rg, _Clip_Texture));
                float node_119 = 2.0;
                float node_117 = (clamp(_Construction_Progress,0.0,0.5)*node_119);
                float node_385 = clamp(pow((0.25+((node_2.a+node_117)*node_117)),100.0),0,1);
                clip(node_385 - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                float node_137 = ((clamp(_Construction_Progress,0.5,1.0)-0.5)*node_119);
                float3 node_70 = (_ConstructionColor.rgb*(1.0-node_137));
                finalColor += diffuseLight * (node_70+(tex2D(_ObjectTexture,TRANSFORM_TEX(node_1161.rg, _ObjectTexture)).rgb*node_137));
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCollector"
            Tags {
                "LightMode"="ShadowCollector"
            }
            Cull Off
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCOLLECTOR
            #define SHADOW_COLLECTOR_PASS
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcollector
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _Clip_Texture; uniform float4 _Clip_Texture_ST;
            uniform float _Construction_Progress;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_COLLECTOR;
                float2 uv0 : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_COLLECTOR(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float2 node_1162 = i.uv0;
                float4 node_2 = tex2D(_Clip_Texture,TRANSFORM_TEX(node_1162.rg, _Clip_Texture));
                float node_119 = 2.0;
                float node_117 = (clamp(_Construction_Progress,0.0,0.5)*node_119);
                float node_385 = clamp(pow((0.25+((node_2.a+node_117)*node_117)),100.0),0,1);
                clip(node_385 - 0.5);
                SHADOW_COLLECTOR_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Cull Off
            Offset 1, 1
            
            Fog {Mode Off}
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _Clip_Texture; uniform float4 _Clip_Texture_ST;
            uniform float _Construction_Progress;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o;
                o.uv0 = v.texcoord0;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                float2 node_1163 = i.uv0;
                float4 node_2 = tex2D(_Clip_Texture,TRANSFORM_TEX(node_1163.rg, _Clip_Texture));
                float node_119 = 2.0;
                float node_117 = (clamp(_Construction_Progress,0.0,0.5)*node_119);
                float node_385 = clamp(pow((0.25+((node_2.a+node_117)*node_117)),100.0),0,1);
                clip(node_385 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
