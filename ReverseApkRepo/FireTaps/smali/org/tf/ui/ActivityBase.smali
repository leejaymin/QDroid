.class public Lorg/tf/ui/ActivityBase;
.super Landroid/app/Activity;
.source "ActivityBase.java"


# static fields
.field protected static final KEY_ACTIVITY_:Ljava/lang/String; = "org.tf.Activity:"

.field protected static final KEY_ACTIVITY_PAGE:Ljava/lang/String; = "org.tf.Activity:page"

.field protected static final KEY_ACTIVITY_STATE:Ljava/lang/String; = "org.tf.Activity:state"

.field protected static final PAGEACTION_INITIALIZE:I = 0x0

.field protected static final PAGEACTION_PAUSE:I = 0x3

.field protected static final PAGEACTION_RESUME:I = 0x4

.field protected static final PAGEACTION_START:I = 0x1

.field protected static final PAGEACTION_STOP:I = 0x2

.field protected static final PAGE_MAIN:I


# instance fields
.field private m_pageFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private adjustMasterVolume(F)V
    .locals 2
    .parameter "adjust"

    .prologue
    .line 191
    invoke-static {}, Lorg/tf/Config;->getMasterVolume()F

    move-result v0

    .line 192
    .local v0, volume:F
    add-float v1, v0, p1

    invoke-static {v1, p0}, Lorg/tf/Config;->setMasterVolume(FLandroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->onMasterVolumeAdjusted()V

    .line 194
    return-void
.end method

.method private savePageFlipper(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->isUsingPageFlipper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "org.tf.Activity:page"

    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    :cond_0
    return-void
.end method

.method private static setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 4
    .parameter "viewOrGroup"
    .parameter "listener"

    .prologue
    .line 197
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 198
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 199
    .local v1, group:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 205
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :goto_1
    return-void

    .line 200
    .restart local v1       #group:Landroid/view/ViewGroup;
    .restart local v2       #i:I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method


# virtual methods
.method protected doPageAction(II)V
    .locals 0
    .parameter "page"
    .parameter "action"

    .prologue
    .line 107
    return-void
.end method

.method protected flipToPage(IZ)V
    .locals 2
    .parameter "page"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->getCurrentPage()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/tf/ui/ActivityBase;->m_pageFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {p0, p1, v1}, Lorg/tf/ui/ActivityBase;->doPageAction(II)V

    .line 140
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/tf/ui/ActivityBase;->doPageAction(II)V

    .line 141
    iget-object v0, p0, Lorg/tf/ui/ActivityBase;->m_pageFlipper:Landroid/widget/ViewFlipper;

    invoke-static {v0, p1, p2}, Lorg/tf/ui/UIHelpers;->flipToChild(Landroid/widget/ViewFlipper;IZ)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/tf/ui/ActivityBase;->doPageAction(II)V

    goto :goto_0
.end method

.method protected getCurrentPage()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/tf/ui/ActivityBase;->m_pageFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    return v0
.end method

.method protected isUsingPageFlipper()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/tf/ui/ActivityBase;->m_pageFlipper:Landroid/widget/ViewFlipper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBackKeyDown()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-static {}, Lorg/tf/ui/UISoundEffects;->playOutSound()V

    .line 89
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->isUsingPageFlipper()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 92
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->onBackToMainPage()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onBackToMainPage()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 103
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/tf/ui/ActivityBase;->flipToPage(IZ)V

    move v0, v1

    .line 103
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Lorg/tf/CrashHandler;->attachToCurrentThread(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lorg/tf/Config;->load(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lorg/tf/ui/UISoundEffects;->load(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method protected onCreateMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 5
    .parameter "feature"

    .prologue
    const/4 v2, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->onCreateMenuView()Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_1

    .line 177
    .end local v1           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-object v2

    .line 164
    .restart local v1       #view:Landroid/view/View;
    :cond_1
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 165
    const/4 v3, -0x1

    .line 166
    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 164
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Lorg/tf/ui/ActivityBase$1;

    invoke-direct {v0, p0}, Lorg/tf/ui/ActivityBase$1;-><init>(Lorg/tf/ui/ActivityBase;)V

    .line 174
    .local v0, clickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1, v0}, Lorg/tf/ui/ActivityBase;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    move-object v2, v1

    .line 175
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 63
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->isUsingPageFlipper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/tf/ui/ActivityBase;->doPageAction(II)V

    .line 66
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 69
    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    .line 70
    const v0, -0x42b33333

    invoke-direct {p0, v0}, Lorg/tf/ui/ActivityBase;->adjustMasterVolume(F)V

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 73
    :cond_0
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 74
    const v0, 0x3d4ccccd

    invoke-direct {p0, v0}, Lorg/tf/ui/ActivityBase;->adjustMasterVolume(F)V

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 78
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->onBackKeyDown()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMasterVolumeAdjusted()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method protected onMenuItemClick(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->isUsingPageFlipper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/tf/ui/ActivityBase;->doPageAction(II)V

    .line 51
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    invoke-static {p0}, Lorg/tf/Config;->load(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->isUsingPageFlipper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lorg/tf/ui/ActivityBase;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/tf/ui/ActivityBase;->doPageAction(II)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0, p1}, Lorg/tf/ui/ActivityBase;->savePageFlipper(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method protected usePageFlipper(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 119
    const/high16 v1, 0x7f0c

    invoke-virtual {p0, v1}, Lorg/tf/ui/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lorg/tf/ui/ActivityBase;->m_pageFlipper:Landroid/widget/ViewFlipper;

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v1, "org.tf.Activity:page"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, page:I
    invoke-virtual {p0, v0, v2}, Lorg/tf/ui/ActivityBase;->flipToPage(IZ)V

    .line 124
    .end local v0           #page:I
    :cond_0
    return-void
.end method
