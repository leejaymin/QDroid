.class public final Lcom/google/ads/mediation/inmobi/InMobiAdapter;
.super Ljava/lang/Object;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/ads/mediation/MediationBannerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;,
        Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;,
        Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;",
        "Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private adInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

.field private adView:Lcom/inmobi/androidsdk/IMAdView;

.field private bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

.field private interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

.field private wrappedAdView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method private buildAdRequest(Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)Lcom/inmobi/androidsdk/IMAdRequest;
    .locals 3
    .parameter "serverParameters"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    .line 45
    if-nez p3, :cond_0

    .line 46
    new-instance p3, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    .end local p3
    invoke-direct {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;-><init>()V

    .line 49
    .restart local p3
    :cond_0
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    .line 52
    .local v0, adRequest:Lcom/inmobi/androidsdk/IMAdRequest;
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setAge(I)V

    .line 57
    :cond_1
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setAreaCode(Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setCurrentLocation(Landroid/location/Location;)V

    .line 67
    :cond_3
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 68
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setDateOfBirth(Ljava/util/Date;)V

    .line 72
    :cond_4
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEducation()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 73
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEducation()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Education;->getDescription()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setEducation(Lcom/inmobi/androidsdk/IMAdRequest$EducationType;)V

    .line 77
    :cond_5
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 78
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras$Ethnicity;->getDescription()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setEthnicity(Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;)V

    .line 82
    :cond_6
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 83
    sget-object v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;->$SwitchMap$com$google$ads$AdRequest$Gender:[I

    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 95
    :cond_7
    :goto_0
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getIncome()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 96
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getIncome()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setIncome(I)V

    .line 100
    :cond_8
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getInterests()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 101
    const-string v1, ", "

    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getInterests()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setInterests(Ljava/lang/String;)V

    .line 105
    :cond_9
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 106
    const-string v1, ", "

    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setKeywords(Ljava/lang/String;)V

    .line 110
    :cond_a
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 111
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setPostalCode(Ljava/lang/String;)V

    .line 115
    :cond_b
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getSearchString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 116
    invoke-virtual {p3}, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;->getSearchString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setSearchString(Ljava/lang/String;)V

    .line 119
    :cond_c
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setLocationInquiryAllowed(Z)V

    .line 122
    return-object v0

    .line 85
    :pswitch_0
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$GenderType;->MALE:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setGender(Lcom/inmobi/androidsdk/IMAdRequest$GenderType;)V

    goto :goto_0

    .line 89
    :pswitch_1
    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$GenderType;->FEMALE:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setGender(Lcom/inmobi/androidsdk/IMAdRequest$GenderType;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const-class v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const-class v0, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;

    return-object v0
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 28
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V
    .locals 8
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "adSize"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 159
    const/16 v5, 0x140

    const/16 v6, 0x30

    invoke-virtual {p4, v5, v6}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const/16 v0, 0x9

    .line 161
    .local v0, adSlot:I
    const/16 v3, 0x140

    .line 162
    .local v3, width:I
    const/16 v2, 0x30

    .line 185
    .local v2, height:I
    :goto_0
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 186
    .local v1, density:F
    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v3, v5

    .line 187
    int-to-float v5, v2

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 189
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v4, wrappedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    new-instance v5, Lcom/inmobi/androidsdk/IMAdView;

    iget-object v6, p3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->appId:Ljava/lang/String;

    invoke-direct {v5, p2, v0, v6}, Lcom/inmobi/androidsdk/IMAdView;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    iput-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/androidsdk/IMAdView;

    .line 194
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/androidsdk/IMAdView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 195
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/androidsdk/IMAdView;

    new-instance v6, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V

    .line 203
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    .line 204
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v5, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adView:Lcom/inmobi/androidsdk/IMAdView;

    invoke-direct {p0, p3, p5, p6}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->buildAdRequest(Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)Lcom/inmobi/androidsdk/IMAdRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 208
    .end local v0           #adSlot:I
    .end local v1           #density:F
    .end local v2           #height:I
    .end local v3           #width:I
    .end local v4           #wrappedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    return-void

    .line 163
    :cond_0
    const/16 v5, 0x1d4

    const/16 v6, 0x3c

    invoke-virtual {p4, v5, v6}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    const/16 v0, 0xc

    .line 165
    .restart local v0       #adSlot:I
    const/16 v3, 0x1d4

    .line 166
    .restart local v3       #width:I
    const/16 v2, 0x3c

    .restart local v2       #height:I
    goto :goto_0

    .line 167
    .end local v0           #adSlot:I
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_1
    const/16 v5, 0x2d8

    const/16 v6, 0x5a

    invoke-virtual {p4, v5, v6}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 168
    const/16 v0, 0xb

    .line 169
    .restart local v0       #adSlot:I
    const/16 v3, 0x2d8

    .line 170
    .restart local v3       #width:I
    const/16 v2, 0x5a

    .restart local v2       #height:I
    goto :goto_0

    .line 171
    .end local v0           #adSlot:I
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_2
    const/16 v5, 0x12c

    const/16 v6, 0xfa

    invoke-virtual {p4, v5, v6}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    const/16 v0, 0xa

    .line 173
    .restart local v0       #adSlot:I
    const/16 v3, 0x12c

    .line 174
    .restart local v3       #width:I
    const/16 v2, 0xfa

    .restart local v2       #height:I
    goto :goto_0

    .line 175
    .end local v0           #adSlot:I
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_3
    const/16 v5, 0x78

    const/16 v6, 0x258

    invoke-virtual {p4, v5, v6}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 176
    const/16 v0, 0xd

    .line 177
    .restart local v0       #adSlot:I
    const/16 v3, 0x78

    .line 178
    .restart local v3       #width:I
    const/16 v2, 0x258

    .restart local v2       #height:I
    goto/16 :goto_0

    .line 180
    .end local v0           #adSlot:I
    .end local v2           #height:I
    .end local v3           #width:I
    :cond_4
    sget-object v5, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v5}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_1
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 28
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)V
    .locals 3
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 217
    new-instance v0, Lcom/inmobi/androidsdk/IMAdInterstitial;

    iget-object v1, p3, Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;->appId:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    .line 219
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    new-instance v1, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->setImAdInterstitialListener(Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V

    .line 221
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-direct {p0, p3, p4, p5}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->buildAdRequest(Lcom/google/ads/mediation/inmobi/InMobiAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/inmobi/InMobiAdapterExtras;)Lcom/inmobi/androidsdk/IMAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 222
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->adInterstitial:Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->show()V

    .line 227
    return-void
.end method
