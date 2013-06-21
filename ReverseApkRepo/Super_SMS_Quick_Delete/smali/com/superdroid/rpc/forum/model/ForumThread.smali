.class public Lcom/superdroid/rpc/forum/model/ForumThread;
.super Ljava/lang/Object;
.source "ForumThread.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final THREAD_TYPE_ATTACH:I = 0x20

.field public static final THREAD_TYPE_DEFAUIT:I = 0x1

.field public static final THREAD_TYPE_GAMBLE:I = 0x4

.field public static final THREAD_TYPE_TOP_IN_ALL:I = 0x10

.field public static final THREAD_TYPE_TOP_IN_FORUM:I = 0x8

.field public static final THREAD_TYPE_VOTE:I = 0x2

.field private static final serialVersionUID:J = -0x125dc80954894f0bL


# instance fields
.field protected _createTime:Ljava/util/Date;

.field protected _creatorUserName:Ljava/lang/String;

.field protected _eType:I

.field protected _forumID:J

.field protected _iconLink:Ljava/lang/String;

.field protected _id:J

.field protected _postNumber:I

.field protected _rootGambleEvent:Lcom/superdroid/rpc/forum/model/GambleEvent;

.field protected _rootVoteEvent:Lcom/superdroid/rpc/forum/model/VoteEvent;

.field protected _score:J

.field protected _subject:Ljava/lang/String;

.field protected _type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_id:J

    .line 192
    iput v2, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    .line 193
    iput v2, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_postNumber:I

    .line 195
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/util/Date;III)V
    .locals 0
    .parameter "id"
    .parameter "forumID"
    .parameter "creatorID"
    .parameter "subject"
    .parameter "createTime"
    .parameter "type"
    .parameter "postNumber"
    .parameter "eType"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_id:J

    .line 200
    iput-wide p3, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_forumID:J

    .line 201
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_creatorUserName:Ljava/lang/String;

    .line 202
    iput-object p6, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_subject:Ljava/lang/String;

    .line 203
    iput-object p7, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_createTime:Ljava/util/Date;

    .line 204
    iput p8, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    .line 205
    iput p9, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_postNumber:I

    .line 206
    iput p10, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    .line 207
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "forumID"
    .parameter "creatorID"
    .parameter "subject"

    .prologue
    const/4 v2, 0x1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_id:J

    .line 211
    iput v2, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_postNumber:I

    .line 213
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_forumID:J

    .line 214
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_creatorUserName:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_subject:Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_createTime:Ljava/util/Date;

    .line 217
    iput v2, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    .line 219
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "forumID"
    .parameter "creatorID"
    .parameter "subject"
    .parameter "eType"

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_id:J

    .line 223
    const/4 v0, 0x1

    iput v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_postNumber:I

    .line 225
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_forumID:J

    .line 226
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_creatorUserName:Ljava/lang/String;

    .line 227
    iput-object p4, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_subject:Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_createTime:Ljava/util/Date;

    .line 229
    iput p5, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    .line 230
    return-void
.end method


# virtual methods
.method public addType(J)V
    .locals 2
    .parameter "type"

    .prologue
    .line 97
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    int-to-long v0, v0

    or-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    int-to-long v0, v0

    or-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    goto :goto_0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorScore()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_score:J

    return-wide v0
.end method

.method public getCreatorUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_creatorUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getEType()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    return v0
.end method

.method public getForumID()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_forumID:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_id:J

    return-wide v0
.end method

.method public getPostNumber()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_postNumber:I

    return v0
.end method

.method public getRootGambleEvent()Lcom/superdroid/rpc/forum/model/GambleEvent;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_rootGambleEvent:Lcom/superdroid/rpc/forum/model/GambleEvent;

    return-object v0
.end method

.method public getRootVoteEvent()Lcom/superdroid/rpc/forum/model/VoteEvent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_rootVoteEvent:Lcom/superdroid/rpc/forum/model/VoteEvent;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_subject:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    return v0
.end method

.method public isAttachThread()Z
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultThread()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 64
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public isGambleThread()Z
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopInAll()Z
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTopInForum()Z
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoteThread()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_eType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreateTime(Ljava/util/Date;)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_createTime:Ljava/util/Date;

    .line 142
    return-void
.end method

.method public setCreatorIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "iconLink"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_iconLink:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setCreatorScore(J)V
    .locals 0
    .parameter "score"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_score:J

    .line 171
    return-void
.end method

.method public setCreatorUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "creatorID"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_creatorUserName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setForumID(J)V
    .locals 0
    .parameter "forumID"

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_forumID:J

    .line 118
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_id:J

    .line 110
    return-void
.end method

.method public setPostNumber(I)V
    .locals 0
    .parameter "postNumber"

    .prologue
    .line 157
    iput p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_postNumber:I

    .line 158
    return-void
.end method

.method public setRootGambleEvent(Lcom/superdroid/rpc/forum/model/GambleEvent;)V
    .locals 0
    .parameter "rootGambleEvent"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_rootGambleEvent:Lcom/superdroid/rpc/forum/model/GambleEvent;

    .line 60
    return-void
.end method

.method public setRootVoteEvent(Lcom/superdroid/rpc/forum/model/VoteEvent;)V
    .locals 0
    .parameter "rootVoteEvent"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_rootVoteEvent:Lcom/superdroid/rpc/forum/model/VoteEvent;

    .line 52
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_subject:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 149
    iput p1, p0, Lcom/superdroid/rpc/forum/model/ForumThread;->_type:I

    .line 150
    return-void
.end method
