.class public Lcom/superdroid/rpc/forum/model/Partner;
.super Ljava/lang/Object;
.source "Partner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AD_TYPE_ADMOB:I = 0x1

.field public static final AD_TYPE_GOOGLE:I = 0x0

.field private static final serialVersionUID:J = 0x7ab896e86d2b8e0L


# instance fields
.field protected _adID:Ljava/lang/String;

.field protected _adType:I

.field protected _adUrl:Ljava/lang/String;

.field protected _appName:Ljava/lang/String;

.field protected _chanelID:Ljava/lang/String;

.field protected _company:Ljava/lang/String;

.field protected _email:Ljava/lang/String;

.field protected _forumName:Ljava/lang/String;

.field protected _id:J

.field protected _keywords:Ljava/lang/String;

.field protected _otherRatio:I

.field protected _ownerRatio:I

.field protected _password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "forumName"
    .parameter "adType"
    .parameter "adID"
    .parameter "chanelID"
    .parameter "ownerRatio"
    .parameter "otherRatio"
    .parameter "email"
    .parameter "password"
    .parameter "keywords"
    .parameter "company"
    .parameter "adUrl"
    .parameter "appName"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_id:J

    .line 59
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/Partner;->_forumName:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adType:I

    .line 62
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adID:Ljava/lang/String;

    .line 63
    iput-object p6, p0, Lcom/superdroid/rpc/forum/model/Partner;->_chanelID:Ljava/lang/String;

    .line 64
    iput p7, p0, Lcom/superdroid/rpc/forum/model/Partner;->_ownerRatio:I

    .line 66
    iput p8, p0, Lcom/superdroid/rpc/forum/model/Partner;->_otherRatio:I

    .line 67
    iput-object p9, p0, Lcom/superdroid/rpc/forum/model/Partner;->_email:Ljava/lang/String;

    .line 68
    iput-object p10, p0, Lcom/superdroid/rpc/forum/model/Partner;->_password:Ljava/lang/String;

    .line 70
    iput-object p11, p0, Lcom/superdroid/rpc/forum/model/Partner;->_keywords:Ljava/lang/String;

    .line 71
    iput-object p12, p0, Lcom/superdroid/rpc/forum/model/Partner;->_company:Ljava/lang/String;

    .line 72
    iput-object p13, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adUrl:Ljava/lang/String;

    .line 73
    iput-object p14, p0, Lcom/superdroid/rpc/forum/model/Partner;->_appName:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getAdID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adID:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adType:I

    return v0
.end method

.method public getAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_appName:Ljava/lang/String;

    return-object v0
.end method

.method public getChanelID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_chanelID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_company:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_email:Ljava/lang/String;

    return-object v0
.end method

.method public getForumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_forumName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_id:J

    return-wide v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherRatio()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_otherRatio:I

    return v0
.end method

.method public getOwnerRatio()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_ownerRatio:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/Partner;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public setAdID(Ljava/lang/String;)V
    .locals 0
    .parameter "adID"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adID:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setAdType(I)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 97
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adType:I

    .line 98
    return-void
.end method

.method public setAdUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "adUrl"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_adUrl:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_appName:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setChanelID(Ljava/lang/String;)V
    .locals 0
    .parameter "chanelID"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_chanelID:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0
    .parameter "company"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_company:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_email:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setForumName(Ljava/lang/String;)V
    .locals 0
    .parameter "forumName"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_forumName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_id:J

    .line 82
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_keywords:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setOtherRatio(I)V
    .locals 0
    .parameter "otherRatio"

    .prologue
    .line 129
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_otherRatio:I

    .line 130
    return-void
.end method

.method public setOwnerRatio(I)V
    .locals 0
    .parameter "ownerRatio"

    .prologue
    .line 121
    iput p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_ownerRatio:I

    .line 122
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/Partner;->_password:Ljava/lang/String;

    .line 146
    return-void
.end method
