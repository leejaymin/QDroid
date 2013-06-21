.class public Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWTunnelingInitMakeByte;
.super Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;
.source "WifiGWTunnelingInitMakeByte.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/WifiGWMakeByte;-><init>()V

    .line 23
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

    .line 136
    const/4 v3, 0x0

    check-cast v3, [B

    .line 137
    .local v3, packetBytes:[B
    const/4 v4, 0x0

    .line 138
    .local v4, packetLen:I
    const/4 v2, 0x0

    .line 141
    .local v2, offset:I
    add-int/lit8 v4, v4, 0xb

    .line 144
    new-array v3, v4, [B

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 150
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmMDN()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, ctn:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v7, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WIFI G/W][REUQEST][Tunneling MakeByte Body String]CTN:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 155
    return-object v3

    .line 146
    .end local v0           #ctn:Ljava/lang/String;
    :cond_0
    aput-byte v7, v3, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

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
    .line 27
    const/16 v23, 0x0

    check-cast v23, [B

    .line 28
    .local v23, packetBytes:[B
    const/16 v24, 0x0

    .line 29
    .local v24, packetLen:I
    const/16 v21, 0x0

    .line 32
    .local v21, offset:I
    add-int/lit8 v24, v24, 0x1

    .line 33
    add-int/lit8 v24, v24, 0x1

    .line 34
    add-int/lit8 v24, v24, 0x1

    .line 35
    add-int/lit8 v24, v24, 0x1

    .line 36
    add-int/lit8 v24, v24, 0x2

    .line 37
    add-int/lit8 v24, v24, 0x1

    .line 38
    add-int/lit8 v24, v24, 0x1d

    .line 39
    add-int/lit8 v24, v24, 0x4

    .line 40
    add-int/lit8 v24, v24, 0x4

    .line 41
    add-int/lit8 v24, v24, 0x4

    .line 42
    add-int/lit8 v24, v24, 0x4

    .line 43
    add-int/lit8 v24, v24, 0x4

    .line 44
    add-int/lit8 v24, v24, 0x4

    .line 48
    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 49
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-lt v0, v1, :cond_0

    .line 54
    const/16 v17, 0x5

    .line 55
    .local v17, Transaction_Type:B
    aput-byte v17, v23, v21

    .line 56
    add-int/lit8 v21, v21, 0x1

    .line 59
    const/16 v16, 0x0

    .line 60
    .local v16, Transaction_Result:B
    aput-byte v16, v23, v21

    .line 61
    add-int/lit8 v21, v21, 0x1

    .line 66
    const/4 v6, 0x3

    .line 67
    .local v6, Encryption_Type:B
    aput-byte v6, v23, v21

    .line 68
    add-int/lit8 v21, v21, 0x1

    .line 71
    const-string v9, "S"

    .line 72
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

    .line 73
    add-int/lit8 v21, v21, 0x1

    .line 76
    const-string v14, "50"

    .line 77
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

    .line 78
    add-int/lit8 v21, v21, 0x2

    .line 81
    const/4 v12, 0x2

    .line 82
    .local v12, Service_Address_Type:B
    aput-byte v12, v23, v21

    .line 83
    add-int/lit8 v21, v21, 0x1

    .line 88
    sget-object v11, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunIP:Ljava/lang/String;

    .line 89
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

    .line 90
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

    .line 91
    add-int/lit8 v21, v21, 0x1d

    .line 94
    sget v13, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunPort:I

    .line 95
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

    .line 96
    invoke-static {v13}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v25

    .line 97
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

    .line 98
    add-int/lit8 v21, v21, 0x4

    .line 101
    const/4 v5, 0x0

    .line 102
    .local v5, CTN_Encryption_Size:I
    invoke-static {v5}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v18

    .line 103
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

    .line 104
    add-int/lit8 v21, v21, 0x4

    .line 107
    const/4 v15, 0x0

    .line 108
    .local v15, Start_byte:I
    invoke-static {v15}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v27

    .line 109
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

    .line 110
    add-int/lit8 v21, v21, 0x4

    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, End_byte:I
    invoke-static {v7}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v19

    .line 115
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

    .line 116
    add-int/lit8 v21, v21, 0x4

    .line 119
    const/16 v8, 0xb

    .line 120
    .local v8, Original_Data_Length:I
    invoke-static {v8}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v22

    .line 121
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

    .line 122
    add-int/lit8 v21, v21, 0x4

    .line 125
    const/16 v10, 0xb

    .line 126
    .local v10, Sending_Data_Length:I
    invoke-static {v10}, Lcom/feelingk/lguiab/util/PacketUtil;->intToByte(I)[B

    move-result-object v26

    .line 127
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

    .line 128
    add-int/lit8 v21, v21, 0x4

    .line 130
    return-object v23

    .line 50
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

    .line 49
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0
.end method
