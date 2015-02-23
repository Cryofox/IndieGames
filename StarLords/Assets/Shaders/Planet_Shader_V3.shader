// Shader created with Shader Forge Beta 0.36 
// Shader Forge (c) Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:0.36;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:0,culm:0,dpts:2,wrdp:True,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:31997,y:32796|diff-49-OUT,normal-132-OUT,emission-38-OUT;n:type:ShaderForge.SFN_Fresnel,id:2,x:33282,y:33010;n:type:ShaderForge.SFN_Power,id:3,x:33109,y:33010|VAL-2-OUT,EXP-4-OUT;n:type:ShaderForge.SFN_Slider,id:4,x:33282,y:33157,ptlb:RimPower,ptin:_RimPower,min:0,cur:1.911986,max:10;n:type:ShaderForge.SFN_Color,id:5,x:33109,y:33157,ptlb:RimColor,ptin:_RimColor,glob:False,c1:0.3970588,c2:0.7505071,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:6,x:33189,y:32179|A-8-RGB,B-14-OUT;n:type:ShaderForge.SFN_Multiply,id:7,x:32955,y:33010|A-3-OUT,B-5-RGB;n:type:ShaderForge.SFN_Tex2d,id:8,x:33173,y:32006,ptlb:Planet_Diffuse,ptin:_Planet_Diffuse,tex:479be0992cdeca04cbb7eb6f7c8d5237,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:14,x:33369,y:32179|A-15-RGB,B-17-RGB,T-18-RGB;n:type:ShaderForge.SFN_Color,id:15,x:33359,y:31859,ptlb:node_15,ptin:_node_15,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:17,x:33359,y:32020,ptlb:node_15_copy,ptin:_node_15_copy,glob:False,c1:0.2426471,c2:0.3793104,c3:0.6470588,c4:1;n:type:ShaderForge.SFN_Tex2d,id:18,x:33555,y:32179,ptlb:Planet_Specular,ptin:_Planet_Specular,tex:72c8939c6fb974746b18901094a80077,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:24,x:33157,y:32580,ptlb:Planet_Bump,ptin:_Planet_Bump,tex:eb6543fb4c88d3f4f99fbd7c4a8a4374,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:30,x:32955,y:32824,ptlb:Planet_Lights,ptin:_Planet_Lights,tex:39e513f811617b446ad706fd6dfc8f4e,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:38,x:32726,y:33010|A-30-RGB,B-7-OUT;n:type:ShaderForge.SFN_Tex2d,id:48,x:33627,y:32366,ptlb:Planet_Clouds,ptin:_Planet_Clouds,tex:7372466444f25b9488e3a23a753e85c1,ntxv:0,isnm:False|UVIN-247-UVOUT;n:type:ShaderForge.SFN_Add,id:49,x:32046,y:32400|A-399-OUT,B-409-OUT;n:type:ShaderForge.SFN_Multiply,id:55,x:33189,y:32400|A-48-RGB,B-56-OUT;n:type:ShaderForge.SFN_Slider,id:56,x:33385,y:32616,ptlb:Cloud Intensity,ptin:_CloudIntensity,min:0.1,cur:0.5156434,max:0.9;n:type:ShaderForge.SFN_Lerp,id:132,x:32879,y:32625|A-24-RGB,B-138-RGB,T-55-OUT;n:type:ShaderForge.SFN_Color,id:138,x:33173,y:32807,ptlb:node_138,ptin:_node_138,glob:False,c1:0.03448248,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Panner,id:154,x:34342,y:32251,spu:1,spv:1|DIST-193-OUT;n:type:ShaderForge.SFN_Time,id:191,x:34206,y:32599;n:type:ShaderForge.SFN_Slider,id:192,x:34206,y:32526,ptlb:Cloud_Speed,ptin:_Cloud_Speed,min:0,cur:0.01709402,max:1;n:type:ShaderForge.SFN_Multiply,id:193,x:34042,y:32526|A-192-OUT,B-191-T;n:type:ShaderForge.SFN_Parallax,id:247,x:33943,y:32144|UVIN-154-UVOUT,HEI-248-OUT;n:type:ShaderForge.SFN_Vector1,id:248,x:33943,y:32102,v1:1.2;n:type:ShaderForge.SFN_Multiply,id:399,x:32533,y:32149|A-6-OUT,B-402-OUT;n:type:ShaderForge.SFN_Slider,id:402,x:32840,y:32256,ptlb:DaySlider,ptin:_DaySlider,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:409,x:32523,y:32290|A-55-OUT,B-410-OUT;n:type:ShaderForge.SFN_Clamp,id:410,x:32683,y:32416|IN-402-OUT,MIN-412-OUT,MAX-414-OUT;n:type:ShaderForge.SFN_Vector1,id:412,x:32835,y:32446,v1:0.4;n:type:ShaderForge.SFN_Vector1,id:414,x:32835,y:32496,v1:1;proporder:4-5-8-15-17-18-24-30-48-56-138-192-402;pass:END;sub:END;*/

Shader "Shader Forge/Planet_Shader_V3" {
    Properties {
        _RimPower ("RimPower", Range(0, 10)) = 1.911986
        _RimColor ("RimColor", Color) = (0.3970588,0.7505071,1,1)
        _Planet_Diffuse ("Planet_Diffuse", 2D) = "white" {}
        _node_15 ("node_15", Color) = (1,1,1,1)
        _node_15_copy ("node_15_copy", Color) = (0.2426471,0.3793104,0.6470588,1)
        _Planet_Specular ("Planet_Specular", 2D) = "white" {}
        _Planet_Bump ("Planet_Bump", 2D) = "bump" {}
        _Planet_Lights ("Planet_Lights", 2D) = "white" {}
        _Planet_Clouds ("Planet_Clouds", 2D) = "white" {}
        _CloudIntensity ("Cloud Intensity", Range(0.1, 0.9)) = 0.5156434
        _node_138 ("node_138", Color) = (0.03448248,0,1,1)
        _Cloud_Speed ("Cloud_Speed", Range(0, 1)) = 0.01709402
        _DaySlider ("DaySlider", Range(0, 1)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
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
            uniform float4 _TimeEditor;
            uniform float _RimPower;
            uniform float4 _RimColor;
            uniform sampler2D _Planet_Diffuse; uniform float4 _Planet_Diffuse_ST;
            uniform float4 _node_15;
            uniform float4 _node_15_copy;
            uniform sampler2D _Planet_Specular; uniform float4 _Planet_Specular_ST;
            uniform sampler2D _Planet_Bump; uniform float4 _Planet_Bump_ST;
            uniform sampler2D _Planet_Lights; uniform float4 _Planet_Lights_ST;
            uniform sampler2D _Planet_Clouds; uniform float4 _Planet_Clouds_ST;
            uniform float _CloudIntensity;
            uniform float4 _node_138;
            uniform float _Cloud_Speed;
            uniform float _DaySlider;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_426 = i.uv0;
                float4 node_191 = _Time + _TimeEditor;
                float2 node_247 = (0.05*(1.2 - 0.5)*mul(tangentTransform, viewDirection).xy + (node_426.rg+(_Cloud_Speed*node_191.g)*float2(1,1)));
                float3 node_55 = (tex2D(_Planet_Clouds,TRANSFORM_TEX(node_247.rg, _Planet_Clouds)).rgb*_CloudIntensity);
                float3 normalLocal = lerp(UnpackNormal(tex2D(_Planet_Bump,TRANSFORM_TEX(node_426.rg, _Planet_Bump))).rgb,_node_138.rgb,node_55);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor + UNITY_LIGHTMODEL_AMBIENT.rgb;
////// Emissive:
                float3 emissive = (tex2D(_Planet_Lights,TRANSFORM_TEX(node_426.rg, _Planet_Lights)).rgb+(pow((1.0-max(0,dot(normalDirection, viewDirection))),_RimPower)*_RimColor.rgb));
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (((tex2D(_Planet_Diffuse,TRANSFORM_TEX(node_426.rg, _Planet_Diffuse)).rgb*lerp(_node_15.rgb,_node_15_copy.rgb,tex2D(_Planet_Specular,TRANSFORM_TEX(node_426.rg, _Planet_Specular)).rgb))*_DaySlider)+(node_55*clamp(_DaySlider,0.4,1.0)));
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
            uniform float4 _TimeEditor;
            uniform float _RimPower;
            uniform float4 _RimColor;
            uniform sampler2D _Planet_Diffuse; uniform float4 _Planet_Diffuse_ST;
            uniform float4 _node_15;
            uniform float4 _node_15_copy;
            uniform sampler2D _Planet_Specular; uniform float4 _Planet_Specular_ST;
            uniform sampler2D _Planet_Bump; uniform float4 _Planet_Bump_ST;
            uniform sampler2D _Planet_Lights; uniform float4 _Planet_Lights_ST;
            uniform sampler2D _Planet_Clouds; uniform float4 _Planet_Clouds_ST;
            uniform float _CloudIntensity;
            uniform float4 _node_138;
            uniform float _Cloud_Speed;
            uniform float _DaySlider;
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
/////// Normals:
                float2 node_427 = i.uv0;
                float4 node_191 = _Time + _TimeEditor;
                float2 node_247 = (0.05*(1.2 - 0.5)*mul(tangentTransform, viewDirection).xy + (node_427.rg+(_Cloud_Speed*node_191.g)*float2(1,1)));
                float3 node_55 = (tex2D(_Planet_Clouds,TRANSFORM_TEX(node_247.rg, _Planet_Clouds)).rgb*_CloudIntensity);
                float3 normalLocal = lerp(UnpackNormal(tex2D(_Planet_Bump,TRANSFORM_TEX(node_427.rg, _Planet_Bump))).rgb,_node_138.rgb,node_55);
                float3 normalDirection =  normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 diffuse = max( 0.0, NdotL) * attenColor;
                float3 finalColor = 0;
                float3 diffuseLight = diffuse;
                finalColor += diffuseLight * (((tex2D(_Planet_Diffuse,TRANSFORM_TEX(node_427.rg, _Planet_Diffuse)).rgb*lerp(_node_15.rgb,_node_15_copy.rgb,tex2D(_Planet_Specular,TRANSFORM_TEX(node_427.rg, _Planet_Specular)).rgb))*_DaySlider)+(node_55*clamp(_DaySlider,0.4,1.0)));
/// Final Color:
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
