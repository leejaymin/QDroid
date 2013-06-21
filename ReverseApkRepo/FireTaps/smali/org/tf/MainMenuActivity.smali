.class public Lorg/tf/MainMenuActivity;
.super Lorg/tf/ui/ActivityBase;
.source "MainMenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PAGE_WELCOME:I = 0x1


# instance fields
.field private m_player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/tf/ui/ActivityBase;-><init>()V

    return-void
.end method

.method private checkUpdateFirstTime(Z)Z
    .locals 5
    .parameter "update"

    .prologue
    const/4 v3, 0x0

    const-string v4, "firstTime"

    .line 143
    invoke-virtual {p0, v3}, Lorg/tf/MainMenuActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 145
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "firstTime"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v2, v3

    .line 150
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    const-string v2, "firstTime"

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method private resetFirstTime()V
    .locals 3

    .prologue
    .line 155
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/tf/MainMenuActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 156
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method private startAnimation()V
    .locals 5

    .prologue
    const v4, 0x7f040006

    .line 111
    .line 112
    const v2, 0x7f0c0023

    const v3, 0x7f04000d

    .line 110
    invoke-static {p0, v2, v3}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;II)I

    .line 116
    const v2, 0x7f090007

    .line 114
    invoke-static {p0, v2}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v1

    .line 119
    .local v1, offset:I
    const v2, 0x7f090004

    .line 117
    invoke-static {p0, v2}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v0

    .line 122
    .local v0, delay:I
    const v2, 0x7f0c0024

    .line 120
    invoke-static {p0, v2, v4, v1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    .line 126
    const v2, 0x7f0c0025

    .line 127
    add-int v3, v1, v0

    .line 124
    invoke-static {p0, v2, v4, v3}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    .line 130
    const v2, 0x7f0c0026

    .line 131
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v1

    .line 128
    invoke-static {p0, v2, v4, v3}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    .line 132
    return-void
.end method


# virtual methods
.method protected doPageAction(II)V
    .locals 1
    .parameter "page"
    .parameter "action"

    .prologue
    .line 137
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 138
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onBackKeyDown()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-static {}, Lorg/tf/ui/UISoundEffects;->playOutSound()V

    .line 82
    invoke-virtual {p0}, Lorg/tf/MainMenuActivity;->getCurrentPage()I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v1, v2}, Lorg/tf/MainMenuActivity;->flipToPage(IZ)V

    move v0, v2

    .line 86
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    return-void

    .line 92
    :pswitch_1
    invoke-direct {p0, v1}, Lorg/tf/MainMenuActivity;->checkUpdateFirstTime(Z)Z

    .line 94
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/tf/MainMenuActivity;->checkUpdateFirstTime(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, v1, v1}, Lorg/tf/MainMenuActivity;->flipToPage(IZ)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/tf/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/tf/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/tf/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7f0c0024
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0, p1}, Lorg/tf/MainMenuActivity;->usePageFlipper(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lorg/tf/MainMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const v0, 0x7f050001

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    .line 42
    iget-object v0, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onMasterVolumeAdjusted()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v0

    .line 74
    .local v0, volume:F
    iget-object v1, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 76
    .end local v0           #volume:F
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onPause()V

    .line 49
    iget-object v0, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onResume()V

    .line 56
    iget-object v1, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v3}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v0

    .line 58
    .local v0, volume:F
    iget-object v1, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 59
    iget-object v1, p0, Lorg/tf/MainMenuActivity;->m_player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 61
    .end local v0           #volume:F
    :cond_0
    invoke-virtual {p0}, Lorg/tf/MainMenuActivity;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 62
    invoke-direct {p0, v3}, Lorg/tf/MainMenuActivity;->checkUpdateFirstTime(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p0, v3, v3}, Lorg/tf/MainMenuActivity;->flipToPage(IZ)V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/tf/MainMenuActivity;->getCurrentPage()I

    move-result v1

    if-nez v1, :cond_2

    .line 67
    invoke-direct {p0}, Lorg/tf/MainMenuActivity;->startAnimation()V

    .line 69
    :cond_2
    return-void
.end method
