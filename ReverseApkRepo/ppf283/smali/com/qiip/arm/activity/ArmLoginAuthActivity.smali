.class public Lcom/qiip/arm/activity/ArmLoginAuthActivity;
.super Ljava/lang/Object;
.source "ArmLoginAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;
    }
.end annotation


# static fields
.field static mContext:Landroid/content/Context;

.field public static mMacAdress:Ljava/lang/String;

.field public static mRealResultCode:I

.field public static mResultCode:I

.field static mTryLogin:I


# instance fields
.field private AID:Ljava/lang/String;

.field private GDID:Ljava/lang/String;

.field aData:Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;

.field bar:Landroid/widget/ProgressBar;

.field mID:Ljava/lang/String;

.field mNetwork:I

.field mPassword:Ljava/lang/String;

.field private mTask:Ljava/util/TimerTask;

.field private mTimer:Ljava/util/Timer;

.field mViewList:Landroid/view/View;

.field public nRealResultCode:I

.field public nResultCode:I

.field public nResultNickname:Ljava/lang/String;

.field public nResultRO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTryLogin:I

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mViewList:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultNickname:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultRO:Ljava/lang/String;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/qiip/arm/activity/ArmLoginAuthActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->setSharedPref(Ljava/lang/String;)V

    return-void
.end method

.method private static existFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 274
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const/4 v1, 0x1

    .line 278
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhoneMdn()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    sget-object v2, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 318
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, number_1:Ljava/lang/String;
    return-object v0
.end method

.method private setSharedPref(Ljava/lang/String;)V
    .locals 5
    .parameter "aGenAID"

    .prologue
    .line 303
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultRO:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 305
    sget-object v2, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "arm_uses_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 307
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 310
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultRO:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public native ARMPluginAIDMasking(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native ARMPluginLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->AID:Ljava/lang/String;

    return-object v0
.end method

.method public getARMLoginProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "AID"
    .parameter "GDID"
    .parameter "aid"
    .parameter "aPassword"

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/libARMService.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, LIB_FILE_PATH:Ljava/lang/String;
    const/4 v11, -0x1

    .line 290
    .local v11, loginState:I
    invoke-static {v10}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->existFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {v10}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 294
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 295
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 296
    invoke-direct {p0}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->getPhoneMdn()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mMacAdress:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move-object/from16 v7, p4

    .line 292
    invoke-virtual/range {v0 .. v9}, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->ARMPluginLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 299
    :cond_0
    return v11
.end method

.method public getBodyView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 101
    sget-object v2, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 102
    .local v0, li:Landroid/view/LayoutInflater;
    sget v2, Lcom/qiip/arm/R$layout;->arm_login_doing_activity:I

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mViewList:Landroid/view/View;

    .line 103
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mViewList:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->progressbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->bar:Landroid/widget/ProgressBar;

    .line 105
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->bar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 107
    new-instance v2, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;

    invoke-direct {v2, p0, v6}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;-><init>(Lcom/qiip/arm/activity/ArmLoginAuthActivity;Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;)V

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->aData:Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;

    .line 108
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->aData:Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$AuthData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    new-instance v2, Lcom/qiip/arm/activity/ArmLoginAuthActivity$1;

    invoke-direct {v2, p0}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$1;-><init>(Lcom/qiip/arm/activity/ArmLoginAuthActivity;)V

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTask:Ljava/util/TimerTask;

    .line 125
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTimer:Ljava/util/Timer;

    .line 126
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 128
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mViewList:Landroid/view/View;

    sget v3, Lcom/qiip/arm/R$id;->PreviousButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 129
    .local v1, mPreviousButton:Landroid/widget/Button;
    new-instance v2, Lcom/qiip/arm/activity/ArmLoginAuthActivity$2;

    invoke-direct {v2, p0}, Lcom/qiip/arm/activity/ArmLoginAuthActivity$2;-><init>(Lcom/qiip/arm/activity/ArmLoginAuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v2, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mViewList:Landroid/view/View;

    return-object v2
.end method

.method public getGDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->GDID:Ljava/lang/String;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getmID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getmPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getnRealResultCode()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    return v0
.end method

.method public getnResultCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultCode:I

    return v0
.end method

.method public setAID(Ljava/lang/String;)V
    .locals 0
    .parameter "aID"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->AID:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setGDID(Ljava/lang/String;)V
    .locals 0
    .parameter "gDID"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->GDID:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 97
    sput-object p1, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method public setmID(Ljava/lang/String;)V
    .locals 0
    .parameter "mID"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mID:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setmPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "mPassword"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->mPassword:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setnRealResultCode(I)V
    .locals 0
    .parameter "nRealResultCode"

    .prologue
    .line 69
    iput p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nRealResultCode:I

    .line 70
    return-void
.end method

.method public setnResultCode(I)V
    .locals 0
    .parameter "nResultCode"

    .prologue
    .line 63
    iput p1, p0, Lcom/qiip/arm/activity/ArmLoginAuthActivity;->nResultCode:I

    .line 64
    return-void
.end method
