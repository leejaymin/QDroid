.class public abstract Lorg/appcelerator/kroll/KrollProxyBinding;
.super Ljava/lang/Object;
.source "KrollProxyBinding.java"


# instance fields
.field protected bindings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBinding;->bindings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public abstract bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
.end method

.method public abstract getAPIName()Ljava/lang/String;
.end method

.method public abstract getBinding(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getProxyClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShortAPIName()Ljava/lang/String;
.end method

.method public hasBinding(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 19
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollProxyBinding;->bindings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract isModule()Z
.end method
