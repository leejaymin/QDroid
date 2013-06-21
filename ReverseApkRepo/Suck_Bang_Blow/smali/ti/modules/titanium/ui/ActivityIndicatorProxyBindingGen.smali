.class public Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "ActivityIndicatorProxyBindingGen.java"


# static fields
.field private static final ACCESSOR_message:Ljava/lang/String; = "message"

.field private static final ACCESSOR_value:Ljava/lang/String; = "value"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.ActivityIndicator"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.ActivityIndicatorProxy"

.field private static final PROP_GET_message:Ljava/lang/String; = "getMessage"

.field private static final PROP_GET_value:Ljava/lang/String; = "getValue"

.field private static final PROP_SET_message:Ljava/lang/String; = "setMessage"

.field private static final PROP_SET_value:Ljava/lang/String; = "setValue"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "ActivityIndicator"

.field private static final TAG:Ljava/lang/String; = "ActivityIndicatorProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setMessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getValue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setValue"

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
    .line 102
    const-string v0, "UI.ActivityIndicator"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "message"

    const-string v9, "getValue"

    const-string v8, "getMessage"

    .line 64
    iget-object v5, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 65
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v5, v2

    .line 94
    :goto_0
    return-object v5

    .line 75
    :cond_0
    const-string v5, "setMessage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    const-string v5, "message"

    invoke-static {v10, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    .line 77
    .local v1, message_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "setMessage"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    .line 78
    goto :goto_0

    .line 79
    .end local v1           #message_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v5, "getMessage"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 80
    const-string v5, "message"

    invoke-static {v10, v6}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    .line 81
    .local v0, message_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "getMessage"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v0

    .line 82
    goto :goto_0

    .line 84
    .end local v0           #message_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v5, "setValue"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    const-string v5, "value"

    invoke-static {v5, v7}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v4

    .line 86
    .local v4, value_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "setValue"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    .line 87
    goto :goto_0

    .line 88
    .end local v4           #value_set_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v5, "getValue"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 89
    const-string v5, "value"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createAccessorMethod(Ljava/lang/String;Z)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v3

    .line 90
    .local v3, value_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v5, p0, Lti/modules/titanium/ui/ActivityIndicatorProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v6, "getValue"

    invoke-virtual {v5, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 91
    goto :goto_0

    .line 94
    .end local v3           #value_get_accessor:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "ti.modules.titanium.ui.ActivityIndicatorProxy"

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
    .line 118
    const-class v0, Lti/modules/titanium/ui/ActivityIndicatorProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "ActivityIndicator"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method
