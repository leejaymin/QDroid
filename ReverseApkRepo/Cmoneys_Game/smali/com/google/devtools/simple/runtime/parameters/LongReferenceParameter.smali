.class public final Lcom/google/devtools/simple/runtime/parameters/LongReferenceParameter;
.super Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;
.source "LongReferenceParameter.java"


# instance fields
.field private value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/parameters/ReferenceParameter;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/google/devtools/simple/runtime/parameters/LongReferenceParameter;->set(J)V

    .line 22
    return-void
.end method


# virtual methods
.method public get()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/parameters/LongReferenceParameter;->value:J

    return-wide v0
.end method

.method public set(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/parameters/LongReferenceParameter;->value:J

    .line 40
    return-void
.end method
