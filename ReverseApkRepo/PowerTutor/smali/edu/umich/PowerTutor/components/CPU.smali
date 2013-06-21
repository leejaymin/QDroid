.class public Ledu/umich/PowerTutor/components/CPU;
.super Ledu/umich/PowerTutor/components/PowerComponent;
.source "CPU.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/components/CPU$CpuData;,
        Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    }
.end annotation


# static fields
.field private static final CPU_FREQ_FILE:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final STAT_FILE:Ljava/lang/String; = "/proc/stat"

.field private static final TAG:Ljava/lang/String; = "CPU"


# instance fields
.field private constants:Ledu/umich/PowerTutor/phone/PhoneConstants;

.field private cpuState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

.field private pidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;",
            ">;"
        }
    .end annotation
.end field

.field private pids:[I

.field private statsBuf:[J

.field private uidLinks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ledu/umich/PowerTutor/phone/PhoneConstants;)V
    .locals 3
    .parameter "constants"

    .prologue
    .line 92
    invoke-direct {p0}, Ledu/umich/PowerTutor/components/PowerComponent;-><init>()V

    .line 93
    iput-object p1, p0, Ledu/umich/PowerTutor/components/CPU;->constants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    .line 94
    new-instance v0, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;-><init>(ILedu/umich/PowerTutor/components/CPU$CpuStateKeeper;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/CPU;->cpuState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/components/CPU;->uidLinks:Landroid/util/SparseArray;

    .line 97
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    .line 98
    return-void
.end method

.method private predictAppUidState(Ledu/umich/PowerTutor/components/CPU$CpuData;DDD)V
    .locals 15
    .parameter "uidData"
    .parameter "usrPerc"
    .parameter "sysPerc"
    .parameter "freq"

    .prologue
    .line 206
    iget-object v0, p0, Ledu/umich/PowerTutor/components/CPU;->constants:Ledu/umich/PowerTutor/phone/PhoneConstants;

    invoke-interface {v0}, Ledu/umich/PowerTutor/phone/PhoneConstants;->cpuFreqs()[D

    move-result-object v7

    .line 207
    .local v7, freqs:[D
    add-double v0, p2, p4

    const-wide v2, 0x3eb0c6f7a0b5ed8dL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    aget-wide v5, v7, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    move-wide/from16 v3, p2

    invoke-virtual/range {v0 .. v6}, Ledu/umich/PowerTutor/components/CPU$CpuData;->init(DDD)V

    .line 228
    :goto_0
    return-void

    .line 214
    :cond_0
    const/4 v9, 0x0

    .line 215
    .local v9, lo:I
    array-length v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 216
    .local v8, hi:I
    add-double v13, p4, p2

    .line 217
    .local v13, perc:D
    :goto_1
    if-lt v9, v8, :cond_1

    .line 226
    mul-double v0, p4, p6

    aget-wide v2, v7, v9

    div-double v1, v0, v2

    mul-double v3, p2, p6

    aget-wide v5, v7, v9

    div-double/2addr v3, v5

    .line 227
    aget-wide v5, v7, v9

    move-object/from16 v0, p1

    .line 226
    invoke-virtual/range {v0 .. v6}, Ledu/umich/PowerTutor/components/CPU$CpuData;->init(DDD)V

    goto :goto_0

    .line 218
    :cond_1
    add-int v0, v9, v8

    div-int/lit8 v10, v0, 0x2

    .line 219
    .local v10, mid:I
    mul-double v0, v13, p6

    aget-wide v2, v7, v10

    div-double v11, v0, v2

    .line 220
    .local v11, nperc:D
    const-wide v0, 0x4051800000000000L

    cmpg-double v0, v11, v0

    if-gez v0, :cond_2

    .line 221
    move v8, v10

    goto :goto_1

    .line 223
    :cond_2
    add-int/lit8 v9, v10, 0x1

    goto :goto_1
.end method

.method private readCpuFreq(Ledu/umich/PowerTutor/util/SystemInfo;)D
    .locals 10
    .parameter "sysInfo"

    .prologue
    const-wide/high16 v6, -0x4010

    .line 329
    .line 330
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    .line 329
    invoke-virtual {p1, v8}, Ledu/umich/PowerTutor/util/SystemInfo;->readLongFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 331
    .local v0, cpuFreqKhz:J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 332
    long-to-double v6, v0

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    .line 356
    :goto_0
    return-wide v6

    .line 337
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v8, "/proc/cpuinfo"

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .local v3, fstream:Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v8, 0x1f4

    invoke-direct {v4, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 345
    .local v4, in:Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 355
    .end local v5           #line:Ljava/lang/String;
    :goto_1
    const-string v8, "CPU"

    const-string v9, "Failed to read cpu frequency"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v3           #fstream:Ljava/io/FileReader;
    .end local v4           #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 339
    .local v2, e:Ljava/io/FileNotFoundException;
    const-string v8, "CPU"

    const-string v9, "Could not read cpu frequency file"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #fstream:Ljava/io/FileReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    .restart local v5       #line:Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v8, "BogoMIPS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 347
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[ :]+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v6

    goto :goto_0

    .line 352
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1

    .line 350
    :catch_2
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public calculateIteration(J)Ledu/umich/PowerTutor/service/IterationData;
    .locals 35
    .parameter "iteration"

    .prologue
    .line 102
    invoke-static {}, Ledu/umich/PowerTutor/service/IterationData;->obtain()Ledu/umich/PowerTutor/service/IterationData;

    move-result-object v32

    .line 104
    .local v32, result:Ledu/umich/PowerTutor/service/IterationData;
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v33

    .line 105
    .local v33, sysInfo:Ledu/umich/PowerTutor/util/SystemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ledu/umich/PowerTutor/components/CPU;->readCpuFreq(Ledu/umich/PowerTutor/util/SystemInfo;)D

    move-result-wide v15

    .line 106
    .local v15, freq:D
    const-wide/16 v11, 0x0

    cmpg-double v3, v15, v11

    if-gez v3, :cond_1

    .line 107
    const-string v3, "CPU"

    const-string v11, "Failed to read cpu frequency"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-object v32

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ledu/umich/PowerTutor/util/SystemInfo;->getUsrSysTotalTime([J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 112
    const-string v3, "CPU"

    const-string v11, "Failed to read cpu times"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    const/4 v11, 0x0

    aget-wide v4, v3, v11

    .line 117
    .local v4, usrTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    const/4 v11, 0x1

    aget-wide v6, v3, v11

    .line 118
    .local v6, sysTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    const/4 v11, 0x2

    aget-wide v8, v3, v11

    .line 120
    .local v8, totalTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->cpuState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    invoke-virtual {v3}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->isInitialized()Z

    move-result v28

    .line 121
    .local v28, init:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->cpuState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    move-wide/from16 v10, p1

    invoke-virtual/range {v3 .. v11}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->updateState(JJJJ)V

    .line 123
    if-eqz v28, :cond_3

    .line 124
    invoke-static {}, Ledu/umich/PowerTutor/components/CPU$CpuData;->obtain()Ledu/umich/PowerTutor/components/CPU$CpuData;

    move-result-object v10

    .line 125
    .local v10, data:Ledu/umich/PowerTutor/components/CPU$CpuData;
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->cpuState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    invoke-virtual {v3}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getUsrPerc()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->cpuState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    invoke-virtual {v3}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getSysPerc()D

    move-result-wide v13

    invoke-virtual/range {v10 .. v16}, Ledu/umich/PowerTutor/components/CPU$CpuData;->init(DDD)V

    .line 126
    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ledu/umich/PowerTutor/service/IterationData;->setPowerData(Ledu/umich/PowerTutor/service/PowerData;)V

    .line 129
    .end local v10           #data:Ledu/umich/PowerTutor/components/CPU$CpuData;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->uidLinks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->pids:[I

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ledu/umich/PowerTutor/util/SystemInfo;->getPids([I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->pids:[I

    .line 131
    const/16 v31, 0x0

    .line 132
    .local v31, pidInd:I
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->pids:[I

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/CPU;->pids:[I

    array-length v12, v11

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v12, :cond_5

    .line 178
    :cond_4
    const/16 v26, 0x0

    .local v26, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v26

    if-lt v0, v3, :cond_b

    .line 185
    const/16 v26, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->uidLinks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->uidLinks:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v34

    .line 187
    .local v34, uid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->uidLinks:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    .line 189
    .local v29, linkState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    invoke-static {}, Ledu/umich/PowerTutor/components/CPU$CpuData;->obtain()Ledu/umich/PowerTutor/components/CPU$CpuData;

    move-result-object v19

    .line 190
    .local v19, uidData:Ledu/umich/PowerTutor/components/CPU$CpuData;
    invoke-virtual/range {v29 .. v29}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getUsrPerc()D

    move-result-wide v20

    .line 191
    invoke-virtual/range {v29 .. v29}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getSysPerc()D

    move-result-wide v22

    move-object/from16 v18, p0

    move-wide/from16 v24, v15

    .line 190
    invoke-direct/range {v18 .. v25}, Ledu/umich/PowerTutor/components/CPU;->predictAppUidState(Ledu/umich/PowerTutor/components/CPU$CpuData;DDD)V

    .line 192
    move-object/from16 v0, v32

    move/from16 v1, v34

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ledu/umich/PowerTutor/service/IterationData;->addUidPowerData(ILedu/umich/PowerTutor/service/PowerData;)V

    .line 185
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 132
    .end local v19           #uidData:Ledu/umich/PowerTutor/components/CPU$CpuData;
    .end local v26           #i:I
    .end local v29           #linkState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    .end local v34           #uid:I
    :cond_5
    aget v30, v11, v3

    .line 133
    .local v30, pid:I
    if-ltz v30, :cond_4

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    move/from16 v0, v31

    if-ge v0, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move/from16 v0, v30

    if-ne v13, v0, :cond_8

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    move/from16 v0, v31

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    .line 150
    .local v17, pidState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    :goto_4
    add-int/lit8 v31, v31, 0x1

    .line 152
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->isStale(J)Z

    move-result v13

    if-nez v13, :cond_9

    .line 156
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v8, v9}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->updateIteration(JJ)V

    .line 169
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->uidLinks:Landroid/util/SparseArray;

    invoke-virtual/range {v17 .. v17}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    .line 170
    .restart local v29       #linkState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    if-nez v29, :cond_a

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->uidLinks:Landroid/util/SparseArray;

    invoke-virtual/range {v17 .. v17}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->getUid()I

    move-result v14

    move-object/from16 v0, v17

    invoke-virtual {v13, v14, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    .end local v17           #pidState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    .end local v29           #linkState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 141
    :cond_8
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidForPid(I)I

    move-result v34

    .line 142
    .restart local v34       #uid:I
    if-ltz v34, :cond_7

    .line 143
    new-instance v17, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    const/4 v13, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-direct {v0, v1, v13}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;-><init>(ILedu/umich/PowerTutor/components/CPU$CpuStateKeeper;)V

    .line 144
    .restart local v17       #pidState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    move/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 157
    .end local v34           #uid:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Ledu/umich/PowerTutor/util/SystemInfo;->getPidUsrSysTime(I[J)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 158
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    const/4 v14, 0x0

    aget-wide v4, v13, v14

    .line 159
    move-object/from16 v0, p0

    iget-object v13, v0, Ledu/umich/PowerTutor/components/CPU;->statsBuf:[J

    const/4 v14, 0x1

    aget-wide v6, v13, v14

    .line 161
    invoke-virtual/range {v17 .. v17}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->isInitialized()Z

    move-result v28

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move-wide/from16 v24, p1

    .line 162
    invoke-virtual/range {v17 .. v25}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->updateState(JJJJ)V

    .line 164
    if-nez v28, :cond_6

    goto :goto_5

    .line 173
    .restart local v29       #linkState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    :cond_a
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->absorb(Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;)V

    goto :goto_5

    .line 179
    .end local v17           #pidState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    .end local v29           #linkState:Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;
    .end local v30           #pid:I
    .restart local v26       #i:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ledu/umich/PowerTutor/components/CPU$CpuStateKeeper;->isAlive(J)Z

    move-result v3

    if-nez v3, :cond_c

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v11, v0, Ledu/umich/PowerTutor/components/CPU;->pidStates:Landroid/util/SparseArray;

    add-int/lit8 v27, v26, -0x1

    .end local v26           #i:I
    .local v27, i:I
    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->remove(I)V

    move/from16 v26, v27

    .line 178
    .end local v27           #i:I
    .restart local v26       #i:I
    :cond_c
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, "CPU"

    return-object v0
.end method

.method public hasUidInformation()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method
