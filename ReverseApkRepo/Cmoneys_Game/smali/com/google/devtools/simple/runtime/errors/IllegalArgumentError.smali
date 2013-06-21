.class public Lcom/google/devtools/simple/runtime/errors/IllegalArgumentError;
.super Lcom/google/devtools/simple/runtime/errors/RuntimeError;
.source "IllegalArgumentError.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/errors/RuntimeError;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
