.class public Lcom/google/devtools/simple/runtime/errors/NoSuchFileError;
.super Lcom/google/devtools/simple/runtime/errors/RuntimeError;
.source "NoSuchFileError.java"


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
