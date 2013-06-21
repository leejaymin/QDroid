.class public Lcom/superdroid/rpc/forum/model/SocialEvent;
.super Ljava/lang/Object;
.source "SocialEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SOCIAL_EVENT_TYPE_FRIEND_AGAINEST_POST:I = 0x4

.field public static final SOCIAL_EVENT_TYPE_FRIEND_CHANGE_LOCATION:I = 0x9

.field public static final SOCIAL_EVENT_TYPE_FRIEND_CHANGE_STATUS:I = 0x5

.field public static final SOCIAL_EVENT_TYPE_FRIEND_GAMBLE:I = 0x2

.field public static final SOCIAL_EVENT_TYPE_FRIEND_RECOMMAND_APP:I = 0x7

.field public static final SOCIAL_EVENT_TYPE_FRIEND_RECOMMAND_THREAD:I = 0x6

.field public static final SOCIAL_EVENT_TYPE_FRIEND_REOMMMAND_MUSIC:I = 0x8

.field public static final SOCIAL_EVENT_TYPE_FRIEND_SUPPORT_POST:I = 0x3

.field public static final SOCIAL_EVENT_TYPE_FRIEND_VOTE:I = 0x1

.field private static final serialVersionUID:J = 0x3ef6976e82636b08L


# instance fields
.field protected _displayInfo:Ljava/lang/String;

.field protected _id:J

.field protected _parameter:Ljava/lang/String;

.field protected _socialEventType:I

.field protected _who:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "who"
    .parameter "socialEventType"
    .parameter "parameter"
    .parameter "displayinfo"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_id:J

    .line 107
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_who:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_socialEventType:I

    .line 109
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_parameter:Ljava/lang/String;

    .line 110
    iput-object p6, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_displayInfo:Ljava/lang/String;

    .line 111
    return-void
.end method


# virtual methods
.method public getDisplayInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_displayInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_id:J

    return-wide v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_parameter:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterAsId()J
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_parameter:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParameterAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/superdroid/rpc/forum/model/SocialEvent;->getParameter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSocialEventType()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_socialEventType:I

    return v0
.end method

.method public getWho()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_who:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_displayInfo:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "_id"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_id:J

    .line 66
    return-void
.end method

.method public setParameter(Ljava/lang/String;)V
    .locals 0
    .parameter "_parameter"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_parameter:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSocialEventType(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 81
    iput p1, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_socialEventType:I

    .line 82
    return-void
.end method

.method public setWho(Ljava/lang/String;)V
    .locals 0
    .parameter "_who"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/SocialEvent;->_who:Ljava/lang/String;

    .line 74
    return-void
.end method
