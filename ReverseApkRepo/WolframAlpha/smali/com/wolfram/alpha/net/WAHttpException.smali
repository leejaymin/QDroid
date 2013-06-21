.class public Lcom/wolfram/alpha/net/WAHttpException;
.super Ljava/lang/Exception;
.source "WAHttpException.java"


# static fields
.field private static final serialVersionUID:J = 0xd500d1760fe86aL


# instance fields
.field public httpStatusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "httpStatusCode"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    const/16 v0, 0xc8

    iput v0, p0, Lcom/wolfram/alpha/net/WAHttpException;->httpStatusCode:I

    .line 30
    iput p1, p0, Lcom/wolfram/alpha/net/WAHttpException;->httpStatusCode:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 20
    const/16 v0, 0xc8

    iput v0, p0, Lcom/wolfram/alpha/net/WAHttpException;->httpStatusCode:I

    .line 35
    return-void
.end method

.method private static statusCodeToMessageString(I)Ljava/lang/String;
    .locals 2
    .parameter "httpStatusCode"

    .prologue
    .line 48
    sparse-switch p0, :sswitch_data_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 50
    :sswitch_0
    const-string v0, "HTTP Error 404: File not found on server"

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "HTTP Error 503: Service unavailable"

    goto :goto_0

    .line 48
    nop

    :sswitch_data_0
    .sparse-switch
        0x194 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/wolfram/alpha/net/WAHttpException;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 40
    iget v0, p0, Lcom/wolfram/alpha/net/WAHttpException;->httpStatusCode:I

    invoke-static {v0}, Lcom/wolfram/alpha/net/WAHttpException;->statusCodeToMessageString(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
