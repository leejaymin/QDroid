.class public Lorg/jibx/runtime/RecoverableException;
.super Lorg/jibx/runtime/JiBXException;
.source "RecoverableException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "root"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/jibx/runtime/JiBXException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
