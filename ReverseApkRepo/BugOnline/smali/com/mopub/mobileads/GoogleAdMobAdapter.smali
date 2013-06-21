.class public Lcom/mopub/mobileads/GoogleAdMobAdapter;
.super Lcom/mopub/mobileads/BaseAdapter;
.source "GoogleAdMobAdapter.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private mAdMobView:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->removeView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 106
    invoke-super {p0}, Lcom/mopub/mobileads/BaseAdapter;->invalidate()V

    .line 107
    return-void
.end method

.method public loadAd()V
    .locals 11

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 100
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 64
    .local v1, adType:Lcom/google/ads/AdSize;
    :try_start_0
    new-instance v8, Lorg/json/JSONTokener;

    iget-object v9, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mJsonParams:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 65
    .local v6, object:Lorg/json/JSONObject;
    const-string v8, "adUnitID"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, adUnitId:Ljava/lang/String;
    const-string v8, "adWidth"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 67
    .local v3, adWidth:I
    const-string v8, "adHeight"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    .local v0, adHeight:I
    sget-object v8, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_2

    sget-object v8, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_2

    .line 75
    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    .line 88
    :goto_1
    new-instance v8, Lcom/google/ads/AdView;

    iget-object v9, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v9}, Lcom/mopub/mobileads/MoPubView;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v1, v2}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    .line 89
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v8, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 91
    new-instance v7, Lcom/google/ads/AdRequest;

    invoke-direct {v7}, Lcom/google/ads/AdRequest;-><init>()V

    .line 92
    .local v7, request:Lcom/google/ads/AdRequest;
    const-string v8, "E03844D077EAD7DC7F12DF128643B50F"

    invoke-virtual {v7, v8}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)V

    .line 93
    sget-object v8, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)V

    .line 96
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v8}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object v5

    .line 97
    .local v5, location:Landroid/location/Location;
    if-eqz v5, :cond_1

    invoke-virtual {v7, v5}, Lcom/google/ads/AdRequest;->setLocation(Landroid/location/Location;)V

    .line 99
    :cond_1
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v8, v7}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto :goto_0

    .line 68
    .end local v0           #adHeight:I
    .end local v2           #adUnitId:Ljava/lang/String;
    .end local v3           #adWidth:I
    .end local v5           #location:Landroid/location/Location;
    .end local v6           #object:Lorg/json/JSONObject;
    .end local v7           #request:Lcom/google/ads/AdRequest;
    :catch_0
    move-exception v4

    .line 69
    .local v4, e:Lorg/json/JSONException;
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v8}, Lcom/mopub/mobileads/MoPubView;->adFailed()V

    goto :goto_0

    .line 76
    .end local v4           #e:Lorg/json/JSONException;
    .restart local v0       #adHeight:I
    .restart local v2       #adUnitId:Ljava/lang/String;
    .restart local v3       #adWidth:I
    .restart local v6       #object:Lorg/json/JSONObject;
    :cond_2
    sget-object v8, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_3

    sget-object v8, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_3

    .line 77
    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    goto :goto_1

    .line 78
    :cond_3
    sget-object v8, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_4

    sget-object v8, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_4

    .line 79
    sget-object v1, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    goto :goto_1

    .line 80
    :cond_4
    sget-object v8, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v8

    if-gt v3, v8, :cond_5

    sget-object v8, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    invoke-virtual {v8}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v8

    if-gt v0, v8, :cond_5

    .line 81
    sget-object v1, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    goto :goto_1

    .line 83
    :cond_5
    const-string v8, "MoPub"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to retrieve ad from AdMob native. Unsupported ad size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v8, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v8}, Lcom/mopub/mobileads/MoPubView;->adFailed()V

    goto/16 :goto_0
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 113
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter "ad"
    .parameter "error"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Google AdMob failed. Trying another"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl()V

    goto :goto_0
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 125
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Google AdMob clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    goto :goto_0
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 4
    .parameter "ad"

    .prologue
    const/4 v3, -0x1

    .line 137
    invoke-virtual {p0}, Lcom/mopub/mobileads/GoogleAdMobAdapter;->isInvalidated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v1, "MoPub"

    const-string v2, "Google AdMob load succeeded. Showing ad..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->removeAllViews()V

    .line 141
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mAdMobView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v2, v0}, Lcom/mopub/mobileads/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->nativeAdLoaded()V

    .line 148
    iget-object v1, p0, Lcom/mopub/mobileads/GoogleAdMobAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    goto :goto_0
.end method
