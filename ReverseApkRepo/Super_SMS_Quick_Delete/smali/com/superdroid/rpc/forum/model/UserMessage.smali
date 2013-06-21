.class public Lcom/superdroid/rpc/forum/model/UserMessage;
.super Ljava/lang/Object;
.source "UserMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x39e43397bfccf0f9L


# instance fields
.field protected _attach:[Ljava/lang/Byte;

.field protected _canReply:Z

.field protected _content:Ljava/lang/String;

.field protected _date:Ljava/util/Date;

.field protected _from:Ljava/lang/String;

.field protected _fromIconLink:Ljava/lang/String;

.field protected _id:J

.field protected _isInvite:Z

.field protected _isPublic:Z

.field protected _to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isInvite:Z

    .line 18
    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isPublic:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_canReply:Z

    .line 20
    iput-object v1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_attach:[Ljava/lang/Byte;

    .line 21
    iput-object v1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_date:Ljava/util/Date;

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_date:Ljava/util/Date;

    .line 30
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/Byte;Ljava/util/Date;)V
    .locals 2
    .parameter "id"
    .parameter "from"
    .parameter "to"
    .parameter "content"
    .parameter "isInvite"
    .parameter "isPublic"
    .parameter "canReply"
    .parameter "attach"
    .parameter "date"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isInvite:Z

    .line 18
    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isPublic:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_canReply:Z

    .line 20
    iput-object v1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_attach:[Ljava/lang/Byte;

    .line 21
    iput-object v1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_date:Ljava/util/Date;

    .line 35
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_id:J

    .line 36
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_from:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_to:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_content:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isInvite:Z

    .line 40
    iput-boolean p7, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isPublic:Z

    .line 41
    iput-boolean p8, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_canReply:Z

    .line 42
    iput-object p9, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_attach:[Ljava/lang/Byte;

    .line 43
    iput-object p10, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_date:Ljava/util/Date;

    .line 44
    return-void
.end method


# virtual methods
.method public canReply()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_canReply:Z

    return v0
.end method

.method public getAttach()[Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_attach:[Ljava/lang/Byte;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_content:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_from:Ljava/lang/String;

    return-object v0
.end method

.method public getFromIconLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_fromIconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_id:J

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_to:Ljava/lang/String;

    return-object v0
.end method

.method public isInvite()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isInvite:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isPublic:Z

    return v0
.end method

.method public setAttach([Ljava/lang/Byte;)V
    .locals 0
    .parameter "attach"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_attach:[Ljava/lang/Byte;

    .line 124
    return-void
.end method

.method public setCanReply(Z)V
    .locals 0
    .parameter "canreply"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_canReply:Z

    .line 116
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "_content"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_content:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_date:Ljava/util/Date;

    .line 52
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "_from"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_from:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setFromIconLink(Ljava/lang/String;)V
    .locals 0
    .parameter "iconLink"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_fromIconLink:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_id:J

    .line 68
    return-void
.end method

.method public setIsInvite(Z)V
    .locals 0
    .parameter "invite"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isInvite:Z

    .line 100
    return-void
.end method

.method public setPublic(Z)V
    .locals 0
    .parameter "public1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_isPublic:Z

    .line 108
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "_to"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/UserMessage;->_to:Ljava/lang/String;

    .line 84
    return-void
.end method
