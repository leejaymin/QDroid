.class public abstract Lcom/google/devtools/simple/runtime/errors/RuntimeError;
.super Ljava/lang/RuntimeException;
.source "RuntimeError.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static convertToRuntimeError(Ljava/lang/Throwable;)Lcom/google/devtools/simple/runtime/errors/RuntimeError;
    .locals 1
    .parameter "throwable"

    .prologue
    .line 38
    instance-of v0, p0, Lcom/google/devtools/simple/runtime/errors/RuntimeError;

    if-eqz v0, :cond_0

    .line 39
    check-cast p0, Lcom/google/devtools/simple/runtime/errors/RuntimeError;

    .end local p0
    move-object v0, p0

    .line 50
    :goto_0
    return-object v0

    .line 43
    .restart local p0
    :cond_0
    instance-of v0, p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ArrayIndexOutOfBoundsError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ArrayIndexOutOfBoundsError;-><init>()V

    goto :goto_0

    .line 46
    :cond_1
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/IllegalArgumentError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/IllegalArgumentError;-><init>()V

    goto :goto_0

    .line 49
    :cond_2
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_3

    .line 50
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/UninitializedInstanceError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/UninitializedInstanceError;-><init>()V

    goto :goto_0

    .line 54
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
