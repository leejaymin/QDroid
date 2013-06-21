.class public final Lcom/google/devtools/simple/runtime/parameters/BooleanReferenceParameter;
.super Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;
.source "BooleanReferenceParameter.java"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/parameters/BooleanReferenceParameter;->set(Z)V

    .line 22
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/parameters/BooleanReferenceParameter;->value:Z

    return v0
.end method

.method public set(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/parameters/BooleanReferenceParameter;->value:Z

    .line 40
    return-void
.end method
