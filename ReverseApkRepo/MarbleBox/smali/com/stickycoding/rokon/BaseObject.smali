.class public abstract Lcom/stickycoding/rokon/BaseObject;
.super Lcom/stickycoding/rokon/AllocationGuard;
.source "BaseObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/stickycoding/rokon/AllocationGuard;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract reset()V
.end method

.method public update(FLcom/stickycoding/rokon/BaseObject;)V
    .locals 0
    .parameter "timeDelta"
    .parameter "parent"

    .prologue
    .line 39
    return-void
.end method
