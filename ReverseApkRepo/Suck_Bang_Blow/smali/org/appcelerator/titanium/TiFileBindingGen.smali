.class public Lorg/appcelerator/titanium/TiFileBindingGen;
.super Lorg/appcelerator/kroll/KrollProxyBindingGen;
.source "TiFileBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "TiFile"

.field private static final ID:Ljava/lang/String; = "org.appcelerator.titanium.TiFile"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "TiFile"

.field private static final TAG:Ljava/lang/String; = "TiFileBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBindingGen;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 50
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "TiFile"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 54
    iget-object v1, p0, Lorg/appcelerator/titanium/TiFileBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, value:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 66
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "org.appcelerator.titanium.TiFile"

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
    .line 90
    const-class v0, Lorg/appcelerator/titanium/TiFile;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "TiFile"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method