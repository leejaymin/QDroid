.class public Ledu/umich/PowerTutor/phone/SapphireConstants;
.super Ledu/umich/PowerTutor/phone/DreamConstants;
.source "SapphireConstants.java"


# static fields
.field private static final arrayCpuFreqs:[D

.field private static final arrayCpuPowerRatios:[D

.field private static final arrayGpsStatePower:[D

.field private static final arrayWifiLinkRatios:[D

.field private static final arrayWifiLinkSpeeds:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x2

    .line 45
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayCpuPowerRatios:[D

    .line 50
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayCpuFreqs:[D

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    sput-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayGpsStatePower:[D

    .line 84
    new-array v0, v2, [D

    fill-array-data v0, :array_3

    sput-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayWifiLinkRatios:[D

    .line 92
    new-array v0, v2, [D

    fill-array-data v0, :array_4

    sput-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayWifiLinkSpeeds:[D

    .line 24
    return-void

    .line 45
    :array_0
    .array-data 0x8
        0x8t 0x3dt 0x9bt 0x55t 0x9ft 0xabt 0xf6t 0x3ft
        0x8at 0xb0t 0xe1t 0xe9t 0x95t 0x32t 0x3t 0x40t
    .end array-data

    .line 50
    :array_1
    .array-data 0x8
        0xect 0x51t 0xb8t 0x1et 0x85t 0xabt 0x6et 0x40t
        0xaet 0x47t 0xe1t 0x7at 0x14t 0xf6t 0x77t 0x40t
    .end array-data

    .line 59
    :array_2
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xe5t 0xd0t 0x22t 0xdbt 0xc9t 0x40t 0x40t
        0x87t 0xa7t 0x57t 0xcat 0x32t 0xcct 0x71t 0x40t
    .end array-data

    .line 84
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

    .line 92
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
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/phone/DreamConstants;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public audioPower()D
    .locals 2

    .prologue
    .line 56
    const-wide v0, 0x406713d70a3d70a4L

    return-wide v0
.end method

.method public cpuFreqs()[D
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayCpuFreqs:[D

    return-object v0
.end method

.method public cpuPowerRatios()[D
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayCpuPowerRatios:[D

    return-object v0
.end method

.method public gpsSleepTime()D
    .locals 2

    .prologue
    .line 65
    const-wide/high16 v0, 0x4018

    return-wide v0
.end method

.method public gpsStatePower()[D
    .locals 1

    .prologue
    .line 61
    sget-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayGpsStatePower:[D

    return-object v0
.end method

.method public lcdBacklight()D
    .locals 2

    .prologue
    .line 42
    const-wide v0, 0x40754d49ba5e353fL

    return-wide v0
.end method

.method public lcdBrightness()D
    .locals 2

    .prologue
    .line 38
    const-wide v0, 0x3ffba137f38c5437L

    return-wide v0
.end method

.method public maxPower()D
    .locals 2

    .prologue
    .line 34
    const-wide v0, 0x40a5e00000000000L

    return-wide v0
.end method

.method public modelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "sapphire"

    return-object v0
.end method

.method public threegDchPower(Ljava/lang/String;)D
    .locals 3
    .parameter "oper"

    .prologue
    const-wide v1, 0x408d831ce075f6fdL

    .line 118
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :cond_0
    return-wide v1
.end method

.method public threegFachPower(Ljava/lang/String;)D
    .locals 3
    .parameter "oper"

    .prologue
    const-wide v1, 0x4079df809d495183L

    .line 111
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :cond_0
    return-wide v1
.end method

.method public threegIdlePower(Ljava/lang/String;)D
    .locals 3
    .parameter "oper"

    .prologue
    const-wide/high16 v1, 0x4024

    .line 104
    const-string v0, "T - Mobile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :cond_0
    return-wide v1
.end method

.method public threegInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "rmnet0"

    return-object v0
.end method

.method public wifiHighLowTransition()D
    .locals 2

    .prologue
    .line 81
    const-wide/high16 v0, 0x4020

    return-wide v0
.end method

.method public wifiHighPower()D
    .locals 2

    .prologue
    .line 73
    const-wide v0, 0x4086ee1ad42c3c9fL

    return-wide v0
.end method

.method public wifiLinkRatios()[D
    .locals 1

    .prologue
    .line 89
    sget-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayWifiLinkRatios:[D

    return-object v0
.end method

.method public wifiLinkSpeeds()[D
    .locals 1

    .prologue
    .line 96
    sget-object v0, Ledu/umich/PowerTutor/phone/SapphireConstants;->arrayWifiLinkSpeeds:[D

    return-object v0
.end method

.method public wifiLowHighTransition()D
    .locals 2

    .prologue
    .line 77
    const-wide/high16 v0, 0x402e

    return-wide v0
.end method

.method public wifiLowPower()D
    .locals 2

    .prologue
    .line 69
    const-wide v0, 0x404346e978d4fdf4L

    return-wide v0
.end method
