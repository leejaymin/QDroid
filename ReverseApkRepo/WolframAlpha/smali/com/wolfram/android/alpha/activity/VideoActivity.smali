.class public Lcom/wolfram/android/alpha/activity/VideoActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "VideoActivity.java"


# static fields
.field public static final URL_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.video_url"

.field private static videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 58
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v3, Landroid/widget/VideoView;

    invoke-direct {v3, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    .line 36
    sget-object v3, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/activity/VideoActivity;->setContentView(Landroid/view/View;)V

    .line 37
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, mc:Landroid/widget/MediaController;
    sget-object v3, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 39
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.wolfram.android.alpha.video_url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 41
    sget-object v3, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 44
    invoke-virtual {p0, v5}, Lcom/wolfram/android/alpha/activity/VideoActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, preferences:Landroid/content/SharedPreferences;
    sget-object v3, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    const-string v4, "CurrentPosition"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 48
    sget-object v3, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 50
    .end local v1           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 72
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onPause()V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/activity/VideoActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->pause()V

    .line 79
    const-string v2, "CurrentPosition"

    sget-object v3, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onResume()V

    .line 64
    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/activity/VideoActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    .local v0, preferences:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    const-string v2, "CurrentPosition"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 67
    sget-object v1, Lcom/wolfram/android/alpha/activity/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 68
    return-void
.end method
