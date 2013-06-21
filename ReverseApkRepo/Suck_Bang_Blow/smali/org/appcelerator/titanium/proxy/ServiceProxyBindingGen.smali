.class public Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "ServiceProxyBindingGen.java"


# static fields
.field private static final DYNPROP_intent:Ljava/lang/String; = "intent"

.field private static final DYNPROP_serviceInstanceId:Ljava/lang/String; = "serviceInstanceId"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Service"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.proxy.ServiceProxy"

.field private static final METHOD_getIntent:Ljava/lang/String; = "getIntent"

.field private static final METHOD_getServiceInstanceId:Ljava/lang/String; = "getServiceInstanceId"

.field private static final METHOD_start:Ljava/lang/String; = "start"

.field private static final METHOD_stop:Ljava/lang/String; = "stop"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Service"

.field private static final TAG:Ljava/lang/String; = "ServiceProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 52
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "serviceInstanceId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "intent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getIntent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getServiceInstanceId"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "start"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 62
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "Service"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter "name"

    .prologue
    .line 66
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 67
    .local v11, value:Ljava/lang/Object;
    if-eqz v11, :cond_0

    move-object v2, v11

    .line 214
    :goto_0
    return-object v2

    .line 76
    :cond_0
    const-string v2, "serviceInstanceId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    new-instance v0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$1;

    const-string v2, "serviceInstanceId"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$1;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 100
    .local v0, serviceInstanceId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 101
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 102
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "serviceInstanceId"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 103
    goto :goto_0

    .line 106
    .end local v0           #serviceInstanceId_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v2, "intent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    new-instance v1, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$2;

    const-string v3, "intent"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$2;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 130
    .local v1, intent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 131
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 132
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "intent"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 133
    goto :goto_0

    .line 137
    .end local v1           #intent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v2, "getIntent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    new-instance v7, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$3;

    const-string v2, "getIntent"

    invoke-direct {v7, p0, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$3;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;Ljava/lang/String;)V

    .line 153
    .local v7, getIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "getIntent"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v7

    .line 154
    goto :goto_0

    .line 157
    .end local v7           #getIntent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v2, "stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    new-instance v10, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$4;

    const-string v2, "stop"

    invoke-direct {v10, p0, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$4;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;Ljava/lang/String;)V

    .line 171
    .local v10, stop_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "stop"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v10

    .line 172
    goto/16 :goto_0

    .line 175
    .end local v10           #stop_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v2, "getServiceInstanceId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 176
    new-instance v8, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$5;

    const-string v2, "getServiceInstanceId"

    invoke-direct {v8, p0, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$5;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;Ljava/lang/String;)V

    .line 191
    .local v8, getServiceInstanceId_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "getServiceInstanceId"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v8

    .line 192
    goto/16 :goto_0

    .line 195
    .end local v8           #getServiceInstanceId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    new-instance v9, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$6;

    const-string v2, "start"

    invoke-direct {v9, p0, v2}, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen$6;-><init>(Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;Ljava/lang/String;)V

    .line 209
    .local v9, start_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v2, p0, Lorg/appcelerator/titanium/proxy/ServiceProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "start"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    .line 210
    goto/16 :goto_0

    .line 214
    .end local v9           #start_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "org.appcelerator.titanium.proxy.ServiceProxy"

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
    .line 238
    const-class v0, Lorg/appcelerator/titanium/proxy/ServiceProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string v0, "Service"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method
