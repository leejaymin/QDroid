.class public Lcom/superdroid/rpc/forum/exception/UserAlreadyExistException;
.super Lcom/superdroid/rpc/forum/exception/ForumException;
.source "UserAlreadyExistException.java"


# static fields
.field private static final serialVersionUID:J = 0xb8e10088163dd04L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 17
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/superdroid/rpc/forum/exception/ForumException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    return-void
.end method
