.class public Lcom/superdroid/rpc/forum/model/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4ad928cffc7910e1L


# instance fields
.field protected _comments:Ljava/lang/String;

.field protected _createTime:Ljava/util/Date;

.field protected _eventID:J

.field protected _gambleScore:J

.field protected _iconLink:Ljava/lang/String;

.field protected _id:J

.field protected _score:J

.field protected _threadID:J

.field protected _userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_gambleScore:J

    .line 33
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Ljava/util/Date;JJ)V
    .locals 2
    .parameter "id"
    .parameter "userID"
    .parameter "threadID"
    .parameter "comments"
    .parameter "createTime"
    .parameter "gambleScore"
    .parameter "eventID"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_gambleScore:J

    .line 37
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_id:J

    .line 38
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_userName:Ljava/lang/String;

    .line 39
    iput-wide p4, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_threadID:J

    .line 40
    iput-object p6, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_comments:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_createTime:Ljava/util/Date;

    .line 42
    iput-wide p8, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_gambleScore:J

    .line 43
    iput-wide p10, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_eventID:J

    .line 44
    return-void
.end method


# virtual methods
.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_comments:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getEventID()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_eventID:J

    return-wide v0
.end method

.method public getGambleScore()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_gambleScore:J

    return-wide v0
.end method

.method public getIconLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_id:J

    return-wide v0
.end method

.method public getScore()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_score:J

    return-wide v0
.end method

.method public getThreadID()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_threadID:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0
    .parameter "comments"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_comments:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_createTime:Ljava/util/Date;

    .line 110
    return-void
.end method

.method public setEventID(J)V
    .locals 0
    .parameter "eventID"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_eventID:J

    .line 126
    return-void
.end method

.method public setGambleScore(J)V
    .locals 0
    .parameter "gambleScore"

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_gambleScore:J

    .line 118
    return-void
.end method

.method public setIconLink(Ljava/lang/String;)V
    .locals 0
    .parameter "iconLink"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_iconLink:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_id:J

    .line 78
    return-void
.end method

.method public setScore(J)V
    .locals 0
    .parameter "score"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_score:J

    .line 70
    return-void
.end method

.method public setThreadID(J)V
    .locals 0
    .parameter "threadID"

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_threadID:J

    .line 94
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/EventLog;->_userName:Ljava/lang/String;

    .line 86
    return-void
.end method
