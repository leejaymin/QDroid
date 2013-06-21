.class public Ledu/umich/PowerTutor/phone/DreamPowerCalculator;
.super Ljava/lang/Object;
.source "DreamPowerCalculator.java"

# interfaces
.implements Ledu/umich/PowerTutor/phone/PhonePowerCalculator;


# instance fields
.field protected coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    new-instance v0, Ledu/umich/PowerTutor/phone/DreamConstants;

    invoke-direct {v0, p1}, Ledu/umich/PowerTutor/phone/DreamConstants;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;-><init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 0
    .parameter "coeffs"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    .line 43
    return-void
.end method

.method protected static upperBound([DD)I
    .locals 5
    .parameter "A"
    .parameter "x"

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, lo:I
    array-length v0, p0

    .line 152
    .local v0, hi:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 160
    return v1

    .line 153
    :cond_0
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    add-int v2, v1, v3

    .line 154
    .local v2, mid:I
    aget-wide v3, p0, v2

    cmpg-double v3, v3, p1

    if-gtz v3, :cond_1

    .line 155
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getAudioPower(Ledu/umich/PowerTutor/components/Audio$AudioData;)D
    .locals 2
    .parameter "data"

    .prologue
    .line 79
    iget-boolean v0, p1, Ledu/umich/PowerTutor/components/Audio$AudioData;->musicOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v0}, Ledu/umich/PowerTutor/phone/PhoneConstants;->audioPower()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCpuPower(Ledu/umich/PowerTutor/components/CPU$CpuData;)D
    .locals 16
    .parameter "data"

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v8}, Ledu/umich/PowerTutor/phone/PhoneConstants;->cpuPowerRatios()[D

    move-result-object v3

    .line 59
    .local v3, powerRatios:[D
    move-object/from16 v0, p0

    iget-object v8, v0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v8}, Ledu/umich/PowerTutor/phone/PhoneConstants;->cpuFreqs()[D

    move-result-object v1

    .line 61
    .local v1, freqs:[D
    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 62
    const/4 v8, 0x0

    aget-wide v4, v3, v8

    .line 75
    .local v4, ratio:D
    :goto_0
    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Ledu/umich/PowerTutor/components/CPU$CpuData;->usrPerc:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Ledu/umich/PowerTutor/components/CPU$CpuData;->sysPerc:D

    add-double/2addr v10, v12

    mul-double/2addr v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    return-wide v8

    .line 64
    .end local v4           #ratio:D
    :cond_0
    move-object/from16 v0, p1

    iget-wide v6, v0, Ledu/umich/PowerTutor/components/CPU$CpuData;->freq:D

    .line 65
    .local v6, sfreq:D
    const/4 v8, 0x0

    aget-wide v8, v1, v8

    cmpg-double v8, v6, v8

    if-gez v8, :cond_1

    const/4 v8, 0x0

    aget-wide v6, v1, v8

    .line 66
    :cond_1
    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-wide v8, v1, v8

    cmpl-double v8, v6, v8

    if-lez v8, :cond_2

    array-length v8, v1

    add-int/lit8 v8, v8, -0x1

    aget-wide v6, v1, v8

    .line 68
    :cond_2
    invoke-static {v1, v6, v7}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->upperBound([DD)I

    move-result v2

    .line 69
    .local v2, ind:I
    if-nez v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 70
    :cond_3
    array-length v8, v1

    if-ne v2, v8, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 71
    :cond_4
    add-int/lit8 v8, v2, -0x1

    aget-wide v8, v3, v8

    aget-wide v10, v3, v2

    add-int/lit8 v12, v2, -0x1

    aget-wide v12, v3, v12

    sub-double/2addr v10, v12

    .line 72
    aget-wide v12, v1, v2

    add-int/lit8 v14, v2, -0x1

    aget-wide v14, v1, v14

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    .line 73
    add-int/lit8 v12, v2, -0x1

    aget-wide v12, v1, v12

    sub-double v12, v6, v12

    mul-double/2addr v10, v12

    .line 71
    add-double v4, v8, v10

    .restart local v4       #ratio:D
    goto :goto_0
.end method

.method public getGpsPower(Ledu/umich/PowerTutor/components/GPS$GpsData;)D
    .locals 8
    .parameter "data"

    .prologue
    .line 83
    const-wide/16 v1, 0x0

    .line 84
    .local v1, result:D
    iget-object v4, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v4}, Ledu/umich/PowerTutor/phone/PhoneConstants;->gpsStatePower()[D

    move-result-object v3

    .line 85
    .local v3, statePower:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    .line 88
    return-wide v1

    .line 86
    :cond_0
    iget-object v4, p1, Ledu/umich/PowerTutor/components/GPS$GpsData;->stateTimes:[D

    aget-wide v4, v4, v0

    aget-wide v6, v3, v0

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLcdPower(Ledu/umich/PowerTutor/components/LCD$LcdData;)D
    .locals 4
    .parameter "data"

    .prologue
    .line 46
    iget-boolean v0, p1, Ledu/umich/PowerTutor/components/LCD$LcdData;->screenOn:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v0}, Ledu/umich/PowerTutor/phone/PhoneConstants;->lcdBrightness()D

    move-result-wide v0

    iget v2, p1, Ledu/umich/PowerTutor/components/LCD$LcdData;->brightness:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v2}, Ledu/umich/PowerTutor/phone/PhoneConstants;->lcdBacklight()D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 46
    :goto_0
    return-wide v0

    .line 47
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getOledPower(Ledu/umich/PowerTutor/components/OLED$OledData;)D
    .locals 2
    .parameter "data"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getOledPower() should not be called for Dream"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSensorPower(Ledu/umich/PowerTutor/components/Sensors$SensorData;)D
    .locals 8
    .parameter "data"

    .prologue
    .line 138
    const-wide/16 v2, 0x0

    .line 139
    .local v2, result:D
    iget-object v4, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v4}, Ledu/umich/PowerTutor/phone/PhoneConstants;->sensorPower()[D

    move-result-object v1

    .line 140
    .local v1, powerUse:[D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v4, 0xa

    if-lt v0, v4, :cond_0

    .line 143
    return-wide v2

    .line 141
    :cond_0
    iget-object v4, p1, Ledu/umich/PowerTutor/components/Sensors$SensorData;->onTime:[D

    aget-wide v4, v4, v0

    aget-wide v6, v1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getThreeGPower(Ledu/umich/PowerTutor/components/Threeg$ThreegData;)D
    .locals 3
    .parameter "data"

    .prologue
    const-wide/16 v0, 0x0

    .line 122
    iget-boolean v2, p1, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->threegOn:Z

    if-nez v2, :cond_0

    .line 134
    :goto_0
    return-wide v0

    .line 125
    :cond_0
    iget v2, p1, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->powerState:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    iget-object v1, p1, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->oper:Ljava/lang/String;

    invoke-interface {v0, v1}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegIdlePower(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    iget-object v1, p1, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->oper:Ljava/lang/String;

    invoke-interface {v0, v1}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegFachPower(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    iget-object v1, p1, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->oper:Ljava/lang/String;

    invoke-interface {v0, v1}, Ledu/umich/PowerTutor/phone/PhoneConstants;->threegDchPower(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWifiPower(Ledu/umich/PowerTutor/components/Wifi$WifiData;)D
    .locals 13
    .parameter "data"

    .prologue
    .line 92
    iget-boolean v5, p1, Ledu/umich/PowerTutor/components/Wifi$WifiData;->wifiOn:Z

    if-nez v5, :cond_0

    .line 93
    const-wide/16 v5, 0x0

    .line 116
    :goto_0
    return-wide v5

    .line 94
    :cond_0
    iget v5, p1, Ledu/umich/PowerTutor/components/Wifi$WifiData;->powerState:I

    if-nez v5, :cond_1

    .line 95
    iget-object v5, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v5}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiLowPower()D

    move-result-wide v5

    goto :goto_0

    .line 96
    :cond_1
    iget v5, p1, Ledu/umich/PowerTutor/components/Wifi$WifiData;->powerState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 97
    iget-object v5, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v5}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiLinkSpeeds()[D

    move-result-object v2

    .line 98
    .local v2, linkSpeeds:[D
    iget-object v5, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v5}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiLinkRatios()[D

    move-result-object v1

    .line 100
    .local v1, linkRatios:[D
    array-length v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 104
    const/4 v5, 0x0

    aget-wide v3, v1, v5

    .line 116
    .local v3, ratio:D
    :goto_1
    const-wide/16 v5, 0x0

    iget-object v7, p0, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->coeffs:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v7}, Ledu/umich/PowerTutor/phone/PhoneConstants;->wifiHighPower()D

    move-result-wide v7

    iget-wide v9, p1, Ledu/umich/PowerTutor/components/Wifi$WifiData;->uplinkRate:D

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_0

    .line 109
    .end local v3           #ratio:D
    :cond_2
    iget-wide v5, p1, Ledu/umich/PowerTutor/components/Wifi$WifiData;->linkSpeed:D

    invoke-static {v2, v5, v6}, Ledu/umich/PowerTutor/phone/DreamPowerCalculator;->upperBound([DD)I

    move-result v0

    .line 110
    .local v0, ind:I
    if-nez v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 111
    :cond_3
    array-length v5, v2

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 112
    :cond_4
    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v1, v5

    aget-wide v7, v1, v0

    add-int/lit8 v9, v0, -0x1

    aget-wide v9, v1, v9

    sub-double/2addr v7, v9

    .line 113
    aget-wide v9, v2, v0

    add-int/lit8 v11, v0, -0x1

    aget-wide v11, v2, v11

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    .line 114
    iget-wide v9, p1, Ledu/umich/PowerTutor/components/Wifi$WifiData;->linkSpeed:D

    add-int/lit8 v11, v0, -0x1

    aget-wide v11, v2, v11

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    .line 112
    add-double v3, v5, v7

    .restart local v3       #ratio:D
    goto :goto_1

    .line 118
    .end local v0           #ind:I
    .end local v1           #linkRatios:[D
    .end local v2           #linkSpeeds:[D
    .end local v3           #ratio:D
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected power state"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
