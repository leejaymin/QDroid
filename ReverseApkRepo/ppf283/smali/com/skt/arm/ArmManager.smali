.class public Lcom/skt/arm/ArmManager;
.super Ljava/lang/Object;
.source "ArmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skt/arm/ArmManager$ArmConnection;
    }
.end annotation


# static fields
.field private static final ARM_SERVICE_PACKAGE:Ljava/lang/String; = "com.skt.skaf.OA00018282"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TSTORE_PACKAGE:Ljava/lang/String; = "com.skt.skaf.A000Z00040"

.field private static mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

.field protected static mArmListener:Lcom/skt/arm/ArmListener;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/skt/arm/aidl/IArmService;


# instance fields
.field private final COMPONENT_ENABLED_STATE_DISABLED_USER:I

.field private final ERR_CODE_NEED_CHANGE_SETTINGS:I

.field private final ERR_CODE_NEED_DECLARE_USES_PERMSSION:I

.field private final ERR_CODE_NEED_TSTORE:I

.field private final ERR_CODE_NEED_UPDATE_ARM:I

.field private final ERR_CODE_NETWORK_DISCONNECT:I

.field private final ERR_CODE_UNKNOWN:I

.field private LIB_FILE_PATH:Ljava/lang/String;

.field private LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

.field asc:Lcom/skt/arm/ArmSeedCheck;

.field private mBoundService:Landroid/os/IBinder;

.field public nNetState:I

.field public nResAID:Ljava/lang/String;

.field public nResCode:I

.field public sAID:Ljava/lang/String;

.field public sMaskAID:Ljava/lang/String;

.field public sResMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    sput-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x3

    iput v0, p0, Lcom/skt/arm/ArmManager;->COMPONENT_ENABLED_STATE_DISABLED_USER:I

    .line 30
    const/16 v0, 0x14

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_UNKNOWN:I

    .line 31
    const/16 v0, 0x1e

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NETWORK_DISCONNECT:I

    .line 32
    const/16 v0, 0x28

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_TSTORE:I

    .line 33
    const/16 v0, 0x29

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_UPDATE_ARM:I

    .line 34
    const/16 v0, 0x2a

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_CHANGE_SETTINGS:I

    .line 35
    const/16 v0, 0x2b

    iput v0, p0, Lcom/skt/arm/ArmManager;->ERR_CODE_NEED_DECLARE_USES_PERMSSION:I

    .line 65
    sget-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sput-object p1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libARMPlugin.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libarmplugin.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/skt/arm/ArmSeedCheck;

    invoke-direct {v0, p1}, Lcom/skt/arm/ArmSeedCheck;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skt/arm/ArmManager;->asc:Lcom/skt/arm/ArmSeedCheck;

    .line 70
    return-void
.end method

.method private native ARMPluginGetMaskString()Ljava/lang/String;
.end method

.method private native ARMPluginMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native ARMPluginProcessResponse(I)I
.end method

.method private ARMServiceExecute(Ljava/lang/String;)I
    .locals 5
    .parameter "MaskAID"

    .prologue
    .line 212
    const/4 v1, -0x1

    .line 215
    .local v1, nRet:I
    :try_start_0
    sget-object v2, Lcom/skt/arm/ArmManager;->mService:Lcom/skt/arm/aidl/IArmService;

    invoke-interface {v2, p1}, Lcom/skt/arm/aidl/IArmService;->executeArm(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    sget-object v2, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "execute nRet = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ARMServiceLastVersionInstall(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 327
    const-string v7, "Arm plug-in"

    const-string v8, "ARM \ub2e4\uc6b4\ub85c\ub4dc \uc2dc\uc791"

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v7, "DP12002"

    invoke-static {v7}, Lcom/skt/arm/ArmSeedCheck;->getProductID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, productID:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 330
    :cond_0
    const-string v7, "DP12010"

    invoke-static {v7}, Lcom/skt/arm/ArmSeedCheck;->getProductID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    if-eqz v3, :cond_1

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 333
    :cond_1
    const/16 v7, 0x1e

    invoke-direct {p0, v7, v6, v6}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    .line 374
    :goto_0
    return v5

    .line 339
    :cond_2
    const-string v7, "Arm plug-in"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "productID == "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :try_start_0
    const-string v7, "com.skt.skaf.A000Z00040"

    invoke-static {p1, v7}, Lcom/skt/arm/ArmUtil;->isInstalledCombinedTstore(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    const-string v7, "Arm plug-in"

    const-string v8, "isInstalledCombinedTstore(context) == true"

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "com.skt.skaf.A000Z00040.COREAPP.UPGRADE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 349
    const-string v7, "PACKAGE"

    const-string v8, "com.skt.skaf.OA00018282"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v7, "PID"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    move v5, v6

    .line 374
    goto :goto_0

    .line 356
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const-string v7, "Arm plug-in"

    const-string v8, "isInstalledCombinedTstore(context) == false"

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DL_UPGRADE "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " 5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, strMsg:Ljava/lang/String;
    const-string v7, "Arm plug-in"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "false and productID == "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.skt.skaf.Z0000OMPDL"

    const-string v8, "com.skt.skaf.Z0000OMPDL.Z0000OMPDL"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v0, compName:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "com.skt.skaf.COL.URI"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 363
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 368
    .end local v0           #compName:Landroid/content/ComponentName;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #strMsg:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    const/16 v7, 0x14

    invoke-direct {p0, v7, v6, v6}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto/16 :goto_0
.end method

.method private GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "AID"

    .prologue
    .line 188
    const-string v0, ""

    .line 189
    .local v0, strRet:Ljava/lang/String;
    sget-object v1, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " GetMakeChallenge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, -0x1

    iput v1, p0, Lcom/skt/arm/ArmManager;->nResCode:I

    .line 192
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/skt/arm/ArmManager;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    sget-object v1, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - Load JNI LIBRARY[LIB_FILE_PATH]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMPluginMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/skt/arm/ArmManager;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - Load JNI LIBRARY[LIB_FILE_PATH_MARMALADE]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/skt/arm/ArmManager;->LIB_FILE_PATH_MARMALADE:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMPluginMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private GetProcessResponse(I)I
    .locals 1
    .parameter "MaskResult"

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMPluginProcessResponse(I)I

    move-result v0

    return v0
.end method

.method private ReturnService()V
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/skt/arm/ArmManager;->mArmListener:Lcom/skt/arm/ArmListener;

    invoke-interface {v0}, Lcom/skt/arm/ArmListener;->onArmResult()V

    .line 173
    invoke-virtual {p0}, Lcom/skt/arm/ArmManager;->DisconnectService()V

    .line 174
    return-void
.end method

.method static synthetic access$0(Lcom/skt/arm/ArmManager;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/skt/arm/ArmManager;->mBoundService:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/skt/arm/ArmManager;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/skt/arm/ArmManager;->mBoundService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3(Lcom/skt/arm/aidl/IArmService;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    sput-object p0, Lcom/skt/arm/ArmManager;->mService:Lcom/skt/arm/aidl/IArmService;

    return-void
.end method

.method static synthetic access$4(Lcom/skt/arm/ArmManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/skt/arm/ArmManager;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->ARMServiceExecute(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/skt/arm/ArmManager;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/skt/arm/ArmManager;->GetProcessResponse(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7()Landroid/content/Context;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8()Lcom/skt/arm/ArmManager$ArmConnection;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    return-object v0
.end method

.method static synthetic access$9(Lcom/skt/arm/ArmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/skt/arm/ArmManager;->ReturnService()V

    return-void
.end method

.method private existFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private procErrorMsg(IZZ)V
    .locals 7
    .parameter "nErrCode"
    .parameter "isViewToast"
    .parameter "isReturnAndDestroyThis"

    .prologue
    .line 390
    sget-object v2, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/skt/arm/ArmUtil;->getLanguageSet(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 392
    .local v6, isKOLanguage:Z
    sparse-switch p1, :sswitch_data_0

    .line 453
    if-eqz v6, :cond_8

    .line 454
    const-string v2, "T store\uac00 \uc81c\ub300\ub85c \uc124\uce58\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. T store\ub97c \uc0ad\uc81c \ud6c4 \uc7ac\uc124\uce58 \ud558\uc2e0 \ub2e4\uc74c \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc744 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.(20)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    .line 463
    :goto_0
    if-eqz p2, :cond_0

    .line 464
    sget-object v2, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 466
    :cond_0
    if-eqz p3, :cond_1

    .line 467
    invoke-direct {p0}, Lcom/skt/arm/ArmManager;->ReturnService()V

    .line 468
    new-instance v1, Lcom/skt/arm/ArmManager$1;

    invoke-direct {v1, p0}, Lcom/skt/arm/ArmManager$1;-><init>(Lcom/skt/arm/ArmManager;)V

    .line 473
    .local v1, myTask:Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 474
    .local v0, timer:Ljava/util/Timer;
    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 477
    .end local v0           #timer:Ljava/util/Timer;
    .end local v1           #myTask:Ljava/util/TimerTask;
    :cond_1
    return-void

    .line 394
    :sswitch_0
    if-eqz v6, :cond_2

    .line 395
    const-string v2, "T store\uac00 \uc81c\ub300\ub85c \uc124\uce58\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. T store\ub97c \uc0ad\uc81c \ud6c4 \uc7ac\uc124\uce58 \ud558\uc2e0 \ub2e4\uc74c \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc744 \uc7ac\uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4.(20)"

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_2
    const-string v2, "The \'T store\' application is not installed properly. After deleting and reinstalling it, run this application again."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 405
    :sswitch_1
    if-eqz v6, :cond_3

    .line 406
    const-string v2, "\ub124\ud2b8\uc6cc\ud06c\uc5d0 \uc5f0\uacb0\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc811\uc18d \uc0c1\ud0dc\ub97c \ud655\uc778 \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_3
    const-string v2, "Your phone is disconnected to the network. Check the status of network connection and try again after connected to the network."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 413
    :sswitch_2
    if-eqz v6, :cond_4

    .line 414
    const-string v2, "T store\uac00 \uc124\uce58\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4. T store \uc124\uce58 \ud6c4 \ub2e4\uc2dc \uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 417
    :cond_4
    const-string v2, "The \'T store\' application is not installed. After installing it, run this application again."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 423
    :sswitch_3
    if-eqz v6, :cond_5

    .line 424
    const-string v2, "T store ARM \uc5c5\ub370\uc774\ud2b8\uac00 \ud544\uc694\ud569\ub2c8\ub2e4. \uc124\uce58 \uc644\ub8cc \ud6c4 \ub2e4\uc2dc \uc2e4\ud589 \ud574\uc8fc\uc2dc\uae30 \ubc14\ub78d\ub2c8\ub2e4."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 427
    :cond_5
    const-string v2, "Your \'T store ARM\' application needs to be updated to upper version to run this applicatioin. Please update it and then run this application again."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 434
    :sswitch_4
    if-eqz v6, :cond_6

    .line 435
    const-string v2, "T store ARM\uc774 \'\uc0ac\uc6a9\uc548\ud568\' \uc124\uc815\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4. \ud574\ub2f9 \uae30\ub2a5\uc744 \'\uc0ac\uc6a9\' \uc124\uc815\uc73c\ub85c \ubcc0\uacbd \ud6c4 \ub2e4\uc2dc \uc2e4\ud589\ud574 \uc8fc\uc2ed\uc2dc\uc624."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 438
    :cond_6
    const-string v2, "Your \'T store ARM\' set \'Disable\'. Check application detail infomation and set \'Enable\' please."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 443
    :sswitch_5
    if-eqz v6, :cond_7

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\ud574\ub2f9 \ud37c\ubbf8\uc158\uc774 \uc874\uc7ac\ud558\uc9c0 \uc54a\uc73c\ubbc0\ub85c \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc744 \uc885\ub8cc\ud569\ub2c8\ub2e4 \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/skt/arm/ArmUtil;->getNotPermissionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto :goto_0

    .line 448
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Your Application Needs Permissions \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/skt/arm/ArmUtil;->getNotPermissionMsg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 457
    :cond_8
    const-string v2, "The \'T store\' application is not installed properly. After deleting and reinstalling it, run this application again."

    iput-object v2, p0, Lcom/skt/arm/ArmManager;->sResMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2a -> :sswitch_4
        0x2b -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public ARM_Plugin_ExecuteARM(Ljava/lang/String;)V
    .locals 5
    .parameter "AppID"

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x1

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, bRet:Z
    iput v4, p0, Lcom/skt/arm/ArmManager;->nNetState:I

    .line 84
    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/skt/arm/ArmUtil;->getServiceState(Landroid/content/Context;)I

    move-result v1

    .line 85
    const/4 v2, 0x3

    .line 84
    if-ne v1, v2, :cond_1

    .line 87
    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/skt/arm/ArmUtil;->ShowAppDetailPage(Landroid/content/Context;)V

    .line 89
    const/16 v1, 0x2a

    invoke-direct {p0, v1, v3, v3}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/skt/arm/ArmUtil;->getPermissionCheck(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    const/16 v1, 0x2b

    invoke-direct {p0, v1, v3, v3}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0

    .line 103
    :cond_2
    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    const-string v2, "com.skt.skaf.OA00018282"

    invoke-static {v1, v2}, Lcom/skt/arm/ArmUtil;->checkNeedUpdateARMService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 106
    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    const-string v2, "com.skt.skaf.A000Z00040"

    invoke-static {v1, v2}, Lcom/skt/arm/ArmUtil;->checkTStoreInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    sget-object v1, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/skt/arm/ArmManager;->ARMServiceLastVersionInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/16 v1, 0x29

    invoke-direct {p0, v1, v3, v3}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0

    .line 117
    :cond_3
    const/16 v1, 0x28

    invoke-direct {p0, v1, v3, v3}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {p0, p1}, Lcom/skt/arm/ArmManager;->ARM_Plugin_ExecuteARM2(Ljava/lang/String;)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    iput v3, p0, Lcom/skt/arm/ArmManager;->nNetState:I

    goto :goto_0

    .line 132
    :cond_5
    invoke-direct {p0, v4, v3, v3}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V

    goto :goto_0
.end method

.method public ARM_Plugin_ExecuteARM2(Ljava/lang/String;)Z
    .locals 6
    .parameter "AppID"

    .prologue
    .line 138
    sget-object v2, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

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

    invoke-static {v2, v3}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    .line 143
    .local v0, bRet:Z
    :try_start_0
    sget-object v2, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    if-nez v2, :cond_0

    .line 144
    new-instance v2, Lcom/skt/arm/ArmManager$ArmConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/skt/arm/ArmManager$ArmConnection;-><init>(Lcom/skt/arm/ArmManager;Lcom/skt/arm/ArmManager$ArmConnection;)V

    sput-object v2, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    .line 147
    :cond_0
    sget-object v2, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 150
    iput-object p1, p0, Lcom/skt/arm/ArmManager;->sAID:Ljava/lang/String;

    .line 153
    sget-object v2, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    const-string v3, "com.skt.skaf.OA00018282"

    invoke-static {v2, v3}, Lcom/skt/arm/ArmUtil;->ARMServiceCheck(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    sget-object v2, Lcom/skt/arm/ArmManager;->mContext:Landroid/content/Context;

    .line 155
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/skt/arm/aidl/IArmService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    sget-object v4, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    const/4 v5, 0x1

    .line 154
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 157
    sget-object v2, Lcom/skt/arm/ArmLog;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bindService Result["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    return v0

    .line 161
    :cond_2
    const/16 v2, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/skt/arm/ArmManager;->procErrorMsg(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public DisconnectService()V
    .locals 3

    .prologue
    .line 179
    sget-object v0, Lcom/skt/arm/ArmManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ARMPlugin DisconnectService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/skt/arm/ArmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/skt/arm/ArmManager;->mArmConn:Lcom/skt/arm/ArmManager$ArmConnection;

    .line 184
    :cond_0
    return-void
.end method

.method public setArmListener(Lcom/skt/arm/ArmListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 232
    sput-object p1, Lcom/skt/arm/ArmManager;->mArmListener:Lcom/skt/arm/ArmListener;

    .line 233
    return-void
.end method
