.class public abstract Lcom/stickycoding/rokon/TObjectPool;
.super Lcom/stickycoding/rokon/ObjectPool;
.source "TObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/stickycoding/rokon/ObjectPool;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, this:Lcom/stickycoding/rokon/TObjectPool;,"Lcom/stickycoding/rokon/TObjectPool<TT;>;"
    invoke-direct {p0}, Lcom/stickycoding/rokon/ObjectPool;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 33
    .local p0, this:Lcom/stickycoding/rokon/TObjectPool;,"Lcom/stickycoding/rokon/TObjectPool<TT;>;"
    invoke-direct {p0, p1}, Lcom/stickycoding/rokon/ObjectPool;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public allocate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/stickycoding/rokon/TObjectPool;,"Lcom/stickycoding/rokon/TObjectPool<TT;>;"
    invoke-super {p0}, Lcom/stickycoding/rokon/ObjectPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    .line 39
    .local v0, object:Ljava/lang/Object;,"TT;"
    return-object v0
.end method
