.class public Lcom/google/devtools/simple/runtime/errors/AssertionFailure;
.super Lcom/google/devtools/simple/runtime/errors/RuntimeError;
.source "AssertionFailure.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/errors/RuntimeError;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method
