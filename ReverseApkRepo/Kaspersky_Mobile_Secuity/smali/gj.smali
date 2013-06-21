.class public Lgj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static e:Lcom/kms/kmsshared/KMSApplication;

.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static g:Lgl;

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lgj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    sput-object v2, Lgj;->e:Lcom/kms/kmsshared/KMSApplication;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lgj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    sput-object v2, Lgj;->g:Lgl;

    .line 103
    sput-boolean v1, Lgj;->h:Z

    .line 272
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/kms/kmsshared/KMSApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    sput-object p0, Lgj;->e:Lcom/kms/kmsshared/KMSApplication;

    .line 221
    return-void
.end method

.method public static declared-synchronized a(Lgl;)V
    .locals 4
    .parameter

    .prologue
    .line 333
    const-class v1, Lgj;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lgj;->g:Lgl;

    .line 335
    sget-object v0, Lgj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 336
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 337
    const-class v2, Lgd;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 338
    :try_start_1
    invoke-virtual {v0}, Lgd;->a()V

    .line 339
    sget-object v3, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v0, v0, Lgd;->q:I

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 340
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

    .line 333
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 128
    invoke-static {p0}, Lgj;->c(Z)Z

    .line 129
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 131
    const-class v1, Lgd;

    monitor-enter v1

    .line 132
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 133
    iget-boolean v0, v0, Lgd;->c:Z

    .line 134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 137
    invoke-static {}, Lgj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, LdT;->d(I)V

    .line 139
    invoke-static {}, LdT;->e()V

    .line 140
    sget-object v0, Lgj;->e:Lcom/kms/kmsshared/KMSApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/kms/kmsshared/KMSApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 142
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 152
    :cond_0
    :goto_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Leu;->a(Landroid/content/Context;)Z

    .line 154
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 146
    :cond_1
    sget-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x2

    invoke-static {v0}, LdT;->d(I)V

    .line 148
    invoke-static {}, LdT;->e()V

    goto :goto_0
.end method

.method private static a(ZLfT;LfT;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 738
    if-eqz p0, :cond_1

    .line 739
    invoke-virtual {p1, p3}, LfT;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 740
    invoke-virtual {p2, p4}, LfT;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, LfT;->a(ILjava/lang/Object;)V

    .line 742
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, LfT;->a(ILjava/lang/Object;)V

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    invoke-virtual {p1, p3}, LfT;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_0

    .line 748
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, LfT;->a(ILjava/lang/Object;)V

    .line 749
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, LfT;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lgj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static a(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 375
    sget-object v2, Lgj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 630
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 378
    :cond_1
    sget-object v2, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 379
    sget-object v3, Lgj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 381
    if-eqz v2, :cond_0

    .line 384
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 387
    :pswitch_1
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 389
    :pswitch_2
    const/4 v2, 0x5

    if-ne v3, v2, :cond_0

    move v0, v1

    .line 390
    goto :goto_0

    .line 395
    :pswitch_3
    if-ne v3, v4, :cond_2

    .line 396
    invoke-static {}, Lgj;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lgj;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 398
    goto :goto_0

    .line 403
    :pswitch_4
    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 406
    :pswitch_5
    if-ne v3, v4, :cond_3

    .line 407
    invoke-static {}, Lgj;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lgj;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 409
    goto :goto_0

    .line 414
    :pswitch_6
    packed-switch v2, :pswitch_data_3

    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 416
    goto :goto_0

    .line 421
    :pswitch_8
    packed-switch v2, :pswitch_data_4

    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 422
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 423
    goto :goto_0

    .line 428
    :pswitch_b
    packed-switch v2, :pswitch_data_5

    goto :goto_0

    :pswitch_c
    move v0, v1

    .line 430
    goto :goto_0

    .line 435
    :pswitch_d
    packed-switch v2, :pswitch_data_6

    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 437
    goto :goto_0

    .line 442
    :pswitch_f
    packed-switch v2, :pswitch_data_7

    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 443
    goto :goto_0

    :pswitch_11
    move v0, v1

    .line 444
    goto :goto_0

    .line 449
    :pswitch_12
    packed-switch v2, :pswitch_data_8

    goto :goto_0

    :pswitch_13
    move v0, v1

    .line 451
    goto :goto_0

    .line 456
    :pswitch_14
    packed-switch v2, :pswitch_data_9

    goto :goto_0

    :pswitch_15
    move v0, v1

    .line 458
    goto :goto_0

    .line 463
    :pswitch_16
    packed-switch v2, :pswitch_data_a

    goto :goto_0

    :pswitch_17
    move v0, v1

    .line 464
    goto :goto_0

    :pswitch_18
    move v0, v1

    .line 465
    goto :goto_0

    .line 470
    :pswitch_19
    packed-switch v2, :pswitch_data_b

    goto :goto_0

    :pswitch_1a
    move v0, v1

    .line 472
    goto :goto_0

    .line 477
    :pswitch_1b
    packed-switch v2, :pswitch_data_c

    goto/16 :goto_0

    :pswitch_1c
    move v0, v1

    .line 478
    goto/16 :goto_0

    :pswitch_1d
    move v0, v1

    .line 479
    goto/16 :goto_0

    .line 484
    :pswitch_1e
    packed-switch v2, :pswitch_data_d

    goto/16 :goto_0

    :pswitch_1f
    move v0, v1

    .line 486
    goto/16 :goto_0

    .line 491
    :pswitch_20
    packed-switch v2, :pswitch_data_e

    goto/16 :goto_0

    :pswitch_21
    move v0, v1

    .line 493
    goto/16 :goto_0

    .line 498
    :pswitch_22
    packed-switch v2, :pswitch_data_f

    goto/16 :goto_0

    :pswitch_23
    move v0, v1

    .line 500
    goto/16 :goto_0

    .line 505
    :pswitch_24
    packed-switch v2, :pswitch_data_10

    goto/16 :goto_0

    :pswitch_25
    move v0, v1

    .line 506
    goto/16 :goto_0

    :pswitch_26
    move v0, v1

    .line 507
    goto/16 :goto_0

    .line 512
    :pswitch_27
    packed-switch v2, :pswitch_data_11

    goto/16 :goto_0

    :pswitch_28
    move v0, v1

    .line 513
    goto/16 :goto_0

    :pswitch_29
    move v0, v1

    .line 514
    goto/16 :goto_0

    .line 519
    :pswitch_2a
    packed-switch v2, :pswitch_data_12

    goto/16 :goto_0

    :pswitch_2b
    move v0, v1

    .line 521
    goto/16 :goto_0

    .line 526
    :pswitch_2c
    packed-switch v2, :pswitch_data_13

    goto/16 :goto_0

    :pswitch_2d
    move v0, v1

    .line 527
    goto/16 :goto_0

    :pswitch_2e
    move v0, v1

    .line 528
    goto/16 :goto_0

    .line 533
    :pswitch_2f
    packed-switch v2, :pswitch_data_14

    goto/16 :goto_0

    :pswitch_30
    move v0, v1

    .line 534
    goto/16 :goto_0

    :pswitch_31
    move v0, v1

    .line 535
    goto/16 :goto_0

    .line 540
    :pswitch_32
    packed-switch v2, :pswitch_data_15

    goto/16 :goto_0

    :pswitch_33
    move v0, v1

    .line 542
    goto/16 :goto_0

    .line 547
    :pswitch_34
    packed-switch v2, :pswitch_data_16

    goto/16 :goto_0

    :pswitch_35
    move v0, v1

    .line 548
    goto/16 :goto_0

    :pswitch_36
    move v0, v1

    .line 549
    goto/16 :goto_0

    .line 554
    :pswitch_37
    packed-switch v2, :pswitch_data_17

    goto/16 :goto_0

    :pswitch_38
    move v0, v1

    .line 555
    goto/16 :goto_0

    :pswitch_39
    move v0, v1

    .line 556
    goto/16 :goto_0

    .line 561
    :pswitch_3a
    packed-switch v2, :pswitch_data_18

    goto/16 :goto_0

    :pswitch_3b
    move v0, v1

    .line 562
    goto/16 :goto_0

    :pswitch_3c
    move v0, v1

    .line 563
    goto/16 :goto_0

    .line 568
    :pswitch_3d
    packed-switch v2, :pswitch_data_19

    goto/16 :goto_0

    :pswitch_3e
    move v0, v1

    .line 569
    goto/16 :goto_0

    :pswitch_3f
    move v0, v1

    .line 570
    goto/16 :goto_0

    .line 575
    :pswitch_40
    packed-switch v2, :pswitch_data_1a

    goto/16 :goto_0

    :pswitch_41
    move v0, v1

    .line 577
    goto/16 :goto_0

    .line 582
    :pswitch_42
    packed-switch v2, :pswitch_data_1b

    move v0, v1

    .line 585
    goto/16 :goto_0

    :pswitch_43
    move v0, v1

    .line 583
    goto/16 :goto_0

    :pswitch_44
    move v0, v1

    .line 584
    goto/16 :goto_0

    .line 589
    :pswitch_45
    packed-switch v2, :pswitch_data_1c

    move v0, v1

    .line 592
    goto/16 :goto_0

    :pswitch_46
    move v0, v1

    .line 590
    goto/16 :goto_0

    :pswitch_47
    move v0, v1

    .line 591
    goto/16 :goto_0

    .line 596
    :pswitch_48
    packed-switch v2, :pswitch_data_1d

    goto/16 :goto_0

    :pswitch_49
    move v0, v1

    .line 598
    goto/16 :goto_0

    .line 603
    :pswitch_4a
    packed-switch v2, :pswitch_data_1e

    goto/16 :goto_0

    :pswitch_4b
    move v0, v1

    .line 604
    goto/16 :goto_0

    :pswitch_4c
    move v0, v1

    .line 605
    goto/16 :goto_0

    .line 610
    :pswitch_4d
    packed-switch v2, :pswitch_data_1f

    goto/16 :goto_0

    :pswitch_4e
    move v0, v1

    .line 612
    goto/16 :goto_0

    .line 617
    :pswitch_4f
    packed-switch v2, :pswitch_data_20

    goto/16 :goto_0

    :pswitch_50
    move v0, v1

    .line 619
    goto/16 :goto_0

    .line 624
    :pswitch_51
    packed-switch v2, :pswitch_data_21

    goto/16 :goto_0

    :pswitch_52
    move v0, v1

    .line 626
    goto/16 :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_f
        :pswitch_16
        :pswitch_22
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2c
        :pswitch_32
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_42
        :pswitch_4a
        :pswitch_45
        :pswitch_4d
        :pswitch_4f
        :pswitch_12
        :pswitch_14
        :pswitch_b
        :pswitch_d
        :pswitch_19
        :pswitch_20
        :pswitch_48
        :pswitch_2f
        :pswitch_51
        :pswitch_1b
        :pswitch_1e
    .end packed-switch

    .line 387
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 403
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 414
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 421
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 428
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_0
        :pswitch_c
    .end packed-switch

    .line 435
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_0
        :pswitch_e
    .end packed-switch

    .line 442
    :pswitch_data_7
    .packed-switch 0x2
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 449
    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_0
        :pswitch_13
    .end packed-switch

    .line 456
    :pswitch_data_9
    .packed-switch 0x2
        :pswitch_0
        :pswitch_15
    .end packed-switch

    .line 463
    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_18
    .end packed-switch

    .line 470
    :pswitch_data_b
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1a
    .end packed-switch

    .line 477
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    .line 484
    :pswitch_data_d
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1f
    .end packed-switch

    .line 491
    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_0
        :pswitch_21
    .end packed-switch

    .line 498
    :pswitch_data_f
    .packed-switch 0x2
        :pswitch_0
        :pswitch_23
    .end packed-switch

    .line 505
    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_25
        :pswitch_26
    .end packed-switch

    .line 512
    :pswitch_data_11
    .packed-switch 0x2
        :pswitch_28
        :pswitch_29
    .end packed-switch

    .line 519
    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2b
    .end packed-switch

    .line 526
    :pswitch_data_13
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2e
    .end packed-switch

    .line 533
    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_30
        :pswitch_31
    .end packed-switch

    .line 540
    :pswitch_data_15
    .packed-switch 0x2
        :pswitch_0
        :pswitch_33
    .end packed-switch

    .line 547
    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_35
        :pswitch_36
    .end packed-switch

    .line 554
    :pswitch_data_17
    .packed-switch 0x2
        :pswitch_38
        :pswitch_39
    .end packed-switch

    .line 561
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_3c
    .end packed-switch

    .line 568
    :pswitch_data_19
    .packed-switch 0x2
        :pswitch_3e
        :pswitch_3f
    .end packed-switch

    .line 575
    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_0
        :pswitch_41
    .end packed-switch

    .line 582
    :pswitch_data_1b
    .packed-switch 0x2
        :pswitch_43
        :pswitch_44
    .end packed-switch

    .line 589
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_46
        :pswitch_47
    .end packed-switch

    .line 596
    :pswitch_data_1d
    .packed-switch 0x2
        :pswitch_0
        :pswitch_49
    .end packed-switch

    .line 603
    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_4b
        :pswitch_4c
    .end packed-switch

    .line 610
    :pswitch_data_1f
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4e
    .end packed-switch

    .line 617
    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_0
        :pswitch_50
    .end packed-switch

    .line 624
    :pswitch_data_21
    .packed-switch 0x2
        :pswitch_0
        :pswitch_52
    .end packed-switch
.end method

.method public static b()V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lgj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 296
    const-class v1, Lgd;

    monitor-enter v1

    .line 297
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, v0, Lgd;->m:Z

    .line 299
    invoke-virtual {v0}, Lgd;->b()V

    .line 300
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    sget-object v0, Lgj;->g:Lgl;

    invoke-virtual {v0}, Lgl;->d()V

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lgj;->h:Z

    return v0
.end method

.method public static c()V
    .locals 6

    .prologue
    .line 306
    sget-object v0, Lgj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 312
    const-class v1, Lgd;

    monitor-enter v1

    .line 313
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 314
    iget-wide v2, v0, Lgd;->o:J

    .line 315
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 317
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 318
    sget-object v4, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea600

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 321
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgk;

    invoke-direct {v1}, Lgk;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Z)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 158
    .line 159
    const-class v2, Lgj;

    monitor-enter v2

    .line 161
    :try_start_0
    sget-boolean v0, Lgj;->h:Z

    if-nez v0, :cond_4

    .line 163
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 164
    const-class v3, Lgd;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 165
    :try_start_1
    invoke-virtual {v0}, Lgd;->a()V

    .line 166
    const/4 v4, 0x0

    iput-boolean v4, v0, Lgd;->m:Z

    .line 167
    const/4 v4, 0x1

    iput-boolean v4, v0, Lgd;->f:Z

    .line 168
    invoke-virtual {v0}, Lgd;->b()V

    .line 169
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_0
    :try_start_2
    sget-object v0, Lgj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    if-nez p0, :cond_5

    .line 175
    sget-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 177
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 179
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 180
    const-class v3, Lgd;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 181
    :try_start_3
    invoke-virtual {v0}, Lgd;->a()V

    .line 184
    iget-wide v4, v0, Lgd;->o:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 185
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lgd;->o:J

    .line 186
    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 187
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lgd;->n:J

    .line 188
    invoke-virtual {v0}, Lgd;->b()V

    .line 190
    :cond_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 191
    :try_start_4
    invoke-static {}, Lgj;->k()Z

    move-result v0

    .line 192
    sget-object v1, Lgj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v1, v0

    .line 196
    :goto_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 197
    const-class v3, Lgd;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 198
    :try_start_5
    invoke-virtual {v0}, Lgd;->a()V

    .line 199
    sget-object v4, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 200
    iget v5, v0, Lgd;->q:I

    if-eq v5, v4, :cond_1

    .line 201
    iput v4, v0, Lgd;->q:I

    .line 202
    invoke-virtual {v0}, Lgd;->b()V

    .line 204
    :cond_1
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 205
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 206
    if-eqz v1, :cond_2

    .line 207
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->e()V

    .line 209
    :cond_2
    invoke-static {}, Lgj;->l()V

    .line 210
    sget-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v9, :cond_3

    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lfp;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-static {v0}, Lfb;->a(Landroid/content/Context;)V

    .line 214
    :cond_3
    return v8

    .line 169
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 205
    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    .line 170
    :cond_4
    const/4 v0, 0x0

    :try_start_8
    sput-boolean v0, Lgj;->h:Z

    goto/16 :goto_0

    .line 190
    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    .line 194
    :cond_5
    sget-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 204
    :catchall_3
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public static declared-synchronized d()V
    .locals 3

    .prologue
    .line 345
    const-class v1, Lgj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgj;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 346
    sget-object v0, Lgj;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit v1

    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 369
    invoke-static {}, Lgj;->j()I

    move-result v0

    .line 370
    mul-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method static synthetic g()Lgl;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lgj;->g:Lgl;

    return-object v0
.end method

.method private static h()Z
    .locals 6

    .prologue
    .line 112
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 113
    const-class v1, Lgd;

    monitor-enter v1

    .line 114
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 115
    iget-wide v2, v0, Lgd;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lgd;->n:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    return v0

    .line 119
    :cond_0
    monitor-exit v1

    .line 120
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static i()Z
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lgj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private static j()I
    .locals 9

    .prologue
    const-wide/32 v7, 0x5265c00

    .line 232
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 233
    const-class v1, Lgd;

    monitor-enter v1

    .line 234
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 235
    iget-wide v2, v0, Lgd;->o:J

    .line 236
    iget-wide v4, v0, Lgd;->n:J

    .line 237
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 239
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 240
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 241
    invoke-virtual {v6, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 242
    invoke-virtual {v1, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 244
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 249
    const/4 v0, 0x0

    .line 263
    :cond_0
    :goto_0
    return v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 252
    :cond_1
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 253
    rem-long v2, v0, v7

    long-to-int v2, v2

    .line 254
    div-long/2addr v0, v7

    long-to-int v0, v0

    .line 255
    if-eqz v2, :cond_0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static k()Z
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lgj;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 269
    sget-object v0, Lgj;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v5, 0x1

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 635
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgc;

    .line 636
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    invoke-virtual {v1, v5}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, LfY;

    .line 637
    invoke-static {}, LfS;->a()LfS;

    move-result-object v2

    invoke-virtual {v2, v8}, LfS;->a(I)LfV;

    move-result-object v2

    check-cast v2, LfZ;

    .line 638
    const/16 v3, 0xe

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v4

    .line 640
    invoke-virtual {v0, v6}, Lgc;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 641
    invoke-static {}, Lfp;->f()I

    move-result v7

    .line 643
    if-eqz v4, :cond_1

    if-nez v7, :cond_1

    .line 645
    invoke-static {v3}, Lfp;->a(I)V

    .line 646
    if-ne v3, v8, :cond_0

    .line 648
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->k()V

    .line 650
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lgc;->a(ILjava/lang/Object;)V

    .line 653
    :cond_1
    if-nez v4, :cond_3

    if-eqz v7, :cond_3

    .line 655
    invoke-static {v6}, Lfp;->a(I)V

    .line 656
    if-ne v7, v8, :cond_2

    .line 658
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->l()V

    .line 660
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lgc;->a(ILjava/lang/Object;)V

    .line 663
    :cond_3
    const/16 v3, 0xd

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v4

    .line 664
    invoke-virtual {v1, v8}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 665
    if-eqz v4, :cond_8

    .line 666
    invoke-virtual {v0, v5}, Lgc;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 667
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lgc;->a(ILjava/lang/Object;)V

    .line 668
    invoke-virtual {v0, v8}, Lgc;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 669
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, LfY;->a(ILjava/lang/Object;)V

    .line 670
    if-eqz v3, :cond_4

    .line 671
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, LfY;->a(ILjava/lang/Object;)V

    .line 686
    :cond_4
    :goto_0
    const/16 v3, 0x1f

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v7

    .line 687
    invoke-static {}, LfS;->a()LfS;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, LfS;->a(I)LfV;

    move-result-object v3

    check-cast v3, LfX;

    .line 688
    invoke-virtual {v3, v6}, LfX;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 689
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Lgc;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 690
    const/4 v4, -0x1

    .line 691
    if-eqz v7, :cond_b

    .line 692
    if-eqz v9, :cond_5

    .line 693
    if-eqz v8, :cond_a

    move v4, v5

    .line 695
    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, LfX;->a(ILjava/lang/Object;)V

    .line 696
    invoke-virtual {v3}, LfX;->a()V

    .line 698
    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v3, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v3}, Lcom/kms/kmsshared/KMSApplication;->y()V

    .line 712
    :cond_5
    :goto_2
    const/4 v3, -0x1

    if-eq v4, v3, :cond_7

    .line 713
    const/4 v3, 0x7

    if-nez v4, :cond_6

    move v5, v6

    :cond_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lgc;->a(ILjava/lang/Object;)V

    .line 717
    :cond_7
    invoke-static {v11}, Lgj;->a(I)Z

    move-result v3

    invoke-static {v3, v2, v0, v6, v10}, Lgj;->a(ZLfT;LfT;II)V

    .line 720
    const/4 v3, 0x6

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v3

    const/4 v4, 0x4

    invoke-static {v3, v2, v0, v10, v4}, Lgj;->a(ZLfT;LfT;II)V

    .line 723
    const/16 v3, 0x13

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v3

    const/4 v4, 0x6

    invoke-static {v3, v2, v0, v11, v4}, Lgj;->a(ZLfT;LfT;II)V

    .line 726
    const/4 v3, 0x4

    invoke-static {v3}, Lgj;->a(I)Z

    move-result v3

    const/16 v4, 0x9

    invoke-static {v3, v2, v0, v4, v11}, Lgj;->a(ZLfT;LfT;II)V

    .line 730
    invoke-virtual {v0}, Lgc;->a()V

    .line 731
    invoke-virtual {v1}, LfY;->a()V

    .line 732
    invoke-virtual {v2}, LfZ;->a()V

    .line 733
    return-void

    .line 676
    :cond_8
    if-eqz v7, :cond_4

    .line 677
    invoke-virtual {v0, v8}, Lgc;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 678
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    .line 679
    invoke-static {}, Lcom/kms/antispam/ContactsBlocker;->d()V

    .line 680
    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lgc;->a(ILjava/lang/Object;)V

    .line 681
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Lgc;->a(ILjava/lang/Object;)V

    .line 682
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, LfY;->a(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v4, v6

    .line 693
    goto :goto_1

    .line 702
    :cond_b
    if-eqz v8, :cond_5

    .line 705
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, LfX;->a(ILjava/lang/Object;)V

    .line 706
    invoke-virtual {v3}, LfX;->a()V

    .line 708
    sget-object v3, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    check-cast v3, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v3}, Lcom/kms/kmsshared/KMSApplication;->z()V

    move v4, v5

    goto :goto_2
.end method
