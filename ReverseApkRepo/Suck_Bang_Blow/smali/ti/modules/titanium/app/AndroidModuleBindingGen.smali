.class public Lti/modules/titanium/app/AndroidModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "AndroidModuleBindingGen.java"


# static fields
.field private static final DYNPROP_R:Ljava/lang/String; = "R"

.field private static final FULL_API_NAME:Ljava/lang/String; = "App.Android"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.app.AndroidModule"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "AndroidModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 47
    iget-object v0, p0, Lti/modules/titanium/app/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "R"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 52
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "App.Android"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    const-string v2, "R"

    .line 56
    iget-object v1, p0, Lti/modules/titanium/app/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 57
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_0

    move-object v1, v6

    .line 100
    :goto_0
    return-object v1

    .line 66
    :cond_0
    const-string v1, "R"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    new-instance v0, Lti/modules/titanium/app/AndroidModuleBindingGen$1;

    const-string v1, "R"

    const/4 v3, 0x1

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/app/AndroidModuleBindingGen$1;-><init>(Lti/modules/titanium/app/AndroidModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 92
    .local v0, R_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 93
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 94
    iget-object v1, p0, Lti/modules/titanium/app/AndroidModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v3, "R"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 95
    goto :goto_0

    .line 100
    .end local v0           #R_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "ti.modules.titanium.app.AndroidModule"

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
    .line 124
    const-class v0, Lti/modules/titanium/app/AndroidModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "Android"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    new-instance v0, Lti/modules/titanium/app/AndroidModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/app/AndroidModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
