.class public Lcom/fleapapa/util/MyTokenizer;
.super Ljava/util/StringTokenizer;
.source "MyTokenizer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 14
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 15
    return-void

    :cond_0
    move-object v0, p1

    .line 14
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "src"
    .parameter "del"

    .prologue
    .line 11
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {p0, v0, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    :cond_0
    move-object v0, p1

    .line 11
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fleapapa/util/MyTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/fleapapa/util/MyTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 24
    :goto_0
    return-object v1

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "del"

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fleapapa/util/MyTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public nextDouble()D
    .locals 3

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/fleapapa/util/MyTokenizer;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 62
    :goto_0
    return-wide v1

    .line 61
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MyTokenizer;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 2
    .parameter "radix"

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/fleapapa/util/MyTokenizer;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 47
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MyTokenizer;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .locals 3
    .parameter "radix"

    .prologue
    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/fleapapa/util/MyTokenizer;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 54
    :goto_0
    return-wide v1

    .line 53
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, e:Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public nextSA()Ljava/net/InetSocketAddress;
    .locals 5

    .prologue
    .line 66
    new-instance v2, Lcom/fleapapa/util/MyTokenizer;

    invoke-virtual {p0}, Lcom/fleapapa/util/MyTokenizer;->next()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-direct {v2, v3, v4}, Lcom/fleapapa/util/MyTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v2, scan:Lcom/fleapapa/util/MyTokenizer;
    invoke-virtual {v2}, Lcom/fleapapa/util/MyTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/fleapapa/util/MyTokenizer;->nextInt()I

    move-result v1

    .line 69
    .local v1, port:I
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v3
.end method
