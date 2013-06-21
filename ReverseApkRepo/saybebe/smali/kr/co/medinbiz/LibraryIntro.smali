.class public Lkr/co/medinbiz/LibraryIntro;
.super Ljava/lang/Object;
.source "LibraryIntro.java"


# instance fields
.field private deviceModel:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mainHome:Ljava/lang/Class;

.field private pm:Lkr/co/medinbiz/helper/PreferencesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "SHW-M110S;SHW-M250S;SHW-M200S;SHW-M240S;SHW-M180S;SHW-M100S"

    iput-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->deviceModel:Ljava/lang/String;

    .line 112
    new-instance v0, Lkr/co/medinbiz/LibraryIntro$1;

    invoke-direct {v0, p0}, Lkr/co/medinbiz/LibraryIntro$1;-><init>(Lkr/co/medinbiz/LibraryIntro;)V

    iput-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-direct {v0, p1}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/LibraryIntro;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lkr/co/medinbiz/LibraryIntro;)Ljava/lang/Class;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->mainHome:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2(Lkr/co/medinbiz/LibraryIntro;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lkr/co/medinbiz/LibraryIntro;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lkr/co/medinbiz/LibraryIntro;)Lkr/co/medinbiz/helper/PreferencesManager;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    return-object v0
.end method


# virtual methods
.method public loginStart(Ljava/lang/Class;)V
    .locals 3
    .parameter "main"

    .prologue
    .line 55
    iput-object p1, p0, Lkr/co/medinbiz/LibraryIntro;->mainHome:Ljava/lang/Class;

    .line 56
    new-instance v0, Lkr/co/medinbiz/helper/HttpManager;

    iget-object v1, p0, Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, http:Lkr/co/medinbiz/helper/HttpManager;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lkr/co/medinbiz/LibraryIntro$2;

    invoke-direct {v2, p0, v0}, Lkr/co/medinbiz/LibraryIntro$2;-><init>(Lkr/co/medinbiz/LibraryIntro;Lkr/co/medinbiz/helper/HttpManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 110
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "appVersion"
    .parameter "hcode"

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    const-string p1, "hellobaby_android_v"

    .line 38
    :cond_0
    if-nez p2, :cond_1

    .line 39
    const-string p2, "saybebe"

    .line 42
    :cond_1
    iget-object v3, p0, Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 43
    .local v1, pack:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 45
    .local v2, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lkr/co/medinbiz/LibraryIntro;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lkr/co/medinbiz/helper/AppData;->appVersion:Ljava/lang/String;

    .line 47
    iget-object v3, p0, Lkr/co/medinbiz/LibraryIntro;->pm:Lkr/co/medinbiz/helper/PreferencesManager;

    invoke-virtual {v3, p2}, Lkr/co/medinbiz/helper/PreferencesManager;->setHcode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
