.class public Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "ActivityIndicatorModuleBindingGen.java"


# static fields
.field private static final CONST_DETERMINANT:Ljava/lang/String; = "DETERMINANT"

.field private static final CONST_DIALOG:Ljava/lang/String; = "DIALOG"

.field private static final CONST_INDETERMINANT:Ljava/lang/String; = "INDETERMINANT"

.field private static final CONST_STATUS_BAR:Ljava/lang/String; = "STATUS_BAR"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.ActivityIndicator"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.activityindicator.ActivityIndicatorModule"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "ActivityIndicator"

.field private static final TAG:Ljava/lang/String; = "ActivityIndicatorModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 49
    iget-object v0, p0, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STATUS_BAR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DETERMINANT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DIALOG"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "INDETERMINANT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 58
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "UI.ActivityIndicator"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 62
    iget-object v1, p0, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 74
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "ti.modules.titanium.ui.activityindicator.ActivityIndicatorModule"

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
    .line 98
    const-class v0, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "ActivityIndicator"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    new-instance v0, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/ui/activityindicator/ActivityIndicatorModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
