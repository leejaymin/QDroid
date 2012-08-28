.class public Lcom/adfonic/android/api/request/AndroidRequest;
.super Lcom/adfonic/android/api/Request;
.source "AndroidRequest.java"


# instance fields
.field private adfonicSdkVersion:Ljava/lang/String;

.field private androidDeviceId:Ljava/lang/String;

.field private androidSdkVersion:I

.field private deviceName:Ljava/lang/String;

.field private hardwareVersion:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private networkCode:Ljava/lang/String;

.field private networkName:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private roaming:Ljava/lang/String;

.field private screenSize:Ljava/lang/String;

.field private simName:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adfonic/android/api/Request;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/adfonic/android/api/Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adfonic/android/api/Request;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getAge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setAge(I)V

    .line 38
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getAgeHigh()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setAgeHigh(I)V

    .line 39
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getAgeLow()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setAgeLow(I)V

    .line 40
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getDateOfBirth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setDateOfBirth(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setLanguage(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setLocation(Landroid/location/Location;)V

    .line 43
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getRefreshTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setRefreshTime(I)V

    .line 44
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->getSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setSlotId(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->isMale()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setMale(Z)V

    .line 46
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->hasGender()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setHasGender(Z)V

    .line 47
    invoke-virtual {p1}, Lcom/adfonic/android/api/Request;->isAllowLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adfonic/android/api/request/AndroidRequest;->setAllowLocation(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public getAdfonicSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->adfonicSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->androidDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getAndroidSdkVersion()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->androidSdkVersion:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->hardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->networkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRoaming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->roaming:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->screenSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSimName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->simName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adfonic/android/api/request/AndroidRequest;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setAdfonicSdkVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "adfonicSdkVersion"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->adfonicSdkVersion:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setAndroidDeviceId(Ljava/lang/String;)V
    .locals 0
    .parameter "androidDeviceId"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->androidDeviceId:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setAndroidSdkVersion(I)V
    .locals 0
    .parameter "androidSdkVersion"

    .prologue
    .line 55
    iput p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->androidSdkVersion:I

    .line 56
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .parameter "deviceName"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->deviceName:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setHardwareVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "hardwareVersion"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->hardwareVersion:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->latitude:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->locale:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->longitude:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setNetworkCode(Ljava/lang/String;)V
    .locals 0
    .parameter "networkCode"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->networkCode:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0
    .parameter "networkName"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->networkName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setNetworkType(Ljava/lang/String;)V
    .locals 0
    .parameter "networkType"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->networkType:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .parameter "operator"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->operator:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0
    .parameter "osName"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->osName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "osVersion"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->osVersion:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setRoaming(Ljava/lang/String;)V
    .locals 0
    .parameter "roaming"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->roaming:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .parameter "screenSize"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->screenSize:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 0
    .parameter "simName"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->simName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "timeZone"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->timeZone:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adfonic/android/api/request/AndroidRequest;->userAgent:Ljava/lang/String;

    .line 64
    return-void
.end method
