.class public abstract Lcom/kaf/sys/IProperty;
.super Ljava/lang/Object;
.source "IProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFwVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdsAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdsAccountInfoForHDS()Lcom/kaf/sys/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdsTestServer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public getHdsTestServerForHDS()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public getHwVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getICCID([B[II)J
    .locals 2
    .parameter "output"
    .parameter "outputLen"
    .parameter "encMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 56
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getIMSI([B[II)J
    .locals 2
    .parameter "output"
    .parameter "outputLen"
    .parameter "encMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 23
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getKafVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLAC()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMDN([B[II)J
    .locals 2
    .parameter "output"
    .parameter "outputLen"
    .parameter "encMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 26
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMSISDN([B[II)J
    .locals 2
    .parameter "output"
    .parameter "outputLen"
    .parameter "encMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 20
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPUID([B[II)J
    .locals 2
    .parameter "output"
    .parameter "outputLen"
    .parameter "encMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 59
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPinStatus(I[B[I)J
    .locals 2
    .parameter "pinId"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 65
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tag0"
    .parameter "tag1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwBuildtimeInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsimAuth([B[B[B[I)J
    .locals 2
    .parameter "rand"
    .parameter "autn"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 68
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getUsimModelName([B[II)J
    .locals 2
    .parameter "output"
    .parameter "outputLen"
    .parameter "encMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 62
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getWibroAccountInfo()Lcom/kaf/sys/AccountInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/kaf/sys/AccountInfo;

    invoke-direct {v0}, Lcom/kaf/sys/AccountInfo;-><init>()V

    return-object v0
.end method

.method public getWibroMacAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiMacAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"
    .parameter "sipId"
    .parameter "pwd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public setHdsTestServer(Z)Z
    .locals 1
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public setShowAccountInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "id"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public setWibroAccountInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "id"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/NotSupportException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/GeneralException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public ucaClose(B)J
    .locals 2
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 81
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public ucaOpen([B[I)J
    .locals 2
    .parameter "channel"
    .parameter "channelLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 75
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public ucaTransmit([BI[B[I)J
    .locals 2
    .parameter "input"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 78
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public updateWibroMacAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateWifiMacAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyPin(ILjava/lang/String;[B[I)J
    .locals 2
    .parameter "pinId"
    .parameter "pinCode"
    .parameter "output"
    .parameter "outputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/kaf/NotSupportException;
        }
    .end annotation

    .prologue
    .line 72
    const-wide/16 v0, 0xa

    return-wide v0
.end method
