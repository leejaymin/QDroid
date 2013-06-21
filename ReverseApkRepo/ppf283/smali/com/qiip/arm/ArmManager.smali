.class public Lcom/qiip/arm/ArmManager;
.super Ljava/lang/Object;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiip/arm/ArmManager$ArmConnection;
    }
.end annotation


# static fields
.field private static final ARM_SHOP_CLIENT_PACKAGE:Ljava/lang/String; = "com.qiip.store"

.field private static final ARM_VERIFY_TOOL_PACKAGE:Ljava/lang/String; = "com.qiip.verify.arm"

.field private static final TAG:Ljava/lang/String; = "ARMPlugin"

.field private static armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

.field protected static mArmListener:Lcom/qiip/arm/ArmListener;

.field private static mContext:Landroid/content/Context;

.field private static mVerifyService:Lcom/qiip/verify/arm/aidl/IQArmService;

.field public static sAID:Ljava/lang/String;


# instance fields
.field ARM_MODE:I

.field private LIB_FILE_PATH:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field private mHandler:Landroid/os/Handler;

.field mService:Lcom/qiip/arm/ArmServiceInAppProc;

.field mShopClientService:Lcom/qiip/arm/ArmShopClientPorc;

.field public nNetState:I

.field public nResAID:Ljava/lang/String;

.field public nResCode:I

.field nRet:I

.field public sMaskAID:Ljava/lang/String;

.field public sResMsg:Ljava/lang/String;

.field strRet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/qiip/arm/ArmManager;->armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/qiip/arm/ArmManager;->strRet:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/qiip/arm/ArmManager;->nRet:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiip/arm/ArmManager;->ARM_MODE:I

    .line 173
    new-instance v0, Lcom/qiip/arm/ArmManager$1;

    invoke-direct {v0, p0}, Lcom/qiip/arm/ArmManager$1;-><init>(Lcom/qiip/arm/ArmManager;)V

    iput-object v0, p0, Lcom/qiip/arm/ArmManager;->mHandler:Landroid/os/Handler;

    .line 58
    const-string v0, "ARMPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ArmManager Create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sput-object p1, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libARMService.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiip/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private ARMServiceCheck()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 232
    sget-object v3, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 234
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.qiip.verify.arm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 235
    const-string v3, "ARMPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " qiip verify tool is found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sget-object v3, Lcom/qiip/arm/ArmManager;->armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

    if-nez v3, :cond_0

    .line 237
    new-instance v3, Lcom/qiip/arm/ArmManager$ArmConnection;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/qiip/arm/ArmManager$ArmConnection;-><init>(Lcom/qiip/arm/ArmManager;Lcom/qiip/arm/ArmManager$ArmConnection;)V

    sput-object v3, Lcom/qiip/arm/ArmManager;->armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

    .line 239
    :cond_0
    const/4 v3, 0x1

    iput v3, p0, Lcom/qiip/arm/ArmManager;->ARM_MODE:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    iput v6, p0, Lcom/qiip/arm/ArmManager;->nNetState:I

    .line 256
    iget v3, p0, Lcom/qiip/arm/ArmManager;->ARM_MODE:I

    return v3

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v3, "com.qiip.store"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 244
    new-instance v3, Lcom/qiip/arm/ArmShopClientPorc;

    sget-object v4, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/qiip/arm/ArmShopClientPorc;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qiip/arm/ArmManager;->mShopClientService:Lcom/qiip/arm/ArmShopClientPorc;

    .line 245
    new-instance v3, Lcom/qiip/arm/ArmServiceInAppProc;

    sget-object v4, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/qiip/arm/ArmServiceInAppProc;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qiip/arm/ArmManager;->mService:Lcom/qiip/arm/ArmServiceInAppProc;

    .line 246
    const/4 v3, 0x2

    iput v3, p0, Lcom/qiip/arm/ArmManager;->ARM_MODE:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 247
    :catch_1
    move-exception v1

    .line 249
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Lcom/qiip/arm/ArmServiceInAppProc;

    sget-object v4, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/qiip/arm/ArmServiceInAppProc;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/qiip/arm/ArmManager;->mService:Lcom/qiip/arm/ArmServiceInAppProc;

    .line 251
    const/4 v3, 0x3

    iput v3, p0, Lcom/qiip/arm/ArmManager;->ARM_MODE:I

    goto :goto_0
.end method

.method private ARMServiceExecute(Ljava/lang/String;)I
    .locals 3
    .parameter "MaskAID"

    .prologue
    .line 280
    const/4 v1, -0x1

    .line 283
    .local v1, nRet:I
    :try_start_0
    sget-object v2, Lcom/qiip/arm/ArmManager;->mVerifyService:Lcom/qiip/verify/arm/aidl/IQArmService;

    invoke-interface {v2, p1}, Lcom/qiip/verify/arm/aidl/IQArmService;->executeArm(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "AID"

    .prologue
    .line 204
    const-string v0, ""

    .line 206
    .local v0, strRet:Ljava/lang/String;
    const/4 v1, -0x1

    iput v1, p0, Lcom/qiip/arm/ArmManager;->nResCode:I

    .line 214
    sget-object v1, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/qiip/arm/ArmManager;->ARMPluginMakeChallenge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    return-object v0
.end method

.method private GetProcessResponse(ILjava/lang/String;)I
    .locals 1
    .parameter "MaskResult"
    .parameter "aPackageName"

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/qiip/arm/ArmManager;->ARMPluginProcessResponse(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private ReturnService()V
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/qiip/arm/ArmManager;->mArmListener:Lcom/qiip/arm/ArmListener;

    invoke-interface {v0}, Lcom/qiip/arm/ArmListener;->onArmResult()V

    .line 194
    iget-object v0, p0, Lcom/qiip/arm/ArmManager;->mService:Lcom/qiip/arm/ArmServiceInAppProc;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/qiip/arm/ArmManager;->mService:Lcom/qiip/arm/ArmServiceInAppProc;

    invoke-virtual {v0}, Lcom/qiip/arm/ArmServiceInAppProc;->detoryInstance()V

    .line 196
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/qiip/arm/ArmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/qiip/arm/ArmManager;->ReturnService()V

    return-void
.end method

.method static synthetic access$1(Lcom/qiip/verify/arm/aidl/IQArmService;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    sput-object p0, Lcom/qiip/arm/ArmManager;->mVerifyService:Lcom/qiip/verify/arm/aidl/IQArmService;

    return-void
.end method

.method static synthetic access$10(Lcom/qiip/arm/ArmManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/qiip/arm/ArmManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/qiip/arm/ArmManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qiip/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/qiip/arm/ArmManager;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/qiip/arm/ArmManager;->existFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/qiip/arm/ArmManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/qiip/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/qiip/arm/ArmManager;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/qiip/arm/ArmManager;->ARMServiceExecute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/qiip/arm/ArmManager;ILjava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/qiip/arm/ArmManager;->GetProcessResponse(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$8()Lcom/qiip/arm/ArmManager$ArmConnection;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/qiip/arm/ArmManager;->armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

    return-object v0
.end method

.method static synthetic access$9(Lcom/qiip/arm/ArmManager$ArmConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    sput-object p0, Lcom/qiip/arm/ArmManager;->armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

    return-void
.end method

.method private existFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 275
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public native ARMGetEncryptKeyForIDShare()Ljava/lang/String;
.end method

.method public native ARMPluginAIDMasking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native ARMPluginMakeChallenge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native ARMPluginProcessResponse(ILjava/lang/String;)I
.end method

.method public ARM_Plugin_ExecuteARM(Ljava/lang/String;)V
    .locals 1
    .parameter "AppID"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/qiip/arm/ArmManager;->ARM_Plugin_ExecuteARM2(Ljava/lang/String;)Z

    move-result v0

    .line 75
    return-void
.end method

.method public ARM_Plugin_ExecuteARM2(Ljava/lang/String;)Z
    .locals 6
    .parameter "AppID"

    .prologue
    const/4 v5, 0x1

    .line 78
    const-string v2, "ARMPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " ARMPlugin ConnectService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    .line 86
    .local v0, bRet:Z
    :try_start_0
    iget-object v2, p0, Lcom/qiip/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qiip/arm/ArmManager;->existFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const-string v2, "ARMPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - Load JNI LIBRARY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/qiip/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/qiip/arm/ArmManager;->ARMGetEncryptKeyForIDShare()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/qiip/arm/util/CipherAES;->KEY:Ljava/lang/String;

    .line 95
    sput-object p1, Lcom/qiip/arm/ArmManager;->sAID:Ljava/lang/String;

    .line 96
    const-string v2, "qiip\u5c02\u7528\u30d7\u30ed\u30b0\u30e9\u30e0\u304c\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002\u5c02\u7528\u30d7\u30ed\u30b0\u30e9\u30e0\u3092\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5f8c\u306b\u3001\u518d\u5ea6\u5b9f\u884c\u3092\u3057\u3066\u304f\u3060\u3055\u3044\u3002(20)"

    iput-object v2, p0, Lcom/qiip/arm/ArmManager;->sResMsg:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/qiip/arm/ArmManager;->ARMServiceCheck()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib/libARMService.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qiip/arm/ArmManager;->existFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - Load JNI LIBRARY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/data/data/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/lib/libARMService.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 109
    :cond_1
    sget-object v2, Lcom/qiip/arm/ArmManager;->armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

    if-eqz v2, :cond_2

    .line 110
    sget-object v2, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/qiip/verify/arm/aidl/IQArmService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/qiip/arm/ArmManager;->armConn:Lcom/qiip/arm/ArmManager$ArmConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 170
    :cond_2
    :goto_0
    return v0

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/qiip/arm/ArmManager;->ARMServiceCheck()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 115
    iget-object v2, p0, Lcom/qiip/arm/ArmManager;->mShopClientService:Lcom/qiip/arm/ArmShopClientPorc;

    sget-object v3, Lcom/qiip/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/qiip/arm/ArmManager;->ARMPluginAIDMasking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qiip/arm/ArmShopClientPorc;->selectSharedPre(Ljava/lang/String;)V

    .line 116
    sget-object v2, Lcom/qiip/arm/ArmManager;->sAID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qiip/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qiip/arm/ArmManager;->strRet:Ljava/lang/String;

    .line 117
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/qiip/arm/ArmManager$2;

    invoke-direct {v3, p0}, Lcom/qiip/arm/ArmManager$2;-><init>(Lcom/qiip/arm/ArmManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/qiip/arm/ArmManager;->ARMServiceCheck()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 145
    const-string v2, "ARMPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " onServiceConnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/qiip/arm/ArmManager;->sAID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/qiip/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qiip/arm/ArmManager;->strRet:Ljava/lang/String;

    .line 148
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/qiip/arm/ArmManager$3;

    invoke-direct {v3, p0}, Lcom/qiip/arm/ArmManager$3;-><init>(Lcom/qiip/arm/ArmManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setArmListener(Lcom/qiip/arm/ArmListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 264
    sput-object p1, Lcom/qiip/arm/ArmManager;->mArmListener:Lcom/qiip/arm/ArmListener;

    .line 265
    return-void
.end method
