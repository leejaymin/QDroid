.class public Lti/modules/titanium/ui/PickerRowProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "PickerRowProxyBindingGen.java"


# static fields
.field private static final DYNPROP_title:Ljava/lang/String; = "title"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.PickerRow"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.PickerRowProxy"

.field private static final METHOD_getTitle:Ljava/lang/String; = "getTitle"

.field private static final METHOD_setTitle:Ljava/lang/String; = "setTitle"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "PickerRow"

.field private static final TAG:Ljava/lang/String; = "PickerRowProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/ui/PickerRowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getTitle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 56
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string v0, "UI.PickerRow"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v3, 0x1

    const-string v2, "title"

    const-string v5, "setTitle"

    const-string v4, "getTitle"

    .line 60
    iget-object v1, p0, Lti/modules/titanium/ui/PickerRowProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 61
    .local v8, value:Ljava/lang/Object;
    if-eqz v8, :cond_0

    move-object v1, v8

    .line 165
    :goto_0
    return-object v1

    .line 70
    :cond_0
    const-string v1, "title"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v0, Lti/modules/titanium/ui/PickerRowProxyBindingGen$1;

    const-string v1, "title"

    move-object v1, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/PickerRowProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/PickerRowProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 109
    .local v0, title_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 110
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 111
    iget-object v1, p0, Lti/modules/titanium/ui/PickerRowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "title"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 112
    goto :goto_0

    .line 116
    .end local v0           #title_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v1, "setTitle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    new-instance v7, Lti/modules/titanium/ui/PickerRowProxyBindingGen$2;

    const-string v1, "setTitle"

    invoke-direct {v7, p0, v5}, Lti/modules/titanium/ui/PickerRowProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/PickerRowProxyBindingGen;Ljava/lang/String;)V

    .line 140
    .local v7, setTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/ui/PickerRowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "setTitle"

    invoke-virtual {v1, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v7

    .line 141
    goto :goto_0

    .line 144
    .end local v7           #setTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v1, "getTitle"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    new-instance v6, Lti/modules/titanium/ui/PickerRowProxyBindingGen$3;

    const-string v1, "getTitle"

    invoke-direct {v6, p0, v4}, Lti/modules/titanium/ui/PickerRowProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/PickerRowProxyBindingGen;Ljava/lang/String;)V

    .line 160
    .local v6, getTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v1, p0, Lti/modules/titanium/ui/PickerRowProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v2, "getTitle"

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v6

    .line 161
    goto :goto_0

    .line 165
    .end local v6           #getTitle_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "ti.modules.titanium.ui.PickerRowProxy"

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
    .line 189
    const-class v0, Lti/modules/titanium/ui/PickerRowProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "PickerRow"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method
