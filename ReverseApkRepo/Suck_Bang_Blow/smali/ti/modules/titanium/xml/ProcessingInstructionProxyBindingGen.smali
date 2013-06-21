.class public Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;
.super Lti/modules/titanium/xml/NodeProxyBindingGen;
.source "ProcessingInstructionProxyBindingGen.java"


# static fields
.field private static final DYNPROP_data:Ljava/lang/String; = "data"

.field private static final DYNPROP_target:Ljava/lang/String; = "target"

.field private static final FULL_API_NAME:Ljava/lang/String; = "ProcessingInstruction"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.xml.ProcessingInstructionProxy"

.field private static final METHOD_getData:Ljava/lang/String; = "getData"

.field private static final METHOD_getTarget:Ljava/lang/String; = "getTarget"

.field private static final METHOD_setData:Ljava/lang/String; = "setData"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "ProcessingInstruction"

.field private static final TAG:Ljava/lang/String; = "ProcessingInstructionProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lti/modules/titanium/xml/NodeProxyBindingGen;-><init>()V

    .line 51
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "target"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTarget"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 60
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string v0, "ProcessingInstruction"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const-string v7, "setData"

    const-string v6, "getTarget"

    const-string v5, "getData"

    const-string v2, "data"

    .line 64
    iget-object v1, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 65
    .local v13, value:Ljava/lang/Object;
    if-eqz v13, :cond_0

    move-object v1, v13

    .line 219
    :goto_0
    return-object v1

    .line 74
    :cond_0
    const-string v1, "data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$1;

    const-string v1, "data"

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$1;-><init>(Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 113
    .local v0, data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 114
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 115
    iget-object v1, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "data"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 116
    goto :goto_0

    .line 119
    .end local v0           #data_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v1, "target"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    new-instance v4, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$2;

    const-string v6, "target"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move v7, v3

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$2;-><init>(Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 143
    .local v4, target_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 144
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 145
    iget-object v1, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "target"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    .line 146
    goto :goto_0

    .line 150
    .end local v4           #target_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v1, "getData"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    new-instance v10, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$3;

    const-string v1, "getData"

    invoke-direct {v10, p0, v5}, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$3;-><init>(Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;Ljava/lang/String;)V

    .line 166
    .local v10, getData_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "getData"

    invoke-virtual {v1, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v10

    .line 167
    goto :goto_0

    .line 170
    .end local v10           #getData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v1, "getTarget"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    new-instance v11, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$4;

    const-string v1, "getTarget"

    invoke-direct {v11, p0, v6}, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$4;-><init>(Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;Ljava/lang/String;)V

    .line 186
    .local v11, getTarget_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "getTarget"

    invoke-virtual {v1, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v11

    .line 187
    goto/16 :goto_0

    .line 190
    .end local v11           #getTarget_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v1, "setData"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    new-instance v12, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$5;

    const-string v1, "setData"

    invoke-direct {v12, p0, v7}, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen$5;-><init>(Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;Ljava/lang/String;)V

    .line 214
    .local v12, setData_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/xml/ProcessingInstructionProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "setData"

    invoke-virtual {v1, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v12

    .line 215
    goto/16 :goto_0

    .line 219
    .end local v12           #setData_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    invoke-super {p0, p1}, Lti/modules/titanium/xml/NodeProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "ti.modules.titanium.xml.ProcessingInstructionProxy"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    const-class v0, Lti/modules/titanium/xml/ProcessingInstructionProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "ProcessingInstruction"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method
