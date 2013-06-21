.class public Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "iPhoneModuleBindingGen.java"


# static fields
.field private static final CREATE_GroupedSection:Ljava/lang/String; = "createGroupedSection"

.field private static final CREATE_GroupedView:Ljava/lang/String; = "createGroupedView"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.iPhone"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.iphone.iPhoneModule"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "iPhone"

.field private static final TAG:Ljava/lang/String; = "iPhoneModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 48
    iget-object v0, p0, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createGroupedSection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createGroupedView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 54
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "UI.iPhone"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .parameter "name"

    .prologue
    const-string v7, "createGroupedView"

    const-string v6, "createGroupedSection"

    .line 58
    iget-object v4, p0, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 92
    :goto_0
    return-object v4

    .line 64
    :cond_0
    const-string v4, "createGroupedSection"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    new-instance v2, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen$1;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen$1;-><init>(Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;)V

    .line 70
    .local v2, creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    const-string v4, "createGroupedSection"

    invoke-static {v6, v2}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v0

    .line 71
    .local v0, createGroupedSection_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "createGroupedSection"

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 72
    goto :goto_0

    .line 75
    .end local v0           #createGroupedSection_method:Lorg/appcelerator/kroll/KrollMethod;
    .end local v2           #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    :cond_1
    const-string v4, "createGroupedView"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    new-instance v2, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen$2;

    invoke-direct {v2, p0}, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen$2;-><init>(Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;)V

    .line 81
    .restart local v2       #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    const-string v4, "createGroupedView"

    invoke-static {v7, v2}, Lorg/appcelerator/kroll/util/KrollBindingUtils;->createCreateMethod(Ljava/lang/String;Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;)Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v1

    .line 82
    .local v1, createGroupedView_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/ui/iphone/iPhoneModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "createGroupedView"

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    .line 83
    goto :goto_0

    .line 92
    .end local v1           #createGroupedView_method:Lorg/appcelerator/kroll/KrollMethod;
    .end local v2           #creator:Lorg/appcelerator/kroll/util/KrollBindingUtils$KrollProxyCreator;
    :cond_2
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "ti.modules.titanium.ui.iphone.iPhoneModule"

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
    .line 116
    const-class v0, Lti/modules/titanium/ui/iphone/iPhoneModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "iPhone"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    new-instance v0, Lti/modules/titanium/ui/iphone/iPhoneModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/ui/iphone/iPhoneModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
