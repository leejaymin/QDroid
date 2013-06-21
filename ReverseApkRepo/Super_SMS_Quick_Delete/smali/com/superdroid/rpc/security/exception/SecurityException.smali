.class public Lcom/superdroid/rpc/security/exception/SecurityException;
.super Ljava/lang/Exception;
.source "SecurityException.java"


# static fields
.field private static final serialVersionUID:J = 0x702c5141daec979aL


# instance fields
.field protected _retCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/superdroid/rpc/security/exception/SecurityException;->_retCode:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "retcode"
    .parameter "message"

    .prologue
    .line 19
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 20
    iput p1, p0, Lcom/superdroid/rpc/security/exception/SecurityException;->_retCode:I

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getRetcode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/superdroid/rpc/security/exception/SecurityException;->_retCode:I

    return v0
.end method
