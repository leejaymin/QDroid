.class public Lcom/qiip/arm/ArmServiceInAppProc;
.super Ljava/lang/Object;
.source "ArmServiceInAppProc.java"


# static fields
.field public static BUILD_VER:I = 0x0

.field public static OS_VER:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "qiip_ARMService"

.field private static mContext:Landroid/content/Context;


# instance fields
.field public AID:Ljava/lang/String;

.field private DOWNLOADABLE_FILE_PATH:Ljava/lang/String;

.field private EMBEDED_FILE_PATH:Ljava/lang/String;

.field public GDID:Ljava/lang/String;

.field private final MASKING_MODE:I

.field private final NORMAL_MODE:I

.field am:Landroid/app/ActivityManager;

.field private mCommMode:I

.field private mPackageName:Ljava/lang/String;

.field public mStrMine:Ljava/lang/String;

.field public mStrServer:Ljava/lang/String;

.field public nRealResultCode:I

.field public nResultCode:I

.field public szMsg:Ljava/lang/String;

.field public szVersion:Ljava/lang/String;

.field private wInfo:Landroid/net/wifi/WifiInfo;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/qiip/arm/ArmServiceInAppProc;->BUILD_VER:I

    .line 46
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/qiip/arm/ArmServiceInAppProc;->OS_VER:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrMine:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrServer:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->NORMAL_MODE:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->MASKING_MODE:I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libARMService.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->DOWNLOADABLE_FILE_PATH:Ljava/lang/String;

    .line 80
    const-string v0, "/system/lib/libARMService.so"

    iput-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->EMBEDED_FILE_PATH:Ljava/lang/String;

    .line 83
    sput-object p1, Lcom/qiip/arm/ArmServiceInAppProc;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/qiip/arm/ArmServiceInAppProc;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 86
    iget-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wInfo:Landroid/net/wifi/WifiInfo;

    .line 88
    :cond_0
    return-void
.end method

.method private ArmExecute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "aid"
    .parameter "aPackageName"

    .prologue
    const v6, -0xfffffec

    const/4 v5, -0x1

    .line 143
    iput-object p1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->AID:Ljava/lang/String;

    .line 144
    iput v5, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    .line 145
    iput v5, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 147
    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->AID:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->AID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    :cond_0
    const-string v3, " AID_OBTAIN_FAIL"

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 151
    const v3, -0xfffffee

    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 152
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 237
    :goto_0
    return v3

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/qiip/arm/ArmServiceInAppProc;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->GDID:Ljava/lang/String;

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WiFi MAC Address ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qiip/arm/ArmServiceInAppProc;->GDID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 159
    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->GDID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->GDID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    :cond_2
    const-string v3, " MDN_OBTAIN_FAIL"

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 163
    const v3, -0xfffffef

    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 164
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    goto :goto_0

    .line 169
    :cond_3
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib/libARMService.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiip/arm/ArmServiceInAppProc;->existFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    const-string v3, " - Load DOWNLOADABLE"

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/lib/libARMService.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 183
    :goto_1
    sget-object v3, Lcom/qiip/arm/ArmManager;->sAID:Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Lcom/qiip/arm/ArmServiceInAppProc;->ARMPluginAIDMasking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, genAID:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/qiip/arm/ArmServiceInAppProc;->getSharedPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, getRO:Ljava/lang/String;
    if-nez v2, :cond_7

    .line 188
    invoke-direct {p0}, Lcom/qiip/arm/ArmServiceInAppProc;->loginActivityProc()V

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ArmLoginCompleteActivity.mComplete :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 194
    :cond_4
    sget v3, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ArmLoginCompleteActivity.mComplete 1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 196
    sget v3, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mRealResultCode:I

    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 197
    sget v3, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mResultCode:I

    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    .line 199
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    goto/16 :goto_0

    .line 178
    .end local v1           #genAID:Ljava/lang/String;
    .end local v2           #getRO:Ljava/lang/String;
    :cond_5
    const-string v3, " - Load EMBEDED"

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 179
    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->EMBEDED_FILE_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    iput v6, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 234
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    goto/16 :goto_0

    .line 201
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #genAID:Ljava/lang/String;
    .restart local v2       #getRO:Ljava/lang/String;
    :cond_6
    :try_start_1
    sget v3, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ArmLoginCompleteActivity.mComplete 1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 203
    const v3, -0xfffffe0

    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 204
    const v3, -0xfffffe0

    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    .line 205
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    goto/16 :goto_0

    .line 210
    :cond_7
    const-string v3, " ARMPluginExecuteMasking START"

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, p2}, Lcom/qiip/arm/ArmServiceInAppProc;->ARMPluginExecuteMasking(Ljava/lang/String;)I

    .line 212
    const-string v3, " ARMPluginExecuteMasking END"

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, v1}, Lcom/qiip/arm/ArmServiceInAppProc;->setSharedPref(Ljava/lang/String;)V

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " nRealResultCode ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] szVersion ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    iget-object v4, p0, Lcom/qiip/arm/ArmServiceInAppProc;->szVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] szMsg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qiip/arm/ArmServiceInAppProc;->szMsg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 220
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    if-ne v3, v5, :cond_8

    .line 224
    const v3, -0xfffffec

    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 225
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 237
    :cond_8
    iget v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    goto/16 :goto_0
.end method

.method private static existFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 311
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    .line 315
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAppPackageName(Landroid/app/ActivityManager;)Ljava/lang/String;
    .locals 5
    .parameter "am"

    .prologue
    .line 345
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 346
    .local v0, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 348
    .local v2, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, pName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Caller Package name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 350
    return-object v1
.end method

.method private getSharedPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "aGenAID"

    .prologue
    .line 364
    sget-object v1, Lcom/qiip/arm/ArmServiceInAppProc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "arm_uses_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 366
    .local v0, prefs:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrMine:Ljava/lang/String;

    .line 367
    iget-object v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrMine:Ljava/lang/String;

    return-object v1
.end method

.method private getWifiMacAddress()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xc

    .line 246
    :try_start_0
    iget-object v6, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, wifiMacAddress:Ljava/lang/String;
    const-string v1, ""

    .line 256
    .local v1, cvt_wifiMacAddress:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 257
    const-string v6, " WifiEnable"

    invoke-static {v6}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, cnt:I
    iget-object v6, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 261
    :cond_0
    if-eqz v5, :cond_2

    .line 273
    :goto_0
    const-string v6, " WifiDisable"

    invoke-static {v6}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 274
    iget-object v6, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 278
    .end local v0           #cnt:I
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 279
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 280
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " wifiMacAddress : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 306
    .end local v1           #cvt_wifiMacAddress:Ljava/lang/String;
    .end local v5           #wifiMacAddress:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 262
    .restart local v0       #cnt:I
    .restart local v1       #cvt_wifiMacAddress:Ljava/lang/String;
    .restart local v5       #wifiMacAddress:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wInfo:Landroid/net/wifi/WifiInfo;

    .line 263
    iget-object v6, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    .line 264
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 267
    const/16 v6, 0x64

    if-ne v0, v6, :cond_0

    .line 268
    const-string v6, " WIFI Driver loading timeout"

    invoke-static {v6}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v0           #cnt:I
    .end local v1           #cvt_wifiMacAddress:Ljava/lang/String;
    .end local v5           #wifiMacAddress:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 303
    .local v2, e:Ljava/lang/Exception;
    const-string v6, " getWifiMacAdress Exception Handling"

    invoke-static {v6}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 306
    const/4 v5, 0x0

    goto :goto_1

    .line 285
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #cvt_wifiMacAddress:Ljava/lang/String;
    .restart local v5       #wifiMacAddress:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 287
    const/4 v3, 0x0

    .local v3, i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 292
    move-object v5, v1

    .line 296
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " wifiMacAddress : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 299
    .end local v4           #i:I
    :cond_4
    sput-object v5, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mMacAdress:Ljava/lang/String;

    goto :goto_1

    .line 289
    .restart local v4       #i:I
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v4, 0x2

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 287
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_2
.end method

.method private loginActivityProc()V
    .locals 4

    .prologue
    .line 334
    sget-object v2, Lcom/qiip/arm/ArmServiceInAppProc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 336
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    const-string v2, "VIEW_CODE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v2, "TEXT_AID"

    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->AID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "TEXT_GDID"

    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->GDID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method

.method private setSharedPref(Ljava/lang/String;)V
    .locals 5
    .parameter "aGenAID"

    .prologue
    .line 373
    iget-object v2, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrServer:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 375
    sget-object v2, Lcom/qiip/arm/ArmServiceInAppProc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "arm_uses_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 377
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 379
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mStrServer:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrServer:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrMine:Ljava/lang/String;

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mStrMINE :::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mStrMine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 386
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public native ARMPluginAIDMasking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native ARMPluginExecuteMasking(Ljava/lang/String;)I
.end method

.method public detoryInstance()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 131
    iput-object v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    .line 135
    iput-object v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->wInfo:Landroid/net/wifi/WifiInfo;

    .line 137
    :cond_1
    return-void
.end method

.method public executeArm(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "aid"
    .parameter "aPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v3, -0xfffffe0

    .line 92
    const-string v1, "qiip_ARMService"

    const-string v2, " executeArm[qiip ARM Downloadable Release v2.05, code : 5]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iput-object p2, p0, Lcom/qiip/arm/ArmServiceInAppProc;->mPackageName:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/qiip/arm/ArmServiceInAppProc;->ArmExecute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, result:I
    iget v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    if-eq v1, v3, :cond_2

    .line 97
    const-string v1, "Login Fail"

    invoke-static {v1}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/qiip/arm/ArmServiceInAppProc;->loginActivityProc()V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ArmLoginCompleteActivity.mComplete :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 104
    :cond_0
    sget v1, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    if-ne v1, v4, :cond_1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ArmLoginCompleteActivity.mComplete 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 106
    sget v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mRealResultCode:I

    iput v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 107
    sget v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mResultCode:I

    iput v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    .line 109
    iget v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    .line 124
    :goto_0
    return v1

    .line 111
    :cond_1
    sget v1, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ArmLoginCompleteActivity.mComplete 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/qiip/arm/activity/ArmLoginCompleteActivity;->mComplete:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 113
    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 114
    iput v3, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    .line 115
    iget v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nResultCode:I

    goto :goto_0

    .line 124
    :cond_2
    iget v1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    goto :goto_0
.end method

.method public getAID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->AID:Ljava/lang/String;

    return-object v0
.end method

.method public getnRealResultCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    return v0
.end method

.method public killProcessforVersion(Landroid/app/ActivityManager;I)V
    .locals 4
    .parameter "am"
    .parameter "aResultCode"

    .prologue
    .line 321
    const-string v2, " [killProcessforVersion()] startActivity()"

    invoke-static {v2}, Lcom/qiip/arm/ArmLog;->d(Ljava/lang/String;)V

    .line 323
    sget-object v2, Lcom/qiip/arm/ArmServiceInAppProc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 325
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 326
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    const-string v2, "ERROR_CODE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v2, "VIEW_CODE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method public setAID(Ljava/lang/String;)V
    .locals 0
    .parameter "aID"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->AID:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setnRealResultCode(I)V
    .locals 0
    .parameter "nRealResultCode"

    .prologue
    .line 63
    iput p1, p0, Lcom/qiip/arm/ArmServiceInAppProc;->nRealResultCode:I

    .line 64
    return-void
.end method
