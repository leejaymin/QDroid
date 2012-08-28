.class public Lorg/connectbot/bean/PortForwardBean;
.super Lorg/connectbot/bean/AbstractBean;
.source "PortForwardBean.java"


# instance fields
.field private destAddr:Ljava/lang/String;

.field private destPort:I

.field private enabled:Z

.field private hostId:J

.field private id:J

.field private identifier:Ljava/lang/Object;

.field private nickname:Ljava/lang/String;

.field private sourcePort:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .parameter "id"
    .parameter "hostId"
    .parameter "nickname"
    .parameter "type"
    .parameter "sourcePort"
    .parameter "destAddr"
    .parameter "destPort"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lorg/connectbot/bean/AbstractBean;-><init>()V

    .line 33
    iput-wide v2, p0, Lorg/connectbot/bean/PortForwardBean;->id:J

    .line 34
    iput-wide v2, p0, Lorg/connectbot/bean/PortForwardBean;->hostId:J

    .line 35
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->nickname:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    .line 37
    iput v0, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    .line 38
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    .line 39
    iput v0, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/bean/PortForwardBean;->enabled:Z

    .line 43
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->identifier:Ljava/lang/Object;

    .line 54
    iput-wide p1, p0, Lorg/connectbot/bean/PortForwardBean;->id:J

    .line 55
    iput-wide p3, p0, Lorg/connectbot/bean/PortForwardBean;->hostId:J

    .line 56
    iput-object p5, p0, Lorg/connectbot/bean/PortForwardBean;->nickname:Ljava/lang/String;

    .line 57
    iput-object p6, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    .line 58
    iput p7, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    .line 59
    iput-object p8, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    .line 60
    iput p9, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    .line 61
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "hostId"
    .parameter "nickname"
    .parameter "type"
    .parameter "source"
    .parameter "dest"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lorg/connectbot/bean/AbstractBean;-><init>()V

    .line 33
    iput-wide v2, p0, Lorg/connectbot/bean/PortForwardBean;->id:J

    .line 34
    iput-wide v2, p0, Lorg/connectbot/bean/PortForwardBean;->hostId:J

    .line 35
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->nickname:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    .line 37
    iput v0, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    .line 38
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    .line 39
    iput v0, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/bean/PortForwardBean;->enabled:Z

    .line 43
    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->identifier:Ljava/lang/Object;

    .line 69
    iput-wide p1, p0, Lorg/connectbot/bean/PortForwardBean;->hostId:J

    .line 70
    iput-object p3, p0, Lorg/connectbot/bean/PortForwardBean;->nickname:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    .line 72
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    .line 74
    invoke-virtual {p0, p6}, Lorg/connectbot/bean/PortForwardBean;->setDest(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 207
    const-string v0, "Unknown type"

    .line 209
    .local v0, description:Ljava/lang/String;
    const-string v1, "local"

    iget-object v2, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const-string v1, "Local port %d to %s:%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 211
    :cond_1
    const-string v1, "remote"

    iget-object v2, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    const-string v1, "Remote port %d to %s:%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 217
    :cond_2
    const-string v1, "dynamic5"

    iget-object v2, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const-string v1, "Dynamic port %d (SOCKS)"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDestAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDestPort()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/connectbot/bean/PortForwardBean;->id:J

    return-wide v0
.end method

.method public getIdentifier()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/connectbot/bean/PortForwardBean;->identifier:Ljava/lang/Object;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/connectbot/bean/PortForwardBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePort()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "hostid"

    iget-wide v2, p0, Lorg/connectbot/bean/PortForwardBean;->hostId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    const-string v1, "nickname"

    iget-object v2, p0, Lorg/connectbot/bean/PortForwardBean;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "type"

    iget-object v2, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "sourceport"

    iget v2, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v1, "destaddr"

    iget-object v2, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "destport"

    iget v2, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/connectbot/bean/PortForwardBean;->enabled:Z

    return v0
.end method

.method public final setDest(Ljava/lang/String;)V
    .locals 3
    .parameter "dest"

    .prologue
    const/4 v2, 0x1

    .line 141
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, destSplit:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/connectbot/bean/PortForwardBean;->destAddr:Ljava/lang/String;

    .line 143
    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 144
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/connectbot/bean/PortForwardBean;->destPort:I

    .line 145
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 179
    iput-boolean p1, p0, Lorg/connectbot/bean/PortForwardBean;->enabled:Z

    .line 180
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 85
    iput-wide p1, p0, Lorg/connectbot/bean/PortForwardBean;->id:J

    .line 86
    return-void
.end method

.method public setIdentifier(Ljava/lang/Object;)V
    .locals 0
    .parameter "identifier"

    .prologue
    .line 193
    iput-object p1, p0, Lorg/connectbot/bean/PortForwardBean;->identifier:Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/connectbot/bean/PortForwardBean;->nickname:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setSourcePort(I)V
    .locals 0
    .parameter "sourcePort"

    .prologue
    .line 127
    iput p1, p0, Lorg/connectbot/bean/PortForwardBean;->sourcePort:I

    .line 128
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 113
    iput-object p1, p0, Lorg/connectbot/bean/PortForwardBean;->type:Ljava/lang/String;

    .line 114
    return-void
.end method
