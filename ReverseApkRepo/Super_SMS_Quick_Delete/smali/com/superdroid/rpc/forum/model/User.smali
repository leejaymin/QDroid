.class public Lcom/superdroid/rpc/forum/model/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x84cfbb11089019fL


# instance fields
.field protected _age:Ljava/lang/String;

.field protected _email:Ljava/lang/String;

.field protected _facebook:Ljava/lang/String;

.field protected _iconLink:Ljava/lang/String;

.field protected _id:J

.field protected _imei:Ljava/lang/String;

.field protected _level:Ljava/lang/String;

.field protected _location:Ljava/lang/String;

.field protected _number:Ljava/lang/String;

.field protected _password:Ljava/lang/String;

.field protected _postNumber:J

.field protected _registerTime:Ljava/util/Date;

.field protected _role:Ljava/lang/String;

.field protected _score:J

.field protected _sex:Ljava/lang/String;

.field protected _status:Ljava/lang/String;

.field protected _tags:Ljava/lang/String;

.field protected _twitter:Ljava/lang/String;

.field protected _userRole:Lcom/superdroid/rpc/forum/model/UserRole;

.field protected _username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_iconLink:Ljava/lang/String;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/superdroid/rpc/forum/model/User;->_id:J

    .line 46
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "username"
    .parameter "password"
    .parameter "email"
    .parameter "imei"
    .parameter "number"
    .parameter "score"
    .parameter "level"
    .parameter "postNumber"
    .parameter "registerTime"
    .parameter "tags"
    .parameter "iconLink"
    .parameter "role"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v2, ""

    iput-object v2, p0, Lcom/superdroid/rpc/forum/model/User;->_iconLink:Ljava/lang/String;

    .line 52
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/User;->_id:J

    .line 53
    iput-object p3, p0, Lcom/superdroid/rpc/forum/model/User;->_username:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/superdroid/rpc/forum/model/User;->_password:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/superdroid/rpc/forum/model/User;->_email:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/superdroid/rpc/forum/model/User;->_imei:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/superdroid/rpc/forum/model/User;->_number:Ljava/lang/String;

    .line 58
    iput-wide p8, p0, Lcom/superdroid/rpc/forum/model/User;->_score:J

    .line 59
    iput-object p10, p0, Lcom/superdroid/rpc/forum/model/User;->_level:Ljava/lang/String;

    .line 60
    iput-wide p11, p0, Lcom/superdroid/rpc/forum/model/User;->_postNumber:J

    .line 61
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/superdroid/rpc/forum/model/User;->_registerTime:Ljava/util/Date;

    .line 62
    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/superdroid/rpc/forum/model/User;->_tags:Ljava/lang/String;

    .line 63
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/superdroid/rpc/forum/model/User;->_iconLink:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/superdroid/rpc/forum/model/User;->_role:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_age:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getIconLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_iconLink:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/User;->_id:J

    return-wide v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_imei:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_level:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelInt()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_level:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_location:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getPostNumber()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/User;->_postNumber:J

    return-wide v0
.end method

.method public getRegisterTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_registerTime:Ljava/util/Date;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_role:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/superdroid/rpc/forum/model/User;->_score:J

    return-wide v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_sex:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_status:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRole()Lcom/superdroid/rpc/forum/model/UserRole;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_userRole:Lcom/superdroid/rpc/forum/model/UserRole;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/superdroid/rpc/forum/model/User;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0
    .parameter "age"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_age:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_email:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .locals 0
    .parameter "facebook"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_facebook:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setIconLink(Ljava/lang/String;)V
    .locals 0
    .parameter "iconLink"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_iconLink:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/User;->_id:J

    .line 81
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .parameter "imei"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_imei:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .parameter "level"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_level:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_location:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_number:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_password:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setPostNumber(J)V
    .locals 0
    .parameter "postNumber"

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/User;->_postNumber:J

    .line 149
    return-void
.end method

.method public setRegisterTime(Ljava/util/Date;)V
    .locals 0
    .parameter "registerTime"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_registerTime:Ljava/util/Date;

    .line 157
    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0
    .parameter "role"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_role:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setScore(J)V
    .locals 0
    .parameter "score"

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/superdroid/rpc/forum/model/User;->_score:J

    .line 129
    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0
    .parameter "_sex"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_sex:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "_status"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_status:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .parameter "tags"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_tags:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .locals 0
    .parameter "_twitter"

    .prologue
    .line 220
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_twitter:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setUserRole(Lcom/superdroid/rpc/forum/model/UserRole;)V
    .locals 0
    .parameter "userRole"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_userRole:Lcom/superdroid/rpc/forum/model/UserRole;

    .line 73
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/superdroid/rpc/forum/model/User;->_username:Ljava/lang/String;

    .line 89
    return-void
.end method
