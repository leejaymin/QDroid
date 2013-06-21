.class public Lcom/addthis/error/ATBaseException;
.super Ljava/lang/Exception;
.source "ATBaseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 30
    const-string v0, "Unknown exception"

    iput-object v0, p0, Lcom/addthis/error/ATBaseException;->mErrorMessage:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/addthis/error/ATBaseException;->mErrorMessage:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/addthis/error/ATBaseException;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
