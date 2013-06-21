.class public Lcom/google/ads/mediation/adfonic/util/RequestHelper;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setAge(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 2
    .parameter "request"
    .parameter "mediationAdRequest"

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getAgeInYears()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    .local v0, age:I
    if-lez v0, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/Request;->setAge(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0           #age:I
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setBirthday(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 3
    .parameter "request"
    .parameter "mediationAdRequest"

    .prologue
    .line 49
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    .line 50
    .local v0, date:Ljava/util/Date;
    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/adfonic/android/api/Request;->setDateOfBirth(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setGender(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 2
    .parameter "request"
    .parameter "mediationAdRequest"

    .prologue
    .line 34
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getGender()Lcom/google/ads/AdRequest$Gender;

    move-result-object v0

    .line 35
    .local v0, gender:Lcom/google/ads/AdRequest$Gender;
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    if-ne v1, v0, :cond_0

    .line 36
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/Request;->setMale(Z)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/adfonic/android/api/Request;->setMale(Z)V

    goto :goto_0
.end method

.method private setIsTesting(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 1
    .parameter "request"
    .parameter "mediationAdRequest"

    .prologue
    .line 30
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->isTesting()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/Request;->setTest(Z)V

    .line 31
    return-void
.end method

.method private setLocation(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V
    .locals 1
    .parameter "request"
    .parameter "mediationAdRequest"

    .prologue
    .line 43
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/google/ads/mediation/MediationAdRequest;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adfonic/android/api/Request;->setLocation(Landroid/location/Location;)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/lang/String;Lcom/google/ads/mediation/MediationAdRequest;Lcom/google/ads/mediation/adfonic/AdfonicNetworkExtras;Landroid/app/Activity;)Lcom/adfonic/android/api/Request;
    .locals 3
    .parameter "slotId"
    .parameter "mediationRequest"
    .parameter "extras"
    .parameter "activity"

    .prologue
    .line 17
    new-instance v1, Lcom/adfonic/android/api/Request$RequestBuilder;

    invoke-direct {v1}, Lcom/adfonic/android/api/Request$RequestBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/adfonic/android/api/Request$RequestBuilder;->withSlotId(Ljava/lang/String;)Lcom/adfonic/android/api/Request$RequestBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adfonic/android/api/Request$RequestBuilder;->withRefreshAd(Z)Lcom/adfonic/android/api/Request$RequestBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adfonic/android/api/Request$RequestBuilder;->build()Lcom/adfonic/android/api/Request;

    move-result-object v0

    .line 18
    .local v0, r:Lcom/adfonic/android/api/Request;
    if-nez p2, :cond_0

    .line 26
    :goto_0
    return-object v0

    .line 21
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/google/ads/mediation/adfonic/util/RequestHelper;->setAge(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 22
    invoke-direct {p0, v0, p2}, Lcom/google/ads/mediation/adfonic/util/RequestHelper;->setBirthday(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 23
    invoke-direct {p0, v0, p2}, Lcom/google/ads/mediation/adfonic/util/RequestHelper;->setLocation(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 24
    invoke-direct {p0, v0, p2}, Lcom/google/ads/mediation/adfonic/util/RequestHelper;->setGender(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V

    .line 25
    invoke-direct {p0, v0, p2}, Lcom/google/ads/mediation/adfonic/util/RequestHelper;->setIsTesting(Lcom/adfonic/android/api/Request;Lcom/google/ads/mediation/MediationAdRequest;)V

    goto :goto_0
.end method
