.class public Lcom/feelingk/iap/net/IAPNet;
.super Ljava/lang/Object;
.source "IAPNet.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IAPNet"

.field private static connect:Z

.field private static connectBP:Z

.field private static inputStream:Ljava/io/InputStream;

.field private static inputStreamBP:Ljava/io/InputStream;

.field private static isInit:Z

.field private static isWifi:Z

.field private static mContext:Landroid/content/Context;

.field private static outputStream:Ljava/io/OutputStream;

.field private static outputStreamBP:Ljava/io/OutputStream;

.field private static socketBP:Ljava/net/Socket;

.field private static socketGateway:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    .line 46
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    .line 47
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 48
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 49
    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 51
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 52
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 53
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    .line 55
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 56
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 57
    sput-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static LguIapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 27
    .parameter "mdn"
    .parameter "pID"
    .parameter "pName"
    .parameter "pCarrier"
    .parameter "TID"
    .parameter "BPInfo"
    .parameter "bUseTCash"
    .parameter "encJumin"

    .prologue
    .line 1695
    const/16 v23, 0x0

    .line 1697
    .local v23, useXPProtocol:Z
    const-string v12, "MK"

    .line 1698
    .local v12, headerParam:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1699
    .local v10, carrierStr:Ljava/lang/String;
    const/16 v18, 0xc

    .line 1700
    .local v18, packet_len:I
    new-instance v14, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v14}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1702
    .local v14, itemPurchaseDanalCfm:Lcom/feelingk/iap/net/MsgConfirm;
    const/16 v22, 0x0

    .line 1703
    .local v22, smsAuthNumberKey:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1706
    .local v21, smsAuthKey:Ljava/lang/String;
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getSmsAuthNumberKey()Ljava/lang/String;

    move-result-object v22

    .line 1708
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->getSmsAuthKey()Ljava/lang/String;

    move-result-object v21

    .line 1709
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthNumberKey: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthKeyt: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "[ DEBUG ] LguIapSendItemPurchaseByDanal() STart!! "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    add-int/lit8 v18, v18, 0xa

    .line 1715
    add-int/lit8 v18, v18, 0x2

    .line 1716
    add-int/lit8 v18, v18, 0xb

    .line 1717
    add-int/lit8 v18, v18, 0x1

    .line 1718
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v18, v24, 0x24

    .line 1719
    add-int/lit8 v18, v18, 0x1

    .line 1721
    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    .line 1722
    :cond_0
    const/16 v23, 0x1

    .line 1724
    :cond_1
    add-int/lit8 v18, v18, 0x1

    .line 1725
    if-eqz p4, :cond_2

    .line 1726
    add-int/lit8 v18, v18, 0x64

    .line 1728
    :cond_2
    add-int/lit8 v18, v18, 0x1

    .line 1729
    if-eqz p2, :cond_3

    .line 1730
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 1732
    :cond_3
    add-int/lit8 v18, v18, 0x1

    .line 1733
    if-eqz p5, :cond_4

    .line 1734
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 1736
    :cond_4
    add-int/lit8 v18, v18, 0x1

    .line 1737
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 1739
    add-int/lit8 v18, v18, 0x1

    .line 1740
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    add-int v18, v18, v24

    .line 1742
    add-int/lit8 v18, v18, 0x1

    .line 1746
    const/16 v24, 0x2

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 1747
    const-string v10, "12"

    .line 1756
    :goto_0
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1757
    .local v17, packetBytes:[B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move/from16 v0, v18

    if-lt v13, v0, :cond_c

    .line 1759
    const/4 v15, 0x0

    .line 1760
    .local v15, offset:I
    const/4 v11, 0x0

    check-cast v11, [B

    .line 1762
    .local v11, header:[B
    add-int/lit8 v24, v18, -0xc

    move/from16 v0, v24

    invoke-static {v12, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v11

    .line 1766
    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v11, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1767
    add-int/lit8 v15, v15, 0xc

    .line 1770
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1771
    .local v5, byte_pID:[B
    const/16 v24, 0x0

    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v5, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1772
    add-int/lit8 v15, v15, 0xa

    .line 1775
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1776
    .local v4, byte_pCarrier:[B
    const/16 v24, 0x0

    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1777
    add-int/lit8 v15, v15, 0x2

    .line 1780
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1781
    .local v7, byte_pMdn:[B
    const/16 v24, 0x0

    array-length v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1782
    add-int/lit8 v15, v15, 0xb

    .line 1785
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .local v16, offset:I
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 1788
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1789
    .local v6, byte_pJumin:[B
    const/16 v24, 0x0

    array-length v0, v6

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1790
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v15, v24, 0x24

    .line 1792
    .end local v16           #offset:I
    .restart local v15       #offset:I
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Jumin length="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  // Value = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    if-eqz p6, :cond_d

    .line 1796
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .restart local v16       #offset:I
    const/16 v24, 0x59

    aput-byte v24, v17, v15

    .line 1801
    :goto_2
    if-eqz p4, :cond_e

    .line 1802
    add-int/lit8 v15, v16, 0x1

    .end local v16           #offset:I
    .restart local v15       #offset:I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v16

    .line 1807
    :goto_3
    if-eqz p4, :cond_5

    .line 1808
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1809
    add-int/lit8 v15, v15, 0x64

    .line 1813
    :cond_5
    if-eqz p2, :cond_6

    .line 1814
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 1815
    :cond_6
    add-int/lit8 v15, v15, 0x1

    .line 1817
    if-eqz p2, :cond_7

    .line 1818
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1819
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v15, v24

    .line 1822
    :cond_7
    if-eqz v23, :cond_f

    .line 1824
    if-eqz p5, :cond_8

    .line 1825
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 1827
    :cond_8
    add-int/lit8 v15, v15, 0x1

    .line 1830
    if-eqz p5, :cond_9

    .line 1831
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1832
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v15, v24

    .line 1839
    :cond_9
    :goto_4
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .restart local v16       #offset:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 1842
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1843
    .local v9, byte_smsAuthNumberKey:[B
    const/16 v24, 0x0

    array-length v0, v9

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1844
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v16, v24

    .line 1846
    .end local v16           #offset:I
    .restart local v15       #offset:I
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthNumberKey="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  // Value = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .restart local v16       #offset:I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v17, v15

    .line 1852
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 1853
    .local v8, byte_smsAuthKey:[B
    const/16 v24, 0x0

    array-length v0, v8

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v16

    move/from16 v3, v25

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1854
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v15, v16, v24

    .line 1856
    .end local v16           #offset:I
    .restart local v15       #offset:I
    const-string v24, "IAPNet"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "smsAuthKey="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  // Value = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    add-int/lit8 v24, v18, -0x1

    const/16 v25, 0x17

    aput-byte v25, v17, v24

    .line 1861
    invoke-static/range {v17 .. v17}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v20

    .line 1862
    .local v20, ret:B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1863
    if-eqz v20, :cond_10

    .line 1864
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1865
    const-string v24, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1881
    :goto_5
    return-object v14

    .line 1749
    .end local v4           #byte_pCarrier:[B
    .end local v5           #byte_pID:[B
    .end local v6           #byte_pJumin:[B
    .end local v7           #byte_pMdn:[B
    .end local v8           #byte_smsAuthKey:[B
    .end local v9           #byte_smsAuthNumberKey:[B
    .end local v11           #header:[B
    .end local v13           #i:I
    .end local v15           #offset:I
    .end local v17           #packetBytes:[B
    .end local v20           #ret:B
    :cond_a
    const/16 v24, 0x3

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 1750
    const-string v10, "13"

    goto/16 :goto_0

    .line 1753
    :cond_b
    const-string v10, "11"

    goto/16 :goto_0

    .line 1758
    .restart local v13       #i:I
    .restart local v17       #packetBytes:[B
    :cond_c
    const/16 v24, 0x0

    aput-byte v24, v17, v13

    .line 1757
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1798
    .restart local v4       #byte_pCarrier:[B
    .restart local v5       #byte_pID:[B
    .restart local v6       #byte_pJumin:[B
    .restart local v7       #byte_pMdn:[B
    .restart local v11       #header:[B
    .restart local v15       #offset:I
    :cond_d
    add-int/lit8 v16, v15, 0x1

    .end local v15           #offset:I
    .restart local v16       #offset:I
    const/16 v24, 0x4e

    aput-byte v24, v17, v15

    goto/16 :goto_2

    .line 1804
    :cond_e
    add-int/lit8 v15, v16, 0x1

    .end local v16           #offset:I
    .restart local v15       #offset:I
    const/16 v24, 0x0

    aput-byte v24, v17, v16

    goto/16 :goto_3

    .line 1836
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 1870
    .restart local v8       #byte_smsAuthKey:[B
    .restart local v9       #byte_smsAuthNumberKey:[B
    .restart local v20       #ret:B
    :cond_10
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v19

    .line 1871
    .local v19, recv:[B
    invoke-virtual {v14}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v24

    if-eqz v24, :cond_11

    .line 1872
    const-string v24, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_5

    .line 1876
    :cond_11
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 1877
    const-string v24, "IAPNet"

    const-string v25, "[ DEBUG ] LguIapSendItemPurchaseByDanal()  End !!!!!!!!"

    invoke-static/range {v24 .. v25}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Lcom/feelingk/iap/IAPLib;->setOTPNumber(Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected static ReIapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 22
    .parameter "mdn"
    .parameter "pID"
    .parameter "pName"
    .parameter "pCarrier"
    .parameter "TID"
    .parameter "BPInfo"
    .parameter "bUseTCash"
    .parameter "encJumin"

    .prologue
    .line 1542
    const/16 v18, 0x0

    .line 1544
    .local v18, useXPProtocol:Z
    const-string v9, "KX"

    .line 1545
    .local v9, headerParam:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1546
    .local v7, carrierStr:Ljava/lang/String;
    const/16 v15, 0xc

    .line 1547
    .local v15, packet_len:I
    new-instance v11, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v11}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1549
    .local v11, itemPurchaseDanalCfm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[ DEBUG ] ReIapSendItemPurchaseByDanal() STart!! "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    add-int/lit8 v15, v15, 0xa

    .line 1552
    add-int/lit8 v15, v15, 0x2

    .line 1553
    add-int/lit8 v15, v15, 0xb

    .line 1554
    add-int/lit8 v15, v15, 0x1

    .line 1555
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v15, v19, 0x24

    .line 1556
    add-int/lit8 v15, v15, 0x1

    .line 1558
    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    .line 1559
    :cond_0
    const/16 v18, 0x1

    .line 1561
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 1562
    if-eqz p4, :cond_2

    .line 1563
    add-int/lit8 v15, v15, 0x64

    .line 1565
    :cond_2
    add-int/lit8 v15, v15, 0x1

    .line 1566
    if-eqz p2, :cond_3

    .line 1567
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 1569
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 1570
    if-eqz p5, :cond_4

    .line 1571
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 1575
    :cond_4
    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1576
    const-string v7, "12"

    .line 1585
    :goto_0
    new-array v14, v15, [B

    .line 1586
    .local v14, packetBytes:[B
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-lt v10, v15, :cond_c

    .line 1588
    const/4 v12, 0x0

    .line 1589
    .local v12, offset:I
    const/4 v8, 0x0

    check-cast v8, [B

    .line 1591
    .local v8, header:[B
    add-int/lit8 v19, v15, -0xc

    move/from16 v0, v19

    invoke-static {v9, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v8

    .line 1595
    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1596
    add-int/lit8 v12, v12, 0xc

    .line 1599
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1600
    .local v4, byte_pID:[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1601
    add-int/lit8 v12, v12, 0xa

    .line 1604
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1605
    .local v3, byte_pCarrier:[B
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1606
    add-int/lit8 v12, v12, 0x2

    .line 1609
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1610
    .local v6, byte_pMdn:[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1611
    add-int/lit8 v12, v12, 0xb

    .line 1614
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .local v13, offset:I
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1617
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1618
    .local v5, byte_pJumin:[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1619
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x24

    .line 1621
    .end local v13           #offset:I
    .restart local v12       #offset:I
    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Jumin="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  // Value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    if-eqz p6, :cond_d

    .line 1625
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    const/16 v19, 0x59

    aput-byte v19, v14, v12

    .line 1630
    :goto_2
    if-eqz p4, :cond_e

    .line 1631
    add-int/lit8 v12, v13, 0x1

    .end local v13           #offset:I
    .restart local v12       #offset:I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v13

    .line 1636
    :goto_3
    if-eqz p4, :cond_5

    .line 1637
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1638
    add-int/lit8 v12, v12, 0x64

    .line 1642
    :cond_5
    if-eqz p2, :cond_6

    .line 1643
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1644
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 1646
    if-eqz p2, :cond_7

    .line 1647
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 1651
    :cond_7
    if-eqz v18, :cond_9

    .line 1653
    if-eqz p5, :cond_8

    .line 1654
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1656
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 1659
    if-eqz p5, :cond_9

    .line 1660
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1661
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 1666
    :cond_9
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 1669
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 1670
    .local v17, ret:B
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1671
    if-eqz v17, :cond_f

    .line 1672
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1673
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1686
    :goto_4
    return-object v11

    .line 1578
    .end local v3           #byte_pCarrier:[B
    .end local v4           #byte_pID:[B
    .end local v5           #byte_pJumin:[B
    .end local v6           #byte_pMdn:[B
    .end local v8           #header:[B
    .end local v10           #i:I
    .end local v12           #offset:I
    .end local v14           #packetBytes:[B
    .end local v17           #ret:B
    :cond_a
    const/16 v19, 0x3

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 1579
    const-string v7, "13"

    goto/16 :goto_0

    .line 1582
    :cond_b
    const-string v7, "11"

    goto/16 :goto_0

    .line 1587
    .restart local v10       #i:I
    .restart local v14       #packetBytes:[B
    :cond_c
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 1586
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1627
    .restart local v3       #byte_pCarrier:[B
    .restart local v4       #byte_pID:[B
    .restart local v5       #byte_pJumin:[B
    .restart local v6       #byte_pMdn:[B
    .restart local v8       #header:[B
    .restart local v12       #offset:I
    :cond_d
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    const/16 v19, 0x4e

    aput-byte v19, v14, v12

    goto/16 :goto_2

    .line 1633
    :cond_e
    add-int/lit8 v12, v13, 0x1

    .end local v13           #offset:I
    .restart local v12       #offset:I
    const/16 v19, 0x0

    aput-byte v19, v14, v13

    goto/16 :goto_3

    .line 1678
    .restart local v17       #ret:B
    :cond_f
    invoke-static {v11}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v16

    .line 1679
    .local v16, recv:[B
    invoke-virtual {v11}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v19

    if-eqz v19, :cond_10

    .line 1680
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 1684
    :cond_10
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 1685
    const-string v19, "IAPNet"

    const-string v20, "[ DEBUG ] ReIapSendItemPurchaseByDanal()  End !!!!!!!!"

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected static iapClose(Z)I
    .locals 4
    .parameter "isResRelease"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 169
    const-string v0, "IAPNet"

    const-string v1, "[ DEBUG ] Socket Close!"

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_0
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 179
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 188
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :cond_2
    :goto_2
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 194
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    .line 195
    sput-object v3, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 197
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 198
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 201
    return v2

    .line 190
    :catch_0
    move-exception v0

    goto :goto_2

    .line 182
    :catch_1
    move-exception v0

    goto :goto_1

    .line 174
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected static iapCloseBP(Z)I
    .locals 3
    .parameter "isResRelease"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 816
    :try_start_0
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 817
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 824
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 825
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 831
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    if-eqz v0, :cond_2

    .line 832
    sget-object v0, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 837
    :cond_2
    :goto_2
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 838
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    .line 839
    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 841
    sput-boolean v2, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 842
    return v2

    .line 834
    :catch_0
    move-exception v0

    goto :goto_2

    .line 827
    :catch_1
    move-exception v0

    goto :goto_1

    .line 819
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected static iapConnect(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Lcom/feelingk/iap/net/InitConfirm;
    .locals 16
    .parameter "info"
    .parameter "telecom"
    .parameter "mcid"
    .parameter "min"
    .parameter "bpServerIP"
    .parameter "bpServerPort"
    .parameter "pID"
    .parameter "pTID"
    .parameter "pEncJumin"
    .parameter "useBpServer"
    .parameter "context"

    .prologue
    .line 74
    sput-object p10, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 76
    .local v0, initConfirm:Lcom/feelingk/iap/net/InitConfirm;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ DEBUG ] Server connect - Start : iapConnect Wifi= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    if-eqz v1, :cond_1

    .line 78
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    if-eqz v1, :cond_4

    .line 84
    new-instance v13, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v2

    invoke-direct {v13, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 85
    .local v13, socketAddress:Ljava/net/SocketAddress;
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v14

    .line 86
    .local v14, sslcontext:Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v15, v1, [Lcom/feelingk/iap/net/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/feelingk/iap/net/TrustManager;

    invoke-direct {v2}, Lcom/feelingk/iap/net/TrustManager;-><init>()V

    aput-object v2, v15, v1

    .line 88
    .local v15, trustManagers:[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v14, v1, v15, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 90
    invoke-virtual {v14}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v10

    .line 92
    .local v10, FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 93
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 94
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v13, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 96
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 97
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    .end local v10           #FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    .end local v13           #socketAddress:Ljava/net/SocketAddress;
    .end local v14           #sslcontext:Ljavax/net/ssl/SSLContext;
    .end local v15           #trustManagers:[Lcom/feelingk/iap/net/TrustManager;
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 135
    const-string v1, "IAPNet"

    const-string v2, "[ DEBUG ] Server connect - Complete!!!"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    .line 138
    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 139
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    .line 142
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 143
    :cond_2
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_3

    .line 144
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    .line 146
    :cond_3
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 100
    :cond_4
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    .line 101
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 102
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 104
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    .line 105
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketGateway:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 108
    :catch_0
    move-exception v11

    .line 109
    .local v11, e:Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 110
    const/16 v1, -0xb

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 111
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v11}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto/16 :goto_0

    .line 115
    .end local v11           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v11

    .line 116
    .local v11, e:Ljava/io/IOException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 117
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnect() DUMP!!! :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 119
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 123
    .end local v11           #e:Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 124
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnect() ~~~~~DUMP~! :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    .line 127
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 128
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetDumpMessage(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 151
    .end local v11           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v12

    .line 152
    .local v12, recv:[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_6

    .line 153
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 154
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_6
    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto/16 :goto_0
.end method

.method protected static iapConnectBP(Lcom/feelingk/iap/net/ServerInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/feelingk/iap/net/InitConfirm;
    .locals 11
    .parameter "info"
    .parameter "telecom"
    .parameter "mcid"
    .parameter "min"
    .parameter "bpServerIP"
    .parameter "bpServerPort"

    .prologue
    .line 749
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 751
    .local v0, init:Lcom/feelingk/iap/net/InitConfirm;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ DEBUG ] iapConnectBP - Start! isWifi= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    if-eqz v1, :cond_0

    .line 753
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 806
    :goto_0
    return-object v0

    .line 758
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    if-eqz v1, :cond_1

    .line 759
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v7

    .line 760
    .local v7, context:Ljavax/net/ssl/SSLContext;
    const/4 v10, 0x0

    check-cast v10, [Lcom/feelingk/iap/net/TrustManager;

    .line 761
    .local v10, trustManagers:[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x1

    new-array v10, v1, [Lcom/feelingk/iap/net/TrustManager;

    .end local v10           #trustManagers:[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Lcom/feelingk/iap/net/TrustManager;

    invoke-direct {v2}, Lcom/feelingk/iap/net/TrustManager;-><init>()V

    aput-object v2, v10, v1

    .line 762
    .restart local v10       #trustManagers:[Lcom/feelingk/iap/net/TrustManager;
    const/4 v1, 0x0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v1, v10, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 763
    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 764
    .local v6, FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    .line 769
    .end local v6           #FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    .end local v7           #context:Ljavax/net/ssl/SSLContext;
    .end local v10           #trustManagers:[Lcom/feelingk/iap/net/TrustManager;
    :goto_1
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/feelingk/iap/net/ServerInfo;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/feelingk/iap/net/ServerInfo;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 771
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    .line 772
    sget-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    const/4 v1, 0x1

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 785
    const-string v1, "IAPNet"

    const-string v2, "[ DEBUG ] iapConnectBP - Connection Complete!"

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/feelingk/iap/net/IAPNet;->iapSendInitBP(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;[BI)V

    .line 789
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_2

    .line 790
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    .line 791
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    :cond_1
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/iap/net/IAPNet;->socketBP:Ljava/net/Socket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 774
    :catch_0
    move-exception v8

    .line 775
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "IAPNet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ Exception ] iapConnectBP() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z

    .line 777
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 778
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 797
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 798
    .local v9, recv:[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_3

    .line 799
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    :cond_3
    invoke-virtual {v0, v9}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto/16 :goto_0
.end method

.method protected static iapReAuth(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/InitConfirm;
    .locals 11
    .parameter "pTelecom"
    .parameter "applicationID"
    .parameter "pJuminNumber"
    .parameter "MDN"
    .parameter "bpServerIP"
    .parameter "bpServerPort"
    .parameter "pID"
    .parameter "pTID"

    .prologue
    .line 590
    new-instance v0, Lcom/feelingk/iap/net/InitConfirm;

    invoke-direct {v0}, Lcom/feelingk/iap/net/InitConfirm;-><init>()V

    .line 593
    .local v0, initConfirm:Lcom/feelingk/iap/net/InitConfirm;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 596
    const/4 v9, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/feelingk/iap/net/IAPNet;->iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 598
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    :goto_0
    return-object v0

    .line 602
    :cond_0
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v10

    .line 603
    .local v10, recv:[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual {v0, v10}, Lcom/feelingk/iap/net/InitConfirm;->parse([B)V

    goto :goto_0
.end method

.method private static declared-synchronized iapReceive(Lcom/feelingk/iap/net/Confirm;)[B
    .locals 15
    .parameter "confirm"

    .prologue
    const/16 v14, 0xc

    const/4 v13, -0x1

    const/4 v8, 0x0

    .line 654
    const-class v9, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v9

    :try_start_0
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapReceive() Header Start ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v12, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    sget-boolean v10, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    if-nez v10, :cond_0

    .line 656
    const/4 v10, -0x6

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v8

    .line 733
    :goto_0
    monitor-exit v9

    return-object v7

    .line 660
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    check-cast v4, [B

    .line 661
    .local v4, header:[B
    const/4 v0, 0x0

    check-cast v0, [B

    .line 662
    .local v0, data:[B
    const/4 v7, 0x0

    check-cast v7, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    .local v7, returnData:[B
    const/4 v6, 0x0

    .line 664
    .local v6, receivedBytes:I
    const/4 v5, 0x0

    .line 665
    .local v5, reads:I
    const/4 v1, 0x0

    .line 669
    .local v1, data_len:I
    const/16 v10, 0xc

    :try_start_2
    new-array v4, v10, [B

    .line 671
    :goto_1
    if-lt v6, v14, :cond_3

    .line 685
    :cond_1
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-direct {v10, v4, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, datalength:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 688
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 694
    new-array v0, v1, [B

    .line 695
    const/4 v6, 0x0

    .line 698
    :goto_2
    if-lt v6, v1, :cond_6

    .line 706
    :cond_2
    const/16 v10, 0x17

    add-int/lit8 v11, v1, -0x1

    aget-byte v11, v0, v11

    if-eq v10, v11, :cond_7

    .line 707
    const-string v10, "IAPNet"

    const-string v11, "[ DEBUG ] IAP_ERR_INVALIDPARITY ="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const/4 v10, -0x8

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 709
    goto :goto_0

    .line 672
    .end local v2           #datalength:Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    array-length v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v10, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 674
    if-eq v5, v13, :cond_4

    .line 675
    add-int/2addr v6, v5

    goto :goto_1

    .line 676
    :cond_4
    if-ne v5, v13, :cond_1

    .line 678
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 679
    goto :goto_0

    .line 690
    .restart local v2       #datalength:Ljava/lang/String;
    :cond_5
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 691
    goto :goto_0

    .line 699
    :cond_6
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStream:Ljava/io/InputStream;

    array-length v11, v0

    sub-int/2addr v11, v6

    invoke-virtual {v10, v0, v6, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 700
    if-eq v5, v13, :cond_2

    .line 701
    add-int/2addr v6, v5

    goto :goto_2

    .line 712
    .end local v2           #datalength:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 713
    .local v3, e:Ljava/net/SocketTimeoutException;
    :try_start_3
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceive() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/16 v10, -0xd

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 715
    goto/16 :goto_0

    .line 717
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 718
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceive() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    move-object v7, v8

    .line 721
    goto/16 :goto_0

    .line 724
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #datalength:Ljava/lang/String;
    :cond_7
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    new-array v7, v8, [B

    .line 725
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 726
    const/4 v8, 0x0

    array-length v10, v4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    invoke-static {v0, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 728
    if-eqz p0, :cond_8

    .line 729
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    .line 730
    :cond_8
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    invoke-static {v7, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 732
    const-string v8, "IAPNet"

    const-string v10, "[ DEBUG ] iapReceive() Success!!  "

    invoke-static {v8, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 654
    .end local v0           #data:[B
    .end local v1           #data_len:I
    .end local v2           #datalength:Ljava/lang/String;
    .end local v4           #header:[B
    .end local v5           #reads:I
    .end local v6           #receivedBytes:I
    .end local v7           #returnData:[B
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private static declared-synchronized iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B
    .locals 14
    .parameter "c"

    .prologue
    const/16 v12, 0xc

    const/4 v13, -0x1

    const/4 v8, 0x0

    .line 1039
    const-class v9, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v9

    const/4 v4, 0x0

    :try_start_0
    check-cast v4, [B

    .line 1040
    .local v4, header:[B
    const/4 v0, 0x0

    check-cast v0, [B

    .line 1041
    .local v0, data:[B
    const/4 v7, 0x0

    check-cast v7, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    .local v7, returnData:[B
    const/4 v6, 0x0

    .line 1043
    .local v6, receivedBytes:I
    const/4 v5, 0x0

    .line 1044
    .local v5, reads:I
    const/4 v1, 0x0

    .line 1047
    .local v1, data_len:I
    const/16 v10, 0xc

    :try_start_1
    new-array v4, v10, [B

    .line 1049
    :goto_0
    if-lt v6, v12, :cond_3

    .line 1061
    :cond_0
    const-string v10, "IAPNet"

    const-string v11, "[ DEBUG ] iapReceiveBP() Header Receive Complete!"

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-direct {v10, v4, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1064
    .local v2, datalength:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 1065
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1070
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapReceiveBP() Data Length: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    new-array v0, v1, [B

    .line 1073
    const/4 v6, 0x0

    .line 1074
    :goto_1
    if-lt v6, v1, :cond_6

    .line 1085
    :cond_1
    add-int/lit8 v10, v1, -0x1

    aget-byte v8, v0, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1095
    :try_start_2
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    new-array v7, v8, [B

    .line 1096
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1097
    const/4 v8, 0x0

    array-length v10, v4

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    invoke-static {v0, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1099
    if-eqz p0, :cond_2

    .line 1100
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    .line 1102
    :cond_2
    array-length v8, v4

    array-length v10, v0

    add-int/2addr v8, v10

    invoke-static {v7, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v7

    .line 1103
    .end local v2           #datalength:Ljava/lang/String;
    :goto_2
    monitor-exit v9

    return-object v8

    .line 1050
    :cond_3
    :try_start_3
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v10, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 1052
    if-eq v5, v13, :cond_4

    .line 1053
    add-int/2addr v6, v5

    goto :goto_0

    .line 1054
    :cond_4
    if-ne v5, v13, :cond_0

    .line 1056
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1089
    :catch_0
    move-exception v3

    .line 1090
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ Exception ] iapReceiveBP() "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1039
    .end local v0           #data:[B
    .end local v1           #data_len:I
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #header:[B
    .end local v5           #reads:I
    .end local v6           #receivedBytes:I
    .end local v7           #returnData:[B
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 1067
    .restart local v0       #data:[B
    .restart local v1       #data_len:I
    .restart local v2       #datalength:Ljava/lang/String;
    .restart local v4       #header:[B
    .restart local v5       #reads:I
    .restart local v6       #receivedBytes:I
    .restart local v7       #returnData:[B
    :cond_5
    const/4 v10, -0x5

    :try_start_5
    invoke-virtual {p0, v10}, Lcom/feelingk/iap/net/Confirm;->setResultCode(B)V

    goto :goto_2

    .line 1075
    :cond_6
    sget-object v10, Lcom/feelingk/iap/net/IAPNet;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v0

    sub-int/2addr v11, v6

    invoke-virtual {v10, v0, v6, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v5

    .line 1077
    if-eq v5, v13, :cond_1

    .line 1078
    add-int/2addr v6, v5

    goto :goto_1
.end method

.method protected static iapSendAutoPurchaseDismiss(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 12
    .parameter "pID"

    .prologue
    const/4 v11, 0x0

    .line 2258
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2260
    .local v3, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendPurchaseDismiss()"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    const/16 v6, 0xc

    .line 2265
    .local v6, packet_len:I
    add-int/lit8 v6, v6, 0xa

    .line 2266
    add-int/lit8 v6, v6, 0x1

    .line 2268
    new-array v5, v6, [B

    .line 2269
    .local v5, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 2272
    const/4 v4, 0x0

    .line 2274
    .local v4, offset:I
    const-string v9, "JP"

    .line 2275
    const/16 v10, 0xb

    .line 2274
    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2278
    .local v1, header:[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2279
    add-int/lit8 v4, v4, 0xc

    .line 2281
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2282
    .local v0, byte_pID:[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2284
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 2287
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 2288
    .local v8, ret:B
    if-eqz v8, :cond_1

    .line 2289
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2291
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2304
    :goto_1
    return-object v3

    .line 2270
    .end local v0           #byte_pID:[B
    .end local v1           #header:[B
    .end local v4           #offset:I
    .end local v8           #ret:B
    :cond_0
    aput-byte v11, v5, v2

    .line 2269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2296
    .restart local v0       #byte_pID:[B
    .restart local v1       #header:[B
    .restart local v4       #offset:I
    .restart local v8       #ret:B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 2297
    .local v7, recv:[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 2299
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2303
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendCommonInfo()Lcom/feelingk/iap/net/MsgConfirm;
    .locals 22

    .prologue
    .line 377
    new-instance v11, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v11}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 378
    .local v11, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v19, "IAPNet"

    const-string v20, "====================iapSendCommonInfo  Start()===================="

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v18, "IR"

    .line 383
    .local v18, sHeaderPacket:Ljava/lang/String;
    sget-object v19, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonF;->getModelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 384
    .local v10, modelName:Ljava/lang/String;
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "modelName= "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v19, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonF;->getCarrier(Landroid/content/Context;)I

    move-result v6

    .line 387
    .local v6, carrier:I
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Carrier= "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v19, Lcom/feelingk/iap/net/IAPNet;->mContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/feelingk/iap/util/CommonF;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 390
    .local v7, encImei:Ljava/lang/String;
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "encImei= "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {v6}, Lcom/feelingk/iap/util/CommonF;->getUAProfileData(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, UACD:Ljava/lang/String;
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "UACD= "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/16 v15, 0xc

    .line 399
    .local v15, packet_len:I
    add-int/lit8 v15, v15, 0x32

    .line 400
    add-int/lit8 v15, v15, 0x4

    .line 401
    add-int/lit8 v15, v15, 0x1

    .line 402
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v15, v19, 0x43

    .line 403
    add-int/lit8 v15, v15, 0x1

    .line 405
    new-array v14, v15, [B

    .line 407
    .local v14, packetBytes:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-lt v9, v15, :cond_0

    .line 410
    const/4 v12, 0x0

    .line 411
    .local v12, offset:I
    add-int/lit8 v19, v15, -0xc

    invoke-static/range {v18 .. v19}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v8

    .line 414
    .local v8, header:[B
    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    add-int/lit8 v12, v12, 0xc

    .line 418
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 419
    .local v5, byte_pModelName:[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    add-int/lit8 v12, v12, 0x32

    .line 423
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 424
    .local v3, byte_mUACD:[B
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    add-int/lit8 v12, v12, 0x4

    .line 428
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .local v13, offset:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 431
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 432
    .local v4, byte_pEncImei:[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x43

    .line 436
    .end local v13           #offset:I
    .restart local v12       #offset:I
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 438
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 439
    .local v17, ret:B
    if-eqz v17, :cond_1

    .line 440
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 441
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 456
    :goto_1
    return-object v11

    .line 408
    .end local v3           #byte_mUACD:[B
    .end local v4           #byte_pEncImei:[B
    .end local v5           #byte_pModelName:[B
    .end local v8           #header:[B
    .end local v12           #offset:I
    .end local v17           #ret:B
    :cond_0
    const/16 v19, 0x0

    aput-byte v19, v14, v9

    .line 407
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 446
    .restart local v3       #byte_mUACD:[B
    .restart local v4       #byte_pEncImei:[B
    .restart local v5       #byte_pModelName:[B
    .restart local v8       #header:[B
    .restart local v12       #offset:I
    .restart local v17       #ret:B
    :cond_1
    invoke-static {v11}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v16

    .line 447
    .local v16, recv:[B
    invoke-virtual {v11}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v19

    if-eqz v19, :cond_2

    .line 449
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 454
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 455
    const-string v19, "IAPNet"

    const-string v20, "====================iapSendCommonInfo  End()===================="

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendData([B)[B
    .locals 11
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 1115
    new-instance v0, Lcom/feelingk/iap/net/DataPacket;

    invoke-direct {v0}, Lcom/feelingk/iap/net/DataPacket;-><init>()V

    .line 1118
    .local v0, datapacket:Lcom/feelingk/iap/net/DataPacket;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendData!!!!() Start ~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    array-length v8, p0

    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v4, v8, 0x1

    .line 1120
    .local v4, packet_len:I
    new-array v3, v4, [B

    .line 1122
    .local v3, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 1125
    const-string v8, "DP"

    array-length v9, p0

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1126
    .local v1, header:[B
    array-length v8, v1

    invoke-static {v1, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1131
    const/16 v8, 0xc

    array-length v9, p0

    invoke-static {p0, v10, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    add-int/lit8 v8, v4, -0x1

    const/16 v9, 0x17

    aput-byte v9, v3, v8

    .line 1136
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v6

    .line 1137
    .local v6, ret:B
    if-eqz v6, :cond_2

    .line 1149
    :cond_0
    :goto_1
    return-object v7

    .line 1123
    .end local v1           #header:[B
    .end local v6           #ret:B
    :cond_1
    aput-byte v10, v3, v2

    .line 1122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    .restart local v1       #header:[B
    .restart local v6       #ret:B
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v5

    .line 1142
    .local v5, recv:[B
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getResultCode()B

    move-result v8

    if-nez v8, :cond_0

    .line 1146
    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/DataPacket;->parse([B)V

    .line 1147
    const-string v7, "IAPNet"

    const-string v8, "[ DEBUG ] iapSendData() End~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v7, v8}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getData()[B

    move-result-object v7

    goto :goto_1
.end method

.method protected static iapSendDataBP([B)[B
    .locals 11
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 991
    new-instance v0, Lcom/feelingk/iap/net/DataPacket;

    invoke-direct {v0}, Lcom/feelingk/iap/net/DataPacket;-><init>()V

    .line 994
    .local v0, dp:Lcom/feelingk/iap/net/DataPacket;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendDataBP()"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    array-length v8, p0

    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v4, v8, 0x1

    .line 996
    .local v4, packet_len:I
    new-array v3, v4, [B

    .line 998
    .local v3, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 1001
    const-string v8, "DP"

    array-length v9, p0

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1002
    .local v1, header:[B
    array-length v8, v1

    invoke-static {v1, v10, v3, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    const/16 v8, 0xc

    array-length v9, p0

    invoke-static {p0, v10, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    add-int/lit8 v8, v4, -0x1

    const/16 v9, 0x17

    aput-byte v9, v3, v8

    .line 1012
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapWriteBP([B)B

    move-result v6

    .line 1013
    .local v6, ret:B
    if-eqz v6, :cond_2

    .line 1026
    :cond_0
    :goto_1
    return-object v7

    .line 999
    .end local v1           #header:[B
    .end local v6           #ret:B
    :cond_1
    aput-byte v10, v3, v2

    .line 998
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1018
    .restart local v1       #header:[B
    .restart local v6       #ret:B
    :cond_2
    invoke-static {v0}, Lcom/feelingk/iap/net/IAPNet;->iapReceiveBP(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v5

    .line 1019
    .local v5, recv:[B
    array-length v8, v5

    invoke-static {v5, v8}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1020
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getResultCode()B

    move-result v8

    if-nez v8, :cond_0

    .line 1025
    invoke-virtual {v0, v5}, Lcom/feelingk/iap/net/DataPacket;->parse([B)V

    .line 1026
    invoke-virtual {v0}, Lcom/feelingk/iap/net/DataPacket;->getData()[B

    move-result-object v7

    goto :goto_1
.end method

.method protected static iapSendDataMembership(ILjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 17
    .parameter "pTelecom"
    .parameter "pMdn"

    .prologue
    .line 2137
    new-instance v8, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v8}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2138
    .local v8, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2141
    .local v7, modelName:Ljava/lang/String;
    const-string v14, "IAPNet"

    const-string v15, "[ DEBUG ] iapSendItemMembership()"

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    const/16 v11, 0xc

    .line 2146
    .local v11, packet_len:I
    add-int/lit8 v11, v11, 0x2

    .line 2147
    add-int/lit8 v11, v11, 0xb

    .line 2148
    add-int/lit8 v11, v11, 0x1

    .line 2151
    const/4 v14, 0x2

    move/from16 v0, p0

    if-eq v0, v14, :cond_0

    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_1

    .line 2154
    :cond_0
    if-eqz v7, :cond_1

    .line 2155
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0x40

    if-le v14, v15, :cond_5

    .line 2156
    add-int/lit8 v11, v11, 0x40

    .line 2163
    :cond_1
    :goto_0
    add-int/lit8 v11, v11, 0x1

    .line 2166
    new-array v10, v11, [B

    .line 2167
    .local v10, packetBytes:[B
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-lt v6, v11, :cond_6

    .line 2170
    const/4 v9, 0x0

    .line 2172
    .local v9, offset:I
    const-string v14, "SP"

    .line 2173
    add-int/lit8 v15, v11, -0xc

    .line 2172
    invoke-static {v14, v15}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v5

    .line 2176
    .local v5, header:[B
    const/4 v14, 0x0

    array-length v15, v5

    invoke-static {v5, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2177
    add-int/lit8 v9, v9, 0xc

    .line 2181
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_7

    .line 2182
    const-string v4, "11"

    .line 2183
    .local v4, currTelecom:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2184
    .local v3, byte_pTelecom:[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2196
    .end local v3           #byte_pTelecom:[B
    .end local v4           #currTelecom:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x2

    .line 2199
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2200
    .local v1, byte_pMdn:[B
    const/4 v14, 0x0

    array-length v15, v1

    invoke-static {v1, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2201
    add-int/lit8 v9, v9, 0xb

    .line 2205
    const/4 v14, 0x1

    move/from16 v0, p0

    if-ne v0, v14, :cond_9

    .line 2208
    const/4 v14, 0x0

    aput-byte v14, v10, v9

    .line 2209
    const-string v14, "IAPNet"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "[ DEBUG ] byte_modelLength = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x19

    aget-byte v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 2217
    const/4 v14, 0x2

    move/from16 v0, p0

    if-eq v0, v14, :cond_3

    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_4

    .line 2218
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2219
    .local v2, byte_pModelName:[B
    const/4 v14, 0x0

    array-length v15, v2

    invoke-static {v2, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2220
    array-length v14, v2

    add-int/lit8 v9, v14, 0x1a

    .line 2224
    .end local v2           #byte_pModelName:[B
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 2226
    add-int/lit8 v14, v11, -0x1

    const/16 v15, 0x17

    aput-byte v15, v10, v14

    .line 2228
    invoke-static {v10}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v13

    .line 2229
    .local v13, ret:B
    if-eqz v13, :cond_a

    .line 2230
    invoke-virtual {v8, v13}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2232
    const-string v14, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v8, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2245
    :goto_4
    return-object v8

    .line 2158
    .end local v1           #byte_pMdn:[B
    .end local v5           #header:[B
    .end local v6           #i:I
    .end local v9           #offset:I
    .end local v10           #packetBytes:[B
    .end local v13           #ret:B
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    add-int/lit8 v11, v14, 0x1a

    goto/16 :goto_0

    .line 2168
    .restart local v6       #i:I
    .restart local v10       #packetBytes:[B
    :cond_6
    const/4 v14, 0x0

    aput-byte v14, v10, v6

    .line 2167
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 2186
    .restart local v5       #header:[B
    .restart local v9       #offset:I
    :cond_7
    const/4 v14, 0x2

    move/from16 v0, p0

    if-ne v0, v14, :cond_8

    .line 2187
    const-string v4, "12"

    .line 2188
    .restart local v4       #currTelecom:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2189
    .restart local v3       #byte_pTelecom:[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 2191
    .end local v3           #byte_pTelecom:[B
    .end local v4           #currTelecom:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x3

    move/from16 v0, p0

    if-ne v0, v14, :cond_2

    .line 2192
    const-string v4, "13"

    .line 2193
    .restart local v4       #currTelecom:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2194
    .restart local v3       #byte_pTelecom:[B
    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v3, v14, v10, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 2212
    .end local v3           #byte_pTelecom:[B
    .end local v4           #currTelecom:Ljava/lang/String;
    .restart local v1       #byte_pMdn:[B
    :cond_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v10, v9

    goto :goto_3

    .line 2237
    .restart local v13       #ret:B
    :cond_a
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v12

    .line 2238
    .local v12, recv:[B
    invoke-virtual {v8}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v14

    if-eqz v14, :cond_b

    .line 2240
    const-string v14, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v8, v14}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 2244
    :cond_b
    invoke-virtual {v8, v12}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_4
.end method

.method protected static iapSendISImeiAuthReq(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 15
    .parameter "MDN"

    .prologue
    const/16 v14, 0x17

    const/4 v13, 0x0

    .line 466
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 467
    .local v3, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendISImeiAuthReq  Start()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "MDN= "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v9, "AR"

    .line 475
    .local v9, sHeaderPacket:Ljava/lang/String;
    const/16 v6, 0xc

    .line 477
    .local v6, packet_len:I
    add-int/lit8 v6, v6, 0xb

    .line 478
    add-int/lit8 v6, v6, 0x1

    .line 480
    new-array v5, v6, [B

    .line 482
    .local v5, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 485
    const/4 v4, 0x0

    .line 486
    .local v4, offset:I
    const/16 v10, 0xc

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 489
    .local v1, header:[B
    array-length v10, v1

    invoke-static {v1, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    add-int/lit8 v4, v4, 0xc

    .line 493
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 494
    .local v0, byte_pMDN:[B
    array-length v10, v0

    invoke-static {v0, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    add-int/lit8 v4, v4, 0xb

    .line 498
    aput-byte v14, v5, v14

    .line 500
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 501
    .local v8, ret:B
    if-eqz v8, :cond_1

    .line 502
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 503
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 518
    :goto_1
    return-object v3

    .line 483
    .end local v0           #byte_pMDN:[B
    .end local v1           #header:[B
    .end local v4           #offset:I
    .end local v8           #ret:B
    :cond_0
    aput-byte v13, v5, v2

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    .restart local v0       #byte_pMDN:[B
    .restart local v1       #header:[B
    .restart local v4       #offset:I
    .restart local v8       #ret:B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 509
    .local v7, recv:[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v10

    if-eqz v10, :cond_2

    .line 511
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 516
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 517
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendISImeiAuthReq  End()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendImeiAuthReq(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 15
    .parameter "MDN"

    .prologue
    const/16 v14, 0x17

    const/4 v13, 0x0

    .line 527
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 528
    .local v3, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendImeiAuthReq  Start()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "MDN= "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v9, "AM"

    .line 536
    .local v9, sHeaderPacket:Ljava/lang/String;
    const/16 v6, 0xc

    .line 538
    .local v6, packet_len:I
    add-int/lit8 v6, v6, 0xb

    .line 539
    add-int/lit8 v6, v6, 0x1

    .line 541
    new-array v5, v6, [B

    .line 543
    .local v5, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 546
    const/4 v4, 0x0

    .line 547
    .local v4, offset:I
    const/16 v10, 0xc

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 550
    .local v1, header:[B
    array-length v10, v1

    invoke-static {v1, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    add-int/lit8 v4, v4, 0xc

    .line 554
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 555
    .local v0, byte_pMDN:[B
    array-length v10, v0

    invoke-static {v0, v13, v5, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 556
    add-int/lit8 v4, v4, 0xb

    .line 559
    aput-byte v14, v5, v14

    .line 561
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 562
    .local v8, ret:B
    if-eqz v8, :cond_1

    .line 563
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 564
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 579
    :goto_1
    return-object v3

    .line 544
    .end local v0           #byte_pMDN:[B
    .end local v1           #header:[B
    .end local v4           #offset:I
    .end local v8           #ret:B
    :cond_0
    aput-byte v13, v5, v2

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .restart local v0       #byte_pMDN:[B
    .restart local v1       #header:[B
    .restart local v4       #offset:I
    .restart local v8       #ret:B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 570
    .local v7, recv:[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v10

    if-eqz v10, :cond_2

    .line 572
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 578
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendImeiAuthReq  End()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendInit(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 23
    .parameter "initConfirm"
    .parameter "pTelecom"
    .parameter "applicationID"
    .parameter "encJuminNumber"
    .parameter "MIN"
    .parameter "bpServerIP"
    .parameter "bpServerPort"
    .parameter "pID"
    .parameter "pTID"
    .parameter "useBpServer"

    .prologue
    .line 223
    const-string v19, "IAPNet"

    const-string v20, "====================iapSendInit  Start()===================="

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "iapSendInit  Start() isInit="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v21, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "iapSendInit  Start() useBpServer ="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v20, "IAPNet"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v19, "iapSendInit  Start() encJuminNumberCheck ="

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const/16 v19, 0x1

    :goto_0
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez p3, :cond_0

    .line 229
    const-string p3, "0000000000"

    .line 231
    :cond_0
    sget-boolean v19, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    if-eqz v19, :cond_2

    .line 232
    const/16 v19, -0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 374
    :goto_1
    return-void

    .line 226
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 236
    :cond_2
    if-eqz p5, :cond_c

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 237
    .local v11, ipBytes:[B
    :goto_2
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 241
    .local v16, portBytes:[B
    const/16 v15, 0xc

    .line 243
    .local v15, packet_len:I
    if-eqz p8, :cond_d

    .line 244
    const-string v18, "QP"

    .line 245
    .local v18, sHeaderPacket:Ljava/lang/String;
    add-int/lit8 v15, v15, 0x64

    .line 250
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 251
    add-int/lit8 v15, v15, 0x8

    .line 252
    add-int/lit8 v15, v15, 0x1

    .line 253
    add-int/lit8 v15, v15, 0xa

    .line 254
    add-int/lit8 v15, v15, 0xb

    .line 255
    add-int/lit8 v15, v15, 0x1

    .line 257
    if-eqz v11, :cond_3

    .line 258
    array-length v0, v11

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 259
    :cond_3
    add-int/lit8 v15, v15, 0x7

    .line 260
    add-int/lit8 v15, v15, 0xa

    .line 263
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 264
    :cond_4
    add-int/lit8 v15, v15, 0x2

    .line 266
    if-eqz p9, :cond_e

    .line 267
    add-int/lit8 v15, v15, 0x1

    .line 268
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 277
    :cond_5
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 279
    new-array v14, v15, [B

    .line 281
    .local v14, packetBytes:[B
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    if-lt v10, v15, :cond_f

    .line 284
    const/4 v12, 0x0

    .line 286
    .local v12, offset:I
    add-int/lit8 v19, v15, -0xc

    invoke-static/range {v18 .. v19}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v9

    .line 289
    .local v9, header:[B
    const/16 v19, 0x0

    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v9, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    add-int/lit8 v12, v12, 0xc

    .line 292
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .local v13, offset:I
    const/16 v19, 0x47

    aput-byte v19, v14, v12

    .line 295
    const-string v19, "12.05.08"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    add-int/lit8 v12, v13, 0x8

    .line 299
    .end local v13           #offset:I
    .restart local v12       #offset:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    const/16 v19, 0x41

    aput-byte v19, v14, v12

    .line 301
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xa

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    add-int/lit8 v12, v13, 0xa

    .line 304
    .end local v13           #offset:I
    .restart local v12       #offset:I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xb

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    add-int/lit8 v12, v12, 0xb

    .line 307
    if-eqz v11, :cond_6

    .line 308
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 309
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 311
    if-eqz v11, :cond_7

    .line 313
    const/16 v19, 0x0

    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v11, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    array-length v0, v11

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x2c

    .line 316
    const/16 v19, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :cond_7
    add-int/lit8 v12, v12, 0x7

    .line 322
    if-eqz p7, :cond_8

    .line 323
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 324
    .local v3, byte_pID:[B
    array-length v0, v3

    move/from16 v19, v0

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    .line 325
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    .end local v3           #byte_pID:[B
    :cond_8
    add-int/lit8 v12, v12, 0xa

    .line 330
    if-eqz p8, :cond_9

    .line 331
    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 332
    .local v6, byte_pTID:[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    add-int/lit8 v12, v12, 0x64

    .line 337
    .end local v6           #byte_pTID:[B
    :cond_9
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, 0x3

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 339
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const-string v8, "12"

    .line 340
    .local v8, currTelecom:Ljava/lang/String;
    :goto_6
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 341
    .local v7, byte_pTelecom:[B
    const/16 v19, 0x0

    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    add-int/lit8 v12, v12, 0x2

    .line 344
    if-eqz p9, :cond_11

    .line 346
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 347
    const-string v19, "SENDBPDATA"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 348
    .local v5, byte_pSendBPData:[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    array-length v0, v5

    move/from16 v19, v0

    add-int v12, v13, v19

    .line 361
    .end local v5           #byte_pSendBPData:[B
    .end local v7           #byte_pTelecom:[B
    .end local v8           #currTelecom:Ljava/lang/String;
    .end local v13           #offset:I
    .restart local v12       #offset:I
    :cond_b
    :goto_7
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 363
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 364
    .local v17, ret:B
    if-eqz v17, :cond_12

    .line 365
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 366
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 236
    .end local v9           #header:[B
    .end local v10           #i:I
    .end local v11           #ipBytes:[B
    .end local v12           #offset:I
    .end local v14           #packetBytes:[B
    .end local v15           #packet_len:I
    .end local v16           #portBytes:[B
    .end local v17           #ret:B
    .end local v18           #sHeaderPacket:Ljava/lang/String;
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 248
    .restart local v11       #ipBytes:[B
    .restart local v15       #packet_len:I
    .restart local v16       #portBytes:[B
    :cond_d
    const-string v18, "IP"

    .restart local v18       #sHeaderPacket:Ljava/lang/String;
    goto/16 :goto_3

    .line 272
    :cond_e
    add-int/lit8 v15, v15, 0x1

    .line 273
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    goto/16 :goto_4

    .line 282
    .restart local v10       #i:I
    .restart local v14       #packetBytes:[B
    :cond_f
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 281
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 339
    .restart local v9       #header:[B
    .restart local v12       #offset:I
    :cond_10
    const-string v8, "13"

    goto :goto_6

    .line 353
    .restart local v7       #byte_pTelecom:[B
    .restart local v8       #currTelecom:Ljava/lang/String;
    :cond_11
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 354
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 355
    .local v4, byte_pJumin:[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v13, v19

    .end local v13           #offset:I
    .restart local v12       #offset:I
    goto :goto_7

    .line 370
    .end local v4           #byte_pJumin:[B
    .end local v7           #byte_pTelecom:[B
    .end local v8           #currTelecom:Ljava/lang/String;
    .restart local v17       #ret:B
    :cond_12
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 371
    const/16 v19, 0x1

    sput-boolean v19, Lcom/feelingk/iap/net/IAPNet;->isInit:Z

    .line 373
    const-string v19, "IAPNet"

    const-string v20, "====================iapSendInit  End()===================="

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected static iapSendInitBP(Lcom/feelingk/iap/net/InitConfirm;ILjava/lang/String;Ljava/lang/String;[BI)V
    .locals 16
    .parameter "init"
    .parameter "pTelecom"
    .parameter "applicationID"
    .parameter "MIN"
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 857
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 860
    .local v10, portBytes:[B
    const-string v12, "IAPNet"

    const-string v13, "[ DEBUG ] iapSendInitBP()  __ Start"

    invoke-static {v12, v13}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/16 v9, 0xc

    .line 863
    .local v9, packet_len:I
    add-int/lit8 v9, v9, 0x1

    .line 864
    add-int/lit8 v9, v9, 0x8

    .line 865
    add-int/lit8 v9, v9, 0x1

    .line 866
    add-int/lit8 v9, v9, 0xa

    .line 867
    add-int/lit8 v9, v9, 0xb

    .line 868
    add-int/lit8 v9, v9, 0x1

    .line 869
    if-eqz p4, :cond_0

    .line 870
    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v9, v12, 0x2c

    .line 871
    :cond_0
    add-int/lit8 v9, v9, 0x7

    .line 872
    add-int/lit8 v9, v9, 0xa

    .line 874
    const/4 v12, 0x2

    move/from16 v0, p1

    if-eq v0, v12, :cond_1

    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 875
    :cond_1
    add-int/lit8 v9, v9, 0x2

    .line 877
    add-int/lit8 v9, v9, 0x1

    .line 878
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v9, v12

    .line 881
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 883
    new-array v8, v9, [B

    .line 885
    .local v8, packetBytes:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v9, :cond_7

    .line 888
    const/4 v6, 0x0

    .line 890
    .local v6, offset:I
    const-string v12, "IP"

    add-int/lit8 v13, v9, -0xc

    invoke-static {v12, v13}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v4

    .line 893
    .local v4, header:[B
    const/4 v12, 0x0

    array-length v13, v4

    invoke-static {v4, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 894
    add-int/lit8 v6, v6, 0xc

    .line 896
    add-int/lit8 v7, v6, 0x1

    .end local v6           #offset:I
    .local v7, offset:I
    const/16 v12, 0x47

    aput-byte v12, v8, v6

    .line 899
    const-string v12, "12.05.08"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-static {v12, v13, v8, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 900
    add-int/lit8 v6, v7, 0x8

    .line 903
    .end local v7           #offset:I
    .restart local v6       #offset:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #offset:I
    .restart local v7       #offset:I
    const/16 v12, 0x41

    aput-byte v12, v8, v6

    .line 906
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v13, v8, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 907
    add-int/lit8 v6, v7, 0xa

    .line 909
    .end local v7           #offset:I
    .restart local v6       #offset:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    array-length v14, v14

    const/16 v15, 0xb

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v12, v13, v8, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    add-int/lit8 v6, v6, 0xb

    .line 912
    if-eqz p4, :cond_3

    .line 913
    move-object/from16 v0, p4

    array-length v12, v0

    int-to-byte v12, v12

    aput-byte v12, v8, v6

    .line 914
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 916
    if-eqz p4, :cond_4

    .line 918
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    move-object/from16 v0, p4

    array-length v12, v0

    add-int/lit8 v6, v12, 0x2c

    .line 921
    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 923
    :cond_4
    add-int/lit8 v6, v6, 0x7

    .line 925
    add-int/lit8 v6, v6, 0xa

    .line 929
    const/4 v12, 0x2

    move/from16 v0, p1

    if-eq v0, v12, :cond_5

    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 931
    :cond_5
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_8

    const-string v3, "12"

    .line 932
    .local v3, currTelecom:Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 933
    .local v2, byte_pTelecom:[B
    const/4 v12, 0x0

    array-length v13, v2

    invoke-static {v2, v12, v8, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    add-int/lit8 v6, v6, 0x2

    .line 936
    add-int/lit8 v7, v6, 0x1

    .end local v6           #offset:I
    .restart local v7       #offset:I
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v8, v6

    .line 937
    const-string v12, "SENDBPDATA"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 938
    .local v1, byte_pSendBPData:[B
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v8, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 939
    array-length v12, v1

    add-int v6, v7, v12

    .line 943
    .end local v1           #byte_pSendBPData:[B
    .end local v2           #byte_pTelecom:[B
    .end local v3           #currTelecom:Ljava/lang/String;
    .end local v7           #offset:I
    .restart local v6       #offset:I
    :cond_6
    add-int/lit8 v12, v9, -0x1

    const/16 v13, 0x17

    aput-byte v13, v8, v12

    .line 945
    invoke-static {v8}, Lcom/feelingk/iap/net/IAPNet;->iapWriteBP([B)B

    move-result v11

    .line 946
    .local v11, ret:B
    if-eqz v11, :cond_9

    .line 947
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    .line 948
    const-string v12, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 955
    :goto_2
    return-void

    .line 886
    .end local v4           #header:[B
    .end local v6           #offset:I
    .end local v11           #ret:B
    :cond_7
    const/4 v12, 0x0

    aput-byte v12, v8, v5

    .line 885
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 931
    .restart local v4       #header:[B
    .restart local v6       #offset:I
    :cond_8
    const-string v3, "13"

    goto :goto_1

    .line 952
    .restart local v11       #ret:B
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/feelingk/iap/net/InitConfirm;->setResultCode(B)V

    goto :goto_2
.end method

.method protected static iapSendItemInfoQuery(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemInfoConfirm;
    .locals 12
    .parameter "pID"

    .prologue
    const/4 v11, 0x0

    .line 1322
    new-instance v3, Lcom/feelingk/iap/net/ItemInfoConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;-><init>()V

    .line 1324
    .local v3, itemInfoConfirm:Lcom/feelingk/iap/net/ItemInfoConfirm;
    const-string v9, "IAPNet"

    const-string v10, "====================iapSendItemInfoQuery() Start()===================="

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const/16 v6, 0xc

    .line 1327
    .local v6, packet_len:I
    add-int/lit8 v6, v6, 0xa

    .line 1328
    add-int/lit8 v6, v6, 0x1

    .line 1330
    new-array v5, v6, [B

    .line 1331
    .local v5, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 1333
    const/4 v4, 0x0

    .line 1335
    .local v4, offset:I
    const-string v9, "GP"

    const/16 v10, 0xb

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1338
    .local v1, header:[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1340
    add-int/lit8 v4, v4, 0xc

    .line 1341
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1342
    .local v0, byte_pID:[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1344
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 1346
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 1347
    .local v8, ret:B
    if-eqz v8, :cond_1

    .line 1348
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/ItemInfoConfirm;->setResultCode(B)V

    .line 1349
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1362
    :goto_1
    return-object v3

    .line 1332
    .end local v0           #byte_pID:[B
    .end local v1           #header:[B
    .end local v4           #offset:I
    .end local v8           #ret:B
    :cond_0
    aput-byte v11, v5, v2

    .line 1331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1354
    .restart local v0       #byte_pID:[B
    .restart local v1       #header:[B
    .restart local v4       #offset:I
    .restart local v8       #ret:B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 1355
    .local v7, recv:[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemInfoConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 1356
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemInfoConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1360
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/ItemInfoConfirm;->parse([B)V

    .line 1361
    const-string v9, "IAPNet"

    const-string v10, "====================iapSendItemInfoQuery() End()===================="

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendItemPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 14
    .parameter "pID"
    .parameter "pName"
    .parameter "bTCash"
    .parameter "TID"
    .parameter "BPInfo"
    .parameter "bUseBPProtocol"

    .prologue
    .line 1381
    new-instance v5, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v5}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1383
    .local v5, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v11, "IAPNet"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[ DEBUG ] iapSendItemPurchase() bUseBPProtocol = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  START !!!!!!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const/16 v8, 0xc

    .line 1386
    .local v8, packet_len:I
    add-int/lit8 v8, v8, 0xa

    .line 1388
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1390
    const-string v3, "BP"

    .line 1411
    .local v3, headerParam:Ljava/lang/String;
    :cond_0
    :goto_0
    add-int/lit8 v8, v8, 0x1

    .line 1413
    new-array v7, v8, [B

    .line 1414
    .local v7, packetBytes:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-lt v4, v8, :cond_9

    .line 1416
    const/4 v6, 0x0

    .line 1418
    .local v6, offset:I
    const/4 v2, 0x0

    check-cast v2, [B

    .line 1419
    .local v2, header:[B
    const-string v12, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "[ DEBUG ] iapSendItemPurchase()  bTCash="

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "// PName="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p1, :cond_a

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    add-int/lit8 v11, v8, -0xc

    invoke-static {v3, v11}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1428
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1429
    add-int/lit8 v6, v6, 0xc

    .line 1431
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1432
    .local v1, byte_pID:[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1433
    add-int/lit8 v6, v6, 0xa

    .line 1456
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1458
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1459
    const/16 v11, 0x59

    aput-byte v11, v7, v6

    .line 1463
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 1466
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    const/16 v12, 0x7a

    if-le v11, v12, :cond_1

    .line 1467
    const-string v11, "IAPNet"

    const-string v12, "pName overflow and reset!!"

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string p1, "0"

    .line 1470
    :cond_1
    if-eqz p1, :cond_2

    .line 1471
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1474
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 1476
    if-eqz p1, :cond_3

    .line 1477
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1478
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v6, v11, 0x18

    .line 1482
    :cond_3
    if-eqz p3, :cond_4

    .line 1483
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1484
    add-int/lit8 v6, v6, 0x64

    .line 1488
    :cond_4
    if-eqz p4, :cond_5

    .line 1489
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v6

    .line 1490
    add-int/lit8 v6, v6, 0x1

    .line 1491
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v11, v12, v7, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1492
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v6, v11

    .line 1497
    :cond_5
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 1499
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 1500
    .local v10, ret:B
    if-eqz v10, :cond_c

    .line 1501
    invoke-virtual {v5, v10}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1502
    const-string v11, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1514
    :goto_4
    return-object v5

    .line 1393
    .end local v1           #byte_pID:[B
    .end local v2           #header:[B
    .end local v3           #headerParam:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #offset:I
    .end local v7           #packetBytes:[B
    .end local v10           #ret:B
    :cond_6
    const-string v3, "HP"

    .line 1395
    .restart local v3       #headerParam:Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 1396
    add-int/lit8 v8, v8, 0x1

    .line 1397
    if-eqz p1, :cond_7

    .line 1398
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v8, v11, 0x18

    .line 1400
    :cond_7
    if-eqz p3, :cond_8

    .line 1401
    const-string v3, "OP"

    .line 1402
    add-int/lit8 v8, v8, 0x64

    .line 1403
    add-int/lit8 v8, v8, 0x1

    .line 1406
    :cond_8
    if-eqz p4, :cond_0

    .line 1407
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/2addr v8, v11

    goto/16 :goto_0

    .line 1415
    .restart local v4       #i:I
    .restart local v7       #packetBytes:[B
    :cond_9
    const/4 v11, 0x0

    aput-byte v11, v7, v4

    .line 1414
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1419
    .restart local v2       #header:[B
    .restart local v6       #offset:I
    :cond_a
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 1461
    .restart local v1       #byte_pID:[B
    :cond_b
    const/16 v11, 0x4e

    aput-byte v11, v7, v6

    goto/16 :goto_3

    .line 1507
    .restart local v10       #ret:B
    :cond_c
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 1508
    .local v9, recv:[B
    invoke-virtual {v5}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_d

    .line 1509
    const-string v11, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v5, v11}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_4

    .line 1513
    :cond_d
    invoke-virtual {v5, v9}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    goto :goto_4
.end method

.method protected static iapSendItemPurchaseByDanal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 22
    .parameter "mdn"
    .parameter "pID"
    .parameter "pName"
    .parameter "pCarrier"
    .parameter "TID"
    .parameter "BPInfo"
    .parameter "bUseTCash"
    .parameter "encJumin"

    .prologue
    .line 1893
    const/16 v18, 0x0

    .line 1895
    .local v18, useXPProtocol:Z
    const-string v9, "KP"

    .line 1896
    .local v9, headerParam:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1897
    .local v7, carrierStr:Ljava/lang/String;
    const/16 v15, 0xc

    .line 1898
    .local v15, packet_len:I
    new-instance v11, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v11}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1900
    .local v11, itemPurchaseDanalCfm:Lcom/feelingk/iap/net/MsgConfirm;
    add-int/lit8 v15, v15, 0x1

    .line 1901
    if-eqz p2, :cond_0

    .line 1902
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v15, v19, 0xd

    .line 1904
    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_2

    .line 1905
    :cond_1
    const-string v9, "XP"

    .line 1906
    const/16 v18, 0x1

    .line 1907
    add-int/lit8 v15, v15, 0x64

    .line 1908
    add-int/lit8 v15, v15, 0x1

    .line 1909
    if-eqz p5, :cond_2

    .line 1910
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 1913
    :cond_2
    const-string v19, "IAPNet"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[ DEBUG ] iapSendItemPurchaseByDanal() STart!! "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    add-int/lit8 v15, v15, 0xa

    .line 1915
    add-int/lit8 v15, v15, 0x2

    .line 1916
    add-int/lit8 v15, v15, 0xb

    .line 1917
    add-int/lit8 v15, v15, 0x1

    .line 1918
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    add-int v15, v15, v19

    .line 1919
    add-int/lit8 v15, v15, 0x1

    .line 1920
    add-int/lit8 v15, v15, 0x1

    .line 1923
    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 1924
    const-string v7, "12"

    .line 1933
    :goto_0
    new-array v14, v15, [B

    .line 1934
    .local v14, packetBytes:[B
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-lt v10, v15, :cond_a

    .line 1936
    const/4 v12, 0x0

    .line 1937
    .local v12, offset:I
    const/4 v8, 0x0

    check-cast v8, [B

    .line 1939
    .local v8, header:[B
    add-int/lit8 v19, v15, -0xc

    move/from16 v0, v19

    invoke-static {v9, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v8

    .line 1942
    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1943
    add-int/lit8 v12, v12, 0xc

    .line 1946
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1947
    .local v4, byte_pID:[B
    const/16 v19, 0x0

    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1948
    add-int/lit8 v12, v12, 0xa

    .line 1951
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1952
    .local v3, byte_pCarrier:[B
    const/16 v19, 0x0

    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1953
    add-int/lit8 v12, v12, 0x2

    .line 1956
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1957
    .local v6, byte_pMdn:[B
    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v6, v0, v14, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1958
    add-int/lit8 v12, v12, 0xb

    .line 1961
    if-eqz p4, :cond_3

    .line 1962
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1963
    add-int/lit8 v12, v12, 0x64

    .line 1967
    :cond_3
    if-eqz p2, :cond_4

    .line 1968
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1969
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 1971
    if-eqz p2, :cond_5

    .line 1972
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1973
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 1976
    :cond_5
    if-eqz v18, :cond_7

    .line 1978
    if-eqz p5, :cond_6

    .line 1979
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1981
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 1983
    if-eqz p5, :cond_7

    .line 1984
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1985
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 1990
    :cond_7
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .local v13, offset:I
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v14, v12

    .line 1991
    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1992
    .local v5, byte_pJumin:[B
    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v5, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1993
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v13, v19

    .line 1995
    .end local v13           #offset:I
    .restart local v12       #offset:I
    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Jumin="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "  // Value = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    if-eqz p6, :cond_b

    .line 2000
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    const/16 v19, 0x59

    aput-byte v19, v14, v12

    move v12, v13

    .line 2004
    .end local v13           #offset:I
    .restart local v12       #offset:I
    :goto_2
    add-int/lit8 v19, v15, -0x1

    const/16 v20, 0x17

    aput-byte v20, v14, v19

    .line 2007
    invoke-static {v14}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v17

    .line 2008
    .local v17, ret:B
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v14, v0}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 2009
    if-eqz v17, :cond_c

    .line 2010
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2011
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2024
    :goto_3
    return-object v11

    .line 1926
    .end local v3           #byte_pCarrier:[B
    .end local v4           #byte_pID:[B
    .end local v5           #byte_pJumin:[B
    .end local v6           #byte_pMdn:[B
    .end local v8           #header:[B
    .end local v10           #i:I
    .end local v12           #offset:I
    .end local v14           #packetBytes:[B
    .end local v17           #ret:B
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 1927
    const-string v7, "13"

    goto/16 :goto_0

    .line 1930
    :cond_9
    const-string v7, "11"

    goto/16 :goto_0

    .line 1935
    .restart local v10       #i:I
    .restart local v14       #packetBytes:[B
    :cond_a
    const/16 v19, 0x0

    aput-byte v19, v14, v10

    .line 1934
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2002
    .restart local v3       #byte_pCarrier:[B
    .restart local v4       #byte_pID:[B
    .restart local v5       #byte_pJumin:[B
    .restart local v6       #byte_pMdn:[B
    .restart local v8       #header:[B
    .restart local v12       #offset:I
    :cond_b
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    const/16 v19, 0x4e

    aput-byte v19, v14, v12

    move v12, v13

    .end local v13           #offset:I
    .restart local v12       #offset:I
    goto :goto_2

    .line 2016
    .restart local v17       #ret:B
    :cond_c
    invoke-static {v11}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v16

    .line 2017
    .local v16, recv:[B
    invoke-virtual {v11}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v19

    if-eqz v19, :cond_d

    .line 2018
    const-string v19, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 2022
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 2023
    const-string v19, "IAPNet"

    const-string v20, "[ DEBUG ] iapSendItemPurchaseByDanal()  End !!!!!!!!"

    invoke-static/range {v19 .. v20}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected static iapSendItemQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 13
    .parameter "pID"
    .parameter "pName"
    .parameter "pTID"
    .parameter "pBPInfo"

    .prologue
    .line 1194
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "pTID: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string v2, "LP"

    .line 1197
    .local v2, headerParam:Ljava/lang/String;
    new-instance v4, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v4}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 1199
    .local v4, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendItemQuery Start()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v10, "IAPNet"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ DEBUG ] iapSendItemQuery() PID="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const/16 v7, 0xc

    .line 1203
    .local v7, packet_len:I
    add-int/lit8 v7, v7, 0xa

    .line 1204
    add-int/lit8 v7, v7, 0x1

    .line 1205
    if-eqz p1, :cond_0

    .line 1208
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v7, v10, 0x17

    .line 1209
    const-string v2, "EP"

    .line 1212
    :cond_0
    if-eqz p2, :cond_1

    .line 1213
    add-int/lit8 v7, v7, 0x64

    .line 1214
    const-string v2, "NP"

    .line 1215
    add-int/lit8 v7, v7, 0x1

    .line 1218
    :cond_1
    if-eqz p3, :cond_2

    .line 1219
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v7, v10

    .line 1222
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1225
    new-array v6, v7, [B

    .line 1226
    .local v6, packetBytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v7, :cond_8

    .line 1228
    const/4 v5, 0x0

    .line 1230
    .local v5, offset:I
    const/4 v1, 0x0

    check-cast v1, [B

    .line 1232
    .local v1, header:[B
    add-int/lit8 v10, v7, -0xc

    invoke-static {v2, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1242
    const/16 v10, 0xc

    invoke-static {v1, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V

    .line 1245
    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v6, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1247
    add-int/lit8 v5, v5, 0xc

    .line 1249
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1250
    .local v0, byte_pID:[B
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v10, v6, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1252
    add-int/lit8 v5, v5, 0xa

    .line 1265
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    const/16 v11, 0x7a

    if-le v10, v11, :cond_3

    .line 1266
    const-string v10, "IAPNet"

    const-string v11, "pName overflow and reset!!"

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string p1, "0"

    .line 1269
    :cond_3
    if-eqz p1, :cond_4

    .line 1270
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v5

    .line 1271
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1273
    if-eqz p1, :cond_5

    .line 1274
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v10, v11, v6, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1275
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v5, v10, 0x17

    .line 1280
    :cond_5
    if-eqz p2, :cond_6

    .line 1281
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v10, v11, v6, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1282
    add-int/lit8 v5, v5, 0x64

    .line 1283
    add-int/lit8 v5, v5, 0x1

    .line 1286
    :cond_6
    if-eqz p3, :cond_7

    .line 1287
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    int-to-byte v10, v10

    aput-byte v10, v6, v5

    .line 1288
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v10, v11, v6, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1289
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    add-int/2addr v5, v10

    .line 1293
    :cond_7
    add-int/lit8 v10, v7, -0x1

    const/16 v11, 0x17

    aput-byte v11, v6, v10

    .line 1295
    invoke-static {v6}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v9

    .line 1296
    .local v9, ret:B
    if-eqz v9, :cond_9

    .line 1297
    invoke-virtual {v4, v9}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 1298
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v4, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 1312
    :goto_1
    return-object v4

    .line 1227
    .end local v0           #byte_pID:[B
    .end local v1           #header:[B
    .end local v5           #offset:I
    .end local v9           #ret:B
    :cond_8
    const/4 v10, 0x0

    aput-byte v10, v6, v3

    .line 1226
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1303
    .restart local v0       #byte_pID:[B
    .restart local v1       #header:[B
    .restart local v5       #offset:I
    .restart local v9       #ret:B
    :cond_9
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v8

    .line 1304
    .local v8, recv:[B
    invoke-virtual {v4}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v10

    if-eqz v10, :cond_a

    .line 1305
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v4, v10}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1310
    :cond_a
    invoke-virtual {v4, v8}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 1311
    const-string v10, "IAPNet"

    const-string v11, "====================iapSendItemQuery End()===================="

    invoke-static {v10, v11}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendItemUse(Ljava/lang/String;)Lcom/feelingk/iap/net/ItemUseConfirm;
    .locals 12
    .parameter "pID"

    .prologue
    const/4 v11, 0x0

    .line 2087
    new-instance v3, Lcom/feelingk/iap/net/ItemUseConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/ItemUseConfirm;-><init>()V

    .line 2090
    .local v3, itemUseConfirmMsg:Lcom/feelingk/iap/net/ItemUseConfirm;
    const/16 v6, 0xc

    .line 2091
    .local v6, packet_len:I
    add-int/lit8 v6, v6, 0xa

    .line 2092
    add-int/lit8 v6, v6, 0x1

    .line 2094
    new-array v5, v6, [B

    .line 2095
    .local v5, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 2097
    const/4 v4, 0x0

    .line 2099
    .local v4, offset:I
    const-string v9, "MP"

    const/16 v10, 0xb

    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2102
    .local v1, header:[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2103
    add-int/lit8 v4, v4, 0xc

    .line 2105
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2106
    .local v0, byte_pID:[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2108
    const/16 v9, 0x16

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 2110
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 2111
    .local v8, ret:B
    if-eqz v8, :cond_1

    .line 2112
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/ItemUseConfirm;->setResultCode(B)V

    .line 2113
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemUseConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2126
    :goto_1
    return-object v3

    .line 2096
    .end local v0           #byte_pID:[B
    .end local v1           #header:[B
    .end local v4           #offset:I
    .end local v8           #ret:B
    :cond_0
    aput-byte v11, v5, v2

    .line 2095
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2118
    .restart local v0       #byte_pID:[B
    .restart local v1       #header:[B
    .restart local v4       #offset:I
    .restart local v8       #ret:B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 2119
    .local v7, recv:[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/ItemUseConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 2120
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/ItemUseConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2125
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/ItemUseConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendItemWholeAuth()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2042
    new-instance v2, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    invoke-direct {v2}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;-><init>()V

    .line 2044
    .local v2, itemWholeAutchConfirm:Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    const-string v8, "IAPNet"

    const-string v9, "[ DEBUG ] iapSendItemWholeAuth()"

    invoke-static {v8, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const/16 v5, 0xc

    .line 2047
    .local v5, packet_len:I
    add-int/lit8 v5, v5, 0x1

    .line 2049
    new-array v4, v5, [B

    .line 2050
    .local v4, packetBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 2052
    const/4 v3, 0x0

    .line 2054
    .local v3, offset:I
    const-string v8, "AP"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2057
    .local v0, header:[B
    array-length v8, v0

    invoke-static {v0, v10, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2059
    const/16 v8, 0xc

    const/16 v9, 0x17

    aput-byte v9, v4, v8

    .line 2061
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v7

    .line 2062
    .local v7, ret:B
    if-eqz v7, :cond_1

    .line 2063
    invoke-virtual {v2, v7}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->setResultCode(B)V

    .line 2064
    const-string v8, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v2, v8}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2077
    :goto_1
    return-object v2

    .line 2051
    .end local v0           #header:[B
    .end local v3           #offset:I
    .end local v7           #ret:B
    :cond_0
    aput-byte v10, v4, v1

    .line 2050
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2069
    .restart local v0       #header:[B
    .restart local v3       #offset:I
    .restart local v7       #ret:B
    :cond_1
    invoke-static {v2}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v6

    .line 2070
    .local v6, recv:[B
    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->getResultCode()B

    move-result v8

    if-eqz v8, :cond_2

    .line 2071
    const-string v8, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v2, v8}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2076
    :cond_2
    invoke-virtual {v2, v6}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->parse([B)V

    goto :goto_1
.end method

.method protected static iapSendLGUSmsAuthNumberReq(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    .locals 19
    .parameter "pId"
    .parameter "pCarrier"
    .parameter "mdn"
    .parameter "encJumin"

    .prologue
    .line 2380
    new-instance v9, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    invoke-direct {v9}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;-><init>()V

    .line 2381
    .local v9, msgConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    const/4 v6, 0x0

    .line 2383
    .local v6, carrierStr:Ljava/lang/String;
    const-string v16, "IAPNet"

    const-string v17, "[ DEBUG ] iapSendLGUSmsAuthNumberReq() Start"

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    const/16 v13, 0xc

    .line 2387
    .local v13, packet_len:I
    add-int/lit8 v13, v13, 0xa

    .line 2388
    add-int/lit8 v13, v13, 0x2

    .line 2389
    add-int/lit8 v13, v13, 0xb

    .line 2390
    add-int/lit8 v13, v13, 0x1

    .line 2391
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v13, v16, 0x24

    .line 2392
    add-int/lit8 v13, v13, 0x1

    .line 2396
    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 2397
    const-string v6, "12"

    .line 2406
    :goto_0
    new-array v12, v13, [B

    .line 2407
    .local v12, packetBytes:[B
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-lt v8, v13, :cond_2

    .line 2410
    const/4 v10, 0x0

    .line 2412
    .local v10, offset:I
    const-string v16, "MR"

    .line 2413
    add-int/lit8 v17, v13, -0xc

    .line 2412
    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v7

    .line 2416
    .local v7, header:[B
    const/16 v16, 0x0

    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v0, v12, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2417
    add-int/lit8 v10, v10, 0xc

    .line 2420
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 2421
    .local v3, byte_pID:[B
    const/16 v16, 0x0

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v3, v0, v12, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2422
    add-int/lit8 v10, v10, 0xa

    .line 2425
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 2426
    .local v2, byte_pCarrier:[B
    const/16 v16, 0x0

    array-length v0, v2

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v12, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2427
    add-int/lit8 v10, v10, 0x2

    .line 2430
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2431
    .local v5, byte_pMdn:[B
    const/16 v16, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v5, v0, v12, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2432
    add-int/lit8 v10, v10, 0xb

    .line 2435
    add-int/lit8 v11, v10, 0x1

    .end local v10           #offset:I
    .local v11, offset:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v12, v10

    .line 2438
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 2439
    .local v4, byte_pJumin:[B
    const/16 v16, 0x0

    array-length v0, v4

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v12, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2440
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v10, v16, 0x24

    .line 2442
    .end local v11           #offset:I
    .restart local v10       #offset:I
    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Jumin="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  // Value = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    add-int/lit8 v16, v13, -0x1

    const/16 v17, 0x17

    aput-byte v17, v12, v16

    .line 2446
    invoke-static {v12}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v15

    .line 2447
    .local v15, ret:B
    if-eqz v15, :cond_3

    .line 2448
    invoke-virtual {v9, v15}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->setResultCode(B)V

    .line 2450
    const-string v16, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2467
    :goto_2
    return-object v9

    .line 2399
    .end local v2           #byte_pCarrier:[B
    .end local v3           #byte_pID:[B
    .end local v4           #byte_pJumin:[B
    .end local v5           #byte_pMdn:[B
    .end local v7           #header:[B
    .end local v8           #i:I
    .end local v10           #offset:I
    .end local v12           #packetBytes:[B
    .end local v15           #ret:B
    :cond_0
    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 2400
    const-string v6, "13"

    goto/16 :goto_0

    .line 2403
    :cond_1
    const-string v6, "11"

    goto/16 :goto_0

    .line 2408
    .restart local v8       #i:I
    .restart local v12       #packetBytes:[B
    :cond_2
    const/16 v16, 0x0

    aput-byte v16, v12, v8

    .line 2407
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 2455
    .restart local v2       #byte_pCarrier:[B
    .restart local v3       #byte_pID:[B
    .restart local v4       #byte_pJumin:[B
    .restart local v5       #byte_pMdn:[B
    .restart local v7       #header:[B
    .restart local v10       #offset:I
    .restart local v15       #ret:B
    :cond_3
    invoke-static {v9}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v14

    .line 2456
    .local v14, recv:[B
    invoke-virtual {v9}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getResultCode()B

    move-result v16

    if-eqz v16, :cond_4

    .line 2458
    const-string v16, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 2463
    :cond_4
    invoke-virtual {v9, v14}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->parse([B)V

    .line 2465
    const-string v16, "IAPNet"

    const-string v17, "[ DEBUG ] iapSendLGUSmsAuthNumberReq()  End"

    invoke-static/range {v16 .. v17}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected static iapSendLGUSmsAuthReq(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 14
    .parameter "smsAuthKey"
    .parameter "OTPNumber"

    .prologue
    .line 2481
    new-instance v4, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;

    invoke-direct {v4}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;-><init>()V

    .line 2483
    .local v4, msgConfirm:Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;
    const-string v11, "IAPNet"

    const-string v12, "[ DEBUG ] iapSendLGUSmsAuthReq() Start"

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    const/16 v8, 0xc

    .line 2487
    .local v8, packet_len:I
    add-int/lit8 v8, v8, 0x1

    .line 2488
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v8, v11, 0xd

    .line 2489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v8, v11

    .line 2490
    add-int/lit8 v8, v8, 0x1

    .line 2492
    add-int/lit8 v8, v8, 0x1

    .line 2494
    new-array v7, v8, [B

    .line 2495
    .local v7, packetBytes:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v8, :cond_0

    .line 2498
    const/4 v5, 0x0

    .line 2500
    .local v5, offset:I
    const-string v11, "MA"

    .line 2501
    add-int/lit8 v12, v8, -0xc

    .line 2500
    invoke-static {v11, v12}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v2

    .line 2504
    .local v2, header:[B
    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v11, v7, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2505
    add-int/lit8 v5, v5, 0xc

    .line 2508
    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .local v6, offset:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 2511
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2512
    .local v1, byte_smsAuthKey:[B
    const/4 v11, 0x0

    array-length v12, v1

    invoke-static {v1, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2513
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v5, v11, 0xd

    .line 2515
    .end local v6           #offset:I
    .restart local v5       #offset:I
    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "smsAuthKey: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  // Value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    add-int/lit8 v6, v5, 0x1

    .end local v5           #offset:I
    .restart local v6       #offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v5

    .line 2521
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2522
    .local v0, byte_OTPNumber:[B
    const/4 v11, 0x0

    array-length v12, v0

    invoke-static {v0, v11, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2523
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int v5, v6, v11

    .line 2525
    .end local v6           #offset:I
    .restart local v5       #offset:I
    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "OTPNumber: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  // Value = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    add-int/lit8 v11, v8, -0x1

    const/16 v12, 0x17

    aput-byte v12, v7, v11

    .line 2529
    invoke-static {v7}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v10

    .line 2530
    .local v10, ret:B
    if-eqz v10, :cond_1

    .line 2531
    invoke-virtual {v4, v10}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->setResultCode(B)V

    .line 2533
    const-string v11, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v4, v11}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2551
    :goto_1
    return-object v4

    .line 2496
    .end local v0           #byte_OTPNumber:[B
    .end local v1           #byte_smsAuthKey:[B
    .end local v2           #header:[B
    .end local v5           #offset:I
    .end local v10           #ret:B
    :cond_0
    const/4 v11, 0x0

    aput-byte v11, v7, v3

    .line 2495
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2538
    .restart local v0       #byte_OTPNumber:[B
    .restart local v1       #byte_smsAuthKey:[B
    .restart local v2       #header:[B
    .restart local v5       #offset:I
    .restart local v10       #ret:B
    :cond_1
    invoke-static {v4}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v9

    .line 2539
    .local v9, recv:[B
    invoke-virtual {v4}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->getResultCode()B

    move-result v11

    if-eqz v11, :cond_2

    .line 2541
    const-string v11, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v4, v11}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2546
    :cond_2
    invoke-virtual {v4, v9}, Lcom/feelingk/iap/net/LGUSmsAuthNumberConfirm;->parse([B)V

    .line 2548
    const-string v11, "IAPNet"

    const-string v12, "[ DEBUG ] iapSendLGUSmsAuthReq()  End"

    invoke-static {v11, v12}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static iapSendOTPAgreeCheck(Ljava/lang/String;)Lcom/feelingk/iap/net/MsgConfirm;
    .locals 12
    .parameter "agree"

    .prologue
    const/4 v11, 0x0

    .line 2315
    new-instance v3, Lcom/feelingk/iap/net/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/iap/net/MsgConfirm;-><init>()V

    .line 2317
    .local v3, msgConfirm:Lcom/feelingk/iap/net/MsgConfirm;
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendOTPAgreeCheck() Start"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    const/16 v6, 0xc

    .line 2321
    .local v6, packet_len:I
    add-int/lit8 v6, v6, 0x1

    .line 2322
    add-int/lit8 v6, v6, 0x1

    .line 2324
    new-array v5, v6, [B

    .line 2325
    .local v5, packetBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v6, :cond_0

    .line 2328
    const/4 v4, 0x0

    .line 2330
    .local v4, offset:I
    const-string v9, "TP"

    .line 2331
    const/4 v10, 0x2

    .line 2330
    invoke-static {v9, v10}, Lcom/feelingk/iap/net/IAPNetworkUtil;->iapMakePacketHeader(Ljava/lang/String;I)[B

    move-result-object v1

    .line 2334
    .local v1, header:[B
    array-length v9, v1

    invoke-static {v1, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2335
    add-int/lit8 v4, v4, 0xc

    .line 2337
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2339
    .local v0, byte_agreeCheck:[B
    array-length v9, v0

    invoke-static {v0, v11, v5, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2341
    const/16 v9, 0xd

    const/16 v10, 0x17

    aput-byte v10, v5, v9

    .line 2343
    invoke-static {v5}, Lcom/feelingk/iap/net/IAPNet;->iapWrite([B)B

    move-result v8

    .line 2344
    .local v8, ret:B
    if-eqz v8, :cond_1

    .line 2345
    invoke-virtual {v3, v8}, Lcom/feelingk/iap/net/MsgConfirm;->setResultCode(B)V

    .line 2347
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    .line 2364
    :goto_1
    return-object v3

    .line 2326
    .end local v0           #byte_agreeCheck:[B
    .end local v1           #header:[B
    .end local v4           #offset:I
    .end local v8           #ret:B
    :cond_0
    aput-byte v11, v5, v2

    .line 2325
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2352
    .restart local v0       #byte_agreeCheck:[B
    .restart local v1       #header:[B
    .restart local v4       #offset:I
    .restart local v8       #ret:B
    :cond_1
    invoke-static {v3}, Lcom/feelingk/iap/net/IAPNet;->iapReceive(Lcom/feelingk/iap/net/Confirm;)[B

    move-result-object v7

    .line 2353
    .local v7, recv:[B
    invoke-virtual {v3}, Lcom/feelingk/iap/net/MsgConfirm;->getResultCode()B

    move-result v9

    if-eqz v9, :cond_2

    .line 2355
    const-string v9, "\ub124\ud2b8\uc6cc\ud06c \uc804\uc1a1\uc911 \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    invoke-virtual {v3, v9}, Lcom/feelingk/iap/net/MsgConfirm;->SetUserMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 2360
    :cond_2
    invoke-virtual {v3, v7}, Lcom/feelingk/iap/net/MsgConfirm;->parse([B)V

    .line 2362
    const-string v9, "IAPNet"

    const-string v10, "[ DEBUG ] iapSendOTPAgreeCheck()  End"

    invoke-static {v9, v10}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected static declared-synchronized iapWrite([B)B
    .locals 6
    .parameter "sendBuf"

    .prologue
    const/4 v1, 0x0

    .line 621
    const-class v2, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v2

    :try_start_0
    const-string v3, "IAPNet"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ DEBUG ] iapWrite connect("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->connect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 623
    const/4 v1, -0x2

    .line 642
    :goto_0
    monitor-exit v2

    return v1

    .line 626
    :cond_0
    :try_start_1
    array-length v3, p0

    invoke-static {p0, v3}, Lcom/feelingk/iap/net/IAPNetworkUtil;->packetDebug([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :try_start_2
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-virtual {v3, p0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 629
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 641
    :try_start_3
    const-string v3, "IAPNet"

    const-string v4, "[ DEBUG ] iapWrite End  "

    invoke-static {v3, v4}, Lcom/feelingk/iap/util/CommonF$LOGGER;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Ljava/net/SocketTimeoutException;
    :try_start_4
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ Exception ] iapWrite() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 634
    const/16 v1, -0xc

    goto :goto_0

    .line 636
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 637
    .local v0, e:Ljava/io/IOException;
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ Exception ] iapWrite() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 638
    const/4 v1, -0x4

    goto :goto_0
.end method

.method protected static declared-synchronized iapWriteBP([B)B
    .locals 6
    .parameter "sendBuf"

    .prologue
    const/4 v1, 0x0

    .line 965
    const-class v2, Lcom/feelingk/iap/net/IAPNet;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/feelingk/iap/net/IAPNet;->connectBP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 966
    const/4 v1, -0x2

    .line 979
    :goto_0
    monitor-exit v2

    return v1

    .line 970
    :cond_0
    :try_start_1
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-virtual {v3, p0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 971
    sget-object v3, Lcom/feelingk/iap/net/IAPNet;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "IAPNet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ DEBUG ] iapWriteBP() "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 976
    const/4 v1, -0x4

    goto :goto_0

    .line 965
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static isConnect()Z
    .locals 1

    .prologue
    .line 1157
    sget-boolean v0, Lcom/feelingk/iap/net/IAPNet;->connect:Z

    return v0
.end method

.method protected static isWifi()Z
    .locals 1

    .prologue
    .line 1164
    sget-boolean v0, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    return v0
.end method

.method protected static setWifi(Z)V
    .locals 0
    .parameter "isWifi"

    .prologue
    .line 1172
    sput-boolean p0, Lcom/feelingk/iap/net/IAPNet;->isWifi:Z

    .line 1173
    return-void
.end method
