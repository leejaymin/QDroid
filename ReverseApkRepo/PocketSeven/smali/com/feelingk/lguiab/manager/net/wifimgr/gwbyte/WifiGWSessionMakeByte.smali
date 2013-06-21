.class public Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWSessionMakeByte;
.super Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;
.source "WifiGWSessionMakeByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public makeBodyPacket()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 147
    const/4 v3, 0x0

    check-cast v3, [B

    .line 148
    .local v3, packetBytes:[B
    const/4 v4, 0x0

    .line 149
    .local v4, packetLen:I
    const/4 v2, 0x0

    .line 152
    .local v2, offset:I
    add-int/lit8 v4, v4, 0xb

    .line 153
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getKeyInitLength()I

    move-result v5

    add-int/lit8 v4, v5, 0xb

    .line 157
    new-array v3, v4, [B

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 163
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmMDN()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, ctn:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    add-int/lit8 v2, v2, 0xb

    .line 168
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getKeyInit()[B

    move-result-object v5

    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v6

    invoke-virtual {v6}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getKeyInitLength()I

    move-result v6

    invoke-static {v5, v7, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WIFI G/W][REUQEST][Tunneling MakeByte Body String]CTN:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 172
    return-object v3

    .line 159
    .end local v0           #ctn:Ljava/lang/String;
    :cond_0
    aput-byte v7, v3, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public makeHeaderPacket()[B
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    const/16 v17, 0x0

    check-cast v17, [B

    .line 25
    .local v17, packetBytes:[B
    const/16 v18, 0x0

    .line 26
    .local v18, packetLen:I
    const/4 v15, 0x0

    .line 29
    .local v15, offset:I
    add-int/lit8 v18, v18, 0x1

    .line 30
    add-int/lit8 v18, v18, 0x1

    .line 31
    add-int/lit8 v18, v18, 0x1

    .line 32
    add-int/lit8 v18, v18, 0x1

    .line 33
    add-int/lit8 v18, v18, 0x2

    .line 34
    add-int/lit8 v18, v18, 0x1

    .line 35
    add-int/lit8 v18, v18, 0x1d

    .line 36
    add-int/lit8 v18, v18, 0x4

    .line 37
    add-int/lit8 v18, v18, 0x4

    .line 38
    add-int/lit8 v18, v18, 0x4

    .line 39
    add-int/lit8 v18, v18, 0x4

    .line 40
    add-int/lit8 v18, v18, 0x4

    .line 41
    add-int/lit8 v18, v18, 0x4

    .line 45
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 46
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, v18

    if-lt v14, v0, :cond_0

    .line 51
    const/4 v12, 0x1

    .line 52
    .local v12, Transaction_Type:B
    aput-byte v12, v17, v15

    .line 53
    add-int/lit8 v15, v15, 0x1

    .line 56
    const/4 v11, 0x0

    .line 57
    .local v11, Transaction_Result:B
    aput-byte v11, v17, v15

    .line 58
    add-int/lit8 v15, v15, 0x1

    .line 61
    const/4 v4, 0x0

    .line 62
    .local v4, Encryption_Type:B
    aput-byte v4, v17, v15

    .line 63
    add-int/lit8 v15, v15, 0x1

    .line 66
    const-string v7, "S"

    .line 67
    .local v7, Security_Product_Code:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    add-int/lit8 v15, v15, 0x1

    .line 71
    const-string v9, "50"

    .line 72
    .local v9, Service_Type:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    add-int/lit8 v15, v15, 0x2

    .line 78
    add-int/lit8 v15, v15, 0x1

    .line 83
    add-int/lit8 v15, v15, 0x1d

    .line 95
    add-int/lit8 v15, v15, 0x4

    .line 108
    add-int/lit8 v15, v15, 0x4

    .line 114
    const/16 v10, 0xb

    .line 116
    .local v10, Start_byte:I
    invoke-static {v10}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v20

    .line 117
    .local v20, startByte:[B
    const/16 v21, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    add-int/lit8 v15, v15, 0x4

    .line 121
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getKeyInitLength()I

    move-result v21

    add-int/lit8 v5, v21, 0xb

    .line 123
    .local v5, End_byte:I
    invoke-static {v5}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v13

    .line 124
    .local v13, endByte:[B
    const/16 v21, 0x0

    array-length v0, v13

    move/from16 v22, v0

    move/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-static {v13, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    add-int/lit8 v15, v15, 0x4

    .line 128
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getKeyInitLength()I

    move-result v21

    add-int/lit8 v6, v21, 0xb

    .line 130
    .local v6, Original_Data_Length:I
    invoke-static {v6}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v16

    .line 131
    .local v16, originalDataLengthByte:[B
    const/16 v21, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/lit8 v15, v15, 0x4

    .line 135
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getKeyInitLength()I

    move-result v21

    add-int/lit8 v8, v21, 0xb

    .line 137
    .local v8, Sending_Data_Length:I
    invoke-static {v8}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v19

    .line 138
    .local v19, sendingDataLengthByte:[B
    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    add-int/lit8 v15, v15, 0x4

    .line 141
    return-object v17

    .line 47
    .end local v4           #Encryption_Type:B
    .end local v5           #End_byte:I
    .end local v6           #Original_Data_Length:I
    .end local v7           #Security_Product_Code:Ljava/lang/String;
    .end local v8           #Sending_Data_Length:I
    .end local v9           #Service_Type:Ljava/lang/String;
    .end local v10           #Start_byte:I
    .end local v11           #Transaction_Result:B
    .end local v12           #Transaction_Type:B
    .end local v13           #endByte:[B
    .end local v16           #originalDataLengthByte:[B
    .end local v19           #sendingDataLengthByte:[B
    .end local v20           #startByte:[B
    :cond_0
    const/16 v21, 0x0

    aput-byte v21, v17, v14

    .line 46
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method
