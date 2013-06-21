.class public Lcom/adwhirl/adapters/AdMobAdapter;
.super Lcom/adwhirl/adapters/AdWhirlAdapter;
.source "AdMobAdapter.java"

# interfaces
.implements Lcom/admob/android/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    .locals 0
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/adwhirl/adapters/AdWhirlAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V

    .line 42
    return-void
.end method


# virtual methods
.method public handle()V
    .locals 14

    .prologue
    .line 46
    iget-object v11, p0, Lcom/adwhirl/adapters/AdMobAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adwhirl/AdWhirlLayout;

    .line 47
    .local v2, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    :try_start_0
    iget-object v11, p0, Lcom/adwhirl/adapters/AdMobAdapter;->ration:Lcom/adwhirl/obj/Ration;

    iget-object v11, v11, Lcom/adwhirl/obj/Ration;->key:Ljava/lang/String;

    invoke-static {v11}, Lcom/admob/android/ads/AdManager;->setPublisherId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    iget-object v11, v2, Lcom/adwhirl/AdWhirlLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 61
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/admob/android/ads/AdView;

    invoke-direct {v1, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/app/Activity;)V

    .line 66
    .local v1, adMob:Lcom/admob/android/ads/AdView;
    invoke-virtual {v1, p0}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 68
    iget-object v6, v2, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    .line 69
    .local v6, extra:Lcom/adwhirl/obj/Extra;
    iget v11, v6, Lcom/adwhirl/obj/Extra;->bgRed:I

    iget v12, v6, Lcom/adwhirl/obj/Extra;->bgGreen:I

    iget v13, v6, Lcom/adwhirl/obj/Extra;->bgBlue:I

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    .line 70
    .local v3, bgColor:I
    iget v11, v6, Lcom/adwhirl/obj/Extra;->fgRed:I

    iget v12, v6, Lcom/adwhirl/obj/Extra;->fgGreen:I

    iget v13, v6, Lcom/adwhirl/obj/Extra;->fgBlue:I

    invoke-static {v11, v12, v13}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    .line 71
    .local v7, fgColor:I
    invoke-virtual {v1, v3}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    .line 72
    invoke-virtual {v1, v7}, Lcom/admob/android/ads/AdView;->setPrimaryTextColor(I)V

    .line 74
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getGender()Lcom/adwhirl/AdWhirlTargeting$Gender;

    move-result-object v8

    .line 75
    .local v8, gender:Lcom/adwhirl/AdWhirlTargeting$Gender;
    sget-object v11, Lcom/adwhirl/AdWhirlTargeting$Gender;->FEMALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    if-ne v8, v11, :cond_7

    .line 76
    sget-object v11, Lcom/admob/android/ads/AdManager$Gender;->FEMALE:Lcom/admob/android/ads/AdManager$Gender;

    invoke-static {v11}, Lcom/admob/android/ads/AdManager;->setGender(Lcom/admob/android/ads/AdManager$Gender;)V

    .line 82
    :cond_2
    :goto_1
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v4

    .line 83
    .local v4, birthDate:Ljava/util/GregorianCalendar;
    if-eqz v4, :cond_3

    .line 84
    invoke-static {v4}, Lcom/admob/android/ads/AdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 87
    :cond_3
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v10

    .line 88
    .local v10, postalCode:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 89
    invoke-static {v10}, Lcom/admob/android/ads/AdManager;->setPostalCode(Ljava/lang/String;)V

    .line 92
    :cond_4
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, keywords:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 94
    invoke-virtual {v1, v9}, Lcom/admob/android/ads/AdView;->setKeywords(Ljava/lang/String;)V

    .line 97
    :cond_5
    iget v11, v6, Lcom/adwhirl/obj/Extra;->locationOn:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 98
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/admob/android/ads/AdManager;->setAllowUseOfLocation(Z)V

    .line 102
    :cond_6
    const/4 v11, 0x4

    invoke-virtual {v1, v11}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 105
    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-virtual {v2, v1, v11, v12}, Lcom/adwhirl/AdWhirlLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 55
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #adMob:Lcom/admob/android/ads/AdView;
    .end local v3           #bgColor:I
    .end local v4           #birthDate:Ljava/util/GregorianCalendar;
    .end local v6           #extra:Lcom/adwhirl/obj/Extra;
    .end local v7           #fgColor:I
    .end local v8           #gender:Lcom/adwhirl/AdWhirlTargeting$Gender;
    .end local v9           #keywords:Ljava/lang/String;
    .end local v10           #postalCode:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 56
    .local v5, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0

    .line 78
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #adMob:Lcom/admob/android/ads/AdView;
    .restart local v3       #bgColor:I
    .restart local v6       #extra:Lcom/adwhirl/obj/Extra;
    .restart local v7       #fgColor:I
    .restart local v8       #gender:Lcom/adwhirl/AdWhirlTargeting$Gender;
    :cond_7
    sget-object v11, Lcom/adwhirl/AdWhirlTargeting$Gender;->MALE:Lcom/adwhirl/AdWhirlTargeting$Gender;

    if-ne v8, v11, :cond_2

    .line 79
    sget-object v11, Lcom/admob/android/ads/AdManager$Gender;->MALE:Lcom/admob/android/ads/AdManager$Gender;

    invoke-static {v11}, Lcom/admob/android/ads/AdManager;->setGender(Lcom/admob/android/ads/AdManager$Gender;)V

    goto :goto_1
.end method

.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 3
    .parameter "adView"

    .prologue
    .line 130
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_0

    const-string v1, "AdWhirl SDK"

    const-string v2, "AdMob failure "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 133
    iget-object v1, p0, Lcom/adwhirl/adapters/AdMobAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 134
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_1

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {v0, p1}, Lcom/adwhirl/AdWhirlLayout;->removeView(Landroid/view/View;)V

    .line 140
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 145
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 3
    .parameter "adView"

    .prologue
    .line 113
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_0

    const-string v1, "AdWhirl SDK"

    const-string v2, "AdMob success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 116
    iget-object v1, p0, Lcom/adwhirl/adapters/AdMobAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 117
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_1

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v0, p1}, Lcom/adwhirl/AdWhirlLayout;->removeView(Landroid/view/View;)V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 124
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    invoke-virtual {v1}, Lcom/adwhirl/AdWhirlManager;->resetRollover()V

    .line 125
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;

    invoke-direct {v2, v0, p1}, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "adView"

    .prologue
    .line 149
    return-void
.end method
