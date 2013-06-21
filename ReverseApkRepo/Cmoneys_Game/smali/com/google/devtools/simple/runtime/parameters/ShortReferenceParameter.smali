.class public final Lcom/google/devtools/simple/runtime/parameters/ShortReferenceParameter;
.super Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;
.source "ShortReferenceParameter.java"


# instance fields
.field private value:S


# direct methods
.method public constructor <init>(S)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/parameters/ShortReferenceParameter;->set(S)V

    .line 22
    return-void
.end method


# virtual methods
.method public get()S
    .locals 1

    .prologue
    .line 30
    iget-short v0, p0, Lcom/google/devtools/simple/runtime/parameters/ShortReferenceParameter;->value:S

    return v0
.end method

.method public set(S)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput-short p1, p0, Lcom/google/devtools/simple/runtime/parameters/ShortReferenceParameter;->value:S

    .line 40
    return-void
.end method
