.class public Lcom/superdroid/rpc/forum/model/VoteEventLog;
.super Lcom/superdroid/rpc/forum/model/EventLog;
.source "VoteEventLog.java"


# static fields
.field private static final serialVersionUID:J = -0x6cda8956f1bb15bdL


# direct methods
.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/util/Date;J)V
    .locals 12
    .parameter "id"
    .parameter "userID"
    .parameter "threadID"
    .parameter "comments"
    .parameter "createTime"
    .parameter "eventID"

    .prologue
    .line 14
    const-wide/16 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lcom/superdroid/rpc/forum/model/EventLog;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/util/Date;JJ)V

    .line 15
    return-void
.end method
