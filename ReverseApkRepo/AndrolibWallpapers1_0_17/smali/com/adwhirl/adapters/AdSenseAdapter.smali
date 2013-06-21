.class public Lcom/adwhirl/adapters/AdSenseAdapter;
.super Lcom/adwhirl/adapters/AdWhirlAdapter;
.source "AdSenseAdapter.java"

# interfaces
.implements Lcom/google/ads/AdViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;
    }
.end annotation


# instance fields
.field private adView:Lcom/google/ads/GoogleAdView;


# direct methods
.method public constructor <init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V
    .locals 0
    .parameter "adWhirlLayout"
    .parameter "ration"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/adwhirl/adapters/AdWhirlAdapter;-><init>(Lcom/adwhirl/AdWhirlLayout;Lcom/adwhirl/obj/Ration;)V

    .line 33
    return-void
.end method

.method private channelValueToHex(I)Ljava/lang/String;
    .locals 2
    .parameter "channelValue"

    .prologue
    .line 182
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 185
    :cond_1
    const/16 v0, 0xf

    if-gt p1, v0, :cond_2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private rgbToHex(III)Ljava/lang/String;
    .locals 4
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/adwhirl/adapters/AdSenseAdapter;->channelValueToHex(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, rHex:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/adwhirl/adapters/AdSenseAdapter;->channelValueToHex(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, gHex:Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/adwhirl/adapters/AdSenseAdapter;->channelValueToHex(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, bHex:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    const/4 v3, 0x0

    .line 178
    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public handle()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const-string v12, "AdWhirl SDK"

    .line 37
    iget-object v10, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 38
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v10, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->ration:Lcom/adwhirl/obj/Ration;

    iget-object v3, v10, Lcom/adwhirl/obj/Ration;->key:Ljava/lang/String;

    .line 44
    .local v3, clientId:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v10, "ca-mb-app-pub-"

    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 46
    :cond_1
    sget-boolean v10, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v10, :cond_2

    const-string v10, "AdWhirl SDK"

    const-string v10, "Invalid AdSense client ID"

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0

    .line 50
    :cond_3
    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseCompanyName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseAppName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 52
    :cond_4
    sget-boolean v10, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v10, :cond_5

    const-string v10, "AdWhirl SDK"

    const-string v10, "AdSense company name and app name are required parameters"

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_5
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0

    .line 57
    :cond_6
    new-instance v9, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;

    invoke-direct {v9, p0, v3}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;-><init>(Lcom/adwhirl/adapters/AdSenseAdapter;Ljava/lang/String;)V

    .line 58
    .local v9, spec:Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;
    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseCompanyName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 59
    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseAppName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 60
    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseChannel:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 61
    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseChannel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 63
    :cond_7
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 64
    sget-object v10, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 65
    sget-object v10, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setWebEquivalentUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 68
    :cond_8
    sget-boolean v10, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v10, :cond_9

    const-string v10, "AdWhirl SDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "adsense keywords : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_9
    sget-boolean v10, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v10, :cond_a

    const-string v10, "AdWhirl SDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "adsense googleAdSenseWebEquivalentUrl : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_a
    sget-object v10, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setAdFormat(Lcom/google/ads/AdSenseSpec$AdFormat;)Lcom/google/ads/AdSenseSpec;

    .line 72
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    .line 74
    new-instance v10, Lcom/google/ads/GoogleAdView;

    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/ads/GoogleAdView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    .line 75
    iget-object v10, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    invoke-virtual {v10, p0}, Lcom/google/ads/GoogleAdView;->setAdViewListener(Lcom/google/ads/AdViewListener;)V

    .line 77
    iget-object v5, v0, Lcom/adwhirl/AdWhirlLayout;->extra:Lcom/adwhirl/obj/Extra;

    .line 80
    .local v5, extra:Lcom/adwhirl/obj/Extra;
    sget-object v10, Lcom/adwhirl/obj/Extra2;->adsenseColorBackground:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 81
    sget-object v10, Lcom/adwhirl/obj/Extra2;->adsenseColorText:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 82
    sget-object v10, Lcom/adwhirl/obj/Extra2;->adsenseColorUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 83
    sget-object v10, Lcom/adwhirl/obj/Extra2;->adsenseColorBorder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 84
    sget-object v10, Lcom/adwhirl/obj/Extra2;->adsenseColorLink:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 87
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getGender()Lcom/adwhirl/AdWhirlTargeting$Gender;

    move-result-object v6

    .line 88
    .local v6, gender:Lcom/adwhirl/AdWhirlTargeting$Gender;
    invoke-virtual {v9, v6}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setGender(Lcom/adwhirl/AdWhirlTargeting$Gender;)V

    .line 90
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getAge()I

    move-result v1

    .line 91
    .local v1, age:I
    invoke-virtual {v9, v1}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setAge(I)V

    .line 93
    invoke-static {}, Lcom/adwhirl/AdWhirlTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, keywords:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 95
    invoke-virtual {v9, v7}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 99
    :cond_b
    const/4 v2, 0x1

    .line 100
    .local v2, canExpand:Z
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 101
    .local v8, p:Landroid/view/ViewParent;
    if-nez v8, :cond_d

    .line 103
    const/4 v2, 0x0

    .line 115
    :goto_1
    if-eqz v2, :cond_c

    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseExpandDirection:Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 117
    :try_start_0
    sget-object v10, Lcom/adwhirl/adapters/AdSenseAdapter;->googleAdSenseExpandDirection:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/ads/AdSenseSpec$ExpandDirection;->valueOf(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec$ExpandDirection;

    move-result-object v4

    .line 118
    .local v4, dir:Lcom/google/ads/AdSenseSpec$ExpandDirection;
    invoke-virtual {v9, v4}, Lcom/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec;->setExpandDirection(Lcom/google/ads/AdSenseSpec$ExpandDirection;)Lcom/google/ads/AdSenseSpec;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v4           #dir:Lcom/google/ads/AdSenseSpec$ExpandDirection;
    :cond_c
    :goto_2
    iget-object v10, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 126
    iget-object v10, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10, v11}, Lcom/adwhirl/AdWhirlLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v10, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    invoke-virtual {v10, v9}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    goto/16 :goto_0

    .line 107
    :cond_d
    instance-of v10, v8, Landroid/widget/ListView;

    if-nez v10, :cond_e

    instance-of v10, v8, Landroid/widget/ScrollView;

    if-eqz v10, :cond_f

    .line 108
    :cond_e
    const/4 v2, 0x0

    .line 109
    goto :goto_1

    .line 111
    :cond_f
    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 112
    if-nez v8, :cond_d

    goto :goto_1

    .line 119
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method public onAdFetchFailure()V
    .locals 3

    .prologue
    .line 155
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_0

    const-string v1, "AdWhirl SDK"

    const-string v2, "AdSense failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/ads/GoogleAdView;->setAdViewListener(Lcom/google/ads/AdViewListener;)V

    .line 158
    iget-object v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 159
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_1

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    invoke-virtual {v0, v1}, Lcom/adwhirl/AdWhirlLayout;->removeView(Landroid/view/View;)V

    .line 164
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rollover()V

    goto :goto_0
.end method

.method public onClickAd()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public onFinishFetchAd()V
    .locals 4

    .prologue
    .line 137
    sget-boolean v1, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    if-eqz v1, :cond_0

    const-string v1, "AdWhirl SDK"

    const-string v2, "AdSense success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/ads/GoogleAdView;->setAdViewListener(Lcom/google/ads/AdViewListener;)V

    .line 140
    iget-object v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adWhirlLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adwhirl/AdWhirlLayout;

    .line 141
    .local v0, adWhirlLayout:Lcom/adwhirl/AdWhirlLayout;
    if-nez v0, :cond_1

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    invoke-virtual {v0, v1}, Lcom/adwhirl/AdWhirlLayout;->removeView(Landroid/view/View;)V

    .line 146
    iget-object v1, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 147
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->adWhirlManager:Lcom/adwhirl/AdWhirlManager;

    invoke-virtual {v1}, Lcom/adwhirl/AdWhirlManager;->resetRollover()V

    .line 148
    iget-object v1, v0, Lcom/adwhirl/AdWhirlLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;

    iget-object v3, p0, Lcom/adwhirl/adapters/AdSenseAdapter;->adView:Lcom/google/ads/GoogleAdView;

    invoke-direct {v2, v0, v3}, Lcom/adwhirl/AdWhirlLayout$ViewAdRunnable;-><init>(Lcom/adwhirl/AdWhirlLayout;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    invoke-virtual {v0}, Lcom/adwhirl/AdWhirlLayout;->rotateThreadedDelayed()V

    goto :goto_0
.end method

.method public onStartFetchAd()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
