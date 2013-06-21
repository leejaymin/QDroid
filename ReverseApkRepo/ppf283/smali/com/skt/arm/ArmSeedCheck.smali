.class public Lcom/skt/arm/ArmSeedCheck;
.super Ljava/lang/Object;
.source "ArmSeedCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skt/arm/ArmSeedCheck$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private static mContext:Landroid/content/Context;

.field public static mProductNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    sput-object v0, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    .line 330
    new-instance v0, Lcom/skt/arm/ArmSeedCheck$1;

    invoke-direct {v0}, Lcom/skt/arm/ArmSeedCheck$1;-><init>()V

    sput-object v0, Lcom/skt/arm/ArmSeedCheck;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    sput-object p1, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method private static createHttpConnector(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 11
    .parameter "strURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 266
    const-string v6, "http.keepAlive"

    const-string v7, "false"

    invoke-static {v6, v7}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 270
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 273
    .local v1, httpURLCon:Ljava/net/HttpURLConnection;
    instance-of v6, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 275
    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v7, Lcom/skt/arm/ArmSeedCheck;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 277
    new-instance v6, Lcom/skt/arm/ArmSeedCheck$2;

    invoke-direct {v6}, Lcom/skt/arm/ArmSeedCheck$2;-><init>()V

    invoke-static {v6}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 285
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 287
    .local v0, context:Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    new-array v7, v10, [Ljavax/net/ssl/X509TrustManager;

    new-instance v8, Lcom/skt/arm/ArmSeedCheck$3;

    invoke-direct {v8}, Lcom/skt/arm/ArmSeedCheck$3;-><init>()V

    aput-object v8, v7, v9

    .line 294
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    .line 287
    invoke-virtual {v0, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 296
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-static {v6}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 301
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    :cond_0
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->extractHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, strHost:Ljava/lang/String;
    invoke-static {p0}, Lcom/skt/arm/ArmUtil;->extractPortFromURL(Ljava/lang/String;)I

    move-result v2

    .line 304
    .local v2, nPort:I
    const-string v6, "Arm plug-in"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "++ strHost="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v6, "Arm plug-in"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "++ nPort="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v4, "N"

    .line 308
    .local v4, strIsWifi:Ljava/lang/String;
    sget-object v6, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/skt/arm/ArmUtil;->isEnableWifi(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    const-string v4, "Y"

    .line 311
    :cond_1
    const-string v6, "Arm plug-in"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "++ strIsWifi=%s"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 314
    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 315
    const-string v6, "GET"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 316
    const-string v6, "Arm plug-in"

    const-string v7, "++ RequestMethod( GET ) "

    invoke-static {v6, v7}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v6, "Host"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v6, "Accept-Language"

    const-string v7, "euc-kr"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v6, "User-Agent"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v6, "Content-Type"

    const-string v7, "application/octet-stream"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v6, "Cookie"

    const-string v7, "OMPSESSIONID=45auikq,6789asfd7ujk"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v6, "Connection"

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v6, "Is-Wifi"

    invoke-virtual {v1, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-object v1
.end method

.method public static getProductID(Ljava/lang/String;)Ljava/lang/String;
    .locals 29
    .parameter "seedNum"

    .prologue
    .line 88
    const-string v25, ""

    .line 89
    .local v25, strURL:Ljava/lang/String;
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->getMDN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 90
    .local v23, strMDN:Ljava/lang/String;
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->getModelCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    .line 91
    .local v24, strModel:Ljava/lang/String;
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->isEnableWifi(Landroid/content/Context;)Z

    move-result v12

    .line 92
    .local v12, isSecureURL:Z
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mContext:Landroid/content/Context;

    invoke-static/range {v26 .. v26}, Lcom/skt/arm/ArmUtil;->isOtherCarrier(Landroid/content/Context;)Z

    move-result v11

    .line 104
    .local v11, isOtherCarrier:Z
    if-nez v12, :cond_0

    if-eqz v11, :cond_7

    .line 105
    :cond_0
    const-string v25, "https://220.103.229.115:444/shop_client/scproxy.omp"

    .line 110
    :goto_0
    sget-object v26, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "strURL::"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v3, 0x0

    check-cast v3, [B

    .line 116
    .local v3, aybyBuf:[B
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    .line 117
    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    .line 116
    add-int v26, v26, v27

    .line 117
    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_MDN_MACADDRESS:B

    .line 116
    add-int v26, v26, v27

    .line 117
    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_OSVERSION:B

    .line 116
    add-int v26, v26, v27

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 118
    const/16 v26, 0x0

    sget v27, Lcom/skt/arm/ArmProt;->REQ_SEED_APP_NEW_VER:I

    ushr-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 119
    const/16 v26, 0x1

    sget v27, Lcom/skt/arm/ArmProt;->REQ_SEED_APP_NEW_VER:I

    ushr-int/lit8 v27, v27, 0x0

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 122
    if-eqz v23, :cond_1

    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 123
    const/4 v9, 0x0

    .local v9, i:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_1

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_8

    .line 134
    .end local v9           #i:I
    .end local v13           #j:I
    :cond_1
    const/4 v9, 0x0

    .restart local v9       #i:I
    const/4 v13, 0x0

    .restart local v13       #j:I
    :goto_2
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_2

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_a

    .line 145
    :cond_2
    move-object/from16 v22, p0

    .line 147
    .local v22, seedType:Ljava/lang/String;
    if-eqz v22, :cond_3

    const-string v26, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 148
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_3
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_3

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_c

    .line 159
    :cond_3
    const-string v18, ""

    .line 160
    .local v18, osType:Ljava/lang/String;
    if-eqz v18, :cond_4

    const-string v26, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 161
    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_4
    array-length v0, v3

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_4

    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_OSVERSION:B

    move/from16 v0, v26

    if-lt v13, v0, :cond_e

    .line 172
    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "?REQ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    array-length v0, v3

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-static {v3, v0}, Lcom/skt/arm/ArmUtil;->byteToHex([BI)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 174
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "strURL=="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v8, 0x0

    .line 178
    .local v8, httpURLCon:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static/range {v25 .. v25}, Lcom/skt/arm/ArmSeedCheck;->createHttpConnector(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 186
    const/16 v26, 0x3a98

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 187
    const/16 v26, 0x3a98

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 192
    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v16

    .line 193
    .local v16, nResCode:I
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "ResCode === "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 199
    .end local v16           #nResCode:I
    :goto_5
    const/4 v10, 0x0

    .line 201
    .local v10, is:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 207
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 208
    .local v4, dis:Ljava/io/DataInputStream;
    const/4 v15, 0x0

    .line 209
    .local v15, nReadCount:I
    const/16 v17, 0x0

    .line 210
    .local v17, nTotalReadCount:I
    const/16 v26, 0x4001

    move/from16 v0, v26

    new-array v14, v0, [B

    .line 213
    .local v14, m_aybyReadBuf:[B
    const-string v21, ""

    .line 214
    .local v21, rtnBody:Ljava/lang/String;
    const/4 v7, -0x1

    .line 216
    .local v7, errcode:I
    :goto_6
    const/16 v26, 0x1000

    :try_start_3
    move/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v4, v14, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v15

    if-gtz v15, :cond_10

    .line 220
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "nTotalReadCount["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "m_aybyReadBuf["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {v14, v15}, Lcom/skt/arm/ArmUtil;->byteToHex([BI)Ljava/lang/String;

    move-result-object v21

    .line 223
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "m_aybyReadBuf HEX["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/16 v26, 0x4

    const/16 v27, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x10

    invoke-static/range {v26 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 226
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Error Code Value["

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez v7, :cond_6

    .line 229
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "hexToASCII()"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/skt/arm/ArmUtil;->hexToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static/range {v21 .. v21}, Lcom/skt/arm/ArmUtil;->hexToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 231
    .local v20, productBody:Ljava/lang/String;
    const-string v26, "com.skt.skaf.OA00018282"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 233
    .local v19, packageIdx:I
    const/16 v26, -0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 235
    add-int/lit8 v26, v19, -0x14

    add-int/lit8 v27, v19, -0xa

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    sput-object v26, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    .line 237
    :cond_5
    const-string v26, "Arm plug-in"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Product Number"

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v28, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 248
    .end local v19           #packageIdx:I
    .end local v20           #productBody:Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 249
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 260
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 261
    sget-object v26, Lcom/skt/arm/ArmSeedCheck;->mProductNum:Ljava/lang/String;

    .end local v4           #dis:Ljava/io/DataInputStream;
    .end local v7           #errcode:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v14           #m_aybyReadBuf:[B
    .end local v15           #nReadCount:I
    .end local v17           #nTotalReadCount:I
    .end local v21           #rtnBody:Ljava/lang/String;
    :goto_7
    return-object v26

    .line 107
    .end local v3           #aybyBuf:[B
    .end local v8           #httpURLCon:Ljava/net/HttpURLConnection;
    .end local v9           #i:I
    .end local v13           #j:I
    .end local v18           #osType:Ljava/lang/String;
    .end local v22           #seedType:Ljava/lang/String;
    :cond_7
    const-string v25, "http://220.103.229.115:8301/shop_client/scproxy.omp"

    goto/16 :goto_0

    .line 125
    .restart local v3       #aybyBuf:[B
    .restart local v9       #i:I
    .restart local v13       #j:I
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_9

    .line 126
    add-int/lit8 v26, v9, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 123
    :goto_8
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 128
    :cond_9
    add-int/lit8 v26, v9, 0x2

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_8

    .line 136
    :cond_a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_b

    .line 137
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v9

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 134
    :goto_9
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 139
    :cond_b
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    add-int v26, v26, v9

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_9

    .line 150
    .restart local v22       #seedType:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_d

    .line 151
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 148
    :goto_a
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 153
    :cond_d
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_a

    .line 163
    .restart local v18       #osType:Ljava/lang/String;
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_f

    .line 164
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_MDN_MACADDRESS:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v27

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v3, v26

    .line 161
    :goto_b
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 166
    :cond_f
    sget-byte v26, Lcom/skt/arm/ArmProt;->SIZE_MDN:B

    add-int/lit8 v26, v26, 0x2

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_DEVICECODE:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_MDN_MACADDRESS:B

    add-int v26, v26, v27

    sget-byte v27, Lcom/skt/arm/ArmProt;->SIZE_SEED_TYPE:B

    add-int v26, v26, v27

    add-int v26, v26, v9

    const/16 v27, 0x0

    aput-byte v27, v3, v26

    goto :goto_b

    .line 179
    .restart local v8       #httpURLCon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v6

    .line 181
    .local v6, e1:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    const-string v26, ""

    goto/16 :goto_7

    .line 194
    .end local v6           #e1:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 196
    .local v6, e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 202
    .end local v6           #e1:Ljava/io/IOException;
    .restart local v10       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v6

    .line 204
    .restart local v6       #e1:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    const-string v26, ""

    goto/16 :goto_7

    .line 217
    .end local v6           #e1:Ljava/io/IOException;
    .restart local v4       #dis:Ljava/io/DataInputStream;
    .restart local v7       #errcode:I
    .restart local v14       #m_aybyReadBuf:[B
    .restart local v15       #nReadCount:I
    .restart local v17       #nTotalReadCount:I
    .restart local v21       #rtnBody:Ljava/lang/String;
    :cond_10
    add-int v17, v17, v15

    goto/16 :goto_6

    .line 242
    :catch_3
    move-exception v5

    .line 243
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 244
    const-string v26, ""

    goto/16 :goto_7

    .line 250
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 252
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 253
    const-string v26, ""

    goto/16 :goto_7
.end method
