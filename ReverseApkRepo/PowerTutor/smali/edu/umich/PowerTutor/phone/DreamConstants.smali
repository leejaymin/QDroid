.class public Ledu/umich/PowerTutor/phone/DreamConstants;
.super Ljava/lang/Object;
.source "DreamConstants.java"

# interfaces
.implements Ledu/umich/PowerTutor/phone/PhoneConstants;


# static fields
.field protected static final OPER_ATT:Ljava/lang/String; = "AT&T"

.field protected static final OPER_TMOBILE:Ljava/lang/String; = "T - Mobile"

.field private static final arrayCpuFreqs:[D

.field private static final arrayCpuPowerRatios:[D

.field private static final arrayGpsStatePower:[D

.field private static final arrayWifiLinkRatios:[D

.field private static final arrayWifiLinkSpeeds:[D


# instance fields
.field protected BATTERY_VOLTAGE:D

.field private sensorPowerArray:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x2

    .line 82
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayCpuPowerRatios:[D

    .line 87
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayCpuFreqs:[D

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    sput-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayGpsStatePower:[D

    .line 121
    new-array v0, v2, [D

    fill-array-data v0, :array_3

    sput-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayWifiLinkRatios:[D

    .line 129
    new-array v0, v2, [D

    fill-array-data v0, :array_4

    sput-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayWifiLinkSpeeds:[D

    .line 28
    return-void

    .line 82
    :array_0
    .array-data 0x8
        0x84t 0x9et 0xcdt 0xaat 0xcft 0x55t 0xbt 0x40t
        0x9t 0x8at 0x1ft 0x63t 0xeet 0x5at 0x11t 0x40t
    .end array-data

    .line 87
    :array_1
    .array-data 0x8
        0xect 0x51t 0xb8t 0x1et 0x85t 0xabt 0x6et 0x40t
        0xaet 0x47t 0xe1t 0x7at 0x14t 0xf6t 0x77t 0x40t
    .end array-data

    .line 96
    :array_2
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x99t 0x99t 0xb1t 0x65t 0x40t
        0xcdt 0xcct 0xcct 0xcct 0xcct 0xd8t 0x7at 0x40t
    .end array-data

    .line 121
    :array_3
    .array-data 0x8
        0x4bt 0x2t 0xd4t 0xd4t 0xb2t 0x8ft 0x47t 0x40t
        0x8et 0x77t 0x47t 0xc6t 0x6at 0x2dt 0x47t 0x40t
        0xf7t 0x91t 0x5bt 0x93t 0x6et 0xd5t 0x45t 0x40t
        0x98t 0x4ct 0x15t 0x8ct 0x4at 0xa4t 0x45t 0x40t
        0x60t 0xact 0x6ft 0x60t 0x72t 0x7dt 0x44t 0x40t
        0x54t 0x1dt 0x72t 0x33t 0xdct 0xb8t 0x43t 0x40t
        0x28t 0xct 0xcat 0x34t 0x9at 0x56t 0x43t 0x40t
        0xb8t 0xcbt 0x7et 0xddt 0xe9t 0x8t 0x41t 0x40t
        0x90t 0x16t 0x67t 0xct 0x73t 0x76t 0x3dt 0x40t
        0xcft 0x14t 0x3at 0xaft 0xb1t 0x3ft 0x34t 0x40t
        0x1ct 0x26t 0x1at 0xa4t 0xe0t 0x11t 0x26t 0x40t
        0xc3t 0x9bt 0x35t 0x78t 0x5ft 0xb5t 0x19t 0x40t
    .end array-data

    .line 129
    :array_4
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x16t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x18t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x22t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x26t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x28t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x32t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x38t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x42t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x48t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x4bt 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/16 v8, 0xa

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide v3, 0x400d99999999999aL

    iput-wide v3, p0, Ledu/umich/PowerTutor/phone/DreamConstants;->BATTERY_VOLTAGE:D

    .line 41
    const-string v3, "sensor"

    .line 40
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 42
    .local v2, sensorManager:Landroid/hardware/SensorManager;
    new-array v3, v8, [D

    iput-object v3, p0, Ledu/umich/PowerTutor/phone/DreamConstants;->sensorPowerArray:[D

    .line 43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v8, :cond_0

    .line 49
    return-void

    .line 44
    :cond_0
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 45
    .local v1, sensor:Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    .line 46
    iget-object v3, p0, Ledu/umich/PowerTutor/phone/DreamConstants;->sensorPowerArray:[D

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getPower()F

    move-result v4

    float-to-double v4, v4

    iget-wide v6, p0, Ledu/umich/PowerTutor/phone/DreamConstants;->BATTERY_VOLTAGE:D

    mul-double/2addr v4, v6

    aput-wide v4, v3, v0

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public audioPower()D
    .locals 2

    .prologue
    .line 93
    const-wide v0, 0x407809eb851eb852L

    return-wide v0
.end method

.method public cpuFreqs()[D
    .locals 1

    .prologue
    .line 89
    sget-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayCpuFreqs:[D

    return-object v0
.end method

.method public cpuPowerRatios()[D
    .locals 1

    .prologue
    .line 84
    sget-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayCpuPowerRatios:[D

    return-object v0
.end method

.method public getMaxPower(Ljava/lang/String;)D
    .locals 12
    .parameter "componentName"

    .prologue
    .line 193
    const-string v6, "LCD"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    invoke-virtual {p0}, Ledu/umich/PowerTutor/phone/DreamConstants;->lcdBacklight()D

    move-result-wide v6

    invoke-virtual {p0}, Ledu/umich/PowerTutor/phone/DreamConstants;->lcdBrightness()D

    move-result-wide v8

    const-wide v10, 0x406fe00000000000L

    mul-double/2addr v8, v10

    add-double v2, v6, v8

    .line 213
    :cond_0
    :goto_0
    return-wide v2

    .line 195
    :cond_1
    const-string v6, "CPU"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    invoke-virtual {p0}, Ledu/umich/PowerTutor/phone/DreamConstants;->cpuPowerRatios()[D

    move-result-object v1

    .line 197
    .local v1, ratios:[D
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-wide v6, v1, v6

    const-wide/high16 v8, 0x4059

    mul-double v2, v6, v8

    goto :goto_0

    .line 198
    .end local v1           #ratios:[D
    :cond_2
    const-string v6, "Audio"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 199
    invoke-virtual {p0}, Ledu/umich/PowerTutor/phone/DreamConstants;->audioPower()D

    move-result-wide v2

    goto :goto_0

    .line 200
    :cond_3
    const-string v6, "GPS"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 201
    invoke-virtual {p0}, Ledu/umich/PowerTutor/phone/DreamConstants;->gpsStatePower()[D

    move-result-object v0

    .line 202
    .local v0, gpsPow:[D
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-wide v2, v0, v6

    goto :goto_0

    .line 203
    .end local v0           #gpsPow:[D
    :cond_4
    const-string v6, "Wifi"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 205
    const-wide/high16 v2, 0x4089

    goto :goto_0

    .line 206
    :cond_5
    const-string v6, "3G"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 207
    const-string v6, ""

    invoke-virtual {p0, v6}, Ledu/umich/PowerTutor/phone/DreamConstants;->threegDchPower(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0

    .line 208
    :cond_6
    const-string v6, "Sensors"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 209
    const-wide/16 v2, 0x0

    .line 210
    .local v2, res:D
    invoke-virtual {p0}, Ledu/umich/PowerTutor/phone/DreamConstants;->sensorPower()[D

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_0

    aget-wide v4, v7, v6

    .local v4, x:D
    add-double/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 213
    .end local v2           #res:D
    .end local v4           #x:D
    :cond_7
    const-wide v2, 0x408c200000000000L

    goto :goto_0
.end method

.method public gpsSleepTime()D
    .locals 2

    .prologue
    .line 102
    const-wide/high16 v0, 0x4018

    return-wide v0
.end method

.method public gpsStatePower()[D
    .locals 1

    .prologue
    .line 98
    sget-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayGpsStatePower:[D

    return-object v0
.end method

.method public lcdBacklight()D
    .locals 2

    .prologue
    .line 64
    const-wide v0, 0x4071ff5e9e1b089aL

    return-wide v0
.end method

.method public lcdBrightness()D
    .locals 2

    .prologue
    .line 60
    const-wide v0, 0x400338da3c21187eL

    return-wide v0
.end method

.method public maxPower()D
    .locals 2

    .prologue
    .line 56
    const-wide v0, 0x40a5e00000000000L

    return-wide v0
.end method

.method public modelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "dream"

    return-object v0
.end method

.method public oledBasePower()D
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "oledBasePower() called on device with no OLED display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public oledChannelPower()[D
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "oledChannelPower() called on device with no OLED display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public oledModulation()D
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "oledModulation() called on device with no OLED display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sensorPower()[D
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Ledu/umich/PowerTutor/phone/DreamConstants;->sensorPowerArray:[D

    return-object v0
.end method

.method public threegDchFachDelay(Ljava/lang/String;)I
    .locals 1
    .parameter "oper"

    .prologue
    .line 162
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x6

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    const-string v0, "AT&T"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x5

    goto :goto_0

    .line 167
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public threegDchPower(Ljava/lang/String;)D
    .locals 3
    .parameter "oper"

    .prologue
    const-wide v1, 0x4081d00000000000L

    .line 155
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :cond_0
    return-wide v1
.end method

.method public threegDownlinkQueue(Ljava/lang/String;)I
    .locals 1
    .parameter "oper"

    .prologue
    .line 184
    const/16 v0, 0x77

    return v0
.end method

.method public threegFachIdleDelay(Ljava/lang/String;)I
    .locals 1
    .parameter "oper"

    .prologue
    .line 171
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x4

    .line 176
    :goto_0
    return v0

    .line 173
    :cond_0
    const-string v0, "AT&T"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const/16 v0, 0xc

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public threegFachPower(Ljava/lang/String;)D
    .locals 3
    .parameter "oper"

    .prologue
    const-wide v1, 0x4079100000000000L

    .line 148
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :cond_0
    return-wide v1
.end method

.method public threegIdlePower(Ljava/lang/String;)D
    .locals 3
    .parameter "oper"

    .prologue
    const-wide/high16 v1, 0x4024

    .line 141
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :cond_0
    return-wide v1
.end method

.method public threegInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "rmnet0"

    return-object v0
.end method

.method public threegUplinkQueue(Ljava/lang/String;)I
    .locals 1
    .parameter "oper"

    .prologue
    .line 180
    const/16 v0, 0x97

    return v0
.end method

.method public wifiHighLowTransition()D
    .locals 2

    .prologue
    .line 118
    const-wide/high16 v0, 0x4020

    return-wide v0
.end method

.method public wifiHighPower()D
    .locals 2

    .prologue
    .line 110
    const-wide v0, 0x4086800000000000L

    return-wide v0
.end method

.method public wifiLinkRatios()[D
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayWifiLinkRatios:[D

    return-object v0
.end method

.method public wifiLinkSpeeds()[D
    .locals 1

    .prologue
    .line 133
    sget-object v0, Ledu/umich/PowerTutor/phone/DreamConstants;->arrayWifiLinkSpeeds:[D

    return-object v0
.end method

.method public wifiLowHighTransition()D
    .locals 2

    .prologue
    .line 114
    const-wide/high16 v0, 0x402e

    return-wide v0
.end method

.method public wifiLowPower()D
    .locals 2

    .prologue
    .line 106
    const-wide v0, 0x404346e978d4fdf4L

    return-wide v0
.end method
