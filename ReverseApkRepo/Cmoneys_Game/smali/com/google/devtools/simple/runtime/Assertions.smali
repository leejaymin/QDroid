.class public Lcom/google/devtools/simple/runtime/Assertions;
.super Ljava/lang/Object;
.source "Assertions.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static AssertFalse(Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 1
    .parameter "expression"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;-><init>()V

    throw v0

    .line 49
    :cond_0
    return-void
.end method

.method public static AssertTrue(Lcom/google/devtools/simple/runtime/variants/Variant;)V
    .locals 1
    .parameter "expression"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/variants/Variant;->getBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;-><init>()V

    throw v0

    .line 35
    :cond_0
    return-void
.end method
