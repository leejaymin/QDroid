.class public Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;
.super Landroid/app/Activity;
.source "ShowResultOverlayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v6, 0x7f030034

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->setContentView(I)V

    .line 48
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v2

    .line 50
    .local v2, impl:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;
    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getLastSubmitStatus()I

    move-result v3

    .line 52
    .local v3, lastStatus:I
    const-string v4, ""

    .line 53
    .local v4, text:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 79
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "this should not happen - make sure to start ShowResultOverlayActivity only after onScoreSubmit() was called"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 55
    :pswitch_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08030d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    :cond_0
    :goto_0
    const v6, 0x7f0c0028

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 84
    .local v5, textView:Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v6, 0x7f0c007f

    invoke-virtual {p0, v6}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, button:Landroid/widget/Button;
    new-instance v6, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity$1;

    invoke-direct {v6, p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity$1;-><init>(Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void

    .line 58
    .end local v0           #button:Landroid/widget/Button;
    .end local v5           #textView:Landroid/widget/TextView;
    :pswitch_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08030e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    goto :goto_0

    .line 61
    :pswitch_2
    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getLastSubmittedChallenge()Lcom/scoreloop/client/android/core/model/Challenge;

    move-result-object v1

    .line 62
    .local v1, challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->isAssigned()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08030f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v6

    invoke-virtual {v6}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v6

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Challenge;->getWinner()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/scoreloop/client/android/core/model/User;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080310

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080311

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 73
    .end local v1           #challenge:Lcom/scoreloop/client/android/core/model/Challenge;
    :pswitch_3
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080312

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    goto/16 :goto_0

    .line 76
    :pswitch_4
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/ShowResultOverlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080313

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    goto/16 :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
