.class public Lcom/superdroid/SuperIOException;
.super Lcom/superdroid/SuperException;
.source "SuperIOException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/superdroid/SuperException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/superdroid/SuperException;-><init>(Ljava/lang/Throwable;)V

    .line 11
    return-void
.end method

.method public static newIOException(Ljava/lang/Throwable;)Lcom/superdroid/SuperIOException;
    .locals 2
    .parameter "t"

    .prologue
    .line 14
    sget-object v0, Lcom/superdroid/NoSpaceIOException;->MSG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/superdroid/NoSpaceIOException;

    invoke-direct {v0, p0}, Lcom/superdroid/NoSpaceIOException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/superdroid/SuperIOException;

    invoke-direct {v0, p0}, Lcom/superdroid/SuperIOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
