.class public Lcom/superdroid/rpc/forum/model/GambleEventLog;
.super Lcom/superdroid/rpc/forum/model/EventLog;
.source "GambleEventLog.java"


# static fields
.field private static final serialVersionUID:J = 0x18cac35209bb4b16L


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/util/Date;JJ)V
    .locals 0
    .parameter "id"
    .parameter "userID"
    .parameter "threadID"
    .parameter "comments"
    .parameter "createTime"
    .parameter "gambleScore"
    .parameter "eventID"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p11}, Lcom/superdroid/rpc/forum/model/EventLog;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/util/Date;JJ)V

    .line 15
    return-void
.end method
