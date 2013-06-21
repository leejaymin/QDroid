.class public Lcom/feelingk/lguiab/manager/net/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI:[I

.field private static connectBP:Z

.field private static inputStreamBP:Ljava/io/InputStream;

.field private static outputStreamBP:Ljava/io/OutputStream;

.field private static socketBP:Ljava/net/Socket;


# direct methods
.method static synthetic $SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI()[I
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/feelingk/lguiab/manager/net/NetworkManager;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->values()[Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->AUTH_ALL:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CHECK:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CONFIRM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->FEE_CHARGING:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->PRODUCT_INFO:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->USER_AUTH:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->USE_ITEM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/feelingk/lguiab/manager/net/NetworkManager;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    const/4 v0, 0x0

    sput-boolean v0, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z

    .line 483
    sput-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    .line 484
    sput-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->inputStreamBP:Ljava/io/InputStream;

    .line 485
    sput-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->outputStreamBP:Ljava/io/OutputStream;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BpProcess([BLandroid/content/Context;Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;
    .locals 8
    .parameter "sendData"
    .parameter "context"
    .parameter "telecom"
    .parameter "mcid"
    .parameter "min"
    .parameter "bpServerIP"
    .parameter "bpServerPort"
    .parameter "productID"

    .prologue
    const/16 v7, -0xb

    .line 580
    invoke-static/range {p1 .. p7}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapConnectBP(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;

    move-result-object v1

    .line 583
    .local v1, result:Lcom/feelingk/lguiab/util/MsgConfirm;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->getMsg()[B

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->getMsg()[B

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_1

    .line 584
    :cond_0
    new-instance v3, Lcom/feelingk/lguiab/util/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/lguiab/util/MsgConfirm;-><init>()V

    .line 585
    .local v3, returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    invoke-virtual {v3, v7}, Lcom/feelingk/lguiab/util/MsgConfirm;->setResultCode(B)V

    .line 586
    const-string v5, "\ub124\ud2b8\uc6cc\ud06c BP \uc18c\ucf13 ERROR"

    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    .line 616
    :goto_0
    return-object v3

    .line 590
    .end local v3           #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    :cond_1
    const/4 v4, 0x0

    .line 592
    .local v4, str:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/String;

    .end local v4           #str:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->getMsg()[B

    move-result-object v5

    const-string v6, "euc-kr"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .restart local v4       #str:Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v5, "\uc131\uacf5"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 603
    invoke-static {p0}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapSendDataBP([B)[B

    move-result-object v2

    .line 605
    .local v2, resultSendDataBP:[B
    new-instance v3, Lcom/feelingk/lguiab/util/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/lguiab/util/MsgConfirm;-><init>()V

    .line 606
    .restart local v3       #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapCloseBP()I

    goto :goto_0

    .line 593
    .end local v2           #resultSendDataBP:[B
    .end local v3           #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    .end local v4           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/feelingk/lguiab/util/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/lguiab/util/MsgConfirm;-><init>()V

    .line 595
    .restart local v3       #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    invoke-virtual {v3, v7}, Lcom/feelingk/lguiab/util/MsgConfirm;->setResultCode(B)V

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[Exception] BPDataJob() : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    .restart local v4       #str:Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/feelingk/lguiab/util/MsgConfirm;

    invoke-direct {v3}, Lcom/feelingk/lguiab/util/MsgConfirm;-><init>()V

    .line 614
    .restart local v3       #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "is"

    .prologue
    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 461
    .local v1, line:Ljava/lang/String;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 464
    .local v2, reader:Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 472
    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 476
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 465
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    if-eqz p0, :cond_0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 473
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 471
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 472
    if-eqz p0, :cond_2

    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 474
    :cond_2
    :goto_2
    throw v4

    .line 473
    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static iapCloseBP()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 907
    :try_start_0
    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->inputStreamBP:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->inputStreamBP:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->outputStreamBP:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 913
    :cond_1
    :goto_1
    :try_start_2
    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 916
    :cond_2
    :goto_2
    sput-object v2, Lcom/feelingk/lguiab/manager/net/NetworkManager;->inputStreamBP:Ljava/io/InputStream;

    .line 917
    sput-object v2, Lcom/feelingk/lguiab/manager/net/NetworkManager;->outputStreamBP:Ljava/io/OutputStream;

    .line 918
    sput-object v2, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    .line 920
    sput-boolean v3, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z

    .line 921
    return v3

    .line 908
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 911
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 914
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static iapConnectBP(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;
    .locals 12
    .parameter "context"
    .parameter "telecom"
    .parameter "mcid"
    .parameter "min"
    .parameter "bpServerIP"
    .parameter "bpServerPort"
    .parameter "productID"

    .prologue
    .line 636
    const-string v1, "[NetworkM_BP] iapConnectBP() start "

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 638
    new-instance v10, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;

    invoke-direct {v10, p0}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;-><init>(Landroid/content/Context;)V

    .line 639
    .local v10, mwlanManager:Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
    new-instance v0, Lcom/feelingk/lguiab/util/MsgConfirm;

    invoke-direct {v0}, Lcom/feelingk/lguiab/util/MsgConfirm;-><init>()V

    .line 640
    .local v0, msgConfirm:Lcom/feelingk/lguiab/util/MsgConfirm;
    const/4 v9, 0x0

    .line 643
    .local v9, mwlanConnect:Z
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/feelingk/lguiab/util/DeviceUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 644
    const-string v1, "[NetworkM] isRoaming : true"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 645
    const-string v1, "[NetworkM] The connection to the server has been limited. (Roaming & Not WiFi zone)"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 647
    const/4 v1, 0x0

    .line 701
    :goto_0
    return-object v1

    .line 650
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NetworkM_BP] connectBP = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 651
    sget-boolean v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z

    if-eqz v1, :cond_1

    .line 652
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setResultCode(B)V

    move-object v1, v0

    .line 653
    goto :goto_0

    .line 658
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    sput-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    .line 659
    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget-object v3, Lcom/feelingk/lguiab/common/Defines;->IF_SERVER_HOST:Ljava/lang/String;

    const/16 v4, 0x138a

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x2710

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 660
    const-string v1, "[NetworkM_BP] socketBP.connect() Success "

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 662
    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->inputStreamBP:Ljava/io/InputStream;

    .line 663
    sget-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->socketBP:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->outputStreamBP:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    const/4 v1, 0x1

    sput-boolean v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z

    .line 676
    const-string v1, "[NetworkM_BP] * iapSendInitBP() *"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 678
    const/16 v1, 0x47

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapSendInitBP(Lcom/feelingk/lguiab/util/MsgConfirm;CLcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;

    move-result-object v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NetworkM_BP] msgConfirm.getResultCode() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/MsgConfirm;->getResultCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/MsgConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/MsgConfirm;->getResultCode()B

    move-result v1

    const/4 v2, -0x7

    if-eq v1, v2, :cond_2

    .line 684
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    move-object v1, v0

    .line 685
    goto/16 :goto_0

    .line 665
    :catch_0
    move-exception v8

    .line 666
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Exception] iapConnectBP() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 667
    const/4 v1, 0x0

    sput-boolean v1, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z

    .line 668
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setResultCode(B)V

    .line 669
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    move-object v1, v0

    .line 671
    goto/16 :goto_0

    .line 689
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    const-string v1, "[NetworkM_BP] * iapReceiveBP() *"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 691
    invoke-static {v0}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapReceiveBP(Lcom/feelingk/lguiab/util/Header;)[B

    move-result-object v11

    .line 692
    .local v11, recv:[B
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NetworkM_BP] msgConfirm.getResultCode() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/MsgConfirm;->getResultCode()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/MsgConfirm;->getResultCode()B

    move-result v1

    if-eqz v1, :cond_3

    .line 695
    const-string v1, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    move-object v1, v0

    .line 696
    goto/16 :goto_0

    .line 700
    :cond_3
    invoke-virtual {v0, v11}, Lcom/feelingk/lguiab/util/MsgConfirm;->parse([B)V

    move-object v1, v0

    .line 701
    goto/16 :goto_0
.end method

.method public static iapProcess(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;
    .locals 13
    .parameter "context"
    .parameter "iapUri"
    .parameter "requestXml"

    .prologue
    .line 66
    const/4 v8, 0x0

    .line 68
    .local v8, url:Ljava/lang/String;
    sget-boolean v10, Lcom/feelingk/lguiab/vo/IAPLibSetting;->serverType:Z

    if-eqz v10, :cond_1

    .line 69
    invoke-static {p0}, Lcom/feelingk/lguiab/util/DeviceUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v8, "http://61.101.244.200"

    .line 73
    :goto_0
    const/4 v5, 0x0

    .line 74
    .local v5, postUrl:Ljava/lang/String;
    const/4 v6, 0x0

    .line 75
    .local v6, returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    new-instance v4, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;

    invoke-direct {v4, p0}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;-><init>(Landroid/content/Context;)V

    .line 76
    .local v4, mwlanManager:Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
    const/4 v3, 0x0

    .line 80
    .local v3, mwlanConnect:Z
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI()[I

    move-result-object v10

    invoke-virtual {p1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 110
    const/4 v10, 0x0

    .line 280
    :goto_1
    return-object v10

    .line 69
    .end local v3           #mwlanConnect:Z
    .end local v4           #mwlanManager:Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
    .end local v5           #postUrl:Ljava/lang/String;
    .end local v6           #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    :cond_0
    const-string v8, "http://192.168.109.210"

    goto :goto_0

    .line 70
    :cond_1
    const-string v8, "http://211.115.75.53"

    goto :goto_0

    .line 82
    .restart local v3       #mwlanConnect:Z
    .restart local v4       #mwlanManager:Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
    .restart local v5       #postUrl:Ljava/lang/String;
    .restart local v6       #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->URI_BUY_CHECK:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    const-string v5, "/if/buyCheck.app"

    .line 115
    :goto_2
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->isRoaming()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {p0}, Lcom/feelingk/lguiab/util/DeviceUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 116
    const-string v10, "[NetworkM] isRoaming : true"

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 117
    const-string v10, "[NetworkM] The connection to the server has been limited. (Roaming & Not WiFi zone)"

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 119
    const/4 v10, 0x0

    goto :goto_1

    .line 86
    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->URI_BUY_CONFIRM:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 87
    const-string v5, "/if/buyConfirm.app"

    .line 88
    goto :goto_2

    .line 90
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->URI_FEE_CHARGING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    const-string v5, "/if/feeCharging.app"

    .line 92
    goto :goto_2

    .line 94
    :pswitch_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->URI_AUTH_ALL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 95
    const-string v5, "/if/authAll.app"

    .line 96
    goto :goto_2

    .line 98
    :pswitch_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->URI_PRODUCT_INFO:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v5, "/if/productInfo.app"

    .line 100
    goto :goto_2

    .line 102
    :pswitch_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->URI_USER_AUTH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    const-string v5, "/if/userAuth.app"

    .line 104
    goto/16 :goto_2

    .line 106
    :pswitch_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->URI_USE_ITEM:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 107
    const-string v5, "/if/useItem.app"

    .line 108
    goto/16 :goto_2

    .line 123
    :cond_2
    invoke-static {p0}, Lcom/feelingk/lguiab/util/DeviceUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 141
    invoke-virtual {v4}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->isMwlanAvailable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NetworkM] mwlan Api Version : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->getMwlanApiVersion()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 144
    const-string v10, "[NetworkM] mwlan isAvailable : true : connect ready"

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->connectMwlan()Z

    move-result v3

    .line 147
    if-nez v3, :cond_6

    .line 149
    invoke-virtual {v4}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->disconnectMwlan()V

    .line 153
    invoke-static {p0, p1, v5, p2}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapProcessWifiGW(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;

    move-result-object v10

    goto/16 :goto_1

    .line 160
    :cond_3
    const-string v10, "[WIFI G/W] Connect Start"

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 161
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v7, strBuf:Ljava/lang/StringBuffer;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "POST "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " HTTP/1.1\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 166
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Host: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/feelingk/lguiab/common/Defines;->IF_SERVER_HOST:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x1388

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 167
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Content-Length:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\r\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 168
    const-string v11, "Content-Type: text/xml; charset=\"utf-8\"\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 169
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 170
    invoke-virtual {v10, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    sput-object v7, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte$TunnelingSendDataParam;->strBuf:Ljava/lang/StringBuffer;

    .line 178
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PackageName:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/feelingk/lguiab/util/PackageInfoUtil;->getPackgaeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 179
    new-instance v9, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;

    invoke-static {p0}, Lcom/feelingk/lguiab/util/PackageInfoUtil;->getPackgaeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;-><init>(Ljava/lang/String;)V

    .line 180
    .local v9, wifiGWsocket:Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;
    sget-object v10, Lcom/feelingk/lguiab/common/Defines;->IF_SERVER_HOST:Ljava/lang/String;

    sput-object v10, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunIP:Ljava/lang/String;

    .line 181
    const/16 v10, 0x1388

    sput v10, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunPort:I

    .line 184
    :try_start_0
    invoke-virtual {v9}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->wifiGWrun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    invoke-virtual {v9}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->getResultMsgSring()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, msg:Ljava/lang/String;
    const-string v10, "<?"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_5

    .line 198
    new-instance v6, Lcom/feelingk/lguiab/vo/MessageInfo;

    .end local v6           #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    invoke-direct {v6}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    .line 199
    .restart local v6       #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    const/16 v10, -0xb

    invoke-virtual {v6, v10}, Lcom/feelingk/lguiab/vo/MessageInfo;->setStatus(I)V

    .line 200
    sget-object v10, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v10}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/feelingk/lguiab/vo/MessageInfo;->setMsg(Ljava/lang/String;)V

    move-object v10, v6

    .line 201
    goto/16 :goto_1

    .line 185
    .end local v2           #msg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 187
    new-instance v6, Lcom/feelingk/lguiab/vo/MessageInfo;

    .end local v6           #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    invoke-direct {v6}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    .line 188
    .restart local v6       #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    sget-object v10, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    if-nez v10, :cond_4

    sget-object v10, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v10}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    .line 189
    :cond_4
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lcom/feelingk/lguiab/vo/MessageInfo;->setResultCode(I)V

    .line 190
    const/16 v10, 0x32

    invoke-virtual {v6, v10}, Lcom/feelingk/lguiab/vo/MessageInfo;->setStatus(I)V

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Wifi Gateway "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/feelingk/lguiab/vo/MessageInfo;->setMsg(Ljava/lang/String;)V

    move-object v10, v6

    .line 192
    goto/16 :goto_1

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #msg:Ljava/lang/String;
    :cond_5
    const-string v10, "<?"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI()[I

    move-result-object v10

    invoke-virtual {p1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 229
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 208
    :pswitch_7
    invoke-static {v2}, Lcom/feelingk/lguiab/util/ParserXML;->buyCheckInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyCheckInfo;

    move-result-object v6

    :goto_3
    move-object v10, v6

    .line 231
    goto/16 :goto_1

    .line 211
    :pswitch_8
    invoke-static {v2}, Lcom/feelingk/lguiab/util/ParserXML;->buyConfirmInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyConfirmInfo;

    move-result-object v6

    .line 212
    goto :goto_3

    .line 214
    :pswitch_9
    invoke-static {v2}, Lcom/feelingk/lguiab/util/ParserXML;->feeChargingInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;

    move-result-object v6

    .line 215
    goto :goto_3

    .line 217
    :pswitch_a
    invoke-static {v2}, Lcom/feelingk/lguiab/util/ParserXML;->authAllInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/AuthAllInfo;

    move-result-object v6

    .line 218
    goto :goto_3

    .line 220
    :pswitch_b
    invoke-static {v2}, Lcom/feelingk/lguiab/util/ParserXML;->productInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/ProductInfo;

    move-result-object v6

    .line 221
    goto :goto_3

    .line 223
    :pswitch_c
    invoke-static {v2}, Lcom/feelingk/lguiab/util/ParserXML;->userAuthInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UserAuthInfo;

    move-result-object v6

    .line 224
    goto :goto_3

    .line 226
    :pswitch_d
    invoke-static {v2}, Lcom/feelingk/lguiab/util/ParserXML;->useItemInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UseItemInfo;

    move-result-object v6

    .line 227
    goto :goto_3

    .line 237
    .end local v2           #msg:Ljava/lang/String;
    .end local v7           #strBuf:Ljava/lang/StringBuffer;
    .end local v9           #wifiGWsocket:Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;
    :cond_6
    invoke-static {v8, p2}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->sendHttpPost(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/HttpResult;

    move-result-object v1

    .line 239
    .local v1, httpResult:Lcom/feelingk/lguiab/vo/HttpResult;
    const/16 v10, 0xc8

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getStatus()I

    move-result v11

    if-eq v10, v11, :cond_7

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getStatus()I

    move-result v10

    const/16 v11, 0x1f4

    if-lt v10, v11, :cond_9

    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getStatus()I

    move-result v10

    const/16 v11, 0x2328

    if-ge v10, v11, :cond_9

    .line 242
    :cond_7
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI()[I

    move-result-object v10

    invoke-virtual {p1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_2

    .line 265
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 244
    :pswitch_e
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/ParserXML;->buyCheckInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyCheckInfo;

    move-result-object v6

    .line 278
    :goto_4
    const/4 v3, 0x1

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->disconnectMwlan()V

    .line 279
    :cond_8
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    move-object v10, v6

    .line 280
    goto/16 :goto_1

    .line 247
    :pswitch_f
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/ParserXML;->buyConfirmInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyConfirmInfo;

    move-result-object v6

    .line 248
    goto :goto_4

    .line 250
    :pswitch_10
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/ParserXML;->feeChargingInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;

    move-result-object v6

    .line 251
    goto :goto_4

    .line 253
    :pswitch_11
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/ParserXML;->authAllInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/AuthAllInfo;

    move-result-object v6

    .line 254
    goto :goto_4

    .line 256
    :pswitch_12
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/ParserXML;->productInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/ProductInfo;

    move-result-object v6

    .line 257
    goto :goto_4

    .line 259
    :pswitch_13
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/ParserXML;->userAuthInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UserAuthInfo;

    move-result-object v6

    .line 260
    goto :goto_4

    .line 262
    :pswitch_14
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/ParserXML;->useItemInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UseItemInfo;

    move-result-object v6

    .line 263
    goto :goto_4

    .line 269
    :cond_9
    new-instance v6, Lcom/feelingk/lguiab/vo/MessageInfo;

    .end local v6           #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    invoke-direct {v6}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    .line 270
    .restart local v6       #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    invoke-virtual {v1}, Lcom/feelingk/lguiab/vo/HttpResult;->getStatus()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/feelingk/lguiab/vo/MessageInfo;->setStatus(I)V

    .line 271
    const-string v10, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {v6, v10}, Lcom/feelingk/lguiab/vo/MessageInfo;->setMsg(Ljava/lang/String;)V

    goto :goto_4

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 206
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 242
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static iapProcessBPServer(Ljava/lang/String;Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;
    .locals 16
    .parameter "sendData"
    .parameter "context"
    .parameter "telecom"
    .parameter "mcid"
    .parameter "min"
    .parameter "bpServerIP"
    .parameter "bpServerPort"
    .parameter "productID"

    .prologue
    .line 493
    const/4 v13, 0x0

    .line 494
    .local v13, returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    new-instance v12, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;-><init>(Landroid/content/Context;)V

    .line 498
    .local v12, mwlanManager:Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/feelingk/lguiab/util/DeviceUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    const-string v1, "[NetworkM] isRoaming : true"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 500
    const-string v1, "[NetworkM] The connection to the server has been limited. (Roaming & Not WiFi zone)"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 502
    const/4 v1, 0x0

    .line 572
    :goto_0
    return-object v1

    .line 506
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/feelingk/lguiab/util/DeviceUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 508
    invoke-virtual {v12}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->androidVersionCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {v12}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->isMwlanFullVerInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 511
    invoke-static {}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismissProgressDialog()V

    .line 512
    const-string v1, "[NetworkM] mwlan isInstalled : false"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 515
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NetworkM] mwlan Api Version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->getMwlanApiVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v12}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->isMwlanAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    const-string v1, "[NetworkM] mwlan isAvailable : true"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v12}, Lcom/feelingk/lguiab/manager/net/enc/MwlanManager;->connectMwlan()Z

    .line 572
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->BpProcess([BLandroid/content/Context;Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;

    move-result-object v1

    goto :goto_0

    .line 530
    :cond_3
    const-string v1, "[WIFI G/W] Connect Start"

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 531
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 534
    .local v14, strBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    sput-object v14, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte$TunnelingSendDataParam;->strBuf:Ljava/lang/StringBuffer;

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PackageName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/feelingk/lguiab/util/PackageInfoUtil;->getPackgaeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 543
    new-instance v15, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;

    invoke-static/range {p1 .. p1}, Lcom/feelingk/lguiab/util/PackageInfoUtil;->getPackgaeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;-><init>(Ljava/lang/String;)V

    .line 544
    .local v15, wifiGWsocket:Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;
    sget-object v1, Lcom/feelingk/lguiab/common/Defines;->IF_SERVER_HOST:Ljava/lang/String;

    sput-object v1, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunIP:Ljava/lang/String;

    .line 545
    const/16 v1, 0x1388

    sput v1, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunPort:I

    .line 548
    :try_start_0
    invoke-virtual {v15}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->wifiGWrun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    invoke-virtual {v15}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->getResultMsgByte()[B

    move-result-object v11

    .line 561
    .local v11, msg:[B
    new-instance v9, Lcom/feelingk/lguiab/util/DataPacket;

    invoke-direct {v9}, Lcom/feelingk/lguiab/util/DataPacket;-><init>()V

    .line 562
    .local v9, dataPacket:Lcom/feelingk/lguiab/util/DataPacket;
    invoke-virtual {v9, v11}, Lcom/feelingk/lguiab/util/DataPacket;->parse([B)V

    .line 563
    new-instance v13, Lcom/feelingk/lguiab/util/MsgConfirm;

    .end local v13           #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    invoke-direct {v13}, Lcom/feelingk/lguiab/util/MsgConfirm;-><init>()V

    .line 564
    .restart local v13       #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/feelingk/lguiab/util/DataPacket;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    move-object v1, v13

    .line 566
    goto/16 :goto_0

    .line 549
    .end local v9           #dataPacket:Lcom/feelingk/lguiab/util/DataPacket;
    .end local v11           #msg:[B
    :catch_0
    move-exception v10

    .line 550
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 551
    new-instance v13, Lcom/feelingk/lguiab/util/MsgConfirm;

    .end local v13           #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    invoke-direct {v13}, Lcom/feelingk/lguiab/util/MsgConfirm;-><init>()V

    .line 552
    .restart local v13       #returnValue:Lcom/feelingk/lguiab/util/MsgConfirm;
    const/16 v1, -0xb

    invoke-virtual {v13, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setResultCode(B)V

    .line 553
    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    move-object v1, v13

    .line 554
    goto/16 :goto_0
.end method

.method public static iapProcessWifiGW(Landroid/content/Context;Lcom/feelingk/lguiab/common/Defines$IAP_URI;Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/MessageInfo;
    .locals 9
    .parameter "context"
    .parameter "iapUri"
    .parameter "postUrl"
    .parameter "requestXml"

    .prologue
    const/16 v8, 0x1388

    .line 286
    const/4 v2, 0x0

    .line 289
    .local v2, returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    const-string v5, "[WIFI G/W] mwlan connect fail : retry wi-fi gw Connect Start"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 290
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 294
    .local v3, strBuf:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "POST "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " HTTP/1.1\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Host: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/feelingk/lguiab/common/Defines;->IF_SERVER_HOST:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Content-Length:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 297
    const-string v6, "Content-Type: text/xml; charset=\"utf-8\"\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 298
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 299
    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    sput-object v3, Lcom/feelingk/lguiab/manager/net/wifimgr/gwbyte/SocketMakeByte$TunnelingSendDataParam;->strBuf:Ljava/lang/StringBuffer;

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PackageName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/feelingk/lguiab/util/PackageInfoUtil;->getPackgaeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 308
    new-instance v4, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;

    invoke-static {p0}, Lcom/feelingk/lguiab/util/PackageInfoUtil;->getPackgaeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;-><init>(Ljava/lang/String;)V

    .line 309
    .local v4, wifiGWsocket:Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;
    sget-object v5, Lcom/feelingk/lguiab/common/Defines;->IF_SERVER_HOST:Ljava/lang/String;

    sput-object v5, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunIP:Ljava/lang/String;

    .line 310
    sput v8, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->isRunPort:I

    .line 312
    :try_start_0
    invoke-virtual {v4}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->wifiGWrun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    invoke-virtual {v4}, Lcom/feelingk/lguiab/manager/net/wifimgr/WifiGWsocket;->getResultMsgSring()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, msg:Ljava/lang/String;
    const-string v5, "<?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 326
    new-instance v2, Lcom/feelingk/lguiab/vo/MessageInfo;

    .end local v2           #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    invoke-direct {v2}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    .line 327
    .restart local v2       #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    const/16 v5, -0xb

    invoke-virtual {v2, v5}, Lcom/feelingk/lguiab/vo/MessageInfo;->setStatus(I)V

    .line 328
    sget-object v5, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/feelingk/lguiab/vo/MessageInfo;->setMsg(Ljava/lang/String;)V

    move-object v5, v2

    .line 360
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 315
    new-instance v2, Lcom/feelingk/lguiab/vo/MessageInfo;

    .end local v2           #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    invoke-direct {v2}, Lcom/feelingk/lguiab/vo/MessageInfo;-><init>()V

    .line 316
    .restart local v2       #returnValue:Lcom/feelingk/lguiab/vo/MessageInfo;
    sget-object v5, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    if-nez v5, :cond_0

    sget-object v5, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    .line 317
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/feelingk/lguiab/vo/MessageInfo;->setResultCode(I)V

    .line 318
    const/16 v5, 0x32

    invoke-virtual {v2, v5}, Lcom/feelingk/lguiab/vo/MessageInfo;->setStatus(I)V

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Wifi Gateway(retry) "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/feelingk/lguiab/vo/MessageInfo;->setMsg(Ljava/lang/String;)V

    move-object v5, v2

    .line 320
    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #msg:Ljava/lang/String;
    :cond_1
    const-string v5, "<?"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->$SWITCH_TABLE$com$feelingk$lguiab$common$Defines$IAP_URI()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 358
    const/4 v5, 0x0

    goto :goto_0

    .line 337
    :pswitch_0
    invoke-static {v1}, Lcom/feelingk/lguiab/util/ParserXML;->buyCheckInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyCheckInfo;

    move-result-object v2

    :goto_1
    move-object v5, v2

    .line 360
    goto :goto_0

    .line 340
    :pswitch_1
    invoke-static {v1}, Lcom/feelingk/lguiab/util/ParserXML;->buyConfirmInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/BuyConfirmInfo;

    move-result-object v2

    .line 341
    goto :goto_1

    .line 343
    :pswitch_2
    invoke-static {v1}, Lcom/feelingk/lguiab/util/ParserXML;->feeChargingInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/FeeChargingInfo;

    move-result-object v2

    .line 344
    goto :goto_1

    .line 346
    :pswitch_3
    invoke-static {v1}, Lcom/feelingk/lguiab/util/ParserXML;->authAllInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/AuthAllInfo;

    move-result-object v2

    .line 347
    goto :goto_1

    .line 349
    :pswitch_4
    invoke-static {v1}, Lcom/feelingk/lguiab/util/ParserXML;->productInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/ProductInfo;

    move-result-object v2

    .line 350
    goto :goto_1

    .line 352
    :pswitch_5
    invoke-static {v1}, Lcom/feelingk/lguiab/util/ParserXML;->userAuthInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UserAuthInfo;

    move-result-object v2

    .line 353
    goto :goto_1

    .line 355
    :pswitch_6
    invoke-static {v1}, Lcom/feelingk/lguiab/util/ParserXML;->useItemInfo(Ljava/lang/String;)Lcom/feelingk/lguiab/vo/UseItemInfo;

    move-result-object v2

    .line 356
    goto :goto_1

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static declared-synchronized iapReceiveBP(Lcom/feelingk/lguiab/util/Header;)[B
    .locals 14
    .parameter "responsePacket"

    .prologue
    const/16 v12, 0xc

    const/4 v13, -0x1

    const/4 v8, 0x0

    .line 809
    const-class v9, Lcom/feelingk/lguiab/manager/net/NetworkManager;

    monitor-enter v9

    :try_start_0
    const-string v10, "[NetworkM] iapReceiveBP() start"

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 811
    const/4 v4, 0x0

    check-cast v4, [B

    .line 812
    .local v4, header:[B
    const/4 v1, 0x0

    check-cast v1, [B

    .line 813
    .local v1, data:[B
    const/4 v7, 0x0

    check-cast v7, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    .local v7, returnData:[B
    const/4 v6, 0x0

    .line 815
    .local v6, receivedBytes:I
    const/4 v5, 0x0

    .line 816
    .local v5, reads:I
    const/4 v2, 0x0

    .line 820
    .local v2, dataLen:I
    const/16 v10, 0xc

    :try_start_1
    new-array v4, v10, [B

    .line 823
    :goto_0
    if-lt v6, v12, :cond_2

    .line 839
    const-string v10, "[NetworkM] iapReceiveBP() Header Receive Complete "

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 842
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    const/16 v12, 0xa

    invoke-direct {v10, v4, v11, v12}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, bodyDataLen:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 846
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 854
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[NetworkM] iapReceiveBP() Data Length: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 855
    new-array v1, v2, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 858
    const/4 v6, 0x0

    .line 859
    :goto_1
    if-lt v6, v2, :cond_5

    .line 878
    :cond_0
    :try_start_2
    array-length v8, v4

    array-length v10, v1

    add-int/2addr v8, v10

    new-array v7, v8, [B

    .line 879
    const/4 v8, 0x0

    const/4 v10, 0x0

    array-length v11, v4

    invoke-static {v4, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    const/4 v8, 0x0

    array-length v10, v4

    array-length v11, v1

    add-int/lit8 v11, v11, -0x1

    invoke-static {v1, v8, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    if-eqz p0, :cond_1

    .line 883
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/feelingk/lguiab/util/Header;->setResultCode(B)V

    .line 887
    :cond_1
    array-length v8, v4

    array-length v10, v1

    add-int/2addr v8, v10

    invoke-static {v7, v8}, Lcom/feelingk/lguiab/util/PacketUtil;->packetDebug([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v7

    .line 888
    .end local v0           #bodyDataLen:Ljava/lang/String;
    :goto_2
    monitor-exit v9

    return-object v8

    .line 825
    :cond_2
    :try_start_3
    sget-object v10, Lcom/feelingk/lguiab/manager/net/NetworkManager;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v4

    sub-int/2addr v11, v6

    invoke-virtual {v10, v4, v6, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 827
    if-eq v5, v13, :cond_3

    .line 830
    add-int/2addr v6, v5

    goto :goto_0

    .line 835
    :cond_3
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/lguiab/util/Header;->setResultCode(B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 871
    :catch_0
    move-exception v3

    .line 872
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[Exception] iapReceiveBP() : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 873
    const/4 v10, -0x5

    invoke-virtual {p0, v10}, Lcom/feelingk/lguiab/util/Header;->setResultCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 809
    .end local v1           #data:[B
    .end local v2           #dataLen:I
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #header:[B
    .end local v5           #reads:I
    .end local v6           #receivedBytes:I
    .end local v7           #returnData:[B
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 850
    .restart local v0       #bodyDataLen:Ljava/lang/String;
    .restart local v1       #data:[B
    .restart local v2       #dataLen:I
    .restart local v4       #header:[B
    .restart local v5       #reads:I
    .restart local v6       #receivedBytes:I
    .restart local v7       #returnData:[B
    :cond_4
    const/4 v10, -0x5

    :try_start_5
    invoke-virtual {p0, v10}, Lcom/feelingk/lguiab/util/Header;->setResultCode(B)V

    goto :goto_2

    .line 861
    :cond_5
    sget-object v10, Lcom/feelingk/lguiab/manager/net/NetworkManager;->inputStreamBP:Ljava/io/InputStream;

    array-length v11, v1

    sub-int/2addr v11, v6

    invoke-virtual {v10, v1, v6, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v5

    .line 863
    if-eq v5, v13, :cond_0

    .line 864
    add-int/2addr v6, v5

    goto :goto_1
.end method

.method private static iapSendDataBP([B)[B
    .locals 6
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 750
    new-instance v0, Lcom/feelingk/lguiab/util/DataPacket;

    invoke-direct {v0}, Lcom/feelingk/lguiab/util/DataPacket;-><init>()V

    .line 753
    .local v0, dataPacket:Lcom/feelingk/lguiab/util/DataPacket;
    const-string v5, "[NetworkM] iapSendDataBP() start"

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 756
    invoke-static {p0}, Lcom/feelingk/lguiab/util/PacketUtil;->makeDPPacket([B)[B

    move-result-object v1

    .line 759
    .local v1, packetBytes:[B
    invoke-static {v1}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapWriteBP([B)B

    move-result v3

    .line 760
    .local v3, ret:B
    if-eqz v3, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-object v4

    .line 765
    :cond_1
    invoke-static {v0}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapReceiveBP(Lcom/feelingk/lguiab/util/Header;)[B

    move-result-object v2

    .line 766
    .local v2, recv:[B
    array-length v5, v2

    invoke-static {v2, v5}, Lcom/feelingk/lguiab/util/PacketUtil;->packetDebug([BI)V

    .line 767
    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/DataPacket;->getResultCode()B

    move-result v5

    if-nez v5, :cond_0

    .line 772
    invoke-virtual {v0, v2}, Lcom/feelingk/lguiab/util/DataPacket;->parse([B)V

    .line 773
    invoke-virtual {v0}, Lcom/feelingk/lguiab/util/DataPacket;->getData()[B

    move-result-object v4

    goto :goto_0
.end method

.method private static iapSendInitBP(Lcom/feelingk/lguiab/util/MsgConfirm;CLcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)Lcom/feelingk/lguiab/util/MsgConfirm;
    .locals 3
    .parameter "msgConfirm"
    .parameter "networkType"
    .parameter "telecom"
    .parameter "applicationID"
    .parameter "min"
    .parameter "ip"
    .parameter "port"
    .parameter "productID"

    .prologue
    .line 722
    const-string v2, "[NetworkM] iapSendInitBP() start "

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 725
    invoke-static/range {p1 .. p7}, Lcom/feelingk/lguiab/util/PacketUtil;->makeIPPacket(CLcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)[B

    move-result-object v0

    .line 727
    .local v0, packetBytes:[B
    const-string v2, "[NetworkM] make IP Packet Success "

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 730
    invoke-static {v0}, Lcom/feelingk/lguiab/manager/net/NetworkManager;->iapWriteBP([B)B

    move-result v1

    .line 731
    .local v1, ret:B
    const-string v2, "[NetworkM] Packet Send(outputStream.write) Complete "

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 734
    if-eqz v1, :cond_0

    .line 736
    invoke-virtual {p0, v1}, Lcom/feelingk/lguiab/util/MsgConfirm;->setResultCode(B)V

    .line 737
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c \uc5f0\uacb0\uc744 \ud655\uc778 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    invoke-virtual {p0, v2}, Lcom/feelingk/lguiab/util/MsgConfirm;->setUserMessage(Ljava/lang/String;)V

    .line 739
    :cond_0
    return-object p0
.end method

.method private static declared-synchronized iapWriteBP([B)B
    .locals 6
    .parameter "sendBuf"

    .prologue
    const/4 v1, 0x0

    .line 784
    const-class v2, Lcom/feelingk/lguiab/manager/net/NetworkManager;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 787
    const/4 v1, -0x2

    .line 799
    :goto_0
    monitor-exit v2

    return v1

    .line 791
    :cond_0
    :try_start_1
    sget-object v3, Lcom/feelingk/lguiab/manager/net/NetworkManager;->outputStreamBP:Ljava/io/OutputStream;

    const/4 v4, 0x0

    array-length v5, p0

    invoke-virtual {v3, p0, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 792
    sget-object v3, Lcom/feelingk/lguiab/manager/net/NetworkManager;->outputStreamBP:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[Exception] iapWriteBP() : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    const/4 v1, -0x4

    goto :goto_0

    .line 784
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isBPConnect()Z
    .locals 1

    .prologue
    .line 897
    sget-boolean v0, Lcom/feelingk/lguiab/manager/net/NetworkManager;->connectBP:Z

    return v0
.end method

.method private static sendHttpPost(Ljava/lang/String;Ljava/lang/String;)Lcom/feelingk/lguiab/vo/HttpResult;
    .locals 23
    .parameter "url"
    .parameter "requestXml"

    .prologue
    .line 372
    const/4 v10, 0x0

    .line 373
    .local v10, instream:Ljava/io/InputStream;
    const/16 v16, 0x2329

    .line 374
    .local v16, status:I
    new-instance v14, Lcom/feelingk/lguiab/vo/HttpResult;

    invoke-direct {v14}, Lcom/feelingk/lguiab/vo/HttpResult;-><init>()V

    .line 378
    .local v14, returnValue:Lcom/feelingk/lguiab/vo/HttpResult;
    :try_start_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 379
    .local v6, hp:Lorg/apache/http/params/HttpParams;
    const/16 v20, 0x2710

    move/from16 v0, v20

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 380
    const/16 v20, 0x2710

    move/from16 v0, v20

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 382
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 383
    .local v8, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 384
    .local v7, httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    new-instance v15, Lorg/apache/http/entity/StringEntity;

    const-string v20, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .local v15, se:Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v7, v15}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 387
    const-string v20, "Accept"

    const-string v21, "application/xml"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v20, "Content-type"

    const-string v21, "application/xml"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v20, "Accept-Encoding"

    const-string v21, "gzip"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 392
    .local v18, t:J
    invoke-virtual {v8, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 393
    .local v13, response:Lorg/apache/http/HttpResponse;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "HTTPResponse received in ["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v18

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "ms]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 395
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 396
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 397
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "http success, response code="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 398
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/feelingk/lguiab/vo/HttpResult;->setStatus(I)V

    .line 400
    if-eqz v5, :cond_1

    .line 402
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 403
    const-string v20, "Content-Encoding"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 405
    .local v3, contentEncoding:Lorg/apache/http/Header;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    const-string v21, "gzip"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 406
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v11, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10           #instream:Ljava/io/InputStream;
    .local v11, instream:Ljava/io/InputStream;
    move-object v10, v11

    .line 410
    .end local v11           #instream:Ljava/io/InputStream;
    .restart local v10       #instream:Ljava/io/InputStream;
    :cond_0
    new-instance v12, Ljava/io/InputStreamReader;

    const-string v20, "UTF-8"

    move-object/from16 v0, v20

    invoke-direct {v12, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 411
    .local v12, reader:Ljava/io/Reader;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 415
    .local v17, strBuf:Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v12}, Ljava/io/Reader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v9

    .line 416
    .local v9, i:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_3

    .line 424
    .end local v9           #i:I
    :goto_1
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/feelingk/lguiab/vo/HttpResult;->setResponseMsg(Ljava/lang/String;)V

    .line 427
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "[Response XML]\n"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/feelingk/lguiab/vo/HttpResult;->getResponseMsg()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 445
    .end local v3           #contentEncoding:Lorg/apache/http/Header;
    .end local v12           #reader:Ljava/io/Reader;
    .end local v17           #strBuf:Ljava/lang/StringBuffer;
    :cond_1
    if-eqz v10, :cond_2

    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 448
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #hp:Lorg/apache/http/params/HttpParams;
    .end local v7           #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #se:Lorg/apache/http/entity/StringEntity;
    .end local v18           #t:J
    :cond_2
    :goto_2
    return-object v14

    .line 418
    .restart local v3       #contentEncoding:Lorg/apache/http/Header;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #hp:Lorg/apache/http/params/HttpParams;
    .restart local v7       #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v9       #i:I
    .restart local v12       #reader:Ljava/io/Reader;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #se:Lorg/apache/http/entity/StringEntity;
    .restart local v17       #strBuf:Ljava/lang/StringBuffer;
    .restart local v18       #t:J
    :cond_3
    int-to-char v2, v9

    .line 419
    .local v2, c:C
    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 421
    .end local v2           #c:C
    .end local v9           #i:I
    :catch_0
    move-exception v4

    .line 422
    .local v4, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 430
    .end local v3           #contentEncoding:Lorg/apache/http/Header;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #hp:Lorg/apache/http/params/HttpParams;
    .end local v7           #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #reader:Ljava/io/Reader;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #se:Lorg/apache/http/entity/StringEntity;
    .end local v17           #strBuf:Ljava/lang/StringBuffer;
    .end local v18           #t:J
    :catch_1
    move-exception v4

    .line 431
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    const/16 v16, 0x232a

    .line 432
    :try_start_6
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/feelingk/lguiab/vo/HttpResult;->setStatus(I)V

    .line 433
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "http failed, ClientProtocolException code = 9002, "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 433
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 445
    if-eqz v10, :cond_2

    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 446
    :catch_2
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 437
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 439
    .local v4, e:Ljava/lang/Exception;
    :try_start_8
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/feelingk/lguiab/vo/HttpResult;->setStatus(I)V

    .line 440
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "http failed, code = 9001, "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 440
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 445
    if-eqz v10, :cond_2

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 446
    :catch_4
    move-exception v4

    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 444
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 445
    if-eqz v10, :cond_4

    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 447
    :cond_4
    :goto_3
    throw v20

    .line 446
    :catch_5
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v4           #e:Ljava/io/IOException;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v6       #hp:Lorg/apache/http/params/HttpParams;
    .restart local v7       #httpPostRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #se:Lorg/apache/http/entity/StringEntity;
    .restart local v18       #t:J
    :catch_6
    move-exception v4

    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
