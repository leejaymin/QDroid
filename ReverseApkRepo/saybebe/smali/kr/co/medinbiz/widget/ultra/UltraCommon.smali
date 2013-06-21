.class public Lkr/co/medinbiz/widget/ultra/UltraCommon;
.super Ljava/lang/Object;
.source "UltraCommon.java"


# static fields
.field public static CHILDCOUNT:I

.field public static MAINVIEW:Landroid/widget/LinearLayout;

.field public static main:Lkr/co/medinbiz/widget/ultra/UltraMain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected gotPhotoActivty(Landroid/content/Context;Lkr/co/medinbiz/dto/PhotoList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "aContext"
    .parameter "aPhotoList"
    .parameter "aCurrpage"
    .parameter "aMNum"
    .parameter "aTotalPage"
    .parameter "aTotalPhoto"
    .parameter "aPosition"

    .prologue
    .line 63
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v0, v0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mActivityControllListner:Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;

    invoke-virtual {p2}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, p7

    move-object v3, p3

    move-object v4, p6

    move-object v5, p5

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;->goToPhotoPlay(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected gotVideoActivty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aContext"
    .parameter "aUrl"
    .parameter "aDate"
    .parameter "aTitle"

    .prologue
    .line 69
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v0, v0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mActivityControllListner:Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;

    invoke-interface {v0, p2, p3, p4}, Lkr/co/medinbiz/widget/ultra/util/ActivityControllListner;->goToVideoPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onBackPressed(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 73
    sget v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->CHILDCOUNT:I

    packed-switch v0, :pswitch_data_0

    .line 95
    .end local p1
    :goto_0
    return-void

    .line 75
    .restart local p1
    :pswitch_0
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 78
    .restart local p1
    :pswitch_1
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-boolean v0, v0, Lkr/co/medinbiz/widget/ultra/UltraMain;->isMenuFirst:Z

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 81
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;->setMainWidget()V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/ultra/UltraCommon;->setMenuView()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected setCelebrationGreetingsView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "aContext"
    .parameter "aMNum"

    .prologue
    .line 54
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 55
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    new-instance v1, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;

    invoke-direct {v1, p1, p2}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->getWidget()Landroid/view/View;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    const/4 v0, 0x5

    sput v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->CHILDCOUNT:I

    .line 58
    return-void
.end method

.method protected setMainWidget()V
    .locals 2

    .prologue
    .line 16
    sget-object v1, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 17
    sget-object v1, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->getWidget()Landroid/view/View;

    move-result-object v0

    .line 18
    .local v0, widget:Landroid/view/View;
    sget-object v1, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    const/4 v1, 0x1

    sput v1, Lkr/co/medinbiz/widget/ultra/UltraCommon;->CHILDCOUNT:I

    .line 20
    return-void
.end method

.method protected setMenuView()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 33
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v1, v1, Lkr/co/medinbiz/widget/ultra/UltraMain;->mUltaraMenu:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->getWidget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 34
    const/4 v0, 0x2

    sput v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->CHILDCOUNT:I

    .line 35
    return-void
.end method

.method protected setMenuView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "aContext"
    .parameter "aName"
    .parameter "aMNum"

    .prologue
    .line 23
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 24
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v0, v0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mUltaraMenu:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    if-eqz v0, :cond_0

    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v0, v0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mUltaraMenu:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v0, v0, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    :cond_0
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    new-instance v1, Lkr/co/medinbiz/widget/ultra/UltraMenu;

    invoke-direct {v1, p1, p2, p3}, Lkr/co/medinbiz/widget/ultra/UltraMenu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mUltaraMenu:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    .line 27
    :cond_1
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v1, v1, Lkr/co/medinbiz/widget/ultra/UltraMain;->mUltaraMenu:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->getWidget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 28
    const/4 v0, 0x2

    sput v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->CHILDCOUNT:I

    .line 29
    return-void
.end method

.method protected setPhotoListView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/PhotoList;)V
    .locals 2
    .parameter "aContext"
    .parameter "aName"
    .parameter "aMNum"
    .parameter "aPhotoList"

    .prologue
    .line 47
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 48
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    new-instance v1, Lkr/co/medinbiz/widget/ultra/PhotoListView;

    invoke-direct {v1, p1, p2, p3, p4}, Lkr/co/medinbiz/widget/ultra/PhotoListView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/PhotoList;)V

    iput-object v1, v0, Lkr/co/medinbiz/widget/ultra/UltraMain;->mPhotoListView:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    .line 49
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    sget-object v1, Lkr/co/medinbiz/widget/ultra/UltraCommon;->main:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v1, v1, Lkr/co/medinbiz/widget/ultra/UltraMain;->mPhotoListView:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->getWidget()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 50
    const/4 v0, 0x4

    sput v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->CHILDCOUNT:I

    .line 51
    return-void
.end method

.method protected setVideoListView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/VideoList;)V
    .locals 2
    .parameter "aContext"
    .parameter "aName"
    .parameter "aMNum"
    .parameter "aVideoList"

    .prologue
    .line 39
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 40
    sget-object v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->MAINVIEW:Landroid/widget/LinearLayout;

    new-instance v1, Lkr/co/medinbiz/widget/ultra/VidioListView;

    invoke-direct {v1, p1, p2, p3, p4}, Lkr/co/medinbiz/widget/ultra/VidioListView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/VideoList;)V

    .line 41
    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->getWidget()Landroid/view/View;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    const/4 v0, 0x3

    sput v0, Lkr/co/medinbiz/widget/ultra/UltraCommon;->CHILDCOUNT:I

    .line 43
    return-void
.end method
