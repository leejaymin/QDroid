.class public Lorg/connectbot/bean/HostBean;
.super Lorg/connectbot/bean/AbstractBean;
.source "HostBean.java"


# instance fields
.field private color:Ljava/lang/String;

.field private compression:Z

.field private delKey:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private fontSize:I

.field private hostKey:[B

.field private hostKeyAlgo:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private id:J

.field private lastConnect:J

.field private nickname:Ljava/lang/String;

.field private port:I

.field private postLogin:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private pubkeyId:J

.field private stayConnected:Z

.field private useAuthAgent:Ljava/lang/String;

.field private useKeys:Z

.field private username:Ljava/lang/String;

.field private wantSession:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lorg/connectbot/bean/AbstractBean;-><init>()V

    .line 33
    iput-wide v2, p0, Lorg/connectbot/bean/HostBean;->id:J

    .line 34
    iput-object v1, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    .line 37
    const/16 v0, 0x16

    iput v0, p0, Lorg/connectbot/bean/HostBean;->port:I

    .line 38
    const-string v0, "ssh"

    iput-object v0, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lorg/connectbot/bean/HostBean;->hostKeyAlgo:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lorg/connectbot/bean/HostBean;->hostKey:[B

    .line 41
    iput-wide v2, p0, Lorg/connectbot/bean/HostBean;->lastConnect:J

    .line 43
    iput-boolean v5, p0, Lorg/connectbot/bean/HostBean;->useKeys:Z

    .line 44
    const-string v0, "no"

    iput-object v0, p0, Lorg/connectbot/bean/HostBean;->useAuthAgent:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lorg/connectbot/bean/HostBean;->postLogin:Ljava/lang/String;

    .line 46
    iput-wide v2, p0, Lorg/connectbot/bean/HostBean;->pubkeyId:J

    .line 47
    iput-boolean v5, p0, Lorg/connectbot/bean/HostBean;->wantSession:Z

    .line 48
    const-string v0, "del"

    iput-object v0, p0, Lorg/connectbot/bean/HostBean;->delKey:Ljava/lang/String;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lorg/connectbot/bean/HostBean;->fontSize:I

    .line 50
    iput-boolean v4, p0, Lorg/connectbot/bean/HostBean;->compression:Z

    .line 51
    sget-object v0, Lorg/connectbot/util/HostDatabase;->ENCODING_DEFAULT:Ljava/lang/String;

    iput-object v0, p0, Lorg/connectbot/bean/HostBean;->encoding:Ljava/lang/String;

    .line 52
    iput-boolean v4, p0, Lorg/connectbot/bean/HostBean;->stayConnected:Z

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/connectbot/bean/HostBean;

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 278
    :cond_1
    :goto_0
    return v1

    :cond_2
    move-object v0, p1

    .line 246
    check-cast v0, Lorg/connectbot/bean/HostBean;

    .line 248
    .local v0, host:Lorg/connectbot/bean/HostBean;
    iget-wide v3, p0, Lorg/connectbot/bean/HostBean;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 249
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/connectbot/bean/HostBean;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 251
    :cond_3
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 252
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 253
    goto :goto_0

    .line 254
    :cond_4
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 255
    goto :goto_0

    .line 257
    :cond_5
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 258
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getProtocol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 259
    goto :goto_0

    .line 260
    :cond_6
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 261
    goto :goto_0

    .line 263
    :cond_7
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 264
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    move v1, v2

    .line 265
    goto :goto_0

    .line 266
    :cond_8
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_9
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 270
    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    move v1, v2

    .line 271
    goto :goto_0

    .line 272
    :cond_a
    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getHostname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 273
    goto/16 :goto_0

    .line 275
    :cond_b
    iget v3, p0, Lorg/connectbot/bean/HostBean;->port:I

    invoke-virtual {v0}, Lorg/connectbot/bean/HostBean;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v1, v2

    .line 276
    goto/16 :goto_0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getCompression()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/connectbot/bean/HostBean;->compression:Z

    return v0
.end method

.method public getDelKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->delKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/connectbot/bean/HostBean;->fontSize:I

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/connectbot/bean/HostBean;->id:J

    return-wide v0
.end method

.method public getLastConnect()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/connectbot/bean/HostBean;->lastConnect:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/connectbot/bean/HostBean;->port:I

    return v0
.end method

.method public getPostLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->postLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getPubkeyId()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lorg/connectbot/bean/HostBean;->pubkeyId:J

    return-wide v0
.end method

.method public getStayConnected()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/connectbot/bean/HostBean;->stayConnected:Z

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :cond_0
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    iget v2, p0, Lorg/connectbot/bean/HostBean;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getUseAuthAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->useAuthAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "nickname"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "protocol"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "username"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "hostname"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "port"

    iget v2, p0, Lorg/connectbot/bean/HostBean;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v1, "hostkeyalgo"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->hostKeyAlgo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "hostkey"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->hostKey:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 225
    const-string v1, "lastconnect"

    iget-wide v2, p0, Lorg/connectbot/bean/HostBean;->lastConnect:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string v1, "color"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->color:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "usekeys"

    iget-boolean v2, p0, Lorg/connectbot/bean/HostBean;->useKeys:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "useauthagent"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->useAuthAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "postlogin"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->postLogin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "pubkeyid"

    iget-wide v2, p0, Lorg/connectbot/bean/HostBean;->pubkeyId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v1, "wantsession"

    iget-boolean v2, p0, Lorg/connectbot/bean/HostBean;->wantSession:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "delkey"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->delKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "fontsize"

    iget v2, p0, Lorg/connectbot/bean/HostBean;->fontSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v1, "compression"

    iget-boolean v2, p0, Lorg/connectbot/bean/HostBean;->compression:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "encoding"

    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "stayconnected"

    iget-boolean v2, p0, Lorg/connectbot/bean/HostBean;->stayConnected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    return-object v0
.end method

.method public getWantSession()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/connectbot/bean/HostBean;->wantSession:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 283
    const/4 v0, 0x7

    .line 285
    .local v0, hash:I
    iget-wide v3, p0, Lorg/connectbot/bean/HostBean;->id:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 286
    iget-wide v1, p0, Lorg/connectbot/bean/HostBean;->id:J

    long-to-int v1, v1

    .line 294
    :goto_0
    return v1

    .line 288
    :cond_0
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/lit16 v0, v1, 0xd9

    .line 289
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 290
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 291
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_4
    add-int v0, v1, v2

    .line 292
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/connectbot/bean/HostBean;->port:I

    add-int v0, v1, v2

    move v1, v0

    .line 294
    goto :goto_0

    .line 288
    :cond_1
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 289
    :cond_2
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 290
    :cond_3
    iget-object v1, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 291
    :cond_4
    iget-object v2, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .parameter "color"

    .prologue
    .line 135
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->color:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setCompression(Z)V
    .locals 0
    .parameter "compression"

    .prologue
    .line 183
    iput-boolean p1, p0, Lorg/connectbot/bean/HostBean;->compression:Z

    .line 184
    return-void
.end method

.method public setDelKey(Ljava/lang/String;)V
    .locals 0
    .parameter "delKey"

    .prologue
    .line 171
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->delKey:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 190
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->encoding:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .parameter "fontSize"

    .prologue
    .line 177
    iput p1, p0, Lorg/connectbot/bean/HostBean;->fontSize:I

    .line 178
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0
    .parameter "hostname"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->hostname:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 72
    iput-wide p1, p0, Lorg/connectbot/bean/HostBean;->id:J

    .line 73
    return-void
.end method

.method public setLastConnect(J)V
    .locals 0
    .parameter "lastConnect"

    .prologue
    .line 129
    iput-wide p1, p0, Lorg/connectbot/bean/HostBean;->lastConnect:J

    .line 130
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 78
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->nickname:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 96
    iput p1, p0, Lorg/connectbot/bean/HostBean;->port:I

    .line 97
    return-void
.end method

.method public setPostLogin(Ljava/lang/String;)V
    .locals 0
    .parameter "postLogin"

    .prologue
    .line 153
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->postLogin:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .parameter "protocol"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->protocol:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setPubkeyId(J)V
    .locals 0
    .parameter "pubkeyId"

    .prologue
    .line 159
    iput-wide p1, p0, Lorg/connectbot/bean/HostBean;->pubkeyId:J

    .line 160
    return-void
.end method

.method public setStayConnected(Z)V
    .locals 0
    .parameter "stayConnected"

    .prologue
    .line 198
    iput-boolean p1, p0, Lorg/connectbot/bean/HostBean;->stayConnected:Z

    .line 199
    return-void
.end method

.method public setUseAuthAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "useAuthAgent"

    .prologue
    .line 147
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->useAuthAgent:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setUseKeys(Z)V
    .locals 0
    .parameter "useKeys"

    .prologue
    .line 141
    iput-boolean p1, p0, Lorg/connectbot/bean/HostBean;->useKeys:Z

    .line 142
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 84
    iput-object p1, p0, Lorg/connectbot/bean/HostBean;->username:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setWantSession(Z)V
    .locals 0
    .parameter "wantSession"

    .prologue
    .line 165
    iput-boolean p1, p0, Lorg/connectbot/bean/HostBean;->wantSession:Z

    .line 166
    return-void
.end method
