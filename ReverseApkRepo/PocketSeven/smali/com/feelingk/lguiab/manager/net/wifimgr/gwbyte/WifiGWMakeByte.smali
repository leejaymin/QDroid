.class public abstract Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;
.super Ljava/lang/Object;
.source "WifiGWMakeByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract makeBodyPacket()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract makeHeaderPacket()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public makePacketISBody()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;->makeBodyPacket()[B

    move-result-object v0

    .line 49
    .local v0, boydByte:[B
    const/4 v2, 0x0

    .line 50
    .local v2, offset:I
    array-length v3, v0

    .line 51
    .local v3, packetLen:I
    const/4 v4, 0x0

    check-cast v4, [B

    .line 54
    .local v4, totalByte:[B
    new-array v4, v3, [B

    .line 55
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 59
    array-length v5, v0

    invoke-static {v0, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    array-length v5, v0

    add-int/2addr v2, v5

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WIFI G/W][REQUEST]Request Print(Body/Total) byte length : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WIFI G/W][REQUEST]Request *Body* Print(body.length) : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 67
    sget-boolean v5, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->printByte:Z

    if-eqz v5, :cond_0

    array-length v5, v0

    invoke-static {v0, v5}, Lcom/feelingk/lguiab/util/PacketUtil;->packetDebug([BI)V

    .line 69
    :cond_0
    return-object v4

    .line 56
    :cond_1
    aput-byte v6, v4, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public makePacketISHeaderISBody()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 12
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;->makeHeaderPacket()[B

    move-result-object v1

    .line 13
    .local v1, headerByte:[B
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;->makeBodyPacket()[B

    move-result-object v0

    .line 15
    .local v0, boydByte:[B
    const/4 v3, 0x0

    .line 16
    .local v3, offset:I
    array-length v6, v1

    array-length v7, v0

    add-int v4, v6, v7

    .line 17
    .local v4, packetLen:I
    const/4 v5, 0x0

    check-cast v5, [B

    .line 20
    .local v5, totalByte:[B
    new-array v5, v4, [B

    .line 21
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_2

    .line 25
    array-length v6, v1

    invoke-static {v1, v8, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    array-length v6, v1

    add-int/2addr v3, v6

    .line 28
    array-length v6, v0

    invoke-static {v0, v8, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    array-length v6, v0

    add-int/2addr v3, v6

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[WIFI G/W][REQUEST]Request Print(Header/Body/Total) byte length : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[WIFI G/W][REQUEST]Request *Header* Print(header.length) : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 36
    sget-boolean v6, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->printByte:Z

    if-eqz v6, :cond_0

    array-length v6, v1

    invoke-static {v1, v6}, Lcom/feelingk/lguiab/util/PacketUtil;->packetDebug([BI)V

    .line 37
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[WIFI G/W][REQUEST]Request *Body* Print(body.length) : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 38
    sget-boolean v6, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->printByte:Z

    if-eqz v6, :cond_1

    array-length v6, v0

    invoke-static {v0, v6}, Lcom/feelingk/lguiab/util/PacketUtil;->packetDebug([BI)V

    .line 40
    :cond_1
    return-object v5

    .line 22
    :cond_2
    aput-byte v8, v5, v2

    .line 21
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
