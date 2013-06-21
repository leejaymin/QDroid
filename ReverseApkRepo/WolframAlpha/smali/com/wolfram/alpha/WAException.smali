.class public Lcom/wolfram/alpha/WAException;
.super Ljava/lang/Exception;
.source "WAException.java"


# static fields
.field private static final serialVersionUID:J = 0x55bfcd74403b9a05L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 14
    return-void
.end method
