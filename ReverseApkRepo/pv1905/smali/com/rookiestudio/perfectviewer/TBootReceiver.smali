.class public Lcom/rookiestudio/perfectviewer/TBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TBootReceiver.java"


# instance fields
.field private APPContext:Landroid/content/Context;

.field private WallpaperHeight:I

.field private WallpaperWidth:I

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->APPContext:Landroid/content/Context;

    .line 11
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->WallpaperWidth:I

    .line 12
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->WallpaperHeight:I

    .line 13
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->settings:Landroid/content/SharedPreferences;

    .line 9
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 15
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->APPContext:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->APPContext:Landroid/content/Context;

    const-string v1, "perfect_viewer_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->settings:Landroid/content/SharedPreferences;

    .line 18
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v1, "WallpaperManagement"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->WallpaperManagement:Z

    .line 19
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v1, "WallpaperWidth"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->WallpaperWidth:I

    .line 20
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->settings:Landroid/content/SharedPreferences;

    const-string v1, "WallpaperHeight"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->WallpaperHeight:I

    .line 21
    sget v0, Lcom/rookiestudio/perfectviewer/Global;->AndroidSDKVersion:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->APPContext:Landroid/content/Context;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->WallpaperWidth:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TBootReceiver;->WallpaperHeight:I

    invoke-static {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/Util20;->UpdateWallpaper(Landroid/content/Context;II)V

    .line 24
    :cond_0
    return-void
.end method
