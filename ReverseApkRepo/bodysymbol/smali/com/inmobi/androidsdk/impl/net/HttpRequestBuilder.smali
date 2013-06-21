.class public final Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;
.super Ljava/lang/Object;
.source "HttpRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "u-postalCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "&u-areaCode="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 85
    const-string v0, "&u-dateOfBirth="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getDateOfBirth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$GenderType;->NONE:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    if-eq v0, v1, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 90
    const-string v0, "&u-gender="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$GenderType;->MALE:Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    if-ne v0, v1, :cond_f

    const-string v0, "M"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 96
    const-string v0, "&p-keywords="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 100
    const-string v0, "&p-type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v0

    if-lez v0, :cond_7

    .line 104
    const-string v0, "&u-income="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getIncome()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$EducationType;->Edu_None:Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    if-eq v0, v1, :cond_8

    .line 108
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 109
    const-string v0, "&u-education="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;->Eth_None:Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    if-eq v0, v1, :cond_9

    .line 113
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 114
    const-string v0, "&u-ethnicity="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v0

    if-lez v0, :cond_a

    .line 118
    const-string v0, "&u-age="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAge()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    :cond_a
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 122
    const-string v0, "&u-interests="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getInterests()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 126
    const-string v0, "&u-location="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_d

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :cond_d
    :goto_2
    return-object v0

    .line 73
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 93
    :cond_f
    const-string v0, "F"

    goto/16 :goto_1

    .line 135
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method static a(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 25
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v0, p1, :cond_1

    .line 28
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v2, "requestactivity=AdRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    if-eqz v0, :cond_0

    .line 31
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->b(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->c(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_1
    :try_start_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v0, p1, :cond_2

    .line 35
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->a(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v2, "adtype=int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v2, "InMobiAndroidSDK_3.5.2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception occured in an ad request"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 41
    :cond_2
    :try_start_2
    sget-object v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->DeviceInfoUpload:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    if-ne v0, p1, :cond_3

    .line 42
    const-string v0, "requestactivity=DeviceInfo"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 44
    :cond_3
    const-string v0, "requestactivity=AdClicked"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private static b(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "&d-device-screen-density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenDensity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 149
    const-string v1, "&d-device-screen-size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "mk-siteid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getSiteId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getUIDMapEncrypted()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "&u-id-map="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getUIDMapEncrypted()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, "&u-id-key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, "&u-key-ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRsakeyVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 174
    const-string v1, "&aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_2
    const-string v1, "&mk-version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "pr-SAND-DTFTB-20120224"

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "&format=xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "&mk-ads=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "&h-user-agent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "&u-InMobi_androidwebsdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "3.5.2"

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "&u-appBId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppBId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "&u-appDNM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "&u-appVer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAppVer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, "&d-localization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocalization()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 195
    const-string v1, "&d-netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getOrientation()I

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    const-string v1, "&d-orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    :cond_4
    const-string v1, "&mk-ad-slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getAdUnitSlot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    const-string v1, "&u-latlong-accu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {p0}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 213
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 214
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 215
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getRefTagValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inmobi/androidsdk/impl/net/HttpRequestBuilder;->getURLEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static currentLocationStr(Lcom/inmobi/androidsdk/impl/UserInfo;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->isValidGeoInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLat()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLon()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getLocAccuracy()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getURLDecoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 246
    const-string v0, ""

    .line 249
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getURLEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 236
    const-string v0, ""

    .line 238
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v0, ""

    goto :goto_0
.end method
