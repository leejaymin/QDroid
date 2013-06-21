.class public Lcom/adfonic/android/api/request/UriRequestAdapter;
.super Ljava/lang/Object;
.source "UriRequestAdapter.java"


# static fields
.field private static final DATE_OF_BIRTH_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field private static final DEFAULT_BEACON_TYPE:Ljava/lang/String; = "metadata"

.field private static final DEFAULT_T_FORMAT:Ljava/lang/String; = "json"

.field private static final DEFAULT_T_MARKUP:Ljava/lang/String; = "1"

.field private static final D_DPID:Ljava/lang/String; = "d.dpid"

.field private static final D_NAME:Ljava/lang/String; = "d.name"

.field private static final D_ODIN1:Ljava/lang/String; = "d.odin-1"

.field private static final D_OSNAME:Ljava/lang/String; = "d.osname"

.field private static final D_OSVER:Ljava/lang/String; = "d.osver"

.field private static final D_SCREENSIZE:Ljava/lang/String; = "d.screensize"

.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final H_USER_AGENT:Ljava/lang/String; = "h.user-agent"

.field private static final IS_TEST:Ljava/lang/String; = "s.test"

.field private static final PROD_URL:Ljava/lang/String; = "http://adfonic.net/ad/"

.field private static final R_CLIENT:Ljava/lang/String; = "r.client"

.field private static final R_HW:Ljava/lang/String; = "r.hw"

.field private static final R_MCCMNC:Ljava/lang/String; = "r.mccmnc"

.field private static final R_NETCODE:Ljava/lang/String; = "r.netcode"

.field private static final R_NETNAME:Ljava/lang/String; = "r.netname"

.field private static final R_NETTYPE:Ljava/lang/String; = "r.nettype"

.field public static final R_NETTYPE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final R_NETTYPE_WIFI:Ljava/lang/String; = "wifi"

.field private static final R_ROAMING:Ljava/lang/String; = "r.roaming"

.field private static final R_SIMNAME:Ljava/lang/String; = "r.simname"

.field private static final T_BEACONS:Ljava/lang/String; = "t.beacons"

.field private static final T_FORMAT:Ljava/lang/String; = "t.format"

.field private static final T_MARKUP:Ljava/lang/String; = "t.markup"

.field private static final U_AGE:Ljava/lang/String; = "u.age"

.field private static final U_AGE_HIGH:Ljava/lang/String; = "u.ageHigh"

.field private static final U_AGE_LOW:Ljava/lang/String; = "u.ageLow"

.field private static final U_DOB:Ljava/lang/String; = "u.dob"

.field private static final U_GENDER:Ljava/lang/String; = "u.gender"

.field private static final U_LANG:Ljava/lang/String; = "u.lang"

.field private static final U_LATITUDE:Ljava/lang/String; = "u.latitude"

.field private static final U_LOCALE:Ljava/lang/String; = "u.locale"

.field private static final U_LONGITUDE:Ljava/lang/String; = "u.longitude"

.field private static final U_TZ:Ljava/lang/String; = "u.tz"


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private request:Lcom/adfonic/android/api/request/AndroidRequest;


# direct methods
.method public constructor <init>(Lcom/adfonic/android/api/request/AndroidRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/adfonic/android/api/request/AndroidRequest;->getSlotId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request is invalid, slot id must be defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://adfonic.net/ad/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->builder:Ljava/lang/StringBuilder;

    .line 74
    return-void
.end method

.method private append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adfonic Request Parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adfonic/android/utils/Log;->adRequestDetails(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/adfonic/android/api/request/UriRequestAdapter;->encodeParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendSlotId()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->builder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    return-void
.end method

.method private convertToString(I)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 119
    if-gtz p1, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private encodeParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "parameter"

    .prologue
    .line 135
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    return-object v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    goto :goto_0
.end method

.method private getDateOfBirth()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v3, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v3}, Lcom/adfonic/android/api/request/AndroidRequest;->getDateOfBirth()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 164
    :goto_0
    return-object v2

    .line 160
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, dobSdf:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v3}, Lcom/adfonic/android/api/request/AndroidRequest;->getDateOfBirth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 162
    iget-object v3, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v3}, Lcom/adfonic/android/api/request/AndroidRequest;->getDateOfBirth()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 163
    .end local v0           #dobSdf:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v0}, Lcom/adfonic/android/api/request/AndroidRequest;->hasGender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v0}, Lcom/adfonic/android/api/request/AndroidRequest;->isMale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const-string v0, "m"

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "f"

    goto :goto_0
.end method

.method private getTestValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v0}, Lcom/adfonic/android/api/request/AndroidRequest;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method


# virtual methods
.method public toUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/adfonic/android/api/request/UriRequestAdapter;->appendSlotId()V

    .line 78
    iget-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->builder:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v0, "t.markup"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "t.format"

    const-string v1, "json"

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "t.beacons"

    const-string v1, "metadata"

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "r.client"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getAdfonicSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "d.dpid"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "d.odin-1"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "r.hw"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getHardwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "u.longitude"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "u.latitude"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "u.lang"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "u.ageHigh"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getAgeHigh()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->convertToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "u.ageLow"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getAgeLow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->convertToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "u.age"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getAge()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->convertToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "u.dob"

    invoke-direct {p0}, Lcom/adfonic/android/api/request/UriRequestAdapter;->getDateOfBirth()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "u.tz"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "u.locale"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "u.gender"

    invoke-direct {p0}, Lcom/adfonic/android/api/request/UriRequestAdapter;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "s.test"

    invoke-direct {p0}, Lcom/adfonic/android/api/request/UriRequestAdapter;->getTestValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "d.screensize"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getScreenSize()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "d.name"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "d.osname"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getOsName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "d.osver"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "r.mccmnc"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "r.nettype"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "r.netcode"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getNetworkCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "r.netname"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "r.simname"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getSimName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "r.roaming"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getRoaming()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "h.user-agent"

    iget-object v1, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->request:Lcom/adfonic/android/api/request/AndroidRequest;

    invoke-virtual {v1}, Lcom/adfonic/android/api/request/AndroidRequest;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adfonic/android/api/request/UriRequestAdapter;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/adfonic/android/api/request/UriRequestAdapter;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
