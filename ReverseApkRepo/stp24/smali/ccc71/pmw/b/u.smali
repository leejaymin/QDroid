.class public final Lccc71/pmw/b/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:J

.field public static g:J

.field public static h:J

.field public static i:J

.field public static j:[Ljava/lang/String;

.field public static l:Z

.field public static m:Z

.field private static o:Z

.field private static p:Ljava/lang/String;

.field private static s:Landroid/app/ProgressDialog;

.field private static t:Ljava/util/HashMap;


# instance fields
.field public a:J

.field public b:J

.field public c:[Ljava/lang/String;

.field public d:[Ljava/lang/String;

.field public e:[Ljava/lang/Long;

.field public k:Ljava/lang/String;

.field private n:Lccc71/pmw/b/l;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Process;

.field private u:J

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 34
    sput-boolean v3, Lccc71/pmw/b/u;->o:Z

    .line 35
    sput-object v4, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    .line 42
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    .line 43
    const-string v1, "/mnt/sdcard-ext"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 44
    const-string v2, "/mnt/sd-card-ext"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 45
    const-string v2, "/mnt/sd-ext"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 46
    const-string v2, "/sd-ext"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 47
    const-string v2, "/mnt/external_sd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 48
    const-string v2, "/Removable/MicroSD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 49
    const-string v2, "/Removable/SD"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 50
    const-string v2, "/mnt/sdcard/external_sd"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 51
    const-string v2, "/mnt/sdcard/ext_sd"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 52
    const-string v2, "/mnt/sdcard2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 53
    const-string v2, "/mnt/extSdCard"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 54
    const-string v2, "/mnt/emmc"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 55
    const-string v2, "/sdcard/external_sd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 56
    const-string v2, "/mnt/sdcard/_ExternalSD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 57
    const-string v2, "/sdcard/_ExternalSD"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 58
    const-string v2, "/mnt/sdcard/usbStorage"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 59
    const-string v2, "/mnt/emmc"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 60
    const-string v2, "/mnt/external1"

    aput-object v2, v0, v1

    .line 42
    sput-object v0, Lccc71/pmw/b/u;->j:[Ljava/lang/String;

    .line 68
    sput-boolean v3, Lccc71/pmw/b/u;->l:Z

    .line 69
    sput-boolean v3, Lccc71/pmw/b/u;->m:Z

    .line 71
    sput-object v4, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    .line 63
    iput-object v0, p0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/b/u;->l:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method public constructor <init>(Lccc71/pmw/b/u;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    .line 63
    iput-object v0, p0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/b/u;->l:Z

    .line 85
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p1, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    iput-object v0, p0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    .line 484
    const/4 v0, 0x0

    .line 485
    sget-object v1, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    return v1

    .line 487
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    .line 491
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/io/File;Landroid/os/Handler;)J
    .locals 23
    .parameter
    .parameter

    .prologue
    .line 503
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 504
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 505
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 506
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 507
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 508
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 509
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 511
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 512
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 514
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parsing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v3, v2, :cond_0

    .line 643
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Total directories to parse: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 648
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v15

    move v4, v2

    :goto_1
    invoke-interface {v15}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-nez v2, :cond_9

    .line 680
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Total directories parsed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-wide/16 v2, 0x0

    return-wide v2

    .line 517
    :cond_0
    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 519
    if-eqz p2, :cond_1

    sget-boolean v4, Lccc71/pmw/b/u;->l:Z

    if-nez v4, :cond_1

    .line 521
    move-object/from16 v0, p0

    iget-wide v4, v0, Lccc71/pmw/b/u;->v:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x64

    move-object/from16 v0, p0

    iget-wide v6, v0, Lccc71/pmw/b/u;->u:J

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lccc71/pmw/b/u;->v:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 522
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 523
    new-instance v6, Lccc71/pmw/b/x;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v5, v4}, Lccc71/pmw/b/x;-><init>(Lccc71/pmw/b/u;Ljava/lang/String;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 545
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 547
    if-eqz v5, :cond_2

    .line 549
    array-length v6, v5

    .line 550
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-lt v4, v6, :cond_4

    .line 639
    :cond_2
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    .line 521
    :cond_3
    const/4 v4, -0x1

    goto :goto_2

    .line 552
    :cond_4
    aget-object v7, v5, v4

    .line 554
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 556
    if-nez v3, :cond_6

    .line 560
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 561
    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    invoke-virtual {v15, v2}, Lccc71/pmw/b/l;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 564
    sget-boolean v7, Lccc71/pmw/b/u;->o:Z

    if-nez v7, :cond_5

    .line 566
    const/4 v7, 0x1

    sput-boolean v7, Lccc71/pmw/b/u;->o:Z

    .line 567
    sput-object v2, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    .line 571
    :try_start_0
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v15, v2

    .line 573
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v17, v0

    .line 574
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 576
    mul-long v17, v17, v15

    const-wide/16 v21, 0x400

    div-long v17, v17, v21

    sput-wide v17, Lccc71/pmw/b/u;->g:J

    .line 577
    mul-long v15, v15, v19

    const-wide/16 v17, 0x400

    div-long v15, v15, v17

    sput-wide v15, Lccc71/pmw/b/u;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 550
    :cond_5
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    .line 594
    :cond_6
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 595
    invoke-virtual {v2, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 598
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 599
    const-wide/16 v15, 0x1000

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 600
    move-object/from16 v0, p0

    iget-wide v15, v0, Lccc71/pmw/b/u;->u:J

    const-wide/16 v17, 0x4

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lccc71/pmw/b/u;->u:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 603
    :catch_0
    move-exception v2

    goto :goto_4

    .line 609
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v15

    .line 610
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 611
    move-object/from16 v0, p0

    iget-wide v0, v0, Lccc71/pmw/b/u;->u:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x400

    div-long v15, v15, v19

    add-long v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lccc71/pmw/b/u;->u:J

    .line 613
    if-eqz p2, :cond_5

    .line 615
    move-object/from16 v0, p0

    iget-wide v15, v0, Lccc71/pmw/b/u;->v:J

    const-wide/16 v17, 0x0

    cmp-long v2, v15, v17

    if-eqz v2, :cond_8

    const-wide/16 v15, 0x64

    move-object/from16 v0, p0

    iget-wide v0, v0, Lccc71/pmw/b/u;->u:J

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lccc71/pmw/b/u;->v:J

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    long-to-int v2, v15

    .line 616
    :goto_5
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 618
    new-instance v15, Lccc71/pmw/b/y;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v7, v2}, Lccc71/pmw/b/y;-><init>(Lccc71/pmw/b/u;Ljava/lang/String;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 615
    :cond_8
    const/4 v2, -0x1

    goto :goto_5

    .line 650
    :cond_9
    invoke-interface {v15}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 652
    invoke-virtual {v13, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 653
    invoke-virtual {v14, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 654
    move/from16 v0, v16

    if-eq v5, v0, :cond_a

    .line 656
    const-wide/16 v6, 0x0

    .line 657
    :goto_6
    move/from16 v0, v16

    if-lt v5, v0, :cond_c

    .line 661
    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v5, v16, v6

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_a
    invoke-virtual {v10, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 665
    invoke-virtual {v11, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 666
    move/from16 v0, v16

    if-eq v5, v0, :cond_b

    .line 668
    const-wide/16 v6, 0x0

    .line 669
    :goto_7
    move/from16 v0, v16

    if-lt v5, v0, :cond_d

    .line 673
    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    add-long v5, v16, v6

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 676
    :cond_b
    sget-object v3, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto/16 :goto_1

    .line 659
    :cond_c
    invoke-virtual {v12, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    add-long v6, v6, v17

    .line 657
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_6

    .line 671
    :cond_d
    invoke-virtual {v9, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    add-long v6, v6, v17

    .line 669
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_7

    .line 584
    :catch_1
    move-exception v2

    goto/16 :goto_4
.end method

.method static synthetic a(Lccc71/pmw/b/u;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public static a()V
    .locals 8

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 101
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 103
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 104
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 106
    mul-long/2addr v4, v2

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    sput-wide v4, Lccc71/pmw/b/u;->i:J

    .line 107
    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    sput-wide v0, Lccc71/pmw/b/u;->h:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Failed to get SD free space"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    sput-object p0, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 250
    :try_start_0
    sget-boolean v3, Lccc71/pmw/b/u;->l:Z

    if-eqz v3, :cond_0

    .line 251
    monitor-exit v4

    .line 476
    :goto_0
    return-void

    .line 253
    :cond_0
    sget-boolean v3, Lccc71/pmw/b/u;->m:Z

    if-eqz v3, :cond_3

    .line 255
    if-nez p2, :cond_1

    .line 257
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    .line 264
    :goto_1
    sget-boolean v3, Lccc71/pmw/b/u;->m:Z

    if-nez v3, :cond_2

    .line 274
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 261
    :cond_1
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 268
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    .line 277
    :cond_3
    const/4 v3, 0x1

    :try_start_3
    sput-boolean v3, Lccc71/pmw/b/u;->m:Z

    .line 248
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    invoke-static {}, Lccc71/pmw/b/u;->a()V

    .line 282
    if-nez p2, :cond_d

    .line 284
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    .line 285
    const/4 v3, 0x0

    sput-boolean v3, Lccc71/pmw/b/u;->o:Z

    .line 286
    const/4 v3, 0x0

    sput-object v3, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    if-nez v3, :cond_4

    .line 289
    new-instance v3, Lccc71/pmw/b/l;

    invoke-direct {v3}, Lccc71/pmw/b/l;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    .line 290
    :cond_4
    sget-object v3, Lccc71/pmw/b/u;->j:[Ljava/lang/String;

    array-length v4, v3

    .line 291
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v4, :cond_b

    .line 301
    :goto_3
    sget-object v3, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 302
    invoke-static {}, Lccc71/pmw/b/u;->m()V

    .line 312
    :cond_5
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    .line 314
    sget-object v3, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 316
    sget-object v3, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    sget-object v4, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 317
    :goto_5
    if-eqz v3, :cond_f

    sget-wide v3, Lccc71/pmw/b/u;->g:J

    sget-wide v5, Lccc71/pmw/b/u;->f:J

    sub-long/2addr v3, v5

    :goto_6
    move-object/from16 v0, p0

    iput-wide v3, v0, Lccc71/pmw/b/u;->v:J

    .line 318
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lccc71/pmw/b/u;->u:J

    .line 322
    if-eqz p3, :cond_6

    .line 324
    new-instance v3, Lccc71/pmw/b/v;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lccc71/pmw/b/v;-><init>(Lccc71/pmw/b/u;Landroid/content/Context;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 367
    :goto_7
    :try_start_4
    sget-object v3, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_10

    sget-object v3, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    if-eqz v3, :cond_10

    .line 363
    :goto_8
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 378
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lccc71/pmw/b/u;->a(Ljava/io/File;Landroid/os/Handler;)J

    .line 380
    if-eqz p3, :cond_8

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 384
    :try_start_6
    sget-object v3, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_7

    sget-object v3, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 386
    new-instance v3, Lccc71/pmw/b/w;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lccc71/pmw/b/w;-><init>(Lccc71/pmw/b/u;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    :cond_7
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 402
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 404
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->r:Ljava/lang/Process;

    if-eqz v3, :cond_9

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->r:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 407
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->r:Ljava/lang/Process;

    .line 402
    :cond_9
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 413
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 415
    :try_start_8
    sget-boolean v3, Lccc71/pmw/b/u;->l:Z

    if-eqz v3, :cond_11

    .line 417
    const/4 v3, 0x0

    sput-boolean v3, Lccc71/pmw/b/u;->m:Z

    .line 418
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 413
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 293
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    sget-object v6, Lccc71/pmw/b/u;->j:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lccc71/pmw/b/l;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 295
    const/4 v4, 0x1

    sput-boolean v4, Lccc71/pmw/b/u;->o:Z

    .line 296
    sget-object v4, Lccc71/pmw/b/u;->j:[Ljava/lang/String;

    aget-object v3, v4, v3

    sput-object v3, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    goto/16 :goto_3

    .line 291
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 308
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    if-nez v3, :cond_5

    .line 309
    new-instance v3, Lccc71/pmw/b/l;

    invoke-direct {v3}, Lccc71/pmw/b/l;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    goto/16 :goto_4

    .line 316
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 317
    :cond_f
    sget-wide v3, Lccc71/pmw/b/u;->i:J

    sget-wide v5, Lccc71/pmw/b/u;->h:J

    sub-long/2addr v3, v5

    goto/16 :goto_6

    .line 368
    :cond_10
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v3

    goto/16 :goto_8

    .line 363
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 382
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3

    .line 402
    :catchall_4
    move-exception v3

    monitor-exit v4

    throw v3

    .line 413
    :cond_11
    monitor-exit v4

    .line 422
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 424
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 426
    sget-object v3, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_12
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 465
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    .line 466
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Long;

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->e:[Ljava/lang/Long;

    .line 467
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lccc71/pmw/b/u;->d:[Ljava/lang/String;

    .line 468
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 469
    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-lt v4, v5, :cond_17

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    monitor-enter v4

    .line 478
    const/4 v3, 0x0

    :try_start_a
    sput-boolean v3, Lccc71/pmw/b/u;->m:Z

    .line 476
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v4

    throw v3

    .line 428
    :cond_13
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 429
    sget-object v3, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v3, v5, :cond_12

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 435
    const-string v3, "/"

    invoke-virtual {v13, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_12

    .line 439
    sget-object v3, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    sget-object v5, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 440
    :cond_14
    const/4 v5, 0x0

    .line 443
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 444
    const/4 v3, 0x0

    move v6, v3

    :goto_b
    if-lt v6, v14, :cond_15

    move v3, v5

    .line 455
    :goto_c
    if-nez v3, :cond_12

    .line 457
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 446
    :cond_15
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v3, v11, v15

    if-lez v3, :cond_16

    .line 448
    const/4 v3, 0x1

    .line 449
    invoke-virtual {v7, v6, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 450
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v9, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 451
    invoke-virtual {v8, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_c

    .line 444
    :cond_16
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_b

    .line 471
    :cond_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/b/u;->c:[Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v6, v4

    .line 472
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/b/u;->e:[Ljava/lang/Long;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    aput-object v3, v6, v4

    .line 473
    move-object/from16 v0, p0

    iget-object v6, v0, Lccc71/pmw/b/u;->d:[Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v6, v4

    .line 469
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_a
.end method

.method public static e()I
    .locals 4

    .prologue
    .line 183
    sget-wide v0, Lccc71/pmw/b/u;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 184
    sget-wide v0, Lccc71/pmw/b/u;->h:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    sget-wide v2, Lccc71/pmw/b/u;->i:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()I
    .locals 4

    .prologue
    .line 191
    sget-wide v0, Lccc71/pmw/b/u;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 192
    sget-wide v0, Lccc71/pmw/b/u;->f:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    sget-wide v2, Lccc71/pmw/b/u;->g:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lccc71/pmw/b/u;->o:Z

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static m()V
    .locals 9

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    sget-object v1, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 121
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    .line 122
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v5, v0

    .line 124
    mul-long/2addr v3, v1

    const-wide/16 v7, 0x400

    div-long/2addr v3, v7

    sput-wide v3, Lccc71/pmw/b/u;->g:J

    .line 125
    mul-long v0, v5, v1

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    sput-wide v0, Lccc71/pmw/b/u;->f:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    const-string v0, "process_monitor_widget"

    const-string v1, "Failed to get external SD free space"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    if-nez p2, :cond_0

    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Lccc71/pmw/b/u;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lccc71/pmw/b/u;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 135
    sget-object v0, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lccc71/pmw/b/l;

    invoke-direct {v0}, Lccc71/pmw/b/l;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    .line 139
    :cond_0
    sget-object v0, Lccc71/pmw/b/u;->j:[Ljava/lang/String;

    array-length v1, v0

    .line 140
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_3

    .line 151
    :cond_1
    :goto_1
    sget-object v0, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 152
    invoke-static {}, Lccc71/pmw/b/u;->m()V

    .line 153
    :cond_2
    return-void

    .line 142
    :cond_3
    iget-object v2, p0, Lccc71/pmw/b/u;->n:Lccc71/pmw/b/l;

    sget-object v3, Lccc71/pmw/b/u;->j:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lccc71/pmw/b/l;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    const/4 v1, 0x1

    sput-boolean v1, Lccc71/pmw/b/u;->o:Z

    .line 145
    sget-object v1, Lccc71/pmw/b/u;->j:[Ljava/lang/String;

    aget-object v0, v1, v0

    sput-object v0, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    goto :goto_1

    .line 140
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 8

    .prologue
    .line 159
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 160
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 162
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 163
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 165
    mul-long/2addr v4, v2

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    iput-wide v4, p0, Lccc71/pmw/b/u;->b:J

    .line 166
    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    iput-wide v0, p0, Lccc71/pmw/b/u;->a:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 175
    iget-wide v0, p0, Lccc71/pmw/b/u;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 176
    const-wide/16 v0, 0x64

    iget-wide v2, p0, Lccc71/pmw/b/u;->a:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lccc71/pmw/b/u;->b:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    sget-object v1, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lccc71/pmw/b/u;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/b/u;->k:Ljava/lang/String;

    sget-object v1, Lccc71/pmw/b/u;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    .line 214
    goto :goto_0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/b/u;->l:Z

    .line 222
    sget-object v0, Lccc71/pmw/b/u;->t:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 224
    iget-object v1, p0, Lccc71/pmw/b/u;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-object v0, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/b/u;->s:Landroid/app/ProgressDialog;

    .line 224
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
