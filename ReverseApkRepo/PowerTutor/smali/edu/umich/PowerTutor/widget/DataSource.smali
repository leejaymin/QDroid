.class public Ledu/umich/PowerTutor/widget/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BATT_CHARGETIME:I = 0x1

.field private static final BATT_LIFETIME:I = 0x0

.field private static final CHARGE_1400:I = 0x2

.field private static final CHARGE_FULL:I = 0x1

.field private static final CHARGE_SENSOR:I = 0x0

.field private static final ID_BATTERY_TIME:I = 0x1

.field private static final ID_CHARGE:I = 0x2

.field private static final ID_CURRENT:I = 0x4

.field private static final ID_PERC:I = 0x6

.field private static final ID_POWER:I = 0x0

.field private static final ID_TEMP:I = 0x5

.field private static final ID_VOLTAGE:I = 0x3

.field private static final POLY_WEIGHT:D = 0.02

.field private static final POWER_DAY:I = 0x3

.field private static final POWER_HOUR:I = 0x2

.field private static final POWER_INSTANT:I = 0x0

.field private static final POWER_MINUTE:I = 0x1

.field private static final POWER_SENSOR:I = 0x5

.field private static final POWER_TOTAL:I = 0x4

.field private static final TEMP_CELCIUS:I = 0x0

.field private static final TEMP_FARENHEIT:I = 0x1

.field private static final battLongs:[Ljava/lang/String; = null

.field private static final battShorts:[Ljava/lang/String; = null

.field private static final chargeLongs:[Ljava/lang/String; = null

.field private static final chargeShorts:[Ljava/lang/String; = null

.field private static final idLongs:[Ljava/lang/String; = null

.field private static final idShorts:[Ljava/lang/String; = null

.field private static final powerLongs:[Ljava/lang/String; = null

.field private static final powerShorts:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x33d9851f106addL

.field private static final tempLongs:[Ljava/lang/String;

.field private static final tempShorts:[Ljava/lang/String;


# instance fields
.field public id:I

.field public params:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string v1, "Power"

    aput-object v1, v0, v3

    .line 44
    const-string v1, "Battery Time"

    aput-object v1, v0, v4

    .line 45
    const-string v1, "Charge"

    aput-object v1, v0, v5

    .line 46
    const-string v1, "Voltage"

    aput-object v1, v0, v6

    .line 47
    const-string v1, "Current"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 48
    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 49
    const-string v2, "Percent Battery"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->idShorts:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    const-string v1, "Displays power in mW"

    aput-object v1, v0, v3

    .line 53
    const-string v1, "Displays remaining battery lifetime.  Also can show time until battery is fully charged"

    aput-object v1, v0, v4

    .line 55
    const-string v1, "Displays remaining battery charge in mAh"

    aput-object v1, v0, v5

    .line 56
    const-string v1, "Displays battery voltage in V"

    aput-object v1, v0, v6

    .line 57
    const-string v1, "Displays battery current in mA"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 58
    const-string v2, "Displays battery temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 59
    const-string v2, "Displays the percent battery remaning"

    aput-object v2, v0, v1

    .line 51
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->idLongs:[Ljava/lang/String;

    .line 68
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    const-string v1, "Instant"

    aput-object v1, v0, v3

    .line 70
    const-string v1, "Minute Average"

    aput-object v1, v0, v4

    .line 71
    const-string v1, "Hour Average"

    aput-object v1, v0, v5

    .line 72
    const-string v1, "Day Average"

    aput-object v1, v0, v6

    .line 73
    const-string v1, "Total Average"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 74
    const-string v2, "Battery Sensors"

    aput-object v2, v0, v1

    .line 68
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->powerShorts:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 77
    const-string v1, "Estimated instantaneous power consumption"

    aput-object v1, v0, v3

    .line 78
    const-string v1, "Average power consumption over the last minute"

    aput-object v1, v0, v4

    .line 79
    const-string v1, "Average power consumption over the last hour"

    aput-object v1, v0, v5

    .line 80
    const-string v1, "Average power consumption over the last day"

    aput-object v1, v0, v6

    .line 81
    const-string v1, "Average power consumption while the profiler has been running"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 82
    const-string v2, "Calculate power from battery current and voltage sensors"

    aput-object v2, v0, v1

    .line 76
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->powerLongs:[Ljava/lang/String;

    .line 88
    new-array v0, v6, [Ljava/lang/String;

    .line 89
    const-string v1, "Battery Sensor"

    aput-object v1, v0, v3

    .line 90
    const-string v1, "Fully Charged"

    aput-object v1, v0, v4

    .line 91
    const-string v1, "1400 mAh"

    aput-object v1, v0, v5

    .line 88
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->chargeShorts:[Ljava/lang/String;

    .line 93
    new-array v0, v6, [Ljava/lang/String;

    .line 94
    const-string v1, "Use your battery\'s charge readings"

    aput-object v1, v0, v3

    .line 95
    const-string v1, "Assume that your battery is fully charged"

    aput-object v1, v0, v4

    .line 96
    const-string v1, "Assume that you have 1400 mAh worth of charge (A typical battery capacity)"

    aput-object v1, v0, v5

    .line 93
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->chargeLongs:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    .line 103
    const-string v1, "Celcius"

    aput-object v1, v0, v3

    .line 104
    const-string v1, "Farenheit"

    aput-object v1, v0, v4

    .line 102
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->tempShorts:[Ljava/lang/String;

    .line 106
    new-array v0, v5, [Ljava/lang/String;

    .line 107
    const-string v1, "Display battery temperature in celcius"

    aput-object v1, v0, v3

    .line 108
    const-string v1, "Display battery temperature in farenheit"

    aput-object v1, v0, v4

    .line 106
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->tempLongs:[Ljava/lang/String;

    .line 113
    new-array v0, v5, [Ljava/lang/String;

    .line 114
    const-string v1, "Life Time"

    aput-object v1, v0, v3

    .line 115
    const-string v1, "Charge Time"

    aput-object v1, v0, v4

    .line 113
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->battShorts:[Ljava/lang/String;

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    .line 118
    const-string v1, "Display remaining life time when battery plugged in"

    aput-object v1, v0, v3

    .line 119
    const-string v1, "Display time until battery fully charged when battery plugged in"

    aput-object v1, v0, v4

    .line 117
    sput-object v0, Ledu/umich/PowerTutor/widget/DataSource;->battLongs:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calcCharge(I)D
    .locals 3
    .parameter "chargeId"

    .prologue
    .line 333
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    .line 334
    .local v0, bst:Ledu/umich/PowerTutor/util/BatteryStats;
    packed-switch p1, :pswitch_data_0

    .line 339
    const-wide/high16 v1, -0x4010

    :goto_0
    return-wide v1

    .line 335
    :pswitch_0
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v1

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->getFullCapacity()D

    move-result-wide v1

    goto :goto_0

    .line 337
    :pswitch_2
    const-wide v1, 0x40b3b00000000000L

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private calcPower(Ledu/umich/PowerTutor/service/PowerEstimator;I)D
    .locals 23
    .parameter "p"
    .parameter "powId"

    .prologue
    .line 293
    packed-switch p2, :pswitch_data_0

    .line 329
    const-wide/high16 v14, -0x4010

    :cond_0
    :goto_0
    return-wide v14

    .line 295
    :pswitch_0
    const/4 v9, 0x0

    .line 296
    .local v9, count:I
    const/16 v3, 0x12c

    const/4 v4, -0x1

    .line 297
    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    move-object/from16 v2, p1

    .line 296
    invoke-virtual/range {v2 .. v7}, Ledu/umich/PowerTutor/service/PowerEstimator;->getComponentHistory(IIIJ)[I

    move-result-object v12

    .line 298
    .local v12, history:[I
    const-wide/16 v16, 0x0

    .line 299
    .local v16, weightedAvgPower:D
    array-length v2, v12

    add-int/lit8 v13, v2, -0x1

    .local v13, i:I
    :goto_1
    if-gez v13, :cond_1

    .line 306
    if-nez v9, :cond_3

    const-wide/high16 v14, -0x4010

    goto :goto_0

    .line 300
    :cond_1
    aget v2, v12, v13

    if-eqz v2, :cond_2

    .line 301
    add-int/lit8 v9, v9, 0x1

    .line 302
    const-wide v2, 0x3fef5c28f5c28f5cL

    mul-double v16, v16, v2

    .line 303
    const-wide v2, 0x3f947ae147ae147bL

    aget v4, v12, v13

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    add-double v16, v16, v2

    .line 299
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 307
    :cond_3
    const-wide/high16 v2, 0x3ff0

    const-wide v4, 0x3fef5c28f5c28f5cL

    int-to-double v6, v9

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double v14, v16, v2

    goto :goto_0

    .line 312
    .end local v9           #count:I
    .end local v12           #history:[I
    .end local v13           #i:I
    .end local v16           #weightedAvgPower:D
    :pswitch_1
    const/16 v18, 0x0

    .line 313
    .local v18, wind:I
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    const/16 v18, 0x0

    .line 314
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    const/16 v18, 0x1

    .line 315
    :cond_5
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    const/16 v18, 0x2

    .line 316
    :cond_6
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    const/16 v18, 0x3

    .line 317
    :cond_7
    const-wide/16 v14, 0x0

    .line 318
    .local v14, total:D
    const/4 v2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Ledu/umich/PowerTutor/service/PowerEstimator;->getMeans(II)[J

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_0

    aget-wide v19, v3, v2

    .line 319
    .local v19, x:J
    move-wide/from16 v0, v19

    long-to-double v5, v0

    const-wide v21, 0x408f400000000000L

    div-double v5, v5, v21

    add-double/2addr v14, v5

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 323
    .end local v14           #total:D
    .end local v18           #wind:I
    .end local v19           #x:J
    :pswitch_2
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v8

    .line 324
    .local v8, bst:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-virtual {v8}, Ledu/umich/PowerTutor/util/BatteryStats;->getCurrent()D

    move-result-wide v10

    .line 325
    .local v10, curr:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v10, v2

    if-ltz v2, :cond_8

    const-wide/high16 v14, -0x4010

    goto/16 :goto_0

    .line 326
    :cond_8
    invoke-virtual {v8}, Ledu/umich/PowerTutor/util/BatteryStats;->getVoltage()D

    move-result-wide v2

    mul-double v14, v10, v2

    goto/16 :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDefaults()[Ledu/umich/PowerTutor/widget/DataSource;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    const/4 v2, 0x3

    new-array v1, v2, [Ledu/umich/PowerTutor/widget/DataSource;

    .line 225
    .local v1, res:[Ledu/umich/PowerTutor/widget/DataSource;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 226
    aget-object v2, v1, v4

    invoke-virtual {v2, v4, v4}, Ledu/umich/PowerTutor/widget/DataSource;->setParam(II)Z

    .line 227
    aget-object v2, v1, v4

    const/4 v3, 0x4

    invoke-virtual {v2, v5, v3}, Ledu/umich/PowerTutor/widget/DataSource;->setParam(II)Z

    .line 228
    aget-object v2, v1, v5

    const/4 v3, 0x6

    invoke-virtual {v2, v4, v3}, Ledu/umich/PowerTutor/widget/DataSource;->setParam(II)Z

    .line 229
    aget-object v2, v1, v6

    const/4 v3, 0x5

    invoke-virtual {v2, v4, v3}, Ledu/umich/PowerTutor/widget/DataSource;->setParam(II)Z

    .line 230
    aget-object v2, v1, v6

    invoke-virtual {v2, v5, v4}, Ledu/umich/PowerTutor/widget/DataSource;->setParam(II)Z

    .line 231
    return-object v1

    .line 225
    :cond_0
    new-instance v2, Ledu/umich/PowerTutor/widget/DataSource;

    invoke-direct {v2}, Ledu/umich/PowerTutor/widget/DataSource;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    iget v0, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :pswitch_0
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->idLongs:[Ljava/lang/String;

    iget v1, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 214
    :pswitch_1
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->powerLongs:[Ljava/lang/String;

    iget-object v1, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    goto :goto_0

    .line 216
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Power Source: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ledu/umich/PowerTutor/widget/DataSource;->powerLongs:[Ljava/lang/String;

    iget-object v2, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    const-string v1, "Charge Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ledu/umich/PowerTutor/widget/DataSource;->chargeLongs:[Ljava/lang/String;

    iget-object v2, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_3
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->tempLongs:[Ljava/lang/String;

    iget-object v1, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    aget v1, v1, v3

    aget-object v0, v0, v1

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getLongOptions(I)[Ljava/lang/String;
    .locals 1
    .parameter "level"

    .prologue
    .line 147
    if-nez p1, :cond_0

    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->idLongs:[Ljava/lang/String;

    .line 154
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget v0, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :pswitch_1
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->powerLongs:[Ljava/lang/String;

    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->powerLongs:[Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->chargeLongs:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->battLongs:[Ljava/lang/String;

    goto :goto_0

    .line 152
    :pswitch_3
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->tempLongs:[Ljava/lang/String;

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getShortOptions(I)[Ljava/lang/String;
    .locals 1
    .parameter "level"

    .prologue
    .line 136
    if-nez p1, :cond_0

    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->idShorts:[Ljava/lang/String;

    .line 143
    :goto_0
    return-object v0

    .line 137
    :cond_0
    iget v0, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :pswitch_1
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->powerShorts:[Ljava/lang/String;

    goto :goto_0

    .line 139
    :pswitch_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->powerShorts:[Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->chargeShorts:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->battShorts:[Ljava/lang/String;

    goto :goto_0

    .line 141
    :pswitch_3
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->tempShorts:[Ljava/lang/String;

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    sget-object v0, Ledu/umich/PowerTutor/widget/DataSource;->idShorts:[Ljava/lang/String;

    iget v1, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "level"

    .prologue
    .line 123
    if-nez p1, :cond_0

    const-string v0, "Select display type"

    .line 132
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget v0, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 125
    :pswitch_1
    const-string v0, "Select power source"

    goto :goto_0

    .line 127
    :pswitch_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "Select power source"

    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string v0, "Select charge source"

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "Select charging behavior"

    goto :goto_0

    .line 130
    :pswitch_3
    const-string v0, "Select temperature scale"

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getValue(Ledu/umich/PowerTutor/service/PowerEstimator;)Ljava/lang/String;
    .locals 22
    .parameter "p"

    .prologue
    .line 235
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v2

    .line 236
    .local v2, bst:Ledu/umich/PowerTutor/util/BatteryStats;
    move-object/from16 v0, p0

    iget v15, v0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    packed-switch v15, :pswitch_data_0

    .line 287
    const-string v15, ""

    :goto_0
    return-object v15

    .line 238
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Ledu/umich/PowerTutor/widget/DataSource;->calcPower(Ledu/umich/PowerTutor/service/PowerEstimator;I)D

    move-result-wide v9

    .line 239
    .local v9, pow:D
    const-wide/16 v15, 0x0

    cmpg-double v15, v9, v15

    if-gtz v15, :cond_0

    .line 240
    const-string v15, "Power\n-"

    goto :goto_0

    .line 242
    :cond_0
    const-string v15, "Power\n%1$.0f mW"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide v18, 0x408f400000000000L

    mul-double v18, v18, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 244
    .end local v9           #pow:D
    :pswitch_1
    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCurrent()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 245
    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getCurrent()D

    move-result-wide v7

    .line 246
    .local v7, curr:D
    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getCapacity()D

    move-result-wide v5

    .line 247
    .local v5, cp:D
    const-wide/16 v15, 0x0

    cmpl-double v15, v7, v15

    if-lez v15, :cond_1

    const-wide v15, 0x3f847ae147ae147bL

    cmpl-double v15, v5, v15

    if-ltz v15, :cond_1

    .line 249
    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v15

    div-double/2addr v15, v5

    const-wide/high16 v17, 0x3ff0

    sub-double v17, v17, v5

    mul-double v15, v15, v17

    div-double/2addr v15, v7

    double-to-long v11, v15

    .line 250
    .local v11, time:J
    const-string v15, "Charge time\n%1$d:%2$02d:%3$02d"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 251
    const-wide/16 v18, 0x3c

    div-long v18, v11, v18

    const-wide/16 v20, 0x3c

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x3c

    div-long v18, v11, v18

    const-wide/16 v20, 0x3c

    rem-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-wide/16 v18, 0x3c

    rem-long v18, v11, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    .line 250
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 255
    .end local v5           #cp:D
    .end local v7           #curr:D
    .end local v11           #time:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Ledu/umich/PowerTutor/widget/DataSource;->calcPower(Ledu/umich/PowerTutor/service/PowerEstimator;I)D

    move-result-wide v9

    .line 256
    .restart local v9       #pow:D
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ledu/umich/PowerTutor/widget/DataSource;->calcCharge(I)D

    move-result-wide v3

    .line 257
    .local v3, charge:D
    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getVoltage()D

    move-result-wide v13

    .line 258
    .local v13, volt:D
    const-wide/16 v15, 0x0

    cmpg-double v15, v9, v15

    if-lez v15, :cond_2

    const-wide/16 v15, 0x0

    cmpg-double v15, v3, v15

    if-lez v15, :cond_2

    const-wide/16 v15, 0x0

    cmpg-double v15, v13, v15

    if-gtz v15, :cond_3

    .line 259
    :cond_2
    const-string v15, "Batt. time\n-"

    goto/16 :goto_0

    .line 261
    :cond_3
    mul-double v15, v3, v13

    div-double/2addr v15, v9

    double-to-long v11, v15

    .line 262
    .restart local v11       #time:J
    const-string v15, "Batt. time\n%1$d:%2$02d:%3$02d"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 263
    const-wide/16 v18, 0x3c

    div-long v18, v11, v18

    const-wide/16 v20, 0x3c

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-wide/16 v18, 0x3c

    div-long v18, v11, v18

    const-wide/16 v20, 0x3c

    rem-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-wide/16 v18, 0x3c

    rem-long v18, v11, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    .line 262
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 265
    .end local v3           #charge:D
    .end local v9           #pow:D
    .end local v11           #time:J
    .end local v13           #volt:D
    :pswitch_2
    const-string v15, "Charge\n%1$.1f mAh"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 266
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ledu/umich/PowerTutor/widget/DataSource;->calcCharge(I)D

    move-result-wide v18

    const-wide v20, 0x400ccccccccccccdL

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    .line 265
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 268
    :pswitch_3
    const-string v15, "Voltage\n%1$.2f V"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getVoltage()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 270
    :pswitch_4
    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getCurrent()D

    move-result-wide v15

    const-wide v17, 0x408f400000000000L

    mul-double v7, v15, v17

    .line 271
    .restart local v7       #curr:D
    const-wide/16 v15, 0x0

    cmpg-double v15, v7, v15

    if-gez v15, :cond_4

    .line 272
    const-string v15, "Current\n%1$.1f mA"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    neg-double v0, v7

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 274
    :cond_4
    const-string v15, "Current\n%1$.1f mA\n(charging)"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 277
    .end local v7           #curr:D
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 278
    const-string v15, "Temp.\n%1$.1f \u00b0F"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 279
    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getTemp()D

    move-result-wide v18

    const-wide/high16 v20, 0x4022

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4014

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4040

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    .line 278
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 281
    :cond_5
    const-string v15, "Temp.\n%1$.1f \u00b0C"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getTemp()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 284
    :pswitch_6
    const-string v15, "Batt. left\n%1$.0f%%"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide/high16 v18, 0x4059

    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getCapacity()D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public hasOption(II)Z
    .locals 6
    .parameter "level"
    .parameter "value"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 158
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    .line 159
    .local v0, bst:Ledu/umich/PowerTutor/util/BatteryStats;
    if-nez p1, :cond_3

    .line 160
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCapacity()Z

    move-result v1

    .line 180
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 161
    :cond_1
    if-ne p2, v4, :cond_2

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCharge()Z

    move-result v1

    goto :goto_0

    .line 162
    :cond_2
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCurrent()Z

    move-result v1

    goto :goto_0

    .line 165
    :cond_3
    iget v3, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    move v1, v2

    .line 180
    goto :goto_0

    .line 167
    :pswitch_2
    if-ne p2, v5, :cond_0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCurrent()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasVoltage()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 169
    :pswitch_3
    if-ne p1, v1, :cond_6

    .line 170
    if-ne p2, v5, :cond_0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCurrent()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasVoltage()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 171
    :cond_6
    if-ne p1, v4, :cond_0

    .line 172
    if-eq p2, v4, :cond_0

    .line 173
    if-nez p2, :cond_7

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCharge()Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    :cond_7
    if-ne p2, v1, :cond_8

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasFullCapacity()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setParam(II)Z
    .locals 6
    .parameter "level"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 184
    if-nez p1, :cond_3

    .line 185
    iput p2, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, numParams:I
    iget v4, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    packed-switch v4, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    if-lez v1, :cond_0

    .line 193
    new-array v4, v1, [I

    iput-object v4, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    .line 195
    :cond_0
    if-ne p1, v1, :cond_2

    .line 204
    .end local v1           #numParams:I
    :cond_1
    :goto_1
    return v2

    .line 188
    .restart local v1       #numParams:I
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 189
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 190
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 195
    goto :goto_1

    .line 197
    .end local v1           #numParams:I
    :cond_3
    iget-object v4, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    add-int/lit8 v5, p1, -0x1

    aput p2, v4, v5

    .line 198
    iget v4, p0, Ledu/umich/PowerTutor/widget/DataSource;->id:I

    if-ne v4, v2, :cond_5

    .line 199
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    .line 200
    .local v0, bst:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCurrent()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCharge()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCapacity()Z

    move-result v4

    if-nez v4, :cond_5

    .line 201
    :cond_4
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    array-length v5, v5

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_1

    .line 204
    .end local v0           #bst:Ledu/umich/PowerTutor/util/BatteryStats;
    :cond_5
    iget-object v4, p0, Ledu/umich/PowerTutor/widget/DataSource;->params:[I

    array-length v4, v4

    if-eq p1, v4, :cond_1

    move v2, v3

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
