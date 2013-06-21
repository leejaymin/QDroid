.class public final Lcom/google/ads/mediation/millennial/MillennialAdapter;
.super Ljava/lang/Object;
.source "MillennialAdapter.java"

# interfaces
.implements Lcom/google/ads/mediation/MediationBannerAdapter;
.implements Lcom/google/ads/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/millennial/MillennialAdapter$1;,
        Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;,
        Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
        ">;",
        "Lcom/google/ads/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
        "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private adView:Lcom/millennialmedia/android/MMAdView;

.field private bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

.field private interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

.field private wrappedAdView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method static synthetic access$200(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationBannerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/ads/mediation/millennial/MillennialAdapter;)Lcom/google/ads/mediation/MediationInterstitialListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    return-object v0
.end method

.method private static dip(ILandroid/content/Context;)I
    .locals 3
    .parameter "pixels"
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private populateAdViewParameters(Lcom/millennialmedia/android/MMAdView;Ljava/util/Hashtable;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 3
    .parameter "view"
    .parameter
    .parameter "mediationAdRequest"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/android/MMAdView;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/mediation/MediationAdRequest;",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p4, :cond_0

    .line 50
    new-instance p4, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    .end local p4
    invoke-direct {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;-><init>()V

    .line 54
    .restart local p4
    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    const-string v0, "keywords"

    const-string v1, ","

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getChildren()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 60
    const-string v1, "children"

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getChildren()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "true"

    :goto_0
    invoke-virtual {p2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const v1, 0x711e41a1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setId(I)V

    .line 67
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getAdLocation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapter$1;->$SwitchMap$com$google$ads$mediation$millennial$MillennialAdapterExtras$AdLocation:[I

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getAdLocation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$AdLocation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 81
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapter$1;->$SwitchMap$com$google$ads$mediation$millennial$MillennialAdapterExtras$InterstitialTime:[I

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getInterstitialTime()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$InterstitialTime;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 92
    :cond_4
    :goto_2
    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setAge(Ljava/lang/String;)V

    .line 97
    :cond_5
    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 98
    sget-object v0, Lcom/google/ads/mediation/millennial/MillennialAdapter$1;->$SwitchMap$com$google$ads$AdRequest$Gender:[I

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 110
    :cond_6
    :goto_3
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 111
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getIncomeInUsDollars()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setIncome(Ljava/lang/String;)V

    .line 115
    :cond_7
    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 116
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p3}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->updateUserLocation(Landroid/location/Location;)V

    .line 120
    :cond_8
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setZip(Ljava/lang/String;)V

    .line 125
    :cond_9
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 126
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getMaritalStatus()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$MaritalStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setMarital(Ljava/lang/String;)V

    .line 130
    :cond_a
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 131
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEthnicity()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Ethnicity;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setEthnicity(Ljava/lang/String;)V

    .line 135
    :cond_b
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 136
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getOrientation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Orientation;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setOrientation(Ljava/lang/String;)V

    .line 140
    :cond_c
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 141
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getPolitics()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Politics;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setPolitics(Ljava/lang/String;)V

    .line 145
    :cond_d
    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 146
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {p4}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;->getEducation()Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras$Education;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setEducation(Ljava/lang/String;)V

    .line 148
    :cond_e
    return-void

    .line 60
    :cond_f
    const-string v0, "false"

    goto/16 :goto_0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const-string v1, "MMBannerAdBottom"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setAdType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const-string v1, "MMBannerAdTop"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setAdType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const-string v1, "MMFullScreenAdLaunch"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setAdType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const-string v1, "MMFullScreenAdTransition"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setAdType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const-string v1, "male"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setGender(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 104
    :pswitch_5
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    const-string v1, "female"

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setGender(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 81
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 98
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    const-class v0, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

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
    .line 29
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/ads/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/AdSize;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 8
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "adSize"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    const/16 v3, 0x140

    const/16 v2, 0x35

    .line 182
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;

    .line 184
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 187
    .local v5, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p4, v3, v2}, Lcom/google/ads/AdSize;->isSizeAppropriate(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "width"

    const-string v1, "320"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v0, "height"

    const-string v1, "53"

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v3, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v0

    invoke-static {v2, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v7, wrappedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;->apid:Ljava/lang/String;

    const-string v3, "MMBannerAdTop"

    const/4 v4, -0x1

    invoke-virtual {p5}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v6

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Z)V

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    .line 209
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, v0, v5, p5, p6}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->populateAdViewParameters(Lcom/millennialmedia/android/MMAdView;Ljava/util/Hashtable;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    .line 211
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    new-instance v1, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 219
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    .line 220
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->wrappedAdView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->callForAd()V

    .line 224
    return-void

    .line 194
    .end local v7           #wrappedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const-string v0, "width"

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "height"

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p4}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->dip(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v7, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v7       #wrappedLayoutParams:Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_0
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/MediationServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/NetworkExtras;)V
    .locals 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 29
    move-object v3, p3

    check-cast v3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/ads/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V
    .locals 7
    .parameter "listener"
    .parameter "activity"
    .parameter "serverParameters"
    .parameter "mediationAdRequest"
    .parameter "extras"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->interstitialListener:Lcom/google/ads/mediation/MediationInterstitialListener;

    .line 233
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 235
    .local v5, metaMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/millennialmedia/android/MMAdView;

    iget-object v2, p3, Lcom/google/ads/mediation/millennial/MillennialAdapterServerParameters;->apid:Ljava/lang/String;

    const-string v3, "MMFullScreenAdTransition"

    const/4 v4, -0x1

    invoke-virtual {p4}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v6

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Z)V

    iput-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    .line 243
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-direct {p0, v0, v5, p4, p5}, Lcom/google/ads/mediation/millennial/MillennialAdapter;->populateAdViewParameters(Lcom/millennialmedia/android/MMAdView;Ljava/util/Hashtable;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/millennial/MillennialAdapterExtras;)V

    .line 245
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    new-instance v1, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/mediation/millennial/MillennialAdapter$InterstitialListener;-><init>(Lcom/google/ads/mediation/millennial/MillennialAdapter;Lcom/google/ads/mediation/millennial/MillennialAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdView;->setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V

    .line 247
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->fetch()V

    .line 248
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/ads/mediation/millennial/MillennialAdapter;->adView:Lcom/millennialmedia/android/MMAdView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->display()Z

    .line 253
    return-void
.end method
