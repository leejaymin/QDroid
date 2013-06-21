.class public final Lccc71/bmw/lib/bi;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:J

.field private static d:Ljava/util/Date;

.field private static e:Z

.field private static f:Ljava/util/ArrayList;

.field private static final g:Lccc71/bmw/lib/bh;

.field private static final h:Ljava/lang/Object;

.field private static final i:Ljava/lang/Object;

.field private static j:Lccc71/bmw/lib/bi;

.field private static m:Ljava/lang/String;

.field private static n:Z

.field private static o:I

.field private static p:Ljava/lang/String;

.field private static q:I

.field private static synthetic r:[I


# instance fields
.field private k:Landroid/content/Context;

.field private l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    sput-boolean v1, Lccc71/bmw/lib/bi;->a:Z

    .line 37
    sput-boolean v1, Lccc71/bmw/lib/bi;->b:Z

    .line 43
    sput-boolean v1, Lccc71/bmw/lib/bi;->e:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lccc71/bmw/lib/bh;

    invoke-direct {v0}, Lccc71/bmw/lib/bh;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bi;->h:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    .line 55
    sput-boolean v1, Lccc71/bmw/lib/bi;->n:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    iput-object v0, p0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->ai(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bi;->o:I

    .line 66
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccc71/bmw/lib/bi;->p:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lccc71/bmw/lib/bi;->n:Z

    .line 70
    invoke-static {p1}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    sput v0, Lccc71/bmw/lib/bi;->q:I

    .line 71
    return-void
.end method

.method private static a(Ljava/io/BufferedInputStream;Ljava/lang/StringBuilder;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 598
    const/16 v1, 0x3c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 599
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 607
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 608
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 609
    add-int/lit8 v0, v0, 0x1

    .line 612
    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 614
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    :cond_2
    :goto_1
    return v0

    .line 620
    :cond_3
    const/16 v2, 0xc2

    if-eq v1, v2, :cond_0

    .line 621
    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static a(IIJ)J
    .locals 33
    .parameter
    .parameter
    .parameter

    .prologue
    .line 633
    const-wide/16 v6, 0x0

    .line 634
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records starting @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v4, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    add-int v4, p0, p1

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 640
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x3c

    div-long/2addr v4, v8

    move/from16 v0, p1

    int-to-long v8, v0

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    long-to-int v0, v4

    move/from16 p0, v0

    .line 641
    if-gtz p0, :cond_0

    .line 643
    const-string v3, "battery_widget_monitor"

    const-string v4, "No more records..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-wide/16 v3, 0x0

    .line 831
    :goto_0
    return-wide v3

    .line 648
    :cond_0
    new-instance v27, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    mul-int/lit8 v5, p0, 0x3c

    move-object/from16 v0, v27

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 650
    mul-int/lit8 v4, p0, 0x3c

    int-to-long v4, v4

    sub-long v24, p2, v4

    .line 651
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v24, v3

    if-lez v3, :cond_1

    .line 653
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Trying to skip too much:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedInputStream;->close()V

    .line 655
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 657
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v24, v3

    if-lez v3, :cond_3

    .line 659
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Skipping history byte:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/BufferedInputStream;->skip(J)J

    move-result-wide v3

    .line 662
    cmp-long v5, v3, v24

    if-eqz v5, :cond_3

    .line 664
    const-string v5, "battery_widget_monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped bytes different (file size incorrect!):"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 667
    :try_start_1
    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v5

    move-wide/from16 p2, v3

    move-wide v3, v6

    .line 823
    :goto_1
    const-string v6, "battery_widget_monitor"

    const-string v7, "Could not load history file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    :goto_2
    sget-object v5, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    if-eqz v5, :cond_2

    .line 828
    const-string v5, "battery_widget_monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Last record: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", average refresh rate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lccc71/bmw/lib/bi;->b()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_2
    sub-long v3, p2, v3

    goto/16 :goto_0

    .line 672
    :cond_3
    :try_start_2
    sget-boolean v28, Lccc71/bmw/lib/bmw_watcher;->y:Z

    .line 673
    sget-boolean v3, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-nez v3, :cond_7

    sget-object v3, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    if-eqz v3, :cond_4

    sget-object v3, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v3}, Lccc71/bmw/data/readers/a;->c()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_4
    const/4 v3, 0x0

    move/from16 v26, v3

    .line 674
    :goto_3
    const/4 v5, -0x1

    .line 675
    const-wide/16 v10, -0x1

    .line 677
    const/4 v12, 0x0

    .line 680
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 681
    const/16 v19, 0x0

    move v13, v5

    move-wide v4, v6

    .line 682
    :goto_4
    :try_start_3
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lccc71/bmw/lib/bi;->a(Ljava/io/BufferedInputStream;Ljava/lang/StringBuilder;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v3

    if-nez v3, :cond_8

    move-wide v3, v4

    .line 813
    :goto_5
    if-eqz v19, :cond_6

    :try_start_4
    sget-object v5, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    if-eqz v5, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sget-object v7, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_6

    .line 815
    :cond_5
    sput-object v19, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    .line 818
    :cond_6
    const-string v5, "battery_widget_monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Finished loading "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual/range {v27 .. v27}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 821
    :catch_1
    move-exception v5

    goto/16 :goto_1

    .line 673
    :cond_7
    const/4 v3, 0x1

    move/from16 v26, v3

    goto :goto_3

    .line 684
    :cond_8
    :try_start_5
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 686
    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v14

    .line 687
    int-to-long v6, v3

    add-long v22, v4, v6

    .line 689
    :try_start_6
    array-length v3, v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1d

    .line 693
    const/4 v3, 0x0

    :try_start_7
    aget-object v3, v14, v3

    const/4 v4, 0x1

    aget-object v4, v14, v4

    invoke-static {v3, v4}, Lccc71/bmw/lib/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    .line 695
    const/4 v3, 0x2

    aget-object v3, v14, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    aget-object v5, v14, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 696
    const/4 v3, 0x3

    aget-object v3, v14, v3

    const/4 v5, 0x0

    const/4 v6, 0x3

    aget-object v6, v14, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 697
    const/4 v3, 0x4

    aget-object v3, v14, v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    aget-object v7, v14, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 698
    const/4 v3, 0x5

    aget-object v3, v14, v3

    const/4 v7, 0x0

    const/4 v8, 0x5

    aget-object v8, v14, v8

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 700
    const/4 v8, 0x0

    .line 701
    const/4 v9, 0x0

    .line 702
    array-length v3, v14

    const/16 v15, 0x8

    if-lt v3, v15, :cond_9

    .line 704
    const/4 v3, 0x6

    aget-object v3, v14, v3

    const-string v8, "."

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 706
    const/4 v3, 0x6

    aget-object v3, v14, v3

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v8

    .line 718
    :goto_6
    const/4 v3, 0x7

    aget-object v3, v14, v3

    const/4 v9, 0x0

    const/4 v15, 0x7

    aget-object v14, v14, v15

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v3, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v9

    .line 721
    :cond_9
    const/4 v3, 0x1

    if-le v12, v3, :cond_c

    if-nez v28, :cond_a

    if-eqz v26, :cond_c

    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-nez v3, :cond_c

    .line 723
    :cond_a
    if-ne v13, v5, :cond_b

    int-to-long v14, v8

    cmp-long v3, v10, v14

    if-eqz v3, :cond_c

    .line 725
    :cond_b
    sget-object v3, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccc71/bmw/data/b;

    iget v15, v3, Lccc71/bmw/data/b;->b:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 726
    add-int/lit8 v14, v12, -0x2

    :goto_7
    if-gtz v14, :cond_10

    .line 749
    :cond_c
    int-to-long v0, v8

    move-wide/from16 v20, v0

    .line 751
    :try_start_8
    new-instance v3, Lccc71/bmw/data/b;

    invoke-direct/range {v3 .. v9}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 752
    move-object/from16 v0, v18

    iput-object v0, v3, Lccc71/bmw/data/b;->a:Ljava/util/Date;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 753
    add-int/lit8 v6, v12, 0x1

    :try_start_9
    invoke-static {v12, v3}, Lccc71/bmw/lib/bi;->a(ILccc71/bmw/data/b;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result v3

    if-nez v3, :cond_13

    .line 755
    add-int/lit8 v12, v6, -0x1

    move-wide/from16 v10, v20

    move v13, v5

    move-wide/from16 v4, v22

    goto/16 :goto_4

    .line 710
    :cond_d
    const/4 v3, 0x6

    :try_start_a
    aget-object v3, v14, v3

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 711
    const/4 v8, 0x2

    if-ne v3, v8, :cond_e

    .line 712
    const/16 v8, 0x1f4

    goto :goto_6

    .line 713
    :cond_e
    const/4 v8, 0x1

    if-ne v3, v8, :cond_f

    .line 714
    const/16 v8, 0x3e8

    goto :goto_6

    .line 716
    :cond_f
    const/4 v8, 0x0

    goto :goto_6

    .line 728
    :cond_10
    sget-object v3, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccc71/bmw/data/b;

    iget v0, v3, Lccc71/bmw/data/b;->c:I

    move/from16 v16, v0

    .line 729
    sget-object v3, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccc71/bmw/data/b;

    iget-short v3, v3, Lccc71/bmw/data/b;->f:S

    .line 730
    move/from16 v0, v16

    if-ne v0, v13, :cond_11

    int-to-long v0, v3

    move-wide/from16 v16, v0

    cmp-long v3, v16, v10

    if-eqz v3, :cond_12

    .line 734
    :cond_11
    add-int/lit8 v3, v12, -0x2

    sub-int/2addr v3, v14

    if-eqz v3, :cond_c

    .line 737
    :goto_8
    add-int/lit8 v3, v12, -0x1

    if-ge v14, v3, :cond_c

    .line 739
    sget-object v3, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccc71/bmw/data/b;

    iput v15, v3, Lccc71/bmw/data/b;->b:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 737
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_8

    .line 726
    :cond_12
    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    .line 759
    :cond_13
    const-wide/16 v3, 0x0

    cmp-long v3, v24, v3

    if-lez v3, :cond_14

    move-wide/from16 v3, v24

    :goto_9
    add-long v3, v3, v22

    cmp-long v3, v3, p2

    if-lez v3, :cond_16

    .line 761
    :try_start_b
    const-string v7, "battery_widget_monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "Total size "

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v3, v24, v3

    if-lez v3, :cond_15

    move-wide/from16 v3, v24

    :goto_a
    add-long v3, v3, v22

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeds last position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v3, v22

    .line 762
    goto/16 :goto_5

    .line 759
    :cond_14
    const-wide/16 v3, 0x0

    goto :goto_9

    .line 761
    :cond_15
    const-wide/16 v3, 0x0

    goto :goto_a

    .line 765
    :cond_16
    if-eqz v18, :cond_1c

    if-eqz v19, :cond_1c

    .line 767
    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v3, v10

    const-wide/16 v10, 0x3e8

    div-long v10, v3, v10

    .line 768
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-eqz v3, :cond_17

    sget v3, Lccc71/bmw/lib/bi;->q:I

    int-to-long v3, v3

    div-long/2addr v3, v10

    const-wide/16 v12, 0x2

    cmp-long v3, v3, v12

    if-ltz v3, :cond_18

    .line 772
    :cond_17
    sget-object v7, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 774
    :try_start_c
    sget-object v4, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    add-int/lit8 v3, v6, -0x1

    :try_start_d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 772
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move v4, v3

    move-object/from16 v3, v19

    :goto_b
    move-object/from16 v19, v3

    move-wide/from16 v10, v20

    move v12, v4

    move v13, v5

    move-wide/from16 v4, v22

    .line 803
    goto/16 :goto_4

    .line 772
    :catchall_0
    move-exception v3

    :goto_c
    :try_start_e
    monitor-exit v7

    throw v3

    :catch_2
    move-exception v3

    move-wide/from16 v3, v20

    :goto_d
    move-wide v10, v3

    move v12, v6

    move v13, v5

    move-wide/from16 v4, v22

    goto/16 :goto_4

    .line 785
    :cond_18
    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_1c

    sget v3, Lccc71/bmw/lib/bi;->q:I

    mul-int/lit8 v3, v3, 0x2

    int-to-long v3, v3

    cmp-long v3, v10, v3

    if-ltz v3, :cond_1c

    .line 787
    sget v3, Lccc71/bmw/lib/bi;->q:I

    int-to-long v3, v3

    sub-long v3, v10, v3

    sget v7, Lccc71/bmw/lib/bi;->q:I

    int-to-long v12, v7

    div-long/2addr v3, v12

    long-to-int v4, v3

    .line 788
    if-lez v4, :cond_1c

    const/16 v3, 0xb40

    if-ge v4, v3, :cond_1c

    .line 790
    const-string v3, "battery_widget_monitor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Missing "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 791
    const-string v12, " records - "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v12, Lccc71/bmw/lib/bi;->q:I

    int-to-long v12, v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Lccc71/utils/al;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 792
    const-string v10, " from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 790
    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    sget-object v7, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-le v6, v3, :cond_19

    add-int/lit8 v3, v6, -0x2

    :goto_e
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccc71/bmw/data/b;

    .line 795
    add-int/lit8 v10, v6, -0x1

    const/16 v7, 0xb40

    if-ge v4, v7, :cond_1a

    move v11, v4

    :goto_f
    iget v12, v3, Lccc71/bmw/data/b;->b:I

    iget v13, v3, Lccc71/bmw/data/b;->c:I

    iget v14, v3, Lccc71/bmw/data/b;->d:I

    iget v15, v3, Lccc71/bmw/data/b;->e:F

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lccc71/bmw/lib/bi;->a(IIIIIFSB)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-result v3

    if-eqz v3, :cond_1c

    .line 797
    const/16 v3, 0xb40

    if-ge v4, v3, :cond_1b

    move v3, v4

    :goto_10
    add-int/2addr v3, v6

    move v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_b

    .line 794
    :cond_19
    add-int/lit8 v3, v6, -0x1

    goto :goto_e

    .line 795
    :cond_1a
    const/4 v11, 0x1

    goto :goto_f

    .line 797
    :cond_1b
    const/4 v3, 0x1

    goto :goto_10

    .line 821
    :catch_3
    move-exception v3

    move-object v5, v3

    move-wide v3, v6

    goto/16 :goto_1

    :catch_4
    move-exception v3

    move-object/from16 v30, v3

    move-wide/from16 v31, v4

    move-wide/from16 v3, v31

    move-object/from16 v5, v30

    goto/16 :goto_1

    :catch_5
    move-exception v3

    move-object v5, v3

    move-wide/from16 v3, v22

    goto/16 :goto_1

    :catch_6
    move-exception v3

    move-wide v3, v10

    move v6, v12

    move v5, v13

    goto/16 :goto_d

    :catch_7
    move-exception v3

    move-wide/from16 v3, v20

    move v6, v12

    goto/16 :goto_d

    .line 772
    :catchall_1
    move-exception v4

    move v6, v3

    move-object v3, v4

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v3, v18

    move v4, v6

    goto/16 :goto_b

    :cond_1d
    move-wide/from16 v4, v22

    goto/16 :goto_4
.end method

.method public static a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    :try_start_0
    sget-object v3, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 280
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 281
    invoke-static {}, Lccc71/bmw/lib/bi;->k()[I

    move-result-object v1

    invoke-virtual {p0}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    move v1, v0

    .line 334
    :goto_0
    if-lt v1, v4, :cond_3

    .line 278
    :cond_0
    monitor-exit v3

    .line 356
    :goto_1
    return-object v2

    .line 284
    :pswitch_0
    if-eqz p1, :cond_1

    move v1, v0

    .line 286
    :goto_2
    if-ge v1, v4, :cond_0

    .line 288
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->b:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    move v1, v0

    .line 293
    :goto_3
    if-ge v1, v4, :cond_0

    .line 295
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 300
    :pswitch_1
    if-eqz p1, :cond_2

    move v1, v0

    .line 302
    :goto_4
    if-ge v1, v4, :cond_0

    .line 304
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v5, v0, Lccc71/bmw/data/b;->b:I

    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->d:I

    mul-int/2addr v0, v5

    neg-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_2
    move v1, v0

    .line 309
    :goto_5
    if-ge v1, v4, :cond_0

    .line 311
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v5, v0, Lccc71/bmw/data/b;->b:I

    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->d:I

    mul-int/2addr v0, v5

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :pswitch_2
    move v1, v0

    .line 316
    :goto_6
    if-ge v1, v4, :cond_0

    .line 318
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :pswitch_3
    move v1, v0

    .line 322
    :goto_7
    if-ge v1, v4, :cond_0

    .line 324
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :pswitch_4
    move v1, v0

    .line 328
    :goto_8
    if-ge v1, v4, :cond_0

    .line 330
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->e:F

    const/high16 v5, 0x4120

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 336
    :cond_3
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget v0, v0, Lccc71/bmw/data/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 278
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 342
    :catch_0
    move-exception v0

    .line 344
    const-string v1, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting history (cleared?) :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 346
    :catch_1
    move-exception v0

    .line 350
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 351
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 353
    const-string v1, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Out-of-memory error getting history (cleared?) :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 281
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 838
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v1, v0, -0x30

    .line 841
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v0, -0x30

    .line 842
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, -0x30

    .line 844
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, -0x30

    .line 845
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, -0x30

    .line 847
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 848
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 850
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v0, v8

    add-int/lit8 v0, v0, -0x30

    .line 852
    const/16 v8, 0xc

    if-ne v0, v8, :cond_3

    .line 854
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v8, v7, 0x2

    if-le v0, v8, :cond_0

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x50

    if-ne v0, v7, :cond_0

    .line 855
    add-int/lit8 v4, v4, 0xc

    .line 857
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 872
    :goto_1
    return-object v0

    .line 861
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x30

    .line 863
    new-instance v0, Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 872
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v4, v0

    goto :goto_0
.end method

.method private static a(IFSB)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    sget-object v7, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v7

    .line 378
    :try_start_0
    sget v3, Lccc71/bmw/lib/bmw_watcher;->i:I

    .line 380
    new-instance v0, Lccc71/bmw/data/b;

    sget v2, Lccc71/bmw/lib/bmw_watcher;->h:I

    move v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 381
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    .line 382
    mul-int/lit8 v2, p0, 0x64

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    if-eqz v1, :cond_4

    sget v1, Lccc71/bmw/lib/bmw_watcher;->m:I

    :goto_0
    div-int v1, v2, v1

    iput v1, v0, Lccc71/bmw/data/b;->h:I

    .line 384
    sget-object v1, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->a:I

    if-le p0, v1, :cond_5

    .line 387
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput p0, v1, Lccc71/bmw/lib/bh;->a:I

    .line 391
    :cond_0
    :goto_1
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->e:I

    if-le v3, v1, :cond_6

    .line 392
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput v3, v1, Lccc71/bmw/lib/bh;->e:I

    .line 396
    :cond_1
    :goto_2
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->c:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_7

    .line 397
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput p1, v1, Lccc71/bmw/lib/bh;->c:F

    .line 401
    :cond_2
    :goto_3
    iget v1, v0, Lccc71/bmw/data/b;->h:I

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->g:I

    if-le v1, v2, :cond_8

    .line 402
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v0, v0, Lccc71/bmw/data/b;->h:I

    iput v0, v1, Lccc71/bmw/lib/bh;->g:I

    .line 406
    :cond_3
    :goto_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    .line 408
    :goto_5
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lccc71/bmw/lib/aj;->a:I

    if-gt v0, v1, :cond_9

    .line 376
    monitor-exit v7

    return-void

    .line 382
    :cond_4
    const/16 v1, 0x5dc

    goto :goto_0

    .line 388
    :cond_5
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->b:I

    if-ge p0, v1, :cond_0

    .line 389
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput p0, v1, Lccc71/bmw/lib/bh;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 393
    :cond_6
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->f:I

    if-ge v3, v1, :cond_1

    .line 394
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput v3, v1, Lccc71/bmw/lib/bh;->f:I

    goto :goto_2

    .line 398
    :cond_7
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->d:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 399
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput p1, v1, Lccc71/bmw/lib/bh;->d:F

    goto :goto_3

    .line 403
    :cond_8
    iget v1, v0, Lccc71/bmw/data/b;->h:I

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->h:I

    if-ge v1, v2, :cond_3

    .line 404
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v0, v0, Lccc71/bmw/data/b;->h:I

    iput v0, v1, Lccc71/bmw/lib/bh;->h:I

    goto :goto_4

    .line 410
    :cond_9
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 363
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    invoke-static {p0}, Lccc71/bmw/lib/bi;->a(Landroid/content/Context;)V

    .line 372
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 368
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to clear history:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 492
    sget-wide v0, Lccc71/bmw/lib/bi;->c:J

    invoke-static {p0, p1, v0, v1}, Lccc71/bmw/lib/bi;->a(Landroid/app/Activity;Landroid/os/Handler;J)V

    .line 493
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/os/Handler;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    if-eqz p0, :cond_1

    .line 517
    sget-object v1, Lccc71/bmw/lib/bi;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    sput-wide p2, Lccc71/bmw/lib/bi;->c:J

    .line 520
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    if-eqz v0, :cond_2

    .line 522
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    iget-object v0, v0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    iget-object v0, v0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    :goto_0
    monitor-exit v1

    .line 535
    :cond_1
    return-void

    .line 527
    :cond_2
    new-instance v0, Lccc71/bmw/lib/bi;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bi;-><init>(Landroid/content/Context;)V

    .line 528
    sput-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    .line 529
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    iget-object v0, v0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccc71/bmw/lib/bi;->setPriority(I)V

    .line 531
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    invoke-virtual {v0}, Lccc71/bmw/lib/bi;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 461
    sget-object v1, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    sput-boolean v2, Lccc71/bmw/lib/bi;->e:Z

    .line 466
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const/4 v1, 0x1

    iput v1, v0, Lccc71/bmw/lib/bh;->a:I

    .line 467
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput v2, v0, Lccc71/bmw/lib/bh;->b:I

    .line 469
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->ai(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 472
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const v1, 0x41f0cccd

    iput v1, v0, Lccc71/bmw/lib/bh;->c:F

    .line 473
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const/high16 v1, 0x41f0

    iput v1, v0, Lccc71/bmw/lib/bh;->d:F

    .line 484
    :goto_0
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const/16 v1, 0xfa1

    iput v1, v0, Lccc71/bmw/lib/bh;->e:I

    .line 485
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const/16 v1, 0xfa0

    iput v1, v0, Lccc71/bmw/lib/bh;->f:I

    .line 486
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput v2, v0, Lccc71/bmw/lib/bh;->g:I

    .line 487
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const/4 v1, -0x1

    iput v1, v0, Lccc71/bmw/lib/bh;->h:I

    .line 488
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 476
    :pswitch_0
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const v1, 0x42ac3333

    iput v1, v0, Lccc71/bmw/lib/bh;->c:F

    .line 477
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const/high16 v1, 0x42ac

    iput v1, v0, Lccc71/bmw/lib/bh;->d:F

    goto :goto_0

    .line 480
    :pswitch_1
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const v1, 0x43978ccd

    iput v1, v0, Lccc71/bmw/lib/bh;->c:F

    .line 481
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    const v1, 0x43978000

    iput v1, v0, Lccc71/bmw/lib/bh;->d:F

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 3
    .parameter

    .prologue
    .line 539
    sget-object v1, Lccc71/bmw/lib/bi;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 541
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    if-eqz v0, :cond_1

    .line 543
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    iget-object v0, v0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 544
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 546
    const-string v0, "battery_widget_monitor"

    const-string v2, "bmw_history_store - Cancelling load"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    if-eqz p0, :cond_0

    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    iget-object v0, v0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 539
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 553
    :cond_2
    const-string v0, "battery_widget_monitor"

    const-string v2, "bmw_history_store - Cannot cancel load for an unknown activity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 20
    .parameter

    .prologue
    .line 1014
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1015
    if-lez v14, :cond_0

    .line 1017
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    .line 1019
    iget-object v2, v1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1020
    :goto_0
    iget v4, v1, Lccc71/bmw/data/b;->b:I

    mul-int/lit8 v5, v4, 0x64

    sget v4, Lccc71/bmw/lib/bmw_watcher;->m:I

    if-eqz v4, :cond_2

    sget v4, Lccc71/bmw/lib/bmw_watcher;->m:I

    :goto_1
    div-int v9, v5, v4

    .line 1021
    iget v7, v1, Lccc71/bmw/data/b;->c:I

    .line 1022
    iget-byte v6, v1, Lccc71/bmw/data/b;->g:B

    .line 1023
    const/4 v5, 0x0

    .line 1024
    const/4 v1, 0x0

    .line 1025
    const/4 v4, 0x1

    move-wide v10, v2

    move v3, v5

    move v2, v1

    move v5, v6

    :goto_2
    if-lt v4, v14, :cond_3

    .line 1076
    :cond_0
    return-void

    .line 1019
    :cond_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    .line 1020
    :cond_2
    const/16 v4, 0x5dc

    goto :goto_1

    .line 1027
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    .line 1028
    iget-object v6, v1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-eqz v6, :cond_d

    .line 1029
    iget-object v1, v1, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 1032
    sub-long v15, v12, v10

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    long-to-int v15, v15

    .line 1033
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget v8, v1, Lccc71/bmw/data/b;->c:I

    .line 1034
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iget-byte v6, v1, Lccc71/bmw/data/b;->g:B

    .line 1035
    if-eqz v15, :cond_d

    if-ne v8, v7, :cond_4

    if-eq v6, v5, :cond_d

    .line 1037
    :cond_4
    if-eq v6, v5, :cond_8

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    if-eq v5, v1, :cond_5

    const/4 v1, 0x3

    if-ne v5, v1, :cond_8

    .line 1041
    :cond_5
    sub-int v1, v2, v3

    mul-int/2addr v1, v9

    sub-int v2, v3, v4

    div-int/2addr v1, v2

    .line 1050
    :goto_3
    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_6

    const/16 v2, -0x3e8

    if-ge v1, v2, :cond_7

    .line 1051
    :cond_6
    const/4 v1, 0x0

    :cond_7
    move v2, v1

    move v5, v4

    .line 1052
    :goto_4
    if-ge v5, v3, :cond_9

    move v1, v3

    move v5, v8

    move v3, v4

    move-wide v7, v12

    move/from16 v19, v2

    move v2, v6

    move/from16 v6, v19

    .line 1025
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v9, v6

    move-wide v10, v7

    move v7, v5

    move v5, v2

    move v2, v1

    goto :goto_2

    .line 1047
    :cond_8
    sub-int v1, v8, v7

    const v2, 0x8ca0

    mul-int/2addr v1, v2

    div-int/2addr v1, v15

    goto :goto_3

    .line 1054
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/bmw/data/b;

    iput v2, v1, Lccc71/bmw/data/b;->h:I

    .line 1056
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->g:I

    if-le v2, v1, :cond_b

    .line 1057
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput v2, v1, Lccc71/bmw/lib/bh;->g:I

    .line 1061
    :cond_a
    :goto_6
    const/16 v1, 0x64

    if-ne v7, v1, :cond_c

    .line 1063
    const/4 v1, 0x0

    .line 1052
    :goto_7
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    move v2, v1

    goto :goto_4

    .line 1058
    :cond_b
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v1, v1, Lccc71/bmw/lib/bh;->h:I

    if-ge v2, v1, :cond_a

    .line 1059
    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iput v2, v1, Lccc71/bmw/lib/bh;->h:I

    goto :goto_6

    :cond_c
    move v1, v2

    goto :goto_7

    :cond_d
    move v1, v2

    move v6, v9

    move v2, v5

    move v5, v7

    move-wide v7, v10

    goto :goto_5
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 232
    :try_start_0
    sget-object v2, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    :try_start_1
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 235
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 232
    monitor-exit v2

    .line 254
    :goto_1
    return-void

    .line 237
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-short v0, v0, Lccc71/bmw/data/b;->f:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-byte v0, v0, Lccc71/bmw/data/b;->g:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 242
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error getting history (cleared?) :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    .line 250
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 252
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Out-of-memory error getting history (cleared?) :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 563
    :try_start_0
    sget-object v2, Lccc71/bmw/lib/bi;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :try_start_1
    iget-object v1, p0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 567
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    .line 568
    monitor-exit v2

    .line 594
    :goto_0
    return-void

    .line 570
    :cond_0
    sput-boolean p1, Lccc71/bmw/lib/bi;->e:Z

    .line 572
    iget-object v1, p0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    .line 573
    :goto_1
    if-lt v1, v3, :cond_2

    .line 586
    sget-boolean v0, Lccc71/bmw/lib/bi;->e:Z

    if-eqz v0, :cond_1

    .line 587
    const/4 v0, 0x0

    sput-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    .line 563
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    :catch_0
    move-exception v0

    .line 592
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to complete history loading:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_2
    :try_start_3
    iget-object v0, p0, Lccc71/bmw/lib/bi;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 578
    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 573
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 580
    :catch_1
    move-exception v0

    .line 582
    :try_start_5
    const-string v4, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error sending message to handler: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(IIIIIFSB)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    sget-object v8, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v8

    .line 448
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4200

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_0

    float-to-double v0, p5

    const-wide v2, 0x407111999999999aL

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 450
    :cond_0
    monitor-exit v8

    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 452
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    if-lt v7, p1, :cond_2

    .line 446
    :try_start_0
    monitor-exit v8

    .line 456
    const/4 v0, 0x1

    goto :goto_0

    .line 453
    :cond_2
    sget-object v9, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    new-instance v0, Lccc71/bmw/data/b;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    invoke-virtual {v9, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static a(ILccc71/bmw/data/b;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 417
    sget-object v1, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget v0, p1, Lccc71/bmw/data/b;->c:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p1, Lccc71/bmw/data/b;->c:I

    if-nez v0, :cond_1

    iget v0, p1, Lccc71/bmw/data/b;->d:I

    if-nez v0, :cond_1

    iget v0, p1, Lccc71/bmw/data/b;->e:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p1, Lccc71/bmw/data/b;->e:F

    const/high16 v2, 0x4200

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p1, Lccc71/bmw/data/b;->e:F

    float-to-double v2, v0

    const-wide v4, 0x407111999999999aL

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    .line 421
    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 423
    :cond_1
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 425
    iget v0, p1, Lccc71/bmw/data/b;->b:I

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->a:I

    if-le v0, v2, :cond_5

    .line 426
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, p1, Lccc71/bmw/data/b;->b:I

    iput v2, v0, Lccc71/bmw/lib/bh;->a:I

    .line 430
    :cond_2
    :goto_1
    iget v0, p1, Lccc71/bmw/data/b;->d:I

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->e:I

    if-le v0, v2, :cond_6

    .line 431
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, p1, Lccc71/bmw/data/b;->d:I

    iput v2, v0, Lccc71/bmw/lib/bh;->e:I

    .line 435
    :cond_3
    :goto_2
    iget v0, p1, Lccc71/bmw/data/b;->e:F

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->c:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 436
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, p1, Lccc71/bmw/data/b;->e:F

    iput v2, v0, Lccc71/bmw/lib/bh;->c:F

    .line 417
    :cond_4
    :goto_3
    monitor-exit v1

    .line 441
    const/4 v0, 0x1

    goto :goto_0

    .line 427
    :cond_5
    iget v0, p1, Lccc71/bmw/data/b;->b:I

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->b:I

    if-ge v0, v2, :cond_2

    .line 428
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, p1, Lccc71/bmw/data/b;->b:I

    iput v2, v0, Lccc71/bmw/lib/bh;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 432
    :cond_6
    :try_start_1
    iget v0, p1, Lccc71/bmw/data/b;->d:I

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->f:I

    if-ge v0, v2, :cond_3

    .line 433
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, p1, Lccc71/bmw/data/b;->d:I

    iput v2, v0, Lccc71/bmw/lib/bh;->f:I

    goto :goto_2

    .line 437
    :cond_7
    iget v0, p1, Lccc71/bmw/data/b;->e:F

    sget-object v2, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, v2, Lccc71/bmw/lib/bh;->d:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 438
    sget-object v0, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    iget v2, p1, Lccc71/bmw/data/b;->e:F

    iput v2, v0, Lccc71/bmw/lib/bh;->d:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public static b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 80
    sget-object v2, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-object v3, v0, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    .line 85
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    sget-object v4, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-object v0, v0, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    .line 87
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    sget-object v3, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v0, v3

    long-to-int v0, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    return v0

    .line 80
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 94
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static b(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 497
    sget-wide v0, Lccc71/bmw/lib/bi;->c:J

    const-wide/32 v2, 0x54600

    add-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Lccc71/bmw/lib/bi;->a(Landroid/app/Activity;Landroid/os/Handler;J)V

    .line 498
    return-void
.end method

.method public static c()Ljava/util/Date;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 102
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 510
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lccc71/bmw/lib/bi;->a(Landroid/app/Activity;Landroid/os/Handler;J)V

    .line 511
    return-void
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    sget-object v1, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v2, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Lccc71/bmw/lib/bi;->e:Z

    return v0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 205
    sget-boolean v0, Lccc71/bmw/lib/bi;->a:Z

    return v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lccc71/bmw/lib/bi;->b:Z

    return v0
.end method

.method public static h()Lccc71/bmw/lib/bh;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Lccc71/bmw/lib/bh;

    sget-object v1, Lccc71/bmw/lib/bi;->g:Lccc71/bmw/lib/bh;

    invoke-direct {v0, v1}, Lccc71/bmw/lib/bh;-><init>(Lccc71/bmw/lib/bh;)V

    .line 217
    return-object v0
.end method

.method public static i()Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 260
    sget-object v4, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 262
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    .line 263
    :goto_0
    if-lt v2, v5, :cond_0

    .line 260
    monitor-exit v4

    .line 269
    return-object v3

    .line 265
    :cond_0
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccc71/bmw/data/b;

    iget-object v0, v0, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 265
    goto :goto_1

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static j()Z
    .locals 2

    .prologue
    .line 502
    sget-object v1, Lccc71/bmw/lib/bi;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    :try_start_0
    sget-object v0, Lccc71/bmw/lib/bi;->j:Lccc71/bmw/lib/bi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static synthetic k()[I
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lccc71/bmw/lib/bi;->r:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lccc71/bmw/lib/ak;->b:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lccc71/bmw/lib/ak;->e:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lccc71/bmw/lib/ak;->a:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lccc71/bmw/lib/ak;->f:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lccc71/bmw/lib/ak;->c:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lccc71/bmw/lib/ak;->d:Lccc71/bmw/lib/ak;

    invoke-virtual {v1}, Lccc71/bmw/lib/ak;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lccc71/bmw/lib/bi;->r:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 8
    .parameter

    .prologue
    .line 171
    sget-object v0, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    sget v0, Lccc71/bmw/lib/bi;->o:I

    sget v1, Lccc71/bmw/lib/bmw_watcher;->k:F

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_settings;->a(IF)F

    move-result v1

    .line 175
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iget-object v0, p0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    int-to-short v2, v0

    .line 176
    invoke-static {}, Lccc71/bmw/lib/bmw_watcher;->b()B

    move-result v3

    .line 182
    int-to-long v4, v2

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lccc71/bmw/lib/bi;->n:Z

    if-eqz v7, :cond_3

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lccc71/bmw/lib/bi;->n:Z

    if-nez v7, :cond_2

    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, " AM"

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mA|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lccc71/bmw/lib/bmw_watcher;->h:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lccc71/bmw/lib/bmw_watcher;->i:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mV|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccc71/bmw/lib/bi;->p:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v4, 0x3b

    if-lt v0, v4, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    sget-object v6, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\r"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 189
    sget-boolean v0, Lccc71/bmw/lib/bi;->e:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p1, v1, v2, v3}, Lccc71/bmw/lib/bi;->a(IFSB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to write battery history: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    :cond_3
    const/16 v7, 0xa

    :try_start_1
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "12"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    invoke-static {v7}, Lccc71/utils/al;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    const-string v0, " PM"

    goto/16 :goto_2

    :cond_6
    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public final b(I)Ljava/util/ArrayList;
    .locals 24
    .parameter

    .prologue
    .line 1080
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 1087
    const-string v5, "battery_widget_monitor"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Loading "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records starting @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    mul-int/lit8 v5, p1, 0x3c

    int-to-long v5, v5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1090
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x3c

    div-long/2addr v5, v7

    long-to-int v0, v5

    move/from16 p1, v0

    .line 1091
    if-nez p1, :cond_0

    .line 1093
    const-string v2, "battery_widget_monitor"

    const-string v3, "No records..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v14

    .line 1261
    :goto_0
    return-object v2

    .line 1098
    :cond_0
    new-instance v18, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    mul-int/lit8 v6, p1, 0x3c

    move-object/from16 v0, v18

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1100
    mul-int/lit8 v5, p1, 0x3c

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 1101
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    .line 1103
    const-string v2, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Trying to skip too much:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->close()V

    move-object v2, v14

    .line 1107
    goto :goto_0

    .line 1109
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    .line 1111
    const-string v2, "battery_widget_monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipping history byte:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 1115
    :cond_2
    sget-boolean v19, Lccc71/bmw/lib/bmw_watcher;->y:Z

    .line 1116
    sget-boolean v2, Lccc71/bmw/lib/bmw_watcher;->x:Z

    if-nez v2, :cond_8

    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    if-eqz v2, :cond_3

    sget-object v2, Lccc71/bmw/lib/bmw_watcher;->z:Lccc71/bmw/data/readers/a;

    invoke-virtual {v2}, Lccc71/bmw/data/readers/a;->c()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_3
    const/4 v2, 0x0

    move/from16 v17, v2

    .line 1117
    :goto_1
    const/4 v11, -0x1

    .line 1118
    const-wide/16 v9, -0x1

    .line 1120
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1121
    const/4 v13, 0x0

    .line 1122
    :cond_4
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lccc71/bmw/lib/bi;->a(Ljava/io/BufferedInputStream;Ljava/lang/StringBuilder;)I

    move-result v2

    if-nez v2, :cond_9

    .line 1244
    if-eqz v13, :cond_6

    sget-object v2, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    if-eqz v2, :cond_5

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 1246
    :cond_5
    sput-object v13, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    .line 1249
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1256
    :goto_3
    sget-object v2, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    if-eqz v2, :cond_7

    .line 1257
    const-string v2, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Last record date: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    invoke-static {v14}, Lccc71/bmw/lib/bi;->a(Ljava/util/ArrayList;)V

    move-object v2, v14

    .line 1261
    goto/16 :goto_0

    .line 1116
    :cond_8
    const/4 v2, 0x1

    move/from16 v17, v2

    goto :goto_1

    .line 1124
    :cond_9
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1126
    const-string v3, "\\|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1128
    array-length v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x6

    if-lt v3, v4, :cond_4

    .line 1132
    const/4 v3, 0x0

    :try_start_2
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Lccc71/bmw/lib/bi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 1134
    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1135
    const/4 v4, 0x3

    aget-object v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1136
    const/4 v5, 0x4

    aget-object v5, v2, v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1137
    const/4 v6, 0x5

    aget-object v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    aget-object v8, v2, v8

    const/16 v15, 0x2e

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1139
    if-nez v4, :cond_a

    if-nez v5, :cond_a

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_4

    .line 1142
    :cond_a
    const/4 v7, 0x0

    .line 1143
    const/4 v8, 0x0

    .line 1144
    array-length v15, v2

    const/16 v16, 0x8

    move/from16 v0, v16

    if-lt v15, v0, :cond_b

    .line 1146
    const/4 v7, 0x6

    aget-object v7, v2, v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1148
    const/4 v7, 0x6

    aget-object v7, v2, v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7

    .line 1160
    :goto_4
    const/4 v8, 0x7

    aget-object v8, v2, v8

    const/4 v15, 0x0

    const/16 v16, 0x7

    aget-object v2, v2, v16

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v8, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v8

    .line 1163
    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1164
    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_e

    if-nez v19, :cond_c

    if-eqz v17, :cond_e

    const-wide/16 v21, 0x0

    cmp-long v2, v9, v21

    if-nez v2, :cond_e

    if-nez v8, :cond_e

    .line 1166
    :cond_c
    if-ne v11, v4, :cond_d

    int-to-long v0, v7

    move-wide/from16 v21, v0

    cmp-long v2, v9, v21

    if-eqz v2, :cond_e

    :cond_d
    if-nez v8, :cond_e

    .line 1168
    add-int/lit8 v2, v16, -0x1

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    iget v0, v2, Lccc71/bmw/data/b;->b:I

    move/from16 v21, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1169
    add-int/lit8 v15, v16, -0x2

    :goto_5
    if-gtz v15, :cond_15

    .line 1191
    :cond_e
    int-to-long v15, v7

    .line 1193
    const/4 v2, -0x1

    if-eq v4, v2, :cond_10

    if-nez v4, :cond_f

    if-eqz v5, :cond_f

    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_10

    const/high16 v2, 0x4200

    cmpl-float v2, v6, v2

    if-eqz v2, :cond_10

    float-to-double v9, v6

    const-wide v21, 0x407111999999999aL

    cmpl-double v2, v9, v21

    if-eqz v2, :cond_10

    .line 1195
    :cond_f
    :try_start_3
    new-instance v2, Lccc71/bmw/data/b;

    invoke-direct/range {v2 .. v8}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    .line 1196
    iput-object v12, v2, Lccc71/bmw/data/b;->a:Ljava/util/Date;

    .line 1197
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_10
    if-eqz v12, :cond_19

    if-eqz v13, :cond_19

    .line 1202
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    .line 1203
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_11

    sget v5, Lccc71/bmw/lib/bi;->q:I

    int-to-long v5, v5

    div-long/2addr v5, v2

    const-wide/16 v7, 0x2

    cmp-long v5, v5, v7

    if-ltz v5, :cond_18

    .line 1207
    :cond_11
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v13

    :goto_6
    move-wide v9, v15

    move-object v13, v2

    move v11, v4

    .line 1235
    goto/16 :goto_2

    .line 1152
    :cond_12
    const/4 v7, 0x6

    :try_start_4
    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7

    .line 1153
    const/4 v8, 0x2

    if-ne v7, v8, :cond_13

    .line 1154
    const/16 v7, 0x1f4

    goto/16 :goto_4

    .line 1155
    :cond_13
    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    .line 1156
    const/16 v7, 0x3e8

    goto/16 :goto_4

    .line 1158
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1171
    :cond_15
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    iget v0, v2, Lccc71/bmw/data/b;->c:I

    move/from16 v22, v0

    .line 1172
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    iget-short v2, v2, Lccc71/bmw/data/b;->f:S

    int-to-float v2, v2

    .line 1173
    move/from16 v0, v22

    if-ne v0, v11, :cond_16

    long-to-float v0, v9

    move/from16 v22, v0

    cmpl-float v2, v2, v22

    if-eqz v2, :cond_17

    .line 1177
    :cond_16
    add-int/lit8 v2, v16, -0x2

    sub-int/2addr v2, v15

    if-eqz v2, :cond_e

    .line 1179
    :goto_7
    add-int/lit8 v2, v16, -0x1

    if-ge v15, v2, :cond_e

    .line 1181
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    move/from16 v0, v21

    iput v0, v2, Lccc71/bmw/data/b;->b:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1179
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_7

    .line 1169
    :cond_17
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_5

    .line 1213
    :cond_18
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_19

    :try_start_5
    sget v5, Lccc71/bmw/lib/bi;->q:I

    mul-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-ltz v5, :cond_19

    .line 1215
    sget v5, Lccc71/bmw/lib/bi;->q:I

    int-to-long v5, v5

    sub-long/2addr v2, v5

    sget v5, Lccc71/bmw/lib/bi;->q:I

    int-to-long v5, v5

    div-long/2addr v2, v5

    long-to-int v0, v2

    move/from16 v21, v0

    .line 1216
    if-lez v21, :cond_19

    const/16 v2, 0xb40

    move/from16 v0, v21

    if-ge v0, v2, :cond_19

    .line 1222
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1224
    const/4 v2, 0x2

    move/from16 v0, v22

    if-lt v0, v2, :cond_1a

    .line 1225
    add-int/lit8 v2, v22, -0x2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    .line 1228
    :goto_8
    const/4 v3, 0x0

    :goto_9
    move/from16 v0, v21

    if-lt v3, v0, :cond_1b

    :cond_19
    move-object v2, v12

    goto/16 :goto_6

    .line 1227
    :cond_1a
    add-int/lit8 v2, v22, -0x1

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    goto :goto_8

    .line 1230
    :cond_1b
    add-int/lit8 v23, v22, -0x1

    new-instance v5, Lccc71/bmw/data/b;

    iget v6, v2, Lccc71/bmw/data/b;->b:I

    iget v7, v2, Lccc71/bmw/data/b;->c:I

    iget v8, v2, Lccc71/bmw/data/b;->d:I

    iget v9, v2, Lccc71/bmw/data/b;->e:F

    iget-short v10, v2, Lccc71/bmw/data/b;->f:S

    iget-byte v11, v2, Lccc71/bmw/data/b;->g:B

    invoke-direct/range {v5 .. v11}, Lccc71/bmw/data/b;-><init>(IIIFSB)V

    move/from16 v0, v23

    invoke-virtual {v14, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1228
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catch_0
    move-exception v2

    move-wide v2, v9

    move v4, v11

    :goto_a
    move-wide v9, v2

    move v11, v4

    goto/16 :goto_2

    .line 1251
    :catch_1
    move-exception v2

    .line 1253
    const-string v3, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not load history file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-wide v2, v15

    goto :goto_a
.end method

.method public final run()V
    .locals 15

    .prologue
    const-wide/16 v13, -0x1

    const/4 v5, 0x1

    const/16 v8, 0xb40

    const/4 v0, 0x0

    .line 878
    const/4 v1, 0x0

    sput-object v1, Lccc71/bmw/lib/bi;->d:Ljava/util/Date;

    .line 880
    :try_start_0
    iget-object v1, p0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    invoke-static {v1}, Lccc71/bmw/lib/bi;->a(Landroid/content/Context;)V

    .line 885
    iget-object v1, p0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 886
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_4

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 890
    :goto_0
    invoke-static {}, Lccc71/utils/ag;->a()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_5

    .line 893
    const-string v1, "battery_widget_monitor"

    const-string v2, "Loading (2.3.x)2880 records, total 2880"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 900
    :goto_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 904
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 905
    iget-object v2, p0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->q(Landroid/content/Context;)I

    move-result v2

    int-to-long v9, v2

    .line 906
    cmp-long v2, v6, v9

    if-lez v2, :cond_0

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_0

    .line 908
    const-string v2, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "Truncating history file from "

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v11, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".tmp"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v12, 0x10

    invoke-direct {v4, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 918
    sub-long/2addr v6, v9

    const-wide/16 v9, 0x3c

    sub-long/2addr v6, v9

    .line 919
    invoke-virtual {v4, v6, v7}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v6}, Lccc71/bmw/lib/bi;->a(Ljava/io/BufferedInputStream;Ljava/lang/StringBuilder;)I

    .line 927
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v9, 0x10

    invoke-direct {v6, v7, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 928
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 930
    :goto_2
    invoke-virtual {v4, v7}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v9

    if-gtz v9, :cond_6

    .line 937
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 938
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 940
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 941
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 949
    :cond_0
    :goto_3
    :try_start_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lccc71/bmw/lib/bi;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 951
    sget-wide v1, Lccc71/bmw/lib/bi;->c:J

    cmp-long v1, v1, v13

    if-eqz v1, :cond_7

    sget-wide v1, Lccc71/bmw/lib/bi;->c:J

    .line 952
    :goto_4
    cmp-long v4, v1, v6

    if-lez v4, :cond_1

    move-wide v1, v6

    .line 956
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lccc71/bmw/lib/bi;->a:Z

    .line 957
    sget-wide v9, Lccc71/bmw/lib/bi;->c:J

    cmp-long v4, v9, v13

    if-eqz v4, :cond_8

    cmp-long v4, v1, v6

    if-gez v4, :cond_8

    move v4, v5

    :goto_5
    sput-boolean v4, Lccc71/bmw/lib/bi;->b:Z

    move v4, v3

    move v3, v0

    .line 958
    :cond_2
    :goto_6
    if-lt v3, v8, :cond_9

    .line 975
    :goto_7
    sput-wide v1, Lccc71/bmw/lib/bi;->c:J

    .line 977
    sget-object v1, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v8, :cond_3

    .line 979
    sget-object v1, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 981
    :try_start_3
    const-string v2, "battery_widget_monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit16 v4, v4, -0xb40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " records"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    sget-object v2, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v2, v2, -0xb40

    .line 983
    :goto_8
    if-lt v0, v2, :cond_c

    .line 979
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 988
    :cond_3
    :try_start_4
    const-string v0, "battery_widget_monitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bmw_history_store - read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lines"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1004
    :goto_9
    sget-object v1, Lccc71/bmw/lib/bi;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 1006
    :try_start_5
    sget-object v0, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lccc71/bmw/lib/bi;->k:Landroid/content/Context;

    invoke-static {v0}, Lccc71/bmw/lib/bi;->a(Ljava/util/ArrayList;)V

    .line 1004
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1009
    invoke-direct {p0, v5}, Lccc71/bmw/lib/bi;->a(Z)V

    .line 1010
    return-void

    .line 886
    :cond_4
    :try_start_6
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_0

    .line 897
    :cond_5
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Quick loading ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lccc71/utils/ag;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " records, total 2880"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 990
    :catch_0
    move-exception v0

    .line 992
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bmw_history_store - out of memory loading history: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_9

    .line 932
    :cond_6
    const/4 v10, 0x0

    :try_start_7
    invoke-virtual {v6, v7, v10, v9}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 946
    :catch_1
    move-exception v1

    :try_start_8
    const-string v1, "battery_widget_monitor"

    const-string v2, "Failed to truncate history file!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    .line 995
    :catch_2
    move-exception v0

    .line 997
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bmw_history_store - error loading history: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_7
    move-wide v1, v6

    .line 951
    goto/16 :goto_4

    :cond_8
    move v4, v0

    .line 957
    goto/16 :goto_5

    .line 960
    :cond_9
    :try_start_9
    invoke-static {v4, v3, v1, v2}, Lccc71/bmw/lib/bi;->a(IIJ)J

    move-result-wide v1

    .line 962
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_a

    sget-object v6, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_b

    .line 964
    :cond_a
    const-string v3, "battery_widget_monitor"

    const-string v4, "Finished loading"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v3, 0x0

    sput-boolean v3, Lccc71/bmw/lib/bi;->a:Z
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_7

    .line 999
    :catch_3
    move-exception v0

    .line 1001
    const-string v1, "battery_widget_monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bmw_history_store - exception loading history: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 969
    :cond_b
    add-int/2addr v3, v4

    .line 970
    rsub-int v4, v4, 0xb40

    .line 972
    if-ge v3, v8, :cond_2

    .line 973
    const/4 v6, 0x0

    :try_start_a
    invoke-direct {p0, v6}, Lccc71/bmw/lib/bi;->a(Z)V
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_6

    .line 984
    :cond_c
    :try_start_b
    sget-object v3, Lccc71/bmw/lib/bi;->f:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 979
    :catchall_0
    move-exception v0

    :try_start_c
    monitor-exit v1

    throw v0
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 1004
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
