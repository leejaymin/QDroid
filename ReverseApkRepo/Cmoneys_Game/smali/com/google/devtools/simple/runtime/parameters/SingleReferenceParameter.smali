.class public final Lcom/google/devtools/simple/runtime/parameters/SingleReferenceParameter;
.super Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;
.source "SingleReferenceParameter.java"


# instance fields
.field private value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/parameters/SingleReferenceParameter;->set(F)V

    .line 22
    return-void
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/devtools/simple/runtime/parameters/SingleReferenceParameter;->value:F

    return v0
.end method

.method public set(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput p1, p0, Lcom/google/devtools/simple/runtime/parameters/SingleReferenceParameter;->value:F

    .line 40
    return-void
.end method
