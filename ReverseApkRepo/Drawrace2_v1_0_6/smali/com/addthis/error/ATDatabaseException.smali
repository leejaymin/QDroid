.class public Lcom/addthis/error/ATDatabaseException;
.super Lcom/addthis/error/ATBaseException;
.source "ATDatabaseException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/addthis/error/ATBaseException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
