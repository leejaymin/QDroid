.class public Lcom/kms/kmsshared/KMSApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Law;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static A:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

.field public static b:Landroid/content/Context;

.field public static c:Lcom/kavsdk/antivirus/AvObjectScanner;

.field public static d:Lcom/kavsdk/antivirus/AvFsMonitor;

.field public static e:Lfy;

.field private static k:LbQ;

.field private static v:Z

.field private static w:Landroid/net/ConnectivityManager;

.field private static y:Ljava/lang/Object;


# instance fields
.field public a:Lgv;

.field private volatile f:Lcom/kms/kmsdaemon/KMSDaemon;

.field private g:Lbe;

.field private h:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private i:Ljava/io/File;

.field private j:Ljava/io/File;

.field private l:Ljava/util/Set;

.field private m:Ljava/lang/Integer;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:J

.field private r:LeC;

.field private s:Ljava/lang/Boolean;

.field private t:Lgz;

.field private u:Ljava/util/Set;

.field private final x:Landroid/content/BroadcastReceiver;

.field private z:LgN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->y:Ljava/lang/Object;

    .line 1131
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->A:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    .line 1271
    const-string v0, "eka_serialization"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1272
    const-string v0, "ksn_client"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1273
    const-string v0, "uds"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1274
    const-string v0, "url_reputation"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1275
    const-string v0, "statistics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1276
    const-string v0, "scan_engine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1277
    const-string v0, "signature_checker"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1278
    invoke-static {}, Lcom/kavsdk/shared/SdkUtils;->initCommonTasks()V

    .line 1279
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 112
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->l:Ljava/util/Set;

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->n:Z

    .line 126
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->s:Ljava/lang/Boolean;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    .line 131
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/Set;

    .line 140
    new-instance v0, LeR;

    invoke-direct {v0, p0}, LeR;-><init>(Lcom/kms/kmsshared/KMSApplication;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->x:Landroid/content/BroadcastReceiver;

    .line 799
    new-instance v0, LgN;

    invoke-direct {v0}, LgN;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    .line 1059
    return-void
.end method

.method public static synthetic B()LbQ;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->k:LbQ;

    return-object v0
.end method

.method private C()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 191
    const-string v1, "scan_tmp1"

    invoke-virtual {p0, v1, v0}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->i:Ljava/io/File;

    .line 192
    const-string v1, "scan_tmp2"

    invoke-virtual {p0, v1, v0}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->j:Ljava/io/File;

    .line 196
    :try_start_0
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const-string v2, "list.ksl"

    const v3, 0x7f06001b

    invoke-direct {p0, v1, v2, v3}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :try_start_1
    const-string v0, "bases"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 207
    const-string v1, "kms90.avc"

    const v2, 0x7f06000c

    invoke-direct {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 208
    const-string v1, "libkavsdk.so"

    const v2, 0x7f060019

    invoke-direct {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 209
    const-string v1, "libkavheur.kdl.so"

    const v2, 0x7f060018

    invoke-direct {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 210
    const-string v1, "mmheur.mft"

    const v2, 0x7f06001d

    invoke-direct {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 211
    const-string v1, "mmheur01.kdc"

    const v2, 0x7f06001e

    invoke-direct {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;Ljava/lang/String;I)V

    .line 212
    const-string v1, "android.kdc"

    const v2, 0x7f060003

    invoke-direct {p0, v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 198
    :catch_0
    move-exception v1

    .line 200
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 214
    :catch_1
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private D()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v1, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 359
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgh;

    .line 360
    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 361
    if-eq v6, v9, :cond_0

    .line 363
    invoke-virtual {v0, v10}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 364
    invoke-virtual {v0, v7}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 365
    invoke-virtual {v0, v9}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 366
    if-ne v6, v7, :cond_2

    move v2, v7

    .line 367
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_1
    invoke-static/range {v0 .. v6}, Lcom/kms/kmsshared/KMSApplication;->a(JIJIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/kms/kmsshared/KMSApplication;->a(ZLfC;)I

    .line 373
    :cond_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v8}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 374
    invoke-virtual {v0, v10}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 375
    if-eq v6, v9, :cond_1

    .line 378
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 379
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 380
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 381
    if-ne v6, v7, :cond_4

    move v2, v7

    .line 382
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_3
    invoke-static/range {v0 .. v6}, Lcom/kms/kmsshared/KMSApplication;->a(JIJIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kms/kmsshared/KMSApplication;->a(LfC;)V

    .line 387
    :cond_1
    return-void

    .line 366
    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    :cond_3
    move v6, v8

    .line 367
    goto :goto_1

    .line 381
    :cond_4
    const/4 v2, 0x7

    goto :goto_2

    :cond_5
    move v6, v8

    .line 382
    goto :goto_3
.end method

.method private E()V
    .locals 3

    .prologue
    .line 514
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 515
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 517
    new-instance v1, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;

    invoke-direct {v1}, Lcom/kms/kmsdaemon/ScreenStateChangedReceiver;-><init>()V

    .line 518
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 520
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 521
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 524
    return-void
.end method

.method private F()V
    .locals 0

    .prologue
    .line 533
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->H()V

    .line 534
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->G()V

    .line 535
    return-void
.end method

.method private static G()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 539
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 540
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 541
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 542
    :goto_0
    if-eqz v0, :cond_1

    .line 543
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v1}, Lfy;->b(I)V

    .line 548
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 541
    goto :goto_0

    .line 546
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v1}, Lfy;->a(I)V

    goto :goto_1
.end method

.method private static H()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 593
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgh;

    .line 594
    invoke-virtual {v0, v1}, Lgh;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 596
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v2}, Lfy;->b(I)V

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v2}, Lfy;->a(I)V

    goto :goto_0
.end method

.method private static I()Landroid/net/ConnectivityManager;
    .locals 3

    .prologue
    .line 691
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->w:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 692
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 693
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 694
    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->w:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 695
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->w:Landroid/net/ConnectivityManager;

    .line 697
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->w:Landroid/net/ConnectivityManager;

    return-object v0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static J()Z
    .locals 2

    .prologue
    .line 703
    const/4 v0, 0x0

    .line 704
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->I()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_0

    .line 706
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 707
    if-eqz v1, :cond_0

    .line 708
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    .line 710
    :cond_0
    return v0
.end method

.method private K()V
    .locals 2

    .prologue
    .line 1464
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LeY;

    invoke-direct {v1, p0}, LeY;-><init>(Lcom/kms/kmsshared/KMSApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1499
    return-void
.end method

.method public static a()LbQ;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->k:LbQ;

    return-object v0
.end method

.method public static a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 953
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    if-nez v0, :cond_0

    .line 966
    :goto_0
    return-void

    .line 956
    :cond_0
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 958
    :pswitch_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0, p1}, Lcom/kavsdk/antivirus/AvFsMonitor;->a(I)V

    goto :goto_0

    .line 962
    :pswitch_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0, p1}, Lcom/kavsdk/antivirus/AvFsMonitor;->b(I)V

    goto :goto_0

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(LfC;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 715
    const/16 v0, 0xf

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v3, 0x7f080211

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lfp;->a(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    .line 719
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lcom/kavsdk/antivirus/AvObjectScanner;

    const/4 v1, 0x2

    const-string v2, "/"

    invoke-static {v0, v1, v2}, LcA;->a(Lcom/kavsdk/antivirus/AvObjectScanner;ILjava/lang/String;)Ljava/lang/Thread;

    move-result-object v1

    .line 721
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 722
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v4}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 723
    const/16 v3, 0x8

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lga;->a(ILjava/lang/Object;)V

    .line 724
    invoke-virtual {v0}, Lga;->a()V

    .line 725
    if-eqz p0, :cond_0

    .line 727
    invoke-interface {p0, v1}, LfC;->onThreadCreated(Ljava/lang/Thread;)V

    .line 730
    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 233
    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 238
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 239
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    :try_start_2
    invoke-static {v3, v1}, Lah;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 244
    invoke-static {v1}, Lah;->a(Ljava/io/Closeable;)V

    .line 245
    invoke-static {v3}, Lah;->a(Ljava/io/Closeable;)V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lah;->a(Ljava/io/Closeable;)V

    .line 245
    invoke-static {v2}, Lah;->a(Ljava/io/Closeable;)V

    throw v0

    .line 244
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-direct {p0, v0, p3}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/io/File;I)V

    .line 229
    :cond_0
    return-void
.end method

.method private static a(JIJIZ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v1, 0x0

    .line 391
    .line 392
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return v1

    .line 407
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 409
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 410
    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 412
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 413
    invoke-virtual {v0, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 416
    if-nez p6, :cond_1

    .line 417
    const/4 v4, 0x7

    invoke-virtual {v3, v4, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 419
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 420
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 421
    invoke-virtual {v3, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 422
    invoke-virtual {v3, v6, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 423
    const/16 v0, 0xd

    invoke-virtual {v3, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 424
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    const/4 v0, 0x6

    neg-int v2, p2

    invoke-virtual {v3, v0, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 427
    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 429
    :cond_2
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 430
    invoke-virtual {v2, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    const/4 v0, 0x1

    .line 433
    const-string v1, "KMS-missing"

    const-string v2, "result is true"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 436
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 606
    invoke-static {}, Lgj;->f()I

    move-result v0

    .line 607
    if-lez v0, :cond_0

    .line 609
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lfy;->b(I)V

    .line 611
    :cond_0
    return-void
.end method

.method public static e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1545
    sput-boolean p0, Lcom/kms/kmsshared/KMSApplication;->v:Z

    .line 1546
    return-void
.end method

.method public static f()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 615
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgg;

    .line 616
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgg;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 618
    if-eqz v0, :cond_0

    .line 620
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v2}, Lfy;->b(I)V

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v2}, Lfy;->a(I)V

    goto :goto_0
.end method

.method private f(Z)V
    .locals 1
    .parameter

    .prologue
    .line 507
    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->n()V

    .line 511
    :cond_0
    invoke-static {}, Lcv;->a()Lcv;

    move-result-object v0

    invoke-virtual {v0}, Lcv;->c()V

    .line 512
    return-void
.end method

.method public static g()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 629
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgg;

    .line 630
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgg;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 631
    invoke-virtual {v0, v3}, Lgg;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 632
    add-int/lit8 v1, v1, 0x1

    .line 633
    if-le v1, v3, :cond_1

    .line 635
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lgg;->a(ILjava/lang/Object;)V

    .line 641
    :goto_0
    invoke-virtual {v0}, Lgg;->a()V

    .line 643
    :cond_0
    return-void

    .line 639
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lgg;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private g(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->b()V

    .line 1566
    :cond_0
    return-void
.end method

.method public static h()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 647
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgg;

    .line 648
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lgg;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 649
    invoke-virtual {v0, v4}, Lgg;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 650
    add-int/lit8 v1, v1, 0x1

    .line 651
    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 653
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lgg;->a(ILjava/lang/Object;)V

    .line 659
    :goto_0
    invoke-virtual {v0}, Lgg;->a()V

    .line 661
    :cond_0
    return-void

    .line 657
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lgg;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static k()V
    .locals 1

    .prologue
    .line 901
    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    if-eqz v0, :cond_0

    .line 902
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 906
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static l()V
    .locals 1

    .prologue
    .line 913
    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    if-eqz v0, :cond_0

    .line 914
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 918
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static p()V
    .locals 1

    .prologue
    .line 1266
    invoke-static {}, Lcv;->a()Lcv;

    move-result-object v0

    invoke-virtual {v0}, Lcv;->b()V

    .line 1267
    return-void
.end method

.method public static x()Z
    .locals 1

    .prologue
    .line 1540
    sget-boolean v0, Lcom/kms/kmsshared/KMSApplication;->v:Z

    return v0
.end method


# virtual methods
.method public final A()Lbk;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Lbe;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Lbe;

    invoke-virtual {v0}, Lbe;->b()Lbk;

    move-result-object v0

    .line 1578
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(LaN;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x3

    .line 812
    if-nez p2, :cond_1

    .line 816
    const/4 v0, -0x1

    .line 833
    :cond_0
    :goto_0
    return v0

    .line 818
    :cond_1
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    invoke-virtual {v1, v4}, LgN;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    const/4 v1, -0x2

    .line 821
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    invoke-virtual {v2, v4}, LgN;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 828
    :cond_2
    new-instance v1, LgL;

    invoke-direct {v1, p1, p2}, LgL;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 829
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v1, v0, v3}, LgN;->a(ILgM;ILjava/util/concurrent/atomic/AtomicBoolean;)LgP;

    move-result-object v0

    .line 830
    iget v0, v0, LgP;->a:I

    goto :goto_0
.end method

.method public final declared-synchronized a(ZLfC;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    .line 838
    monitor-enter p0

    .line 839
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 841
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, LgN;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const/4 v1, -0x2

    .line 844
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LgN;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 873
    :goto_0
    monitor-exit p0

    return v0

    .line 852
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 853
    new-instance v1, LgR;

    invoke-direct {v1, p1, v0}, LgR;-><init>(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 854
    iget-object v3, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5, v0}, LgN;->a(ILgM;ILjava/util/concurrent/atomic/AtomicBoolean;)LgP;

    move-result-object v3

    .line 855
    iget v1, v3, LgP;->a:I

    .line 856
    if-eq v1, v2, :cond_1

    if-nez p1, :cond_1

    .line 858
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v2, Lcom/kms/gui/KMSEnterCodeActivity;

    const/4 v4, 0x0

    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const v6, 0x7f080212

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Lfp;->a(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    .line 861
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgh;

    .line 862
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 863
    const/4 v4, 0x4

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lgh;->a(ILjava/lang/Object;)V

    .line 864
    invoke-virtual {v0}, Lgh;->a()V

    .line 866
    :cond_1
    if-eqz p2, :cond_2

    .line 868
    iget-object v0, v3, LgP;->b:Ljava/lang/Thread;

    invoke-interface {p2, v0}, LfC;->onThreadCreated(Ljava/lang/Thread;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final a(Lfa;)V
    .locals 2
    .parameter

    .prologue
    .line 937
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/Set;

    monitor-enter v1

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 940
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lgu;)V
    .locals 0
    .parameter

    .prologue
    .line 1459
    invoke-static {p1}, Lgv;->b(Lgu;)V

    .line 1460
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 586
    const/16 v0, 0x11

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:Lgv;

    invoke-virtual {v0, p1}, Lgv;->a(Ljava/lang/String;)V

    .line 589
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 551
    if-eqz p1, :cond_1

    .line 553
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v5}, Lfy;->a(I)V

    .line 554
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    invoke-static {v0}, Lgv;->b(Lgu;)V

    .line 557
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    invoke-virtual {v0}, Lgz;->a()V

    .line 558
    iput-object v6, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 564
    iget-wide v1, v0, Lgf;->i:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 569
    iget-wide v0, v0, Lgf;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 571
    new-instance v0, Lgz;

    invoke-direct {v0}, Lgz;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    .line 572
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    invoke-static {v0}, Lgv;->a(Lgu;)V

    .line 573
    invoke-virtual {p0, v6}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 577
    :cond_2
    new-instance v0, Lgz;

    invoke-direct {v0}, Lgz;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    .line 578
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    invoke-static {v0}, Lgv;->a(Lgu;)V

    .line 579
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, v5}, Lfy;->b(I)V

    goto :goto_0
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x1000

    const/4 v1, 0x1

    .line 1160
    invoke-static {}, Lfp;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1162
    invoke-static {p0}, LeO;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1164
    if-eqz p1, :cond_0

    .line 1166
    invoke-static {p0}, LeO;->f(Landroid/content/Context;)V

    .line 1168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1169
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1170
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1171
    invoke-static {p2}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1173
    const-string v1, "DeviceAdminLockScreenActivity.customtext"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->startActivity(Landroid/content/Intent;)V

    .line 1215
    :goto_0
    return-void

    .line 1179
    :cond_2
    invoke-static {p0}, Lfp;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1181
    invoke-static {p0, v1}, Lfp;->b(Landroid/content/Context;Z)V

    .line 1182
    invoke-virtual {p0, v1}, Lcom/kms/kmsshared/KMSApplication;->b(Z)V

    .line 1184
    :cond_3
    invoke-static {p0, v1}, Lfp;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1188
    invoke-static {}, Lfp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1190
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lfp;->a(Landroid/content/Context;Z)Z

    .line 1193
    :cond_4
    invoke-static {p0, v1}, Lfp;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1197
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1198
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v0

    .line 1203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1205
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1211
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/antitheft/gui/LockScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1212
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1213
    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 878
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    invoke-virtual {v0, v1}, LgN;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    invoke-virtual {v0, v1}, LgN;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    invoke-virtual {v0, v1, p1}, LgN;->a(ILandroid/os/Handler;)Z

    move-result v0

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1504
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1514
    const-class v1, Lcom/kms/gui/KMSMain;

    invoke-static {p0, v1, v4, v0}, Lfp;->a(Landroid/content/Context;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1515
    invoke-static {}, Lfp;->h()V

    .line 1516
    new-array v0, v4, [Ljava/io/Serializable;

    aput-object p1, v0, v5

    aput-object p2, v0, v2

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 1517
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->g()V

    .line 1521
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lge;

    .line 1522
    const-class v1, Lge;

    monitor-enter v1

    .line 1523
    :try_start_0
    invoke-virtual {v0}, Lge;->a()V

    .line 1524
    iget v0, v0, Lge;->c:I

    .line 1525
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1527
    if-ne v0, v2, :cond_1

    .line 1528
    invoke-static {v2, p1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    .line 1535
    :cond_0
    :goto_0
    return v2

    .line 1525
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1529
    :cond_1
    if-ne v0, v3, :cond_0

    .line 1530
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 251
    iget-object v8, p0, Lcom/kms/kmsshared/KMSApplication;->s:Ljava/lang/Boolean;

    monitor-enter v8

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 268
    :try_start_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/kms/kmsshared/KMSApplication;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/kms/kmsshared/KMSApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 275
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LfZ;->a(ILjava/lang/Object;)V

    .line 276
    invoke-virtual {v0}, LfZ;->a()V

    .line 278
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgh;

    .line 279
    invoke-virtual {v0}, Lgh;->a()V

    .line 280
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    .line 281
    invoke-virtual {v0}, Lga;->a()V

    .line 282
    invoke-static {}, Lcom/kavsdk/antivirus/BasesStorage;->a()Lcom/kavsdk/antivirus/BasesStorage;

    move-result-object v0

    const-string v2, "bases"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/kms/kmsshared/KMSApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kavsdk/antivirus/BasesStorage;->a(Ljava/io/File;)Z

    .line 284
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->E()V

    .line 285
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 287
    iget-boolean v0, v0, Lgd;->c:Z

    .line 289
    if-eqz v0, :cond_1

    .line 291
    const/4 v0, 0x0

    invoke-static {v0}, LdT;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :cond_1
    :try_start_3
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lge;

    .line 299
    if-eqz v0, :cond_6

    .line 300
    const-class v5, Lge;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 301
    :try_start_4
    invoke-virtual {v0}, Lge;->a()V

    .line 302
    iget v3, v0, Lge;->a:I

    .line 303
    iget v1, v0, Lge;->b:I

    .line 304
    iget v2, v0, Lge;->c:I

    .line 305
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v7, v3

    .line 307
    :goto_1
    :try_start_5
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    or-int/lit16 v1, v1, 0x800

    .line 312
    :cond_2
    new-instance v0, Lcom/kavsdk/antivirus/AvFsMonitor;

    iget-object v3, p0, Lcom/kms/kmsshared/KMSApplication;->j:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/kavsdk/antivirus/AvFsMonitor;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 315
    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0, p0}, Lcom/kavsdk/antivirus/AvFsMonitor;->a(Law;)V

    .line 316
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->K()V

    .line 317
    if-ne v7, v9, :cond_3

    .line 319
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->k()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 328
    :cond_3
    :goto_2
    :try_start_6
    new-instance v1, Lcom/kavsdk/antivirus/AvObjectScanner;

    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->d:Lcom/kavsdk/antivirus/AvFsMonitor;

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/AvFsMonitor;->getMonitorNativePtr()I

    move-result v0

    :goto_3
    invoke-direct {v1, v2, v0}, Lcom/kavsdk/antivirus/AvObjectScanner;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/kms/kmsshared/KMSApplication;->c:Lcom/kavsdk/antivirus/AvObjectScanner;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 336
    :try_start_7
    new-instance v0, LbQ;

    invoke-direct {v0}, LbQ;-><init>()V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->k:LbQ;

    .line 337
    new-instance v0, Lgv;

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:Lgv;

    .line 338
    new-instance v0, Lbe;

    invoke-direct {v0}, Lbe;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Lbe;

    .line 339
    new-instance v0, LeC;

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LeC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->r:LeC;

    .line 340
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->g:Lbe;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->r:LeC;

    invoke-virtual {v0, v1}, Lbe;->a(Lbl;)V

    .line 341
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfy;->b(I)V

    .line 342
    new-instance v0, LeN;

    invoke-direct {v0}, LeN;-><init>()V

    .line 343
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->F()V

    .line 344
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->f()V

    .line 345
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->D()V

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 348
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/kms/kmsshared/KMSApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 349
    if-nez v0, :cond_4

    .line 351
    const-string v0, "KMS"

    const-string v1, "KMSApplicaiton: can\'t bind KMSDaemon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->s:Ljava/lang/Boolean;

    .line 354
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 265
    :catch_0
    move-exception v0

    :try_start_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find application package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 305
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v5

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 321
    :catch_1
    move-exception v0

    .line 323
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    move v0, v6

    .line 328
    goto :goto_3

    .line 333
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t init antivirus"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_6
    move v2, v6

    move v7, v1

    move v1, v6

    goto/16 :goto_1
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 888
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    invoke-virtual {v0, v1}, LgN;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    invoke-virtual {v0, v1, p1}, LgN;->b(ILandroid/os/Handler;)V

    .line 892
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    if-eqz v0, :cond_0

    .line 1552
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0, p1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(Ljava/lang/String;)V

    .line 1554
    :cond_0
    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 970
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 971
    invoke-static {p1}, Lfp;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lfp;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x6

    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, LeT;

    invoke-direct {v2, p0, v0, p2}, LeT;-><init>(Lcom/kms/kmsshared/KMSApplication;LfZ;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_1
    monitor-exit p0

    return-void

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1134
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1135
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1139
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->A:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    if-nez v0, :cond_2

    .line 1140
    new-instance v0, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;-><init>(Lcom/kms/kmsshared/KMSApplication;Landroid/content/Context;)V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->A:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    goto :goto_0

    .line 1142
    :cond_2
    if-nez p1, :cond_0

    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->A:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    if-eqz v0, :cond_0

    .line 1143
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->A:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;->a()V

    .line 1144
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->A:Lcom/kms/kmsshared/KMSApplication$UsbConnectionListener;

    goto :goto_0
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 997
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 998
    invoke-static {p1}, Lfp;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lfp;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x20

    invoke-static {v1}, Lgj;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LeU;

    invoke-direct {v1, p0, p2}, LeU;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    :cond_1
    monitor-exit p0

    return-void

    .line 997
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1155
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(ZLjava/lang/String;)V

    .line 1156
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->F()V

    .line 529
    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 1021
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lfp;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lfp;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lgj;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1057
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1027
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LeV;

    invoke-direct {v1, p0, p2}, LeV;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Z)V
    .locals 9
    .parameter

    .prologue
    const-wide/32 v7, 0x2bf20

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 1361
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    monitor-enter v1

    .line 1363
    if-eqz p1, :cond_0

    .line 1365
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    .line 1366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->n:Z

    .line 1367
    monitor-exit v1

    .line 1389
    :goto_0
    return-void

    .line 1369
    :cond_0
    iget-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->n:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 1371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    sub-long/2addr v2, v4

    .line 1372
    cmp-long v0, v2, v7

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z

    if-nez v0, :cond_3

    .line 1374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z

    .line 1375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->p:Z

    .line 1383
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    .line 1384
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 1386
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    .line 1388
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->n:Z

    .line 1389
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1378
    :cond_3
    cmp-long v0, v2, v7

    if-gez v0, :cond_1

    .line 1380
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1229
    monitor-enter p0

    .line 1232
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LeW;

    invoke-direct {v1, p0, p1, p2}, LeW;-><init>(Lcom/kms/kmsshared/KMSApplication;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1246
    monitor-exit p0

    return-void

    .line 1229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1250
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lfp;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lfp;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 1254
    iget-boolean v0, v0, Lgf;->h:Z

    if-eqz v0, :cond_1

    .line 1256
    new-instance v0, Lgz;

    invoke-direct {v0}, Lgz;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    .line 1257
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->t:Lgz;

    invoke-static {v0}, Lgv;->a(Lgu;)V

    .line 1258
    invoke-virtual {p0, p2}, Lcom/kms/kmsshared/KMSApplication;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    :cond_1
    monitor-exit p0

    return-void

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 665
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 666
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 667
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 668
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 669
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 671
    const-class v5, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 673
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 675
    :goto_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgg;

    .line 676
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->t()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->J()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 677
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/kms/rateus/gui/KMSRateUsActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 679
    invoke-virtual {p0, v1}, Lcom/kms/kmsshared/KMSApplication;->startActivity(Landroid/content/Intent;)V

    .line 680
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lgg;->a(ILjava/lang/Object;)V

    .line 685
    :goto_1
    invoke-virtual {v0}, Lgg;->a()V

    .line 686
    return-void

    :cond_0
    move v1, v3

    .line 673
    goto :goto_0

    .line 683
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lgg;->a(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->z:LgN;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LgN;->c(I)Z

    .line 896
    return-void
.end method

.method public final m()Lcom/kms/kmsdaemon/KMSDaemon;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    return-object v0
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 1150
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/kmsshared/KMSApplication;->a(ZLjava/lang/String;)V

    .line 1151
    return-void
.end method

.method public final o()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->l:Ljava/util/Set;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 446
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 451
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 460
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 462
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v4, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v4}, Lfp;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kavsdk/shared/SdkUtils;->initializeEnv(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kavsdk/shared/SdkUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lfp;->a(Landroid/content/Context;)V

    .line 466
    invoke-static {p0, v1}, Leu;->a(Landroid/content/Context;Z)Z

    .line 467
    invoke-direct {p0}, Lcom/kms/kmsshared/KMSApplication;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t setup environment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t find application package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 473
    new-instance v0, Lfy;

    new-instance v3, LfB;

    invoke-direct {v3}, LfB;-><init>()V

    invoke-direct {v0, p0, v3}, Lfy;-><init>(Landroid/content/Context;Lfx;)V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    .line 475
    invoke-static {p0}, Lgj;->a(Lcom/kms/kmsshared/KMSApplication;)V

    .line 476
    new-instance v0, Lgl;

    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Lgl;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-static {v0}, Lgj;->a(Lgl;)V

    .line 478
    invoke-static {p0}, Leu;->a(Landroid/content/Context;)Z

    .line 481
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 482
    const-class v3, Lgd;

    monitor-enter v3

    .line 483
    :try_start_1
    invoke-virtual {v0}, Lgd;->a()V

    .line 484
    iget-boolean v4, v0, Lgd;->b:Z

    .line 485
    iget-boolean v5, v0, Lgd;->f:Z

    if-eqz v5, :cond_2

    iget v0, v0, Lgd;->s:I

    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v5}, LaE;->a(Landroid/content/Context;)I

    move-result v5

    if-ne v0, v5, :cond_2

    move v0, v1

    .line 486
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    invoke-direct {p0, v4}, Lcom/kms/kmsshared/KMSApplication;->f(Z)V

    .line 488
    if-eqz v0, :cond_1

    .line 490
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LeS;

    invoke-direct {v2, p0}, LeS;-><init>(Lcom/kms/kmsshared/KMSApplication;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 501
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 504
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 485
    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 735
    check-cast p2, Lcom/kms/kmsdaemon/KMSDaemon$Binder;

    .line 736
    invoke-virtual {p2}, Lcom/kms/kmsdaemon/KMSDaemon$Binder;->a()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    .line 737
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->a:Lgv;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v1}, Lcom/kms/kmsdaemon/KMSDaemon;->c()LfE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgv;->a(LfE;)V

    .line 738
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->r:LeC;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v1}, Lcom/kms/kmsdaemon/KMSDaemon;->c()LfE;

    move-result-object v1

    invoke-virtual {v0, v1}, LeC;->a(LfE;)V

    .line 739
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->a:Lgv;

    invoke-virtual {v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LfD;)V

    .line 740
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    new-instance v1, LeH;

    invoke-direct {v1}, LeH;-><init>()V

    invoke-virtual {v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LfD;)V

    .line 741
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->g:Lbe;

    invoke-virtual {v0, v1}, Lcom/kms/kmsdaemon/KMSDaemon;->a(LfD;)V

    .line 742
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->c()LfE;

    move-result-object v0

    invoke-virtual {v0}, LfE;->b()V

    .line 743
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lfd;

    invoke-direct {v1, p0}, Lfd;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 745
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfX;

    .line 747
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LfX;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 749
    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/kms/kmsshared/KMSApplication;->y()V

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/Set;

    monitor-enter v1

    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 755
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfa;

    .line 758
    invoke-interface {v0}, Lfa;->b()Z

    .line 759
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter

    .prologue
    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    .line 784
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/Set;

    monitor-enter v1

    .line 786
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 787
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 790
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->c()LfE;

    move-result-object v0

    invoke-virtual {v0}, LfE;->c()V

    .line 774
    :cond_0
    invoke-static {}, Lfp;->a()V

    .line 775
    invoke-static {}, Lgj;->d()V

    .line 776
    invoke-static {}, Lcom/kavsdk/shared/SdkUtils;->b()V

    .line 777
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 778
    return-void
.end method

.method public final q()V
    .locals 2

    .prologue
    .line 1331
    invoke-static {}, Lfp;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-static {p0}, LeO;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    :goto_0
    return-void

    .line 1338
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LeX;

    invoke-direct {v1, p0}, LeX;-><init>(Lcom/kms/kmsshared/KMSApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final r()V
    .locals 4

    .prologue
    .line 1394
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    monitor-enter v1

    .line 1396
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    .line 1397
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 1399
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->p:Z

    if-eqz v0, :cond_1

    .line 1403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z

    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->n:Z

    .line 1405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    .line 1407
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final s()Z
    .locals 4

    .prologue
    .line 1412
    iget-wide v0, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1414
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    sub-long/2addr v0, v2

    .line 1415
    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z

    .line 1417
    :cond_0
    iget-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z

    return v0

    .line 1415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    monitor-enter v1

    .line 1424
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->m:Ljava/lang/Integer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1425
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 1435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->p:Z

    .line 1436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z

    .line 1437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    .line 1438
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1284
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 1285
    new-instance v3, Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1286
    const-string v0, "--------- Stack trace ---------\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1287
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1291
    :cond_0
    const-string v0, "-------------------------------\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1295
    const-string v0, "--------- Cause ---------\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1296
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1297
    if-eqz v0, :cond_1

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1300
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1301
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1301
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1306
    :cond_1
    const-string v0, "-------------------------------\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1310
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stack.trace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1311
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1313
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1314
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1316
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1317
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1318
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->h:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1327
    return-void

    .line 1321
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 1442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->p:Z

    .line 1443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->o:Z

    .line 1444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kms/kmsshared/KMSApplication;->q:J

    .line 1445
    return-void
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 1449
    iget-boolean v0, p0, Lcom/kms/kmsshared/KMSApplication;->p:Z

    return v0
.end method

.method public final y()V
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/kms/kmsshared/KMSApplication;->f:Lcom/kms/kmsdaemon/KMSDaemon;

    invoke-virtual {v0}, Lcom/kms/kmsdaemon/KMSDaemon;->a()V

    .line 1559
    :cond_0
    return-void
.end method

.method public final z()V
    .locals 1

    .prologue
    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kms/kmsshared/KMSApplication;->g(Z)V

    .line 1573
    return-void
.end method
