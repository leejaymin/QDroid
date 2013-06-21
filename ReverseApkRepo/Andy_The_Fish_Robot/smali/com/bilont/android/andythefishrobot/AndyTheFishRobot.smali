.class public Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;
.super Landroid/app/Activity;
.source "AndyTheFishRobot.java"


# static fields
.field private static final MENU_ABOUT:I = 0x3

.field private static final MENU_EXIT:I = 0x5

.field private static final MENU_HELP:I = 0x1

.field private static final MENU_HIGH_SCORE:I = 0x2

.field private static final MENU_RESTART:I = 0x4


# instance fields
.field private mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

.field private mLunarView:Lcom/bilont/android/andythefishrobot/LunarView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->requestWindowFeature(I)Z

    .line 103
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->setContentView(I)V

    .line 106
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bilont/android/andythefishrobot/LunarView;

    iput-object v2, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarView:Lcom/bilont/android/andythefishrobot/LunarView;

    .line 107
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarView:Lcom/bilont/android/andythefishrobot/LunarView;

    invoke-virtual {v2}, Lcom/bilont/android/andythefishrobot/LunarView;->getThread()Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    move-result-object v2

    iput-object v2, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    .line 110
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 111
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    .line 112
    .local v0, ad:Lcom/admob/android/ads/AdView;
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarView:Lcom/bilont/android/andythefishrobot/LunarView;

    invoke-virtual {v2, v1, v0}, Lcom/bilont/android/andythefishrobot/LunarView;->setTextView(Landroid/widget/TextView;Lcom/admob/android/ads/AdView;)V

    .line 115
    if-nez p1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->setState(I)V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIS is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v2, p1}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->restoreState(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIS is nonnull"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 50
    const/4 v0, 0x4

    const v1, 0x7f050001

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 51
    const v0, 0x7f050002

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 52
    const/4 v0, 0x2

    const v1, 0x7f050003

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 53
    const/4 v0, 0x3

    const v1, 0x7f050004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 54
    const/4 v0, 0x5

    const v1, 0x7f050005

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 56
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->doStart()V

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->menuHelp()V

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->menuHighScore()V

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :pswitch_3
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->menuAbout()V

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :pswitch_4
    invoke-virtual {p0}, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->finish()V

    move v0, v1

    .line 83
    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarView:Lcom/bilont/android/andythefishrobot/LunarView;

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView;->getThread()Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->pause()V

    .line 133
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    iget-object v0, p0, Lcom/bilont/android/andythefishrobot/AndyTheFishRobot;->mLunarThread:Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;

    invoke-virtual {v0, p1}, Lcom/bilont/android/andythefishrobot/LunarView$LunarThread;->saveState(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIS called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 138
    return-void
.end method
