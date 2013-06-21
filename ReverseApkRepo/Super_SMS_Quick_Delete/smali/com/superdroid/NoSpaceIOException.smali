.class public Lcom/superdroid/NoSpaceIOException;
.super Lcom/superdroid/SuperIOException;
.source "NoSpaceIOException.java"


# static fields
.field static MSG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "No space left on device"

    sput-object v0, Lcom/superdroid/NoSpaceIOException;->MSG:Ljava/lang/String;

    .line 4
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/superdroid/SuperIOException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    return-void
.end method
