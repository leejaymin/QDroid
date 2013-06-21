.class public Lcom/fleapapa/helper/CallTabs;
.super Landroid/app/TabActivity;
.source "CallTabs.java"


# static fields
.field static hideTabs:Z

.field static tabact:Landroid/app/TabActivity;

.field static tabs:Landroid/widget/TabHost;

.field static tshow:J


# instance fields
.field private WHO:Ljava/lang/String;

.field private gone:Z

.field private padding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallTabs;->WHO:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "talks"

    const-string v10, "cid"

    .line 29
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallTabs;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v5, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, cid:I
    sget-object v5, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fleapapa/helper/CallTabs;->WHO:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".onCreate: cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallTabs;->setContentView(I)V

    .line 35
    const-string v5, "hideTabs"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    :goto_0
    sput-boolean v5, Lcom/fleapapa/helper/CallTabs;->hideTabs:Z

    .line 37
    sput-object p0, Lcom/fleapapa/helper/CallTabs;->tabact:Landroid/app/TabActivity;

    .line 38
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallTabs;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    sput-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    .line 39
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setGravity(I)V

    .line 40
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 44
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/fleapapa/helper/CallMan;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "cid"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    const-string v6, "talks"

    invoke-virtual {v5, v11}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 47
    .local v4, tspec:Landroid/widget/TabHost$TabSpec;
    const v5, 0x7f0600e5

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallTabs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02005d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 48
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 49
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 51
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v5, Lcom/fleapapa/helper/CallGrps;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    const-string v6, "buddies"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 53
    const v5, 0x7f0600e6

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallTabs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 54
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 55
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 57
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v5, Lcom/fleapapa/helper/CallOptions;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    const-string v6, "options"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 59
    const v5, 0x7f0600e8

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallTabs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 60
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 61
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 71
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-class v5, Lcom/fleapapa/helper/CallLogs;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    const-string v6, "logs"

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 73
    const v5, 0x7f0600e7

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallTabs;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 74
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 75
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    iput v5, p0, Lcom/fleapapa/helper/CallTabs;->padding:I

    .line 80
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 81
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Lcom/fleapapa/helper/CallTabs$1;

    invoke-direct {v2, p0, v1}, Lcom/fleapapa/helper/CallTabs$1;-><init>(Lcom/fleapapa/helper/CallTabs;Landroid/os/Handler;)V

    .line 91
    .local v2, hider:Ljava/lang/Runnable;
    const-wide/16 v5, 0x1388

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sput-wide v5, Lcom/fleapapa/helper/CallTabs;->tshow:J

    .line 93
    iput-boolean v8, p0, Lcom/fleapapa/helper/CallTabs;->gone:Z

    .line 94
    sget-object v5, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 95
    sget-object v5, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    const-string v6, "talks"

    invoke-virtual {v5, v11}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void

    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #hider:Ljava/lang/Runnable;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #tspec:Landroid/widget/TabHost$TabSpec;
    :cond_1
    move v5, v8

    .line 35
    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallTabs;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fleapapa/helper/CallTabs;->gone:Z

    .line 108
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallTabs;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 104
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallTabs;->toggleTabs(Z)V

    .line 112
    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallTabs;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume: padding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fleapapa/helper/CallTabs;->padding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 100
    return-void
.end method

.method toggleTabs(Z)V
    .locals 6
    .parameter "hide"

    .prologue
    const/4 v5, 0x0

    .line 115
    iget-boolean v2, p0, Lcom/fleapapa/helper/CallTabs;->gone:Z

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v2, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 117
    .local v1, twid:Landroid/widget/TabWidget;
    if-nez p1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move p1, v5

    .line 119
    :goto_1
    if-eqz p1, :cond_2

    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 121
    sget-object v2, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 123
    .local v0, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 125
    if-eqz p1, :cond_4

    const-wide/16 v2, 0x0

    :goto_4
    sput-wide v2, Lcom/fleapapa/helper/CallTabs;->tshow:J

    goto :goto_0

    .line 117
    .end local v0           #fl:Landroid/widget/FrameLayout;
    :cond_1
    const/4 v2, 0x1

    move p1, v2

    goto :goto_1

    :cond_2
    move v2, v5

    .line 119
    goto :goto_2

    .line 123
    .restart local v0       #fl:Landroid/widget/FrameLayout;
    :cond_3
    iget v5, p0, Lcom/fleapapa/helper/CallTabs;->padding:I

    goto :goto_3

    .line 125
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_4
.end method
