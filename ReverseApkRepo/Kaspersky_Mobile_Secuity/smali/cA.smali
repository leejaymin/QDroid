.class public final LcA;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lao;


# static fields
.field private static B:Z

.field private static C:J

.field private static a:I

.field private static b:Lcom/kavsdk/antivirus/AvObjectScanner;

.field private static c:Ljava/util/Vector;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Z

.field private static g:Z

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:J

.field private static q:J

.field private static r:Z

.field private static s:LcA;

.field private static t:J

.field private static u:J

.field private static v:I

.field private static w:Z

.field private static x:Z


# instance fields
.field private A:Landroid/content/pm/ApplicationInfo;

.field private y:Landroid/os/PowerManager$WakeLock;

.field private z:Lga;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, LcA;->c:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lcom/kavsdk/antivirus/AvObjectScanner;ILjava/lang/String;)Ljava/lang/Thread;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    const-class v0, LcA;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, LcA;->a(Lcom/kavsdk/antivirus/AvObjectScanner;ILjava/lang/String;Z)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/kavsdk/antivirus/AvObjectScanner;ILjava/lang/String;Z)Ljava/lang/Thread;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    const-class v1, LcA;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, LcA;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 262
    :goto_0
    monitor-exit v1

    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, LcA;->B:Z

    .line 219
    const/4 v0, 0x1

    sput-boolean v0, LcA;->r:Z

    .line 220
    const/4 v0, 0x0

    sput-boolean v0, LcA;->g:Z

    .line 221
    const/4 v0, 0x0

    sput-boolean v0, LcA;->f:Z

    .line 223
    sput p1, LcA;->a:I

    .line 224
    sput-object p0, LcA;->b:Lcom/kavsdk/antivirus/AvObjectScanner;

    .line 225
    sput-object p2, LcA;->d:Ljava/lang/String;

    .line 226
    sput-boolean p3, LcA;->x:Z

    .line 227
    const/4 v0, 0x0

    sput v0, LcA;->e:I

    .line 228
    const/4 v0, 0x0

    sput v0, LcA;->h:I

    .line 229
    const/4 v0, 0x0

    sput v0, LcA;->i:I

    .line 230
    const/4 v0, 0x0

    sput v0, LcA;->j:I

    .line 231
    const/4 v0, 0x0

    sput v0, LcA;->k:I

    .line 232
    const/4 v0, 0x0

    sput v0, LcA;->l:I

    .line 233
    const-wide/16 v2, 0x0

    sput-wide v2, LcA;->t:J

    .line 234
    const/4 v0, 0x0

    sput v0, LcA;->m:I

    .line 235
    const/4 v0, 0x0

    sput v0, LcA;->n:I

    .line 236
    const/4 v0, 0x0

    sput v0, LcA;->o:I

    .line 237
    const/4 v0, 0x0

    sput-boolean v0, LcA;->w:Z

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 240
    sput-wide v2, LcA;->u:J

    sput-wide v2, LcA;->p:J

    .line 241
    sget-wide v2, LcA;->u:J

    sput-wide v2, LcA;->q:J

    .line 242
    new-instance v0, LcA;

    invoke-direct {v0}, LcA;-><init>()V

    sput-object v0, LcA;->s:LcA;

    .line 243
    sget-object v0, LcA;->b:Lcom/kavsdk/antivirus/AvObjectScanner;

    sget-object v2, LcA;->s:LcA;

    invoke-virtual {v0, v2}, Lcom/kavsdk/antivirus/AvObjectScanner;->a(Lao;)V

    .line 244
    sget-object v0, LcA;->s:LcA;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, LcA;->setDaemon(Z)V

    .line 245
    sget-object v0, LcA;->s:LcA;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, LcA;->setPriority(I)V

    .line 246
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 247
    sget-object v2, LcA;->s:LcA;

    const/4 v3, 0x1

    const-string v4, "KMSWakeLock"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v2, LcA;->y:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    :try_start_2
    sget-object v0, LcA;->s:LcA;

    iget-object v0, v0, LcA;->y:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :goto_1
    :try_start_3
    sget-object v2, LcA;->c:Ljava/util/Vector;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    :try_start_4
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 258
    invoke-interface {v0}, Lat;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 260
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 216
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 260
    :cond_1
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 261
    :try_start_8
    sget-object v0, LcA;->s:LcA;

    invoke-virtual {v0}, LcA;->start()V

    .line 262
    sget-object v0, LcA;->s:LcA;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0
.end method

.method public static a(I)V
    .locals 0
    .parameter

    .prologue
    .line 81
    sput p0, LcA;->v:I

    .line 82
    return-void
.end method

.method public static declared-synchronized a(Lat;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    const-class v1, LcA;

    monitor-enter v1

    :try_start_0
    sget-object v2, LcA;->c:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(LcA;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, LcA;->f(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-static {p0}, Lcom/kavsdk/antivirus/AvObjectScanner;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, LcA;->b:Lcom/kavsdk/antivirus/AvObjectScanner;

    invoke-virtual {v0, p0, p1, p2}, Lcom/kavsdk/antivirus/AvObjectScanner;->scanFolder(Ljava/lang/String;I[Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v0, LcA;->b:Lcom/kavsdk/antivirus/AvObjectScanner;

    invoke-virtual {v0, p0, p1}, Lcom/kavsdk/antivirus/AvObjectScanner;->scanFile(Ljava/lang/String;I)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 684
    iget-object v0, p0, LcA;->z:Lga;

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 685
    if-nez v0, :cond_1

    .line 687
    sput v1, LcA;->v:I

    .line 712
    :cond_0
    :goto_0
    sget v0, LcA;->v:I

    packed-switch v0, :pswitch_data_0

    .line 732
    :goto_1
    return-void

    .line 689
    :cond_1
    if-ne v0, v1, :cond_2

    .line 691
    sput v4, LcA;->v:I

    goto :goto_0

    .line 693
    :cond_2
    if-ne v0, v2, :cond_3

    .line 695
    sput v2, LcA;->v:I

    goto :goto_0

    .line 697
    :cond_3
    if-ne v0, v4, :cond_0

    sget-boolean v0, LcA;->w:Z

    if-nez v0, :cond_0

    .line 699
    sput v4, LcA;->v:I

    .line 700
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 701
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v3, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 702
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    const-string v2, "com.kms.useraction.info"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const-string v2, "com.kms.useraction.file"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const-string v2, "com.kms.useraction.type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 706
    const-string v2, "com.kms.useraction.mode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v2, "com.kms.useraction.launchedfrom"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 709
    invoke-static {}, LcA;->i()V

    .line 710
    invoke-static {}, LcA;->t()V

    goto :goto_0

    .line 717
    :pswitch_0
    invoke-static {p2}, LcA;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 719
    sget v0, LcA;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->j:I

    .line 720
    invoke-static {v4, p2}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 724
    :cond_4
    const/4 v0, 0x5

    invoke-static {v0, p2}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 728
    :pswitch_1
    sget v0, LcA;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->k:I

    .line 729
    const/4 v0, 0x4

    invoke-static {v0, p2}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_1

    .line 712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/util/List;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 295
    sget v0, LcA;->h:I

    invoke-static {v0}, LcA;->f(I)V

    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 297
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, LcA;->A:Landroid/content/pm/ApplicationInfo;

    .line 301
    iget-object v0, p0, LcA;->A:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0, p2, v3}, LcA;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 303
    sget-object v6, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->None:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    move-object v0, p0

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, LcA;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)I

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    sput-boolean p0, LcA;->w:Z

    .line 87
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, LcA;->r:Z

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 737
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    const/4 v0, 0x1

    .line 743
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(I)I
    .locals 0
    .parameter

    .prologue
    .line 39
    sput p0, LcA;->h:I

    return p0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    sput-boolean v0, LcA;->f:Z

    .line 114
    return-void
.end method

.method public static declared-synchronized b(Lat;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    const-class v1, LcA;

    monitor-enter v1

    :try_start_0
    sget-object v2, LcA;->c:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 108
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 749
    invoke-static {p2}, Lfp;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 750
    sget-object v2, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 751
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 752
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 755
    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 757
    :try_start_0
    invoke-static {v0, v1}, Lfw;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 766
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/kms/antivirus/gui/AvUserActionActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 767
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 768
    const-string v4, "com.kms.useraction.info"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const-string v4, "com.kms.useraction.file"

    iget-object v5, p0, LcA;->A:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v0, "com.kms.useraction.type"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 771
    const-string v0, "com.kms.useraction.mode"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    const-string v0, "com.kms.useraction.launchedfrom"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 774
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 776
    invoke-static {}, LcA;->i()V

    .line 777
    invoke-static {}, LcA;->t()V

    .line 778
    sget v0, LcA;->v:I

    packed-switch v0, :pswitch_data_0

    .line 785
    :goto_1
    return-void

    .line 761
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lfp;->a(Landroid/app/ActivityManager;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 783
    :pswitch_0
    invoke-static {v1}, Lfp;->e(Ljava/lang/String;)V

    .line 784
    sget v0, LcA;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->k:I

    goto :goto_1

    .line 778
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 118
    sget v0, LcA;->a:I

    return v0
.end method

.method static synthetic c(I)I
    .locals 1
    .parameter

    .prologue
    .line 39
    sget v0, LcA;->h:I

    add-int/2addr v0, p0

    sput v0, LcA;->h:I

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 123
    sget v0, LcA;->h:I

    return v0
.end method

.method private d(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 267
    const/4 v0, 0x1

    sput-boolean v0, LcA;->B:Z

    .line 268
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 269
    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 270
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 271
    const/4 v0, 0x0

    .line 274
    :try_start_0
    sget-object v4, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :goto_0
    if-eqz v0, :cond_3

    .line 278
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 279
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 282
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 283
    invoke-virtual {v1, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v4, :cond_1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v4, "/system"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 288
    :cond_2
    invoke-direct {p0, v2, p1}, LcA;->a(Ljava/util/List;I)V

    .line 290
    :cond_3
    sput-boolean v6, LcA;->B:Z

    .line 291
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 128
    sget v0, LcA;->e:I

    return v0
.end method

.method private e(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 309
    sput-boolean v7, LcA;->B:Z

    .line 310
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 311
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 314
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 315
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 320
    :try_start_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v5, "/system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 324
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sput v0, LcA;->h:I

    .line 332
    invoke-direct {p0, v3, p1}, LcA;->a(Ljava/util/List;I)V

    .line 333
    const/16 v0, 0x8

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/io/Serializable;

    sget-object v2, LcA;->d:Ljava/lang/String;

    aput-object v2, v1, v6

    sget v2, LcA;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    sget v3, LcA;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget v3, LcA;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget v3, LcA;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget v3, LcA;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 335
    sput-boolean v6, LcA;->B:Z

    .line 336
    return-void
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 133
    sget v0, LcA;->n:I

    return v0
.end method

.method private static f(I)V
    .locals 3
    .parameter

    .prologue
    .line 352
    sget-object v1, LcA;->c:Ljava/util/Vector;

    monitor-enter v1

    .line 354
    :try_start_0
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 356
    invoke-interface {v0, p0}, Lat;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
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

.method public static g()I
    .locals 1

    .prologue
    .line 138
    sget v0, LcA;->j:I

    return v0
.end method

.method public static h()I
    .locals 1

    .prologue
    .line 152
    sget v0, LcA;->m:I

    return v0
.end method

.method public static i()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    sput-boolean v0, LcA;->g:Z

    .line 158
    return-void
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, LcA;->g:Z

    return v0
.end method

.method public static k()V
    .locals 2

    .prologue
    .line 167
    sget-boolean v0, LcA;->r:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, LcA;->g:Z

    .line 170
    sget-object v1, LcA;->s:LcA;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, LcA;->s:LcA;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 173
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 179
    sget v0, LcA;->i:I

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3c

    const/16 v5, 0xa

    .line 188
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    sget-wide v1, LcA;->t:J

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    rem-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 193
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    sget-wide v1, LcA;->t:J

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    long-to-int v1, v1

    rem-int/lit8 v1, v1, 0x3c

    .line 196
    if-ge v1, v5, :cond_0

    .line 197
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 200
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    sget-wide v1, LcA;->t:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    rem-long/2addr v1, v6

    long-to-int v1, v1

    .line 202
    if-ge v1, v5, :cond_1

    .line 203
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()I
    .locals 1

    .prologue
    .line 39
    sget v0, LcA;->a:I

    return v0
.end method

.method static synthetic o()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, LcA;->x:Z

    return v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, LcA;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q()Lcom/kavsdk/antivirus/AvObjectScanner;
    .locals 1

    .prologue
    .line 39
    sget-object v0, LcA;->b:Lcom/kavsdk/antivirus/AvObjectScanner;

    return-object v0
.end method

.method static synthetic r()I
    .locals 1

    .prologue
    .line 39
    sget v0, LcA;->h:I

    return v0
.end method

.method private s()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 363
    new-instance v0, LcB;

    invoke-direct {v0, p0}, LcB;-><init>(LcA;)V

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 401
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 402
    return-void
.end method

.method private static t()V
    .locals 2

    .prologue
    .line 520
    sget-object v1, LcA;->s:LcA;

    monitor-enter v1

    .line 522
    :goto_0
    :try_start_0
    sget-boolean v0, LcA;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 526
    :try_start_1
    sget-object v0, LcA;->s:LcA;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    goto :goto_0

    .line 530
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 538
    sget-wide v2, LcA;->C:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 540
    sput-wide v0, LcA;->C:J

    .line 541
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continue scanning: event time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, LcA;->C:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_0
    invoke-static {}, LcA;->t()V

    .line 544
    packed-switch p1, :pswitch_data_0

    .line 672
    :cond_1
    :goto_0
    :pswitch_0
    sget-boolean v0, LcA;->f:Z

    if-eqz v0, :cond_a

    .line 674
    const/4 v0, 0x2

    .line 678
    :goto_1
    return v0

    .line 548
    :pswitch_1
    sget v0, LcA;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->n:I

    .line 549
    sget v0, LcA;->h:I

    if-eqz v0, :cond_1

    .line 551
    sget v0, LcA;->n:I

    mul-int/lit8 v0, v0, 0x64

    sget v1, LcA;->h:I

    div-int/2addr v0, v1

    .line 552
    sget v1, LcA;->o:I

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    .line 554
    sput v0, LcA;->o:I

    .line 555
    sget-object v1, LcA;->c:Ljava/util/Vector;

    monitor-enter v1

    .line 557
    :try_start_0
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 559
    sget v3, LcA;->n:I

    invoke-interface {v0, v3}, Lat;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 569
    :pswitch_2
    sget v0, LcA;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->m:I

    .line 570
    if-nez p5, :cond_3

    .line 571
    const/4 v0, 0x0

    invoke-static {v0, p3}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0, p5}, Lcom/kms/kmsshared/reports/Reports;->add(ILjava/lang/String;)V

    goto :goto_0

    .line 578
    :pswitch_3
    sget-boolean v0, LcA;->B:Z

    if-eqz v0, :cond_4

    .line 580
    invoke-direct {p0, p4, p3, p6}, LcA;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V

    goto :goto_0

    .line 584
    :cond_4
    invoke-direct {p0, p4, p3, p6}, LcA;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V

    goto :goto_0

    .line 590
    :pswitch_4
    packed-switch p2, :pswitch_data_1

    .line 607
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 608
    sget-wide v2, LcA;->p:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 610
    sput-wide v0, LcA;->p:J

    .line 611
    sget-object v1, LcA;->c:Ljava/util/Vector;

    monitor-enter v1

    .line 613
    :try_start_2
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 615
    sget v3, LcA;->e:I

    invoke-interface {v0, v3}, Lat;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 617
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 598
    :pswitch_5
    sget v0, LcA;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->k:I

    goto :goto_3

    .line 604
    :pswitch_6
    sget v0, LcA;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->e:I

    goto :goto_3

    .line 617
    :cond_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 624
    :pswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 625
    sget-wide v2, LcA;->q:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 627
    sput-wide v0, LcA;->q:J

    .line 628
    sget v0, LcA;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LcA;->A:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 632
    :cond_6
    sget-object v1, LcA;->c:Ljava/util/Vector;

    monitor-enter v1

    .line 634
    :try_start_4
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 636
    invoke-interface {v0, p5}, Lat;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    .line 638
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    .line 644
    :pswitch_8
    sget v0, LcA;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LcA;->i:I

    .line 645
    const/4 v0, 0x3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 646
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->g()V

    .line 647
    invoke-static {}, Lfp;->h()V

    .line 648
    sget-object v1, LcA;->c:Ljava/util/Vector;

    monitor-enter v1

    .line 650
    :try_start_6
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    .line 654
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_8
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 656
    iget-object v0, p0, LcA;->z:Lga;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 658
    if-nez v0, :cond_1

    .line 660
    sget-boolean v0, LcA;->B:Z

    if-eqz v0, :cond_9

    .line 662
    invoke-direct {p0, p4, p3, p6}, LcA;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V

    goto/16 :goto_0

    .line 666
    :cond_9
    invoke-direct {p0, p4, p3, p6}, LcA;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)V

    goto/16 :goto_0

    .line 678
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 590
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final run()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x4

    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 410
    sget-object v5, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    .line 411
    sget-object v0, LcA;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/kavsdk/antivirus/AvObjectScanner;->isDirectory(Ljava/lang/String;)Z

    move-result v0

    .line 412
    sget v1, LcA;->a:I

    if-eq v1, v9, :cond_0

    .line 416
    if-eqz v0, :cond_3

    .line 418
    invoke-direct {p0}, LcA;->s()V

    .line 424
    :cond_0
    :goto_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v4}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    iput-object v0, p0, LcA;->z:Lga;

    .line 426
    iget-object v0, p0, LcA;->z:Lga;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 427
    iget-object v0, p0, LcA;->z:Lga;

    invoke-virtual {v0, v4}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 429
    if-eqz v1, :cond_d

    move v0, v2

    .line 433
    :goto_1
    if-ne v6, v8, :cond_c

    .line 435
    or-int/lit16 v0, v0, 0x80

    .line 436
    if-eqz v1, :cond_c

    .line 438
    or-int/lit16 v0, v0, 0x100

    move v1, v0

    .line 441
    :goto_2
    iget-object v0, p0, LcA;->z:Lga;

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    or-int/lit16 v1, v1, 0x800

    .line 445
    :cond_1
    iget-object v0, p0, LcA;->z:Lga;

    invoke-virtual {v0, v8}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 447
    if-eqz v0, :cond_4

    .line 449
    const/4 v0, 0x5

    .line 455
    :goto_3
    sget-object v6, LcA;->b:Lcom/kavsdk/antivirus/AvObjectScanner;

    invoke-virtual {v6, v1, v4}, Lcom/kavsdk/antivirus/AvObjectScanner;->setScanningMode(II)V

    .line 456
    sget v1, LcA;->a:I

    if-ne v1, v9, :cond_5

    .line 458
    invoke-direct {p0, v0}, LcA;->e(I)V

    .line 486
    :cond_2
    :goto_4
    sget-object v1, LcA;->c:Ljava/util/Vector;

    monitor-enter v1

    .line 488
    :try_start_0
    sget-object v0, LcA;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat;

    .line 490
    invoke-interface {v0}, Lat;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 422
    :cond_3
    invoke-static {v8}, LcA;->f(I)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 453
    goto :goto_3

    .line 460
    :cond_5
    sget v1, LcA;->a:I

    if-ne v1, v2, :cond_6

    .line 462
    invoke-direct {p0, v0}, LcA;->d(I)V

    .line 466
    :try_start_1
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 468
    :goto_6
    if-eqz v1, :cond_2

    .line 470
    new-instance v6, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 471
    sget-object v1, LcA;->d:Ljava/lang/String;

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    invoke-static {v1, v0, v7}, LcA;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v1, v3

    goto :goto_6

    .line 476
    :cond_6
    sget-boolean v1, LcA;->x:Z

    if-eqz v1, :cond_7

    .line 478
    sget-object v1, LcA;->d:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1, v0, v6}, LcA;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_4

    .line 482
    :cond_7
    sget-object v1, LcA;->d:Ljava/lang/String;

    invoke-static {v1, v0, v3}, LcA;->a(Ljava/lang/String;I[Ljava/lang/String;)V

    goto :goto_4

    .line 492
    :cond_8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    sget v0, LcA;->a:I

    if-eq v0, v9, :cond_9

    .line 494
    const/4 v0, 0x7

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/io/Serializable;

    sget-object v6, LcA;->d:Ljava/lang/String;

    aput-object v6, v1, v4

    sget v6, LcA;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v8

    sget v6, LcA;->i:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x3

    sget v6, LcA;->m:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget v6, LcA;->j:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x6

    sget v6, LcA;->k:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 497
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v6, LcA;->u:J

    sub-long/2addr v0, v6

    sput-wide v0, LcA;->t:J

    .line 498
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-class v2, Lcom/kms/antivirus/gui/AvScanResultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 500
    const-string v1, "SCAN_MODE"

    sget v2, LcA;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    sget-boolean v1, LcA;->f:Z

    if-eqz v1, :cond_a

    .line 503
    const-string v1, "com_kms_scan_result_cancelled"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 505
    :cond_a
    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 507
    :try_start_3
    iget-object v0, p0, LcA;->y:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b

    iget-object v0, p0, LcA;->y:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 509
    iget-object v0, p0, LcA;->y:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 514
    :cond_b
    :goto_7
    sput-boolean v4, LcA;->r:Z

    .line 515
    sput-object v3, LcA;->s:LcA;

    .line 516
    return-void

    .line 511
    :catch_1
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_c
    move v1, v0

    goto/16 :goto_2

    :cond_d
    move v0, v4

    goto/16 :goto_1
.end method
