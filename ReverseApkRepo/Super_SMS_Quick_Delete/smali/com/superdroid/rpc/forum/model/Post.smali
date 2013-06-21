.class public Lcom/superdroid/rpc/forum/model/Post;
.super Ljava/lang/Object;
.source "Post.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NOT_REGISTED_USER_ID:J = -0x1L

.field public static final QUOTE_LENGTH:I = 0x64

.field private static final serialVersionUID:J = 0x33d645762a44f28bL


# instance fields
.field protected _againstCnt:I

.field protected _content:Ljava/lang/String;

.field protected _iconLink:Ljava/lang/String;

.field protected _id:J

.field protected _imei:Ljava/lang/String;

.field protected _links:Ljava/lang/String;

.field protected _prefContent:Ljava/lang/String;

.field protected _referPostID:J

.field protected _score:J

.field protected _supportCnt:I

.field protected _threadID:J

.field protected _updateTime:Ljava/util/Date;

.field protected _userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    .line 30
    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    .line 31
    iput-wide v1, p0, Lcom/superdroid/rpc/forum/model/Post;->_referPostID:J

    .line 184
    iput-wide v1, p0, Lcom/superdroid/rpc/forum/model/Post;->_id:J

    .line 185
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Date;)V
    .locals 2
    .parameter "id"
    .parameter "threadID"
    .parameter "userID"
    .parameter "imei"
    .parameter "links"
    .parameter "content"
    .parameter "supportCnt"
    .parameter "agaginstCnt"
    .parameter "referPostId"
    .parameter "dt"

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    .line 30
    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_referPostID:J

    .line 190
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_id:J

    .line 191
    iput-wide p3, p0, Lcom/superdroid/rpc/forum/model/Post;->_threadID:J

    .line 192
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/Post;->_userName:Ljava/lang/String;

    .line 193
    iput-object p6, p0, Lcom/superdroid/rpc/forum/model/Post;->_imei:Ljava/lang/String;

    .line 194
    iput-object p7, p0, Lcom/superdroid/rpc/forum/model/Post;->_links:Ljava/lang/String;

    .line 195
    iput-object p8, p0, Lcom/superdroid/rpc/forum/model/Post;->_content:Ljava/lang/String;

    .line 196
    iput p9, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    .line 197
    iput p10, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    .line 198
    iput-wide p11, p0, Lcom/superdroid/rpc/forum/model/Post;->_referPostID:J

    .line 199
    iput-object p13, p0, Lcom/superdroid/rpc/forum/model/Post;->_updateTime:Ljava/util/Date;

    .line 200
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "threadID"
    .parameter "userID"
    .parameter "imei"
    .parameter "content"
    .parameter "refID"

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    .line 30
    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_referPostID:J

    .line 203
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_threadID:J

    .line 204
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/Post;->_userName:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lcom/superdroid/rpc/forum/model/Post;->_imei:Ljava/lang/String;

    .line 206
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/Post;->_content:Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_updateTime:Ljava/util/Date;

    .line 208
    iput-wide p6, p0, Lcom/superdroid/rpc/forum/model/Post;->_referPostID:J

    .line 209
    return-void
.end method

.method public static makePrefContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "referName"
    .parameter "content"

    .prologue
    const/16 v2, 0x64

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAgainstCnt()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_content:Ljava/lang/String;

    return-object v0
.end method

.method public getIconLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_id:J

    return-wide v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_links:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_prefContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReferPostID()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_referPostID:J

    return-wide v0
.end method

.method public getScore()J
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_score:J

    return-wide v0
.end method

.method public getSupportCnt()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    return v0
.end method

.method public getThreadID()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_threadID:J

    return-wide v0
.end method

.method public getUpdateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_updateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_userName:Ljava/lang/String;

    return-object v0
.end method

.method public increaseAgainstCnt()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    .line 116
    return-void
.end method

.method public increaseSupportCnt()V
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    .line 112
    return-void
.end method

.method public setAgainstCnt(I)V
    .locals 0
    .parameter "againstCnt"

    .prologue
    .line 119
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_againstCnt:I

    .line 120
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_content:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setIconLink(Ljava/lang/String;)V
    .locals 0
    .parameter "iconLink"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_iconLink:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_id:J

    .line 56
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_imei:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setLinks(Ljava/lang/String;)V
    .locals 0
    .parameter "links"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_links:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setPrefContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_prefContent:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setPrefContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "referName"
    .parameter "content"

    .prologue
    .line 169
    invoke-static {p1, p2}, Lcom/superdroid/rpc/forum/model/Post;->makePrefContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/rpc/forum/model/Post;->_prefContent:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setReferPostID(J)V
    .locals 0
    .parameter "referPostID"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_referPostID:J

    .line 128
    return-void
.end method

.method public setScore(J)V
    .locals 0
    .parameter "score"

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_score:J

    .line 162
    return-void
.end method

.method public setSupportCnt(I)V
    .locals 0
    .parameter "supportCnt"

    .prologue
    .line 103
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_supportCnt:I

    .line 104
    return-void
.end method

.method public setThreadID(J)V
    .locals 0
    .parameter "threadID"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_threadID:J

    .line 64
    return-void
.end method

.method public setUpdateTime(Ljava/util/Date;)V
    .locals 0
    .parameter "updateTime"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_updateTime:Ljava/util/Date;

    .line 136
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userID"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Post;->_userName:Ljava/lang/String;

    .line 72
    return-void
.end method
