.class public Lcom/kms/kmsshared/reports/Reports;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final transient FILTER_ADMINKIT:I = 0xa

.field public static final transient FILTER_ALL:I = 0x0

.field public static final transient FILTER_ANTI_PHISHING:I = 0x6

.field public static final transient FILTER_ANTI_SPAM:I = 0x3

.field public static final transient FILTER_ANTI_THEFT:I = 0x2

.field public static final transient FILTER_AV_AND_UPDATER:I = 0x5

.field public static final transient FILTER_GENERAL:I = 0x4

.field public static final transient FILTER_PRIVACY_PROTECTION:I = 0x1

.field private static transient a:Lcom/kms/kmsshared/reports/Reports;

.field private static final serialVersionUID:J


# instance fields
.field private mEvents:Ljava/util/Vector;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    .line 38
    return-void
.end method

.method private static declared-synchronized a()Lcom/kms/kmsshared/reports/Reports;
    .locals 2

    .prologue
    .line 122
    const-class v1, Lcom/kms/kmsshared/reports/Reports;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/reports/Reports;->a:Lcom/kms/kmsshared/reports/Reports;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->b()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    sput-object v0, Lcom/kms/kmsshared/reports/Reports;->a:Lcom/kms/kmsshared/reports/Reports;

    .line 125
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/reports/Reports;->a:Lcom/kms/kmsshared/reports/Reports;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(I)Ljava/util/Enumeration;
    .locals 1
    .parameter

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/kms/kmsshared/reports/Reports;->b(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(I[Ljava/io/Serializable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 152
    monitor-enter p0

    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 420
    :try_start_0
    new-instance v0, Lcom/kms/kmsshared/reports/Event$GPSFindInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/kms/kmsshared/reports/Event$GPSFindInfo;-><init>(I[Ljava/io/Serializable;I)V

    .line 435
    :goto_0
    iget-object v1, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    iget-object v2, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 438
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/kms/kmsshared/reports/Reports;->d()V

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/kms/kmsshared/reports/Reports;->c()V

    .line 443
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    .line 427
    :cond_1
    :try_start_2
    new-instance v0, Lcom/kms/kmsshared/reports/Event$Info;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/kms/kmsshared/reports/Event$Info;-><init>(I[Ljava/io/Serializable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 443
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static a(Lcom/kms/kmsshared/reports/Event;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 611
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    if-eqz v0, :cond_1

    move v1, v2

    .line 613
    :goto_0
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Event;->_arguments:[Ljava/io/Serializable;

    aget-object v0, v0, v1

    .line 616
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 619
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 613
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 629
    :cond_1
    return v2
.end method

.method public static add(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 43
    return-void
.end method

.method public static add(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 48
    return-void
.end method

.method public static add(IIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 63
    return-void
.end method

.method public static add(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 53
    return-void
.end method

.method public static add(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/Serializable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/kms/kmsshared/reports/Reports;->add(I[Ljava/io/Serializable;)V

    .line 58
    return-void
.end method

.method public static add(I[Ljava/io/Serializable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/kms/kmsshared/reports/Reports;->a(I[Ljava/io/Serializable;)V

    .line 68
    return-void
.end method

.method private static b()Lcom/kms/kmsshared/reports/Reports;
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/io/File;

    const-string v2, "reports.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-static {v1}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Reports;

    .line 134
    if-nez v0, :cond_0

    new-instance v0, Lcom/kms/kmsshared/reports/Reports;

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/Reports;-><init>()V

    :cond_0
    return-object v0
.end method

.method private b(I)Ljava/util/Vector;
    .locals 6
    .parameter

    .prologue
    .line 460
    iget-object v3, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v3

    .line 462
    if-nez p1, :cond_0

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    monitor-exit v3

    .line 574
    :goto_0
    return-object v0

    .line 468
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 469
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 471
    iget-object v0, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Event;

    .line 472
    packed-switch p1, :pswitch_data_0

    .line 562
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 476
    :pswitch_0
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 477
    const/16 v5, 0x25

    if-eq v4, v5, :cond_2

    const/16 v5, 0x26

    if-eq v4, v5, :cond_2

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2

    const/16 v5, 0x28

    if-eq v4, v5, :cond_2

    const/16 v5, 0x31

    if-eq v4, v5, :cond_2

    const/16 v5, 0x32

    if-ne v4, v5, :cond_1

    .line 484
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 491
    :pswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 492
    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    const/4 v5, 0x7

    if-eq v4, v5, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    const/16 v5, 0x36

    if-eq v4, v5, :cond_3

    const/16 v5, 0xe

    if-eq v4, v5, :cond_3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x37

    if-ne v4, v5, :cond_1

    .line 507
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 514
    :pswitch_2
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 515
    const/16 v5, 0x17

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_4

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->a(Lcom/kms/kmsshared/reports/Event;)Z

    :cond_4
    const/16 v5, 0x1e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_5

    const/16 v5, 0x13

    if-eq v4, v5, :cond_5

    const/16 v5, 0x29

    if-eq v4, v5, :cond_5

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x33

    if-eq v4, v5, :cond_5

    const/16 v5, 0x34

    if-eq v4, v5, :cond_5

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_5

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    .line 528
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 534
    :pswitch_3
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 535
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    .line 538
    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 544
    :pswitch_4
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 545
    const/16 v5, 0xb

    if-eq v4, v5, :cond_7

    const/16 v5, 0xc

    if-eq v4, v5, :cond_7

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_7

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    .line 550
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 556
    :pswitch_5
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v4

    .line 557
    const/16 v5, 0x35

    if-ne v4, v5, :cond_1

    .line 559
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 574
    :cond_8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private declared-synchronized c()V
    .locals 3

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/io/File;

    const-string v2, "reports.dat"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-static {v1, p0}, LS;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v0

    .line 144
    if-nez v0, :cond_0

    .line 146
    const-string v0, "KMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t save "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 447
    move v0, v1

    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method

.method public static getEventGroup(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x3

    .line 582
    if-eqz p0, :cond_0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    const/4 v3, 0x7

    if-eq p0, v3, :cond_0

    const/16 v3, 0x8

    if-eq p0, v3, :cond_0

    if-eq p0, v0, :cond_0

    const/16 v3, 0xd

    if-eq p0, v3, :cond_0

    const/16 v3, 0x36

    if-eq p0, v3, :cond_0

    const/16 v3, 0xe

    if-eq p0, v3, :cond_0

    const/16 v3, 0x9

    if-eq p0, v3, :cond_0

    const/16 v3, 0xa

    if-eq p0, v3, :cond_0

    const/16 v3, 0x37

    if-ne p0, v3, :cond_2

    .line 596
    :cond_0
    const/4 v0, 0x5

    .line 605
    :cond_1
    :goto_0
    return v0

    .line 598
    :cond_2
    const/16 v3, 0x2a

    if-eq p0, v3, :cond_3

    const/16 v3, 0x2b

    if-ne p0, v3, :cond_4

    :cond_3
    move v0, v2

    .line 600
    goto :goto_0

    .line 602
    :cond_4
    const/16 v2, 0x35

    if-eq p0, v2, :cond_1

    move v0, v1

    .line 605
    goto :goto_0
.end method

.method public static getEvents()Ljava/util/Enumeration;
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kms/kmsshared/reports/Reports;->a(I)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getEventsCount(I)I
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/kms/kmsshared/reports/Reports;->b(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public static getFilteredEvents(I)Ljava/util/Enumeration;
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/kms/kmsshared/reports/Reports;->a(I)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getFilteredEventsInVector(I)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/kms/kmsshared/reports/Reports;->b(I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    return-object v0
.end method

.method public static declared-synchronized removeAll()V
    .locals 3

    .prologue
    .line 93
    const-class v1, Lcom/kms/kmsshared/reports/Reports;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v2, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v0, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 96
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/Reports;->c()V

    .line 101
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

    .line 93
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized removeGroup(I)V
    .locals 5
    .parameter

    .prologue
    .line 106
    const-class v2, Lcom/kms/kmsshared/reports/Reports;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v3, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    iget-object v4, v0, Lcom/kms/kmsshared/reports/Reports;->mEvents:Ljava/util/Vector;

    .line 109
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 111
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/reports/Event;

    .line 112
    invoke-virtual {v0}, Lcom/kms/kmsshared/reports/Event;->getID()I

    move-result v0

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->getEventGroup(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 113
    invoke-virtual {v4, v1}, Ljava/util/Vector;->removeElementAt(I)V

    .line 109
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {}, Lcom/kms/kmsshared/reports/Reports;->a()Lcom/kms/kmsshared/reports/Reports;

    move-result-object v0

    invoke-direct {v0}, Lcom/kms/kmsshared/reports/Reports;->c()V

    .line 117
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 106
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
