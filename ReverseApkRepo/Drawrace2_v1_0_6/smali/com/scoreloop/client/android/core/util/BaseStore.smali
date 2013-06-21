.class public abstract Lcom/scoreloop/client/android/core/util/BaseStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/Store;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/scoreloop/client/android/core/util/JSONSerializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/scoreloop/client/android/core/util/Store",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Lcom/scoreloop/client/android/core/util/Cryptifier;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/scoreloop/client/android/core/util/BaseStore;->a:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/scoreloop/client/android/core/util/Cryptifier;

    const-string v1, "shared"

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/BaseStore;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/util/Cryptifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/util/BaseStore;->b:Lcom/scoreloop/client/android/core/util/Cryptifier;

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract c()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected final e()Lcom/scoreloop/client/android/core/util/Cryptifier;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/scoreloop/client/android/core/util/BaseStore;->b:Lcom/scoreloop/client/android/core/util/Cryptifier;

    return-object v0
.end method

.method public abstract f()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final g()Lcom/scoreloop/client/android/core/util/JSONSerializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/BaseStore;->f()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/util/BaseStore;->c()Lcom/scoreloop/client/android/core/util/JSONSerializable;

    move-result-object v0

    .line 39
    :cond_0
    return-object v0
.end method
