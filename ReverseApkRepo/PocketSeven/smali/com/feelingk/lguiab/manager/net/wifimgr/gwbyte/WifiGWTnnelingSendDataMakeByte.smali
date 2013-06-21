.class public Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;
.super Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;
.source "WifiGWTnnelingSendDataMakeByte.java"


# instance fields
.field private strBuf:Ljava/lang/StringBuffer;

.field private valueBuf:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    .line 20
    iput-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->valueBuf:[B

    .line 26
    :try_start_0
    sget-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte$TunnelingSendDataParam;->strBuf:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    .line 27
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->getInstance()Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;

    move-result-object v1

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/net/wifimgr/common/KSClientMeta;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->valueBuf:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public makeBodyPacket()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 149
    const/4 v2, 0x0

    check-cast v2, [B

    .line 150
    .local v2, packetBytes:[B
    const/4 v3, 0x0

    .line 151
    .local v3, packetLen:I
    const/4 v1, 0x0

    .line 154
    .local v1, offset:I
    iget-object v4, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    .line 157
    new-array v2, v3, [B

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 164
    iget-object v4, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v4, v6, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[WIFI G/W][REUQEST][Tunneling MakeByte Body String]data:\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 167
    return-object v2

    .line 159
    :cond_0
    aput-byte v6, v2, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public makeHeaderPacket()[B
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    const/16 v23, 0x0

    check-cast v23, [B

    .line 37
    .local v23, packetBytes:[B
    const/16 v24, 0x0

    .line 38
    .local v24, packetLen:I
    const/16 v21, 0x0

    .line 41
    .local v21, offset:I
    add-int/lit8 v24, v24, 0x1

    .line 42
    add-int/lit8 v24, v24, 0x1

    .line 43
    add-int/lit8 v24, v24, 0x1

    .line 44
    add-int/lit8 v24, v24, 0x1

    .line 45
    add-int/lit8 v24, v24, 0x2

    .line 46
    add-int/lit8 v24, v24, 0x1

    .line 47
    add-int/lit8 v24, v24, 0x1d

    .line 48
    add-int/lit8 v24, v24, 0x4

    .line 49
    add-int/lit8 v24, v24, 0x4

    .line 50
    add-int/lit8 v24, v24, 0x4

    .line 51
    add-int/lit8 v24, v24, 0x4

    .line 52
    add-int/lit8 v24, v24, 0x4

    .line 53
    add-int/lit8 v24, v24, 0x4

    .line 57
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 58
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 63
    const/16 v17, 0x5

    .line 64
    .local v17, Transaction_Type:B
    aput-byte v17, v23, v21

    .line 65
    add-int/lit8 v21, v21, 0x1

    .line 68
    const/16 v16, 0x0

    .line 69
    .local v16, Transaction_Result:B
    aput-byte v16, v23, v21

    .line 70
    add-int/lit8 v21, v21, 0x1

    .line 73
    const/4 v6, 0x1

    .line 76
    .local v6, Encryption_Type:B
    aput-byte v6, v23, v21

    .line 77
    add-int/lit8 v21, v21, 0x1

    .line 80
    const-string v9, "S"

    .line 81
    .local v9, Security_Product_Code:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    add-int/lit8 v21, v21, 0x1

    .line 85
    const-string v14, "50"

    .line 86
    .local v14, Service_Type:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    add-int/lit8 v21, v21, 0x2

    .line 90
    const/4 v12, 0x2

    .line 91
    .local v12, Service_Address_Type:B
    aput-byte v12, v23, v21

    .line 92
    add-int/lit8 v21, v21, 0x1

    .line 97
    sget-object v11, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunIP:Ljava/lang/String;

    .line 98
    .local v11, Service_Address:Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "[WIFI G/W][REUQEST][Tunneling MakeByte Header String]Service Address:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    add-int/lit8 v21, v21, 0x1d

    .line 103
    sget v13, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunPort:I

    .line 104
    .local v13, Service_Port:I
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "[WIFI G/W][REUQEST][Tunneling MakeByte Header String]Service Port:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {v13}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v25

    .line 106
    .local v25, portBytes:[B
    const/16 v28, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    add-int/lit8 v21, v21, 0x4

    .line 110
    const/4 v5, 0x0

    .line 111
    .local v5, CTN_Encryption_Size:I
    invoke-static {v5}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v18

    .line 112
    .local v18, ctnEncryptionSizeByte:[B
    const/16 v28, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v18

    move/from16 v1, v28

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    add-int/lit8 v21, v21, 0x4

    .line 116
    const/16 v15, 0xb

    .line 118
    .local v15, Start_byte:I
    invoke-static {v15}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v27

    .line 119
    .local v27, startByte:[B
    const/16 v28, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    add-int/lit8 v21, v21, 0x4

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->valueBuf:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v7, v28, 0xb

    .line 125
    .local v7, End_byte:I
    invoke-static {v7}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v19

    .line 126
    .local v19, endByte:[B
    const/16 v28, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    add-int/lit8 v21, v21, 0x4

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->strBuf:Ljava/lang/StringBuffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v8, v28, 0xb

    .line 131
    .local v8, Original_Data_Length:I
    invoke-static {v8}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v22

    .line 132
    .local v22, originalDataLengthByte:[B
    const/16 v28, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    add-int/lit8 v21, v21, 0x4

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTnnelingSendDataMakeByte;->valueBuf:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v10, v28, 0xb

    .line 139
    .local v10, Sending_Data_Length:I
    invoke-static {v10}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v26

    .line 140
    .local v26, sendingDataLengthByte:[B
    const/16 v28, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v26

    move/from16 v1, v28

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    add-int/lit8 v21, v21, 0x4

    .line 143
    return-object v23

    .line 59
    .end local v5           #CTN_Encryption_Size:I
    .end local v6           #Encryption_Type:B
    .end local v7           #End_byte:I
    .end local v8           #Original_Data_Length:I
    .end local v9           #Security_Product_Code:Ljava/lang/String;
    .end local v10           #Sending_Data_Length:I
    .end local v11           #Service_Address:Ljava/lang/String;
    .end local v12           #Service_Address_Type:B
    .end local v13           #Service_Port:I
    .end local v14           #Service_Type:Ljava/lang/String;
    .end local v15           #Start_byte:I
    .end local v16           #Transaction_Result:B
    .end local v17           #Transaction_Type:B
    .end local v18           #ctnEncryptionSizeByte:[B
    .end local v19           #endByte:[B
    .end local v22           #originalDataLengthByte:[B
    .end local v25           #portBytes:[B
    .end local v26           #sendingDataLengthByte:[B
    .end local v27           #startByte:[B
    :cond_0
    const/16 v28, 0x0

    aput-byte v28, v23, v20

    .line 58
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0
.end method
