.class public final Lccc71/utils/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Class;

.field private c:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v6, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    .line 22
    iput-object v6, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    .line 24
    iput-object v6, p0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    .line 30
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 32
    const-string v0, "com.android.internal.os.BatteryStatsImpl"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    .line 36
    const-string v0, "android.os.ServiceManager"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 41
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 44
    const-string v3, "getService"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 47
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 48
    const/4 v4, 0x0

    const-string v5, "batteryinfo"

    aput-object v5, v3, v4

    .line 50
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 56
    const-string v2, "com.android.internal.app.IBatteryStats$Stub"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 60
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 61
    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    .line 64
    const-string v4, "asInterface"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 67
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 68
    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 70
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    const-string v2, "com.android.internal.app.IBatteryStats"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 77
    const-string v3, "getStatistics"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 78
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 81
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    const-string v0, "com.android.internal.os.BatteryStatsImpl"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    const-string v1, "CREATOR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    .line 92
    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    const-string v0, "battery_widget_monitor"

    const-string v1, "IAE in constructor!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object v6, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    const-string v0, "battery_widget_monitor"

    const-string v1, "CNE in constructor!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object v6, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    goto :goto_0

    .line 104
    :catch_2
    move-exception v0

    .line 106
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "E in constructor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput-object v6, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 341
    :try_start_0
    iget-object v0, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    const-string v1, "getUidStats"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iput-object v0, p0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 353
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    throw v0

    .line 351
    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    goto :goto_0
.end method


# virtual methods
.method public final a(JI)Ljava/lang/Long;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 117
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 118
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 119
    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 122
    iget-object v1, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    const-string v2, "computeBatteryRealtime"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 126
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 128
    iget-object v2, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    const-string v1, "battery_widget_monitor"

    const-string v2, "E in computeBatteryRealtime!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 498
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-direct/range {p0 .. p0}, Lccc71/utils/b/a;->a()V

    .line 501
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 505
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 506
    const-string v2, "com.android.internal.os.BatteryStatsImpl$Uid"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 507
    const-string v3, "getProcessStats"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 508
    const-string v3, "getUid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 510
    const-string v2, "com.android.internal.os.BatteryStatsImpl$Uid$Proc"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 511
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 512
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 513
    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/Object;

    .line 514
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v14, v3

    .line 515
    const-string v3, "getUserTime"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 516
    const-string v3, "getSystemTime"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 517
    const-string v3, "getStarts"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 519
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 520
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    move/from16 v0, v18

    if-lt v10, v0, :cond_1

    .line 554
    :cond_0
    :goto_1
    return-object v11

    .line 522
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 523
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v13, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 525
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v12, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 527
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 529
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 520
    :cond_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    .line 529
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v9, v0

    .line 531
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 533
    invoke-virtual {v15, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    move-object v3, v0

    .line 534
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Long;

    move-object v5, v0

    .line 535
    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    .line 537
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v1, v1, v20

    const-wide/16 v20, 0x64

    cmp-long v1, v1, v20

    if-ltz v1, :cond_2

    .line 539
    new-instance v1, Lccc71/utils/b/b;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lccc71/utils/b/b;-><init>(Ljava/lang/String;JJI)V

    .line 540
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lccc71/utils/b/b;->a(I)V

    .line 541
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lccc71/utils/b/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 543
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 549
    :catch_0
    move-exception v1

    .line 551
    const-string v2, "battery_widget_monitor"

    const-string v3, "Failed to read process stats"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Context;III)Ljava/util/ArrayList;
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-direct/range {p0 .. p0}, Lccc71/utils/b/a;->a()V

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v2, v3, v1}, Lccc71/utils/b/a;->a(JI)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 364
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v2, v3, v1}, Lccc71/utils/b/a;->b(JI)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 365
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v11, v12, v1}, Lccc71/utils/b/a;->c(JI)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 369
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v19

    .line 371
    const-string v2, "com.android.internal.os.BatteryStatsImpl$Uid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v21

    .line 373
    const/4 v2, 0x0

    move v15, v2

    :goto_0
    move/from16 v0, v21

    if-lt v15, v0, :cond_1

    .line 492
    :cond_0
    :goto_1
    return-object v16

    .line 376
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/utils/b/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 379
    const-string v2, "getWakelockStats"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 382
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 384
    const-string v4, "getUid"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 385
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v10, v0

    .line 387
    const-wide/16 v5, 0x0

    .line 388
    const/4 v9, 0x0

    .line 391
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_0

    .line 391
    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 394
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 397
    const-string v4, "com.android.internal.os.BatteryStatsImpl$Uid$Wakelock"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 401
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    .line 402
    const/4 v8, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v7, v8

    .line 404
    const-string v8, "getWakeTime"

    invoke-virtual {v4, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 408
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 414
    const/4 v8, 0x0

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v23, v7, v8

    .line 417
    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 418
    if-eqz v4, :cond_3

    .line 421
    const-string v2, "com.android.internal.os.BatteryStatsImpl$Timer"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 425
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 426
    const/4 v8, 0x0

    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v23, v2, v8

    .line 427
    const/4 v8, 0x1

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v2, v8

    .line 429
    const-string v8, "getTotalTimeLocked"

    invoke-virtual {v7, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 432
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 433
    const/16 v23, 0x0

    new-instance v24, Ljava/lang/Long;

    move-object/from16 v0, v24

    invoke-direct {v0, v11, v12}, Ljava/lang/Long;-><init>(J)V

    aput-object v24, v8, v23

    .line 434
    const/16 v23, 0x1

    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v0, v24

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v24, v8, v23

    .line 436
    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 438
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    add-long v5, v5, v23

    .line 442
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 443
    const/4 v8, 0x0

    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v23, v2, v8

    .line 445
    const-string v8, "getCountLocked"

    invoke-virtual {v7, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 448
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 449
    const/4 v8, 0x0

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v23, v7, v8

    .line 451
    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 453
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v9, v2

    .line 461
    :cond_3
    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 463
    const-wide/16 v7, 0x0

    .line 464
    packed-switch p4, :pswitch_data_0

    .line 477
    :goto_3
    new-instance v2, Lccc71/utils/b/f;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide/16 v23, 0x3e8

    div-long v7, v7, v23

    move/from16 v3, p2

    invoke-direct/range {v2 .. v9}, Lccc71/utils/b/f;-><init>(ILjava/lang/String;JJI)V

    .line 480
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lccc71/utils/b/f;->a(I)V

    .line 481
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 487
    :catch_0
    move-exception v2

    .line 489
    const-string v3, "battery_widget_monitor"

    const-string v4, "Exception running getWakelockStats()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_0
    move-wide v7, v11

    .line 468
    goto :goto_3

    :pswitch_1
    move-wide v7, v13

    .line 471
    goto :goto_3

    .line 473
    :pswitch_2
    sub-long v7, v13, v17

    goto :goto_3

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(JI)Ljava/lang/Long;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 169
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 173
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 174
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 175
    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 178
    iget-object v1, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    const-string v2, "computeBatteryUptime"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 180
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 182
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 184
    iget-object v2, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "battery_widget_monitor"

    const-string v2, "E in computeBatteryUptime!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public final c(JI)Ljava/lang/Long;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 197
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 201
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 202
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 203
    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 206
    iget-object v1, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    const-string v2, "getScreenOnTime"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 209
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 210
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 212
    iget-object v2, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 216
    const-string v1, "battery_widget_monitor"

    const-string v2, "E in getScreenOnTime!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public final d(JI)Ljava/lang/Long;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 253
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 257
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 258
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 259
    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 262
    iget-object v1, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    const-string v2, "getWifiOnTime"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 265
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 266
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 268
    iget-object v2, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    const-string v1, "battery_widget_monitor"

    const-string v2, "E in getWifiOnTime!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public final e(JI)Ljava/lang/Long;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 281
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 285
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 286
    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 287
    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 290
    iget-object v1, p0, Lccc71/utils/b/a;->b:Ljava/lang/Class;

    const-string v2, "getBluetoothOnTime"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 292
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 293
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 294
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 296
    iget-object v2, p0, Lccc71/utils/b/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    :goto_0
    return-object v0

    .line 298
    :catch_0
    move-exception v0

    throw v0

    .line 302
    :catch_1
    move-exception v0

    .line 304
    const-string v1, "battery_widget_monitor"

    const-string v2, "E in getBluetoothOnTime!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method
