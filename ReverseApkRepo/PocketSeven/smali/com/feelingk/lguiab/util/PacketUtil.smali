.class public Lcom/feelingk/lguiab/util/PacketUtil;
.super Ljava/lang/Object;
.source "PacketUtil.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO:[I = null

.field public static final INTPUTSTREAM_READ_RETRY_COUNT:I = 0xa


# direct methods
.method static synthetic $SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO()[I
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/feelingk/lguiab/util/PacketUtil;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->values()[Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->KT_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->NO_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->SK_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/feelingk/lguiab/util/PacketUtil;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ByteToInt([BI)I
    .locals 2
    .parameter "bytes"
    .parameter "off"

    .prologue
    .line 264
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 265
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 264
    add-int/2addr v0, v1

    .line 266
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 264
    add-int/2addr v0, v1

    .line 267
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    .line 264
    add-int/2addr v0, v1

    return v0
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 5
    .parameter "ba"

    .prologue
    .line 234
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 235
    :cond_0
    const/4 v3, 0x0

    .line 245
    :goto_0
    return-object v3

    .line 238
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 240
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_1
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 241
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, hexNumber:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4
    .parameter "hex"

    .prologue
    .line 250
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 259
    :cond_1
    return-object v0

    .line 254
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 255
    .local v0, ba:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 257
    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    .line 256
    aput-byte v2, v0, v1

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToByte(I)[B
    .locals 3
    .parameter "v"

    .prologue
    .line 271
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 272
    .local v0, buf:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 273
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 274
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 275
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 276
    return-object v0
.end method

.method public static makeDPPacket([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 141
    const/4 v2, 0x0

    check-cast v2, [B

    .line 144
    .local v2, packetBytes:[B
    array-length v4, p0

    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v3, v4, 0x1

    .line 145
    .local v3, packetLen:I
    new-array v2, v3, [B

    .line 147
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 152
    const-string v4, "DP"

    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/feelingk/lguiab/util/PacketUtil;->makePacketHeader(Ljava/lang/String;I)[B

    move-result-object v0

    .line 153
    .local v0, header:[B
    array-length v4, v0

    invoke-static {v0, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    const/16 v4, 0xc

    array-length v5, p0

    invoke-static {p0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x17

    aput-byte v5, v2, v4

    .line 164
    return-object v2

    .line 148
    .end local v0           #header:[B
    :cond_0
    aput-byte v6, v2, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static makeIPPacket(CLcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)[B
    .locals 14
    .parameter "networkType"
    .parameter "telecom"
    .parameter "applicationID"
    .parameter "min"
    .parameter "ip"
    .parameter "port"
    .parameter "productID"

    .prologue
    .line 30
    const/4 v7, 0x0

    check-cast v7, [B

    .line 33
    .local v7, packetBytes:[B
    const/16 v8, 0xc

    .line 34
    .local v8, packetLen:I
    add-int/lit8 v8, v8, 0x1

    .line 35
    add-int/lit8 v8, v8, 0x8

    .line 36
    add-int/lit8 v8, v8, 0x1

    .line 37
    add-int/lit8 v8, v8, 0xc

    .line 38
    add-int/lit8 v8, v8, 0xb

    .line 39
    add-int/lit8 v8, v8, 0x1

    .line 40
    if-eqz p4, :cond_0

    .line 41
    move-object/from16 v0, p4

    array-length v10, v0

    add-int/lit8 v8, v10, 0x2e

    .line 42
    :cond_0
    add-int/lit8 v8, v8, 0x7

    .line 43
    add-int/lit8 v8, v8, 0xc

    .line 44
    add-int/lit8 v8, v8, 0x2

    .line 45
    add-int/lit8 v8, v8, 0x1

    .line 48
    new-array v7, v8, [B

    .line 49
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v8, :cond_4

    .line 53
    const/4 v5, 0x0

    .line 56
    .local v5, offset:I
    const-string v10, "IP"

    add-int/lit8 v11, v8, -0xc

    invoke-static {v10, v11}, Lcom/feelingk/lguiab/util/PacketUtil;->makePacketHeader(Ljava/lang/String;I)[B

    move-result-object v3

    .line 59
    .local v3, header:[B
    const/4 v10, 0x0

    array-length v11, v3

    invoke-static {v3, v10, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    add-int/lit8 v5, v5, 0xc

    .line 63
    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    int-to-byte v10, p0

    aput-byte v10, v7, v5

    .line 66
    const-string v10, "IAP01.00"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v10, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    add-int/lit8 v5, v6, 0x8

    .line 70
    .end local v6           #offset:I
    .restart local v5       #offset:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .restart local v6       #offset:I
    const/16 v10, 0x41

    aput-byte v10, v7, v5

    .line 73
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    .line 74
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    const/16 v13, 0xc

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 73
    invoke-static {v10, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int/lit8 v5, v6, 0xc

    .line 78
    .end local v6           #offset:I
    .restart local v5       #offset:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    const/16 v13, 0xb

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v10, v11, v7, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    add-int/lit8 v5, v5, 0xb

    .line 82
    if-eqz p4, :cond_1

    .line 83
    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .restart local v6       #offset:I
    move-object/from16 v0, p4

    array-length v10, v0

    int-to-byte v10, v10

    aput-byte v10, v7, v5

    move v5, v6

    .line 86
    .end local v6           #offset:I
    .restart local v5       #offset:I
    :cond_1
    if-eqz p4, :cond_2

    .line 89
    const/4 v10, 0x0

    move-object/from16 v0, p4

    array-length v11, v0

    move-object/from16 v0, p4

    invoke-static {v0, v10, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    move-object/from16 v0, p4

    array-length v10, v0

    add-int/2addr v5, v10

    .line 93
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 94
    .local v9, portBytes:[B
    const/4 v10, 0x0

    array-length v11, v9

    invoke-static {v9, v10, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    .end local v9           #portBytes:[B
    :cond_2
    add-int/lit8 v5, v5, 0x7

    .line 100
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0xc

    invoke-static {v10, v11, v7, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    add-int/lit8 v5, v5, 0xc

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, currTelecom:Ljava/lang/String;
    invoke-static {}, Lcom/feelingk/lguiab/util/PacketUtil;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$KOR_TELECOM_INFO()[I

    move-result-object v10

    invoke-virtual {p1}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 121
    :goto_1
    if-eqz v2, :cond_3

    .line 122
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 123
    .local v1, byteTelecomType:[B
    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .end local v1           #byteTelecomType:[B
    :cond_3
    add-int/lit8 v5, v5, 0x2

    .line 128
    add-int/lit8 v10, v8, -0x1

    const/16 v11, 0x17

    aput-byte v11, v7, v10

    .line 130
    return-object v7

    .line 50
    .end local v2           #currTelecom:Ljava/lang/String;
    .end local v3           #header:[B
    .end local v5           #offset:I
    :cond_4
    const/4 v10, 0x0

    aput-byte v10, v7, v4

    .line 49
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 108
    .restart local v2       #currTelecom:Ljava/lang/String;
    .restart local v3       #header:[B
    .restart local v5       #offset:I
    :pswitch_0
    const-string v2, "11"

    .line 109
    goto :goto_1

    .line 112
    :pswitch_1
    const-string v2, "12"

    .line 113
    goto :goto_1

    .line 116
    :pswitch_2
    const-string v2, "13"

    .line 117
    goto :goto_1

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static makePacketHeader(Ljava/lang/String;I)[B
    .locals 7
    .parameter "packetType"
    .parameter "dataLen"

    .prologue
    const/16 v4, 0xc

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 176
    new-array v0, v4, [B

    .line 178
    .local v0, buf:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 183
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 184
    .local v3, type:[B
    invoke-static {v3, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 188
    .local v1, data_len:[B
    array-length v4, v1

    invoke-static {v1, v5, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    return-object v0

    .line 179
    .end local v1           #data_len:[B
    .end local v3           #type:[B
    :cond_0
    aput-byte v5, v0, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static packetDebug([BI)V
    .locals 8
    .parameter "packetBytes"
    .parameter "length"

    .prologue
    const/16 v7, 0x10

    .line 201
    const-string v0, "############ Packet ############\n"

    .line 211
    .local v0, dump:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-lt v4, p1, :cond_0

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n#################################"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 230
    return-void

    .line 213
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "0:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, line:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    sub-int v5, p1, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    const/4 v1, 0x0

    :goto_2
    sub-int v5, p1, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 216
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v5, v4, v1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v7, :cond_2

    const-string v5, "0"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 218
    add-int v6, v4, v1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_2
    const-string v5, ""

    goto :goto_3

    .line 222
    :cond_3
    add-int v5, v4, v1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v3, v5

    .line 223
    .local v3, me:B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    if-le v3, v5, :cond_4

    const/16 v5, 0x7b

    if-ge v3, v5, :cond_4

    int-to-char v5, v3

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    :cond_4
    const/16 v5, 0x2e

    goto :goto_4
.end method

.method public static readDataBuffer(Ljava/io/InputStream;)[B
    .locals 20
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 282
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 283
    .local v4, bout:Ljava/io/ByteArrayOutputStream;
    const v17, 0x186a0

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 285
    .local v5, buf:[B
    const/4 v11, -0x1

    .line 286
    .local v11, length:I
    const/4 v12, 0x0

    .line 288
    .local v12, length_chunked:I
    const/4 v14, 0x0

    .line 289
    .local v14, line:Ljava/lang/String;
    const-string v9, "Content-Length:"

    .line 290
    .local v9, key:Ljava/lang/String;
    const-string v10, "chunked"

    .line 291
    .local v10, key_long:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, bcount:I
    const/4 v15, 0x0

    .line 292
    .local v15, n:I
    const/4 v7, 0x0

    .line 293
    .local v7, content_length:Z
    const/16 v16, 0x0

    .line 295
    .local v16, transfer_enconding:Z
    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/feelingk/lguiab/util/PacketUtil;->read_line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 299
    if-nez v7, :cond_1

    invoke-virtual {v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 301
    invoke-virtual {v14, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 303
    const/4 v7, 0x1

    .line 305
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 335
    :goto_1
    if-nez v14, :cond_5

    new-instance v17, Ljava/lang/Exception;

    const-string v18, "unexcepted header data format"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 309
    :cond_2
    if-nez v16, :cond_3

    invoke-virtual {v14, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 311
    invoke-static/range {p0 .. p0}, Lcom/feelingk/lguiab/util/PacketUtil;->read_line(Ljava/io/InputStream;)Ljava/lang/String;

    .line 312
    invoke-static/range {p0 .. p0}, Lcom/feelingk/lguiab/util/PacketUtil;->read_line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    .line 313
    const/16 v16, 0x1

    .line 316
    :cond_3
    if-eqz v16, :cond_0

    .line 320
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 322
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 328
    :catch_0
    move-exception v8

    .line 330
    .local v8, e:Ljava/lang/Exception;
    const-string v17, "euc-kr"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "euc-kr"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    const-string v17, "euc-kr"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int v3, v3, v17

    .line 294
    goto/16 :goto_0

    .line 325
    .end local v8           #e:Ljava/lang/Exception;
    :cond_4
    const/16 v17, 0x10

    :try_start_1
    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v17

    add-int v12, v12, v17

    goto/16 :goto_0

    .line 337
    :cond_5
    if-eqz v16, :cond_6

    .line 339
    move v11, v12

    .line 340
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "total chunked length :"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    move-object v6, v5

    .line 378
    .end local v5           #buf:[B
    .local v6, buf:[B
    :goto_2
    return-object v6

    .line 347
    .end local v6           #buf:[B
    .restart local v5       #buf:[B
    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_7

    .line 350
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/feelingk/lguiab/util/PacketUtil;->read_data(Ljava/io/InputStream;I)[B

    move-result-object v5

    :goto_3
    move-object v6, v5

    .line 378
    .end local v5           #buf:[B
    .restart local v6       #buf:[B
    goto :goto_2

    .line 353
    .end local v6           #buf:[B
    .restart local v5       #buf:[B
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/feelingk/lguiab/util/PacketUtil;->read_line(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    .line 354
    .local v13, length_hex:Ljava/lang/String;
    if-nez v13, :cond_8

    .line 355
    new-instance v17, Ljava/lang/Exception;

    const-string v18, "there is no HTTP body data"

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 362
    :cond_8
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    .line 367
    :goto_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_9

    .line 371
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/feelingk/lguiab/util/PacketUtil;->read_data(Ljava/io/InputStream;I)[B

    move-result-object v5

    goto :goto_3

    .line 374
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/feelingk/lguiab/util/PacketUtil;->read_data(Ljava/io/InputStream;)[B

    move-result-object v5

    goto :goto_3

    .line 363
    :catch_1
    move-exception v17

    goto :goto_4
.end method

.method private static read_data(Ljava/io/InputStream;)[B
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 462
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 463
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 464
    .local v0, bcount:I
    const/16 v5, 0x800

    new-array v2, v5, [B

    .line 465
    .local v2, buf:[B
    const/4 v4, 0x0

    .line 467
    .local v4, read_retry_count:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 468
    .local v3, n:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    .line 477
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 478
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 470
    :cond_1
    if-nez v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 471
    new-instance v5, Ljava/io/IOException;

    const-string v6, "inputstream-read-retry-count( 10) exceed !"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 472
    :cond_2
    if-eqz v3, :cond_0

    .line 473
    add-int/2addr v0, v3

    .line 474
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static read_data(Ljava/io/InputStream;I)[B
    .locals 8
    .parameter "in"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x800

    .line 426
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 428
    .local v0, bcount:I
    new-array v2, v6, [B

    .line 429
    .local v2, buf:[B
    const/4 v4, 0x0

    .line 430
    .local v4, read_retry_count:I
    const-string v5, "[WIFI G/W][RESPONSE]While Read SCKET Buffer[HEADER/BODY] START"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    if-lt v0, p1, :cond_1

    .line 447
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WIFI G/W][RESPONSE]While Read SCKET Buffer[HEADER/BODY] END readed : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 432
    :cond_1
    sub-int v5, p1, v0

    if-ge v5, v6, :cond_2

    sub-int v5, p1, v0

    :goto_1
    invoke-virtual {p0, v2, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 436
    .local v3, n:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 437
    new-instance v5, Ljava/io/IOException;

    .line 438
    const-string v6, "inputstream has returned an unexpected EOF"

    .line 437
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #n:I
    :cond_2
    move v5, v6

    .line 432
    goto :goto_1

    .line 440
    .restart local v3       #n:I
    :cond_3
    if-nez v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 441
    new-instance v5, Ljava/io/IOException;

    const-string v6, "inputstream-read-retry-count( 10) exceed !"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 442
    :cond_4
    if-eqz v3, :cond_0

    .line 443
    add-int/2addr v0, v3

    .line 444
    invoke-virtual {v1, v2, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static read_line(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 392
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 393
    .local v1, bout:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 395
    .local v2, eof:Z
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 396
    .local v0, b:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 397
    const/4 v2, 0x1

    .line 405
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 406
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 407
    const/4 v3, 0x0

    .line 409
    :goto_1
    return-object v3

    .line 400
    :cond_1
    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    .line 401
    int-to-byte v3, v0

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 402
    :cond_2
    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 409
    :cond_3
    const-string v3, "euc-kr"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
