.class public abstract Lorg/appcelerator/kroll/KrollModuleBinding;
.super Lorg/appcelerator/kroll/KrollProxyBinding;
.source "KrollModuleBinding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxyBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public bindToParent(Lorg/appcelerator/kroll/KrollProxy;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 2
    .parameter "parent"
    .parameter "proxy"

    .prologue
    .line 10
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getBinding()Lorg/appcelerator/kroll/KrollProxyBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollProxyBinding;->bindings:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleBinding;->getShortAPIName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleBinding;->isModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBinding;->getExternalChildModule(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getExternalChildModule(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleBinding;->getProxyClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/appcelerator/kroll/KrollModule;->getExternalChildModule(Lorg/appcelerator/kroll/KrollModuleBinding;Ljava/lang/Class;Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    return-object v0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public hasBinding(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollModuleBinding;->bindings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 26
    :goto_0
    return v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollModuleBinding;->isModule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBinding;->getExternalChildModule(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public abstract newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
.end method
