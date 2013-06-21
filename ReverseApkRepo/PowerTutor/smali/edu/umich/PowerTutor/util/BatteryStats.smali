.class public Ledu/umich/PowerTutor/util/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# static fields
.field private static final CAPACITY_CONV:[D = null

.field private static final CAPACITY_FILES:[Ljava/lang/String; = null

.field private static final CHARGE_CONV:[D = null

.field private static final CHARGE_FILES:[Ljava/lang/String; = null

.field private static final CURRENT_CONV:[D = null

.field private static final CURRENT_FILES:[Ljava/lang/String; = null

.field private static final FULL_CAPACITY_CONV:[D = null

.field private static final FULL_CAPACITY_FILES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final TEMP_CONV:[D

.field private static final TEMP_FILES:[Ljava/lang/String;

.field private static final VOLTAGE_CONV:[D

.field private static final VOLTAGE_FILES:[Ljava/lang/String;

.field private static instance:Ledu/umich/PowerTutor/util/BatteryStats;


# instance fields
.field capacityConv:D

.field capacityFile:Ljava/lang/String;

.field chargeConv:D

.field chargeFile:Ljava/lang/String;

.field currentConv:D

.field currentFile:Ljava/lang/String;

.field fullCapacityConv:D

.field fullCapacityFile:Ljava/lang/String;

.field sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

.field tempConv:D

.field tempFile:Ljava/lang/String;

.field voltageConv:D

.field voltageFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide v6, 0x3f6d7dbf487fcb92L

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    const/4 v0, 0x0

    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->instance:Ledu/umich/PowerTutor/util/BatteryStats;

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    .line 36
    const-string v1, "/sys/class/power_supply/battery/voltage_now"

    aput-object v1, v0, v3

    .line 37
    const-string v1, "/sys/class/power_supply/battery/batt_vol"

    aput-object v1, v0, v4

    .line 35
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->VOLTAGE_FILES:[Ljava/lang/String;

    .line 39
    new-array v0, v5, [D

    fill-array-data v0, :array_0

    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->VOLTAGE_CONV:[D

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    .line 45
    const-string v1, "/sys/class/power_supply/battery/current_now"

    aput-object v1, v0, v3

    .line 44
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->CURRENT_FILES:[Ljava/lang/String;

    .line 48
    new-array v0, v4, [D

    .line 49
    const-wide v1, 0x3eb0c6f7a0b5ed8dL

    aput-wide v1, v0, v3

    .line 48
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->CURRENT_CONV:[D

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    .line 54
    const-string v1, "/sys/class/power_supply/battery/temp"

    aput-object v1, v0, v3

    .line 55
    const-string v1, "/sys/class/power_supply/battery/batt_temp"

    aput-object v1, v0, v4

    .line 53
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->TEMP_FILES:[Ljava/lang/String;

    .line 57
    new-array v0, v5, [D

    fill-array-data v0, :array_1

    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->TEMP_CONV:[D

    .line 62
    new-array v0, v4, [Ljava/lang/String;

    .line 63
    const-string v1, "/sys/class/power_supply/battery/charge_counter"

    aput-object v1, v0, v3

    .line 62
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->CHARGE_FILES:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [D

    .line 66
    aput-wide v6, v0, v3

    .line 65
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->CHARGE_CONV:[D

    .line 69
    new-array v0, v4, [Ljava/lang/String;

    .line 70
    const-string v1, "/sys/class/power_supply/battery/capacity"

    aput-object v1, v0, v3

    .line 69
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->CAPACITY_FILES:[Ljava/lang/String;

    .line 72
    new-array v0, v4, [D

    .line 73
    const-wide v1, 0x3f847ae147ae147bL

    aput-wide v1, v0, v3

    .line 72
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->CAPACITY_CONV:[D

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    .line 77
    const-string v1, "/sys/class/power_supply/battery/full_bat"

    aput-object v1, v0, v3

    .line 76
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->FULL_CAPACITY_FILES:[Ljava/lang/String;

    .line 79
    new-array v0, v4, [D

    .line 80
    aput-wide v6, v0, v3

    .line 79
    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->FULL_CAPACITY_CONV:[D

    .line 24
    return-void

    .line 39
    :array_0
    .array-data 0x8
        0x8dt 0xedt 0xb5t 0xa0t 0xf7t 0xc6t 0xb0t 0x3et
        0xfct 0xa9t 0xf1t 0xd2t 0x4dt 0x62t 0x50t 0x3ft
    .end array-data

    .line 57
    :array_1
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xb9t 0x3ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v1

    iput-object v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    .line 103
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->VOLTAGE_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 111
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CURRENT_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 119
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->TEMP_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 127
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CHARGE_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    .line 135
    const/4 v0, 0x0

    :goto_4
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CAPACITY_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 143
    const/4 v0, 0x0

    :goto_5
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->FULL_CAPACITY_FILES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 149
    return-void

    .line 104
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Ledu/umich/PowerTutor/util/BatteryStats;->VOLTAGE_FILES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->VOLTAGE_FILES:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->voltageFile:Ljava/lang/String;

    .line 106
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->VOLTAGE_CONV:[D

    aget-wide v1, v1, v0

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->voltageConv:D

    .line 103
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Ledu/umich/PowerTutor/util/BatteryStats;->CURRENT_FILES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CURRENT_FILES:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->currentFile:Ljava/lang/String;

    .line 114
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CURRENT_CONV:[D

    aget-wide v1, v1, v0

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->currentConv:D

    .line 111
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_4
    new-instance v1, Ljava/io/File;

    sget-object v2, Ledu/umich/PowerTutor/util/BatteryStats;->TEMP_FILES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->TEMP_FILES:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->tempFile:Ljava/lang/String;

    .line 122
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->TEMP_CONV:[D

    aget-wide v1, v1, v0

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->tempConv:D

    .line 119
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    :cond_6
    new-instance v1, Ljava/io/File;

    sget-object v2, Ledu/umich/PowerTutor/util/BatteryStats;->CHARGE_FILES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 129
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CHARGE_FILES:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->chargeFile:Ljava/lang/String;

    .line 130
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CHARGE_CONV:[D

    aget-wide v1, v1, v0

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->chargeConv:D

    .line 127
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 136
    :cond_8
    new-instance v1, Ljava/io/File;

    sget-object v2, Ledu/umich/PowerTutor/util/BatteryStats;->CAPACITY_FILES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 137
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CAPACITY_FILES:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->capacityFile:Ljava/lang/String;

    .line 138
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->CAPACITY_CONV:[D

    aget-wide v1, v1, v0

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->capacityConv:D

    .line 135
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 144
    :cond_a
    new-instance v1, Ljava/io/File;

    sget-object v2, Ledu/umich/PowerTutor/util/BatteryStats;->FULL_CAPACITY_FILES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 145
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->FULL_CAPACITY_FILES:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->fullCapacityFile:Ljava/lang/String;

    .line 146
    sget-object v1, Ledu/umich/PowerTutor/util/BatteryStats;->FULL_CAPACITY_CONV:[D

    aget-wide v1, v1, v0

    iput-wide v1, p0, Ledu/umich/PowerTutor/util/BatteryStats;->fullCapacityConv:D

    .line 143
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5
.end method

.method public static getInstance()Ledu/umich/PowerTutor/util/BatteryStats;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->instance:Ledu/umich/PowerTutor/util/BatteryStats;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ledu/umich/PowerTutor/util/BatteryStats;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/BatteryStats;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->instance:Ledu/umich/PowerTutor/util/BatteryStats;

    .line 32
    :cond_0
    sget-object v0, Ledu/umich/PowerTutor/util/BatteryStats;->instance:Ledu/umich/PowerTutor/util/BatteryStats;

    return-object v0
.end method


# virtual methods
.method public getCapacity()D
    .locals 6

    .prologue
    const-wide/high16 v2, -0x4010

    .line 200
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->capacityFile:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-wide v2

    .line 201
    :cond_1
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    iget-object v5, p0, Ledu/umich/PowerTutor/util/BatteryStats;->capacityFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 202
    .local v0, cap:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v2, p0, Ledu/umich/PowerTutor/util/BatteryStats;->capacityConv:D

    long-to-double v4, v0

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public getCharge()D
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const-wide/high16 v6, -0x4010

    .line 186
    iget-object v8, p0, Ledu/umich/PowerTutor/util/BatteryStats;->chargeFile:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 187
    invoke-virtual {p0}, Ledu/umich/PowerTutor/util/BatteryStats;->getCapacity()D

    move-result-wide v2

    .line 188
    .local v2, r1:D
    invoke-virtual {p0}, Ledu/umich/PowerTutor/util/BatteryStats;->getFullCapacity()D

    move-result-wide v4

    .line 189
    .local v4, r2:D
    cmpg-double v8, v2, v9

    if-ltz v8, :cond_0

    cmpg-double v8, v4, v9

    if-gez v8, :cond_1

    .line 192
    .end local v2           #r1:D
    .end local v4           #r2:D
    :cond_0
    :goto_0
    return-wide v6

    .line 189
    .restart local v2       #r1:D
    .restart local v4       #r2:D
    :cond_1
    mul-double v6, v2, v4

    goto :goto_0

    .line 191
    .end local v2           #r1:D
    .end local v4           #r2:D
    :cond_2
    iget-object v8, p0, Ledu/umich/PowerTutor/util/BatteryStats;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    iget-object v9, p0, Ledu/umich/PowerTutor/util/BatteryStats;->chargeFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 192
    .local v0, charge:J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    iget-wide v6, p0, Ledu/umich/PowerTutor/util/BatteryStats;->chargeConv:D

    long-to-double v8, v0

    mul-double/2addr v6, v8

    goto :goto_0
.end method

.method public getCurrent()D
    .locals 6

    .prologue
    .line 166
    iget-object v2, p0, Ledu/umich/PowerTutor/util/BatteryStats;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    iget-object v3, p0, Ledu/umich/PowerTutor/util/BatteryStats;->currentFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 167
    .local v0, curr:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010

    :goto_0
    return-wide v2

    :cond_0
    iget-wide v2, p0, Ledu/umich/PowerTutor/util/BatteryStats;->currentConv:D

    long-to-double v4, v0

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public getFullCapacity()D
    .locals 6

    .prologue
    const-wide/high16 v2, -0x4010

    .line 210
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->fullCapacityFile:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-wide v2

    .line 211
    :cond_1
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    iget-object v5, p0, Ledu/umich/PowerTutor/util/BatteryStats;->fullCapacityFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 212
    .local v0, cap:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v2, p0, Ledu/umich/PowerTutor/util/BatteryStats;->fullCapacityConv:D

    long-to-double v4, v0

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public getTemp()D
    .locals 6

    .prologue
    const-wide/high16 v2, -0x4010

    .line 175
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->tempFile:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-wide v2

    .line 176
    :cond_1
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    iget-object v5, p0, Ledu/umich/PowerTutor/util/BatteryStats;->tempFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 177
    .local v0, temp:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v2, p0, Ledu/umich/PowerTutor/util/BatteryStats;->tempConv:D

    long-to-double v4, v0

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public getVoltage()D
    .locals 6

    .prologue
    const-wide/high16 v2, -0x4010

    .line 156
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->voltageFile:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-wide v2

    .line 157
    :cond_1
    iget-object v4, p0, Ledu/umich/PowerTutor/util/BatteryStats;->sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;

    iget-object v5, p0, Ledu/umich/PowerTutor/util/BatteryStats;->voltageFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 158
    .local v0, volt:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    iget-wide v2, p0, Ledu/umich/PowerTutor/util/BatteryStats;->voltageConv:D

    long-to-double v4, v0

    mul-double/2addr v2, v4

    goto :goto_0
.end method

.method public hasCapacity()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Ledu/umich/PowerTutor/util/BatteryStats;->capacityFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCharge()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ledu/umich/PowerTutor/util/BatteryStats;->chargeFile:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCapacity()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 181
    goto :goto_0
.end method

.method public hasCurrent()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ledu/umich/PowerTutor/util/BatteryStats;->currentFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFullCapacity()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Ledu/umich/PowerTutor/util/BatteryStats;->fullCapacityFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTemp()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Ledu/umich/PowerTutor/util/BatteryStats;->tempFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVoltage()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ledu/umich/PowerTutor/util/BatteryStats;->voltageFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
