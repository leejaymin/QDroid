.class public final Lcom/google/devtools/simple/runtime/parameters/ByteReferenceParameter;
.super Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;
.source "ByteReferenceParameter.java"


# instance fields
.field private value:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/parameters/ByteReferenceParameter;->set(B)V

    .line 22
    return-void
.end method


# virtual methods
.method public get()B
    .locals 1

    .prologue
    .line 30
    iget-byte v0, p0, Lcom/google/devtools/simple/runtime/parameters/ByteReferenceParameter;->value:B

    return v0
.end method

.method public set(B)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput-byte p1, p0, Lcom/google/devtools/simple/runtime/parameters/ByteReferenceParameter;->value:B

    .line 40
    return-void
.end method
