.class public Lcom/superdroid/rpc/forum/exception/IMEIBindException;
.super Lcom/superdroid/rpc/forum/exception/ForumException;
.source "IMEIBindException.java"


# static fields
.field private static final serialVersionUID:J = -0x22d4254ffc5a6139L


# instance fields
.field public _bindUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 19
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method
