.class public final Lcom/google/devtools/simple/runtime/parameters/IntegerReferenceParameter;
.super Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;
.source "IntegerReferenceParameter.java"


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/parameters/IntegerReferenceParameter;->set(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/devtools/simple/runtime/parameters/IntegerReferenceParameter;->value:I

    return v0
.end method

.method public set(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput p1, p0, Lcom/google/devtools/simple/runtime/parameters/IntegerReferenceParameter;->value:I

    .line 40
    return-void
.end method
