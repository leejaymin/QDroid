.class public abstract Lorg/mozilla/javascript/Ref;
.super Ljava/lang/Object;
.source "Ref.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Lorg/mozilla/javascript/Context;)Z
    .locals 1
    .parameter "cx"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public abstract get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
.end method

.method public has(Lorg/mozilla/javascript/Context;)Z
    .locals 1
    .parameter "cx"

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public abstract set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
.end method
