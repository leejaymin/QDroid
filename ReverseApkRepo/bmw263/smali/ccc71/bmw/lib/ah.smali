.class final Lccc71/bmw/lib/ah;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_calibration;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    .line 196
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/ah;)Lccc71/bmw/lib/bmw_calibration;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 28

    .prologue
    .line 201
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->aa(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x384

    move v3, v2

    .line 205
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->l(Landroid/content/Context;)I

    move-result v21

    .line 207
    :goto_1
    invoke-static {}, Lccc71/bmw/lib/bi;->j()Z

    move-result v2

    if-nez v2, :cond_5

    .line 210
    invoke-static {}, Lccc71/bmw/lib/bi;->d()Ljava/util/ArrayList;

    move-result-object v22

    .line 212
    const/16 v8, 0x64

    .line 213
    const/4 v6, 0x0

    .line 214
    const v9, 0x186a0

    .line 215
    const/4 v7, 0x0

    .line 216
    const/16 v16, 0x0

    .line 217
    const/4 v15, 0x0

    .line 219
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const/4 v4, 0x0

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v2

    .line 226
    int-to-float v2, v2

    const/high16 v5, 0x4561

    div-float v25, v2, v5

    .line 228
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 229
    if-eqz v5, :cond_2f

    .line 231
    const/4 v12, 0x0

    .line 233
    add-int/lit8 v2, v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    .line 235
    iget v13, v2, Lccc71/bmw/data/b;->c:I

    .line 236
    iget v14, v2, Lccc71/bmw/data/b;->c:I

    .line 237
    iget v10, v2, Lccc71/bmw/data/b;->b:I

    .line 238
    const/4 v11, -0x1

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iget-object v2, v2, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    if-eqz v2, :cond_0

    .line 241
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iget-object v2, v2, Lccc71/bmw/data/a/a;->q:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    sub-long v17, v17, v19

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v19, v0

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v2, v0

    sub-int v2, v5, v2

    add-int/lit8 v2, v2, -0x1

    .line 242
    if-lt v2, v5, :cond_6

    move v4, v5

    .line 247
    :cond_0
    :goto_2
    const-string v2, "battery_widget_monitor"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Skipping "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " records out of "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    add-int/lit8 v2, v5, -0x1

    move/from16 v17, v2

    move/from16 v18, v11

    move/from16 v19, v10

    move v5, v8

    move v8, v6

    move v10, v15

    move/from16 v15, v16

    :goto_3
    move/from16 v0, v17

    if-ge v0, v4, :cond_7

    move v10, v4

    move v13, v7

    move v2, v9

    move v14, v8

    move v15, v5

    .line 429
    :goto_4
    const v3, 0x186a0

    if-ne v2, v3, :cond_24

    .line 430
    const/4 v2, 0x0

    move v3, v2

    .line 432
    :goto_5
    const-string v2, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calibration range: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-wide/16 v11, 0x0

    .line 435
    const-wide/16 v7, 0x0

    .line 437
    const-string v2, "battery_widget_monitor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Charge cycles:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x5

    if-gt v2, v4, :cond_1d

    .line 456
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 457
    if-lez v16, :cond_22

    .line 459
    const/4 v2, 0x0

    move v4, v2

    move-wide v5, v7

    :goto_7
    move/from16 v0, v16

    if-lt v4, v0, :cond_1f

    .line 464
    move/from16 v0, v16

    int-to-long v7, v0

    div-long v8, v11, v7

    .line 465
    move/from16 v0, v16

    int-to-long v11, v0

    div-long/2addr v5, v11

    .line 469
    :goto_8
    if-nez v16, :cond_1

    const-wide/16 v5, 0xc8

    .line 471
    :cond_1
    sub-int v4, v14, v15

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iput v14, v2, Lccc71/bmw/data/a/a;->e:I

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iput v15, v2, Lccc71/bmw/data/a/a;->d:I

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iput v13, v2, Lccc71/bmw/data/a/a;->g:I

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iput v3, v2, Lccc71/bmw/data/a/a;->f:I

    .line 479
    const/4 v2, 0x0

    .line 480
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v7}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v7

    iget v7, v7, Lccc71/bmw/data/a/a;->i:I

    if-ge v7, v13, :cond_2

    .line 482
    const/4 v2, 0x1

    .line 483
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v7}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v7

    iput v13, v7, Lccc71/bmw/data/a/a;->i:I

    .line 485
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v7}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v7

    iget v7, v7, Lccc71/bmw/data/a/a;->h:I

    if-gt v7, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v7}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v7

    iget v7, v7, Lccc71/bmw/data/a/a;->h:I

    if-nez v7, :cond_21

    .line 487
    :cond_3
    const/4 v7, 0x1

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iput v3, v2, Lccc71/bmw/data/a/a;->h:I

    .line 491
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v2

    iget v2, v2, Lccc71/bmw/data/a/a;->i:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v11}, Lccc71/bmw/lib/bmw_calibration;->f(Lccc71/bmw/lib/bmw_calibration;)Lccc71/bmw/data/a/a;

    move-result-object v11

    iget v11, v11, Lccc71/bmw/data/a/a;->h:I

    sub-int v11, v2, v11

    .line 492
    sub-int v12, v13, v3

    .line 494
    if-eqz v4, :cond_20

    mul-int/lit8 v2, v12, 0x64

    div-int v13, v2, v4

    .line 498
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/bmw/lib/ah;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_calibration;->a(Lccc71/bmw/lib/bmw_calibration;)Landroid/os/Handler;

    move-result-object v14

    new-instance v2, Lccc71/bmw/lib/ai;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v13}, Lccc71/bmw/lib/ai;-><init>(Lccc71/bmw/lib/ah;IJZJIIII)V

    .line 625
    const-wide/16 v3, 0x3e8

    .line 498
    invoke-virtual {v14, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    return-void

    .line 203
    :cond_4
    const/16 v2, 0x1f4

    move v3, v2

    goto/16 :goto_0

    .line 208
    :cond_5
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_1

    .line 244
    :cond_6
    if-gtz v2, :cond_2e

    .line 245
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_2

    .line 250
    :cond_7
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/bmw/data/b;

    .line 251
    iget v6, v2, Lccc71/bmw/data/b;->c:I

    .line 252
    if-ge v8, v6, :cond_2d

    move/from16 v16, v6

    .line 254
    :goto_b
    if-le v5, v6, :cond_8

    if-ltz v6, :cond_8

    move v5, v6

    .line 256
    :cond_8
    iget v8, v2, Lccc71/bmw/data/b;->d:I

    .line 257
    if-eqz v8, :cond_2c

    .line 259
    if-ge v7, v8, :cond_9

    move v7, v8

    .line 261
    :cond_9
    if-le v9, v8, :cond_2c

    .line 265
    :goto_c
    iget v0, v2, Lccc71/bmw/data/b;->b:I

    move/from16 v20, v0

    .line 266
    iget-byte v11, v2, Lccc71/bmw/data/b;->g:B

    .line 267
    move/from16 v0, v18

    if-ne v0, v11, :cond_b

    const/4 v9, 0x1

    move/from16 v0, v18

    if-eq v0, v9, :cond_a

    const/4 v9, 0x3

    move/from16 v0, v18

    if-ne v0, v9, :cond_2b

    :cond_a
    const/16 v9, 0x64

    if-ne v14, v9, :cond_2b

    if-gez v20, :cond_2b

    .line 269
    :cond_b
    if-nez v18, :cond_d

    move v13, v14

    move v9, v10

    move v10, v15

    .line 299
    :goto_d
    const/4 v15, 0x1

    if-eq v11, v15, :cond_c

    const/4 v15, 0x3

    if-ne v11, v15, :cond_2a

    .line 301
    :cond_c
    if-eqz v20, :cond_12

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    if-ne v14, v6, :cond_12

    .line 306
    const/4 v12, 0x0

    move v2, v6

    .line 248
    :goto_e
    add-int/lit8 v13, v17, -0x1

    move/from16 v17, v13

    move/from16 v18, v11

    move v14, v6

    move/from16 v19, v20

    move v15, v10

    move v10, v9

    move v13, v2

    move v9, v8

    move/from16 v8, v16

    goto/16 :goto_3

    .line 273
    :cond_d
    const/4 v9, 0x1

    move/from16 v0, v18

    if-eq v0, v9, :cond_e

    const/4 v9, 0x3

    move/from16 v0, v18

    if-ne v0, v9, :cond_2b

    .line 275
    :cond_e
    sub-int v9, v13, v14

    const/16 v10, 0x28

    if-le v9, v10, :cond_f

    .line 277
    if-eqz v15, :cond_10

    mul-int/lit8 v9, v12, 0x64

    int-to-float v9, v9

    mul-float v9, v9, v25

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    add-int/lit8 v10, v15, 0x64

    sub-int v18, v13, v14

    mul-int v10, v10, v18

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 279
    :goto_f
    if-lez v9, :cond_11

    .line 281
    sub-int v10, v13, v14

    rsub-int/lit8 v10, v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v10, "battery_widget_monitor"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v18, "End charge at %="

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mAh="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " (capacity error: +"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "%)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_f
    :goto_10
    const/4 v12, 0x0

    .line 295
    const/4 v9, 0x0

    move v13, v14

    move v10, v9

    goto/16 :goto_d

    .line 278
    :cond_10
    int-to-float v9, v12

    mul-float v9, v9, v25

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    sub-int v10, v13, v14

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    goto :goto_f

    .line 287
    :cond_11
    const-string v10, "battery_widget_monitor"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v18, "End charge (NOT USED) at %="

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " chargeMA="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mAh="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 312
    :cond_12
    add-int v12, v12, v20

    .line 314
    sget-boolean v14, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v14, :cond_2a

    .line 316
    iget-short v14, v2, Lccc71/bmw/data/b;->f:S

    if-nez v14, :cond_14

    const/16 v14, 0x32

    if-ge v6, v14, :cond_14

    .line 318
    const/4 v14, 0x3

    if-ne v11, v14, :cond_15

    move/from16 v0, v20

    int-to-double v14, v0

    int-to-double v0, v3

    move-wide/from16 v18, v0

    const-wide v26, 0x3feccccccccccccdL

    mul-double v18, v18, v26

    cmpg-double v14, v14, v18

    if-gez v14, :cond_15

    .line 322
    mul-int/lit8 v14, v20, 0x64

    div-int/2addr v14, v3

    add-int/lit8 v14, v14, -0x64

    .line 323
    if-gez v9, :cond_29

    .line 327
    neg-int v15, v10

    neg-int v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_13

    move v10, v14

    .line 331
    :cond_13
    neg-int v15, v10

    neg-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_29

    :goto_11
    move v10, v9

    move v9, v14

    .line 366
    :cond_14
    :goto_12
    const/4 v14, 0x3

    if-ne v11, v14, :cond_19

    move/from16 v0, v20

    if-le v0, v3, :cond_19

    .line 370
    mul-int/lit8 v2, v20, 0x64

    div-int/2addr v2, v3

    add-int/lit8 v14, v2, -0x64

    .line 371
    if-lez v9, :cond_18

    .line 375
    if-ge v10, v14, :cond_27

    move v2, v14

    .line 379
    :goto_13
    if-ge v2, v9, :cond_26

    move v2, v11

    move v10, v9

    move v9, v12

    :goto_14
    move v11, v2

    move v12, v9

    move v2, v13

    move v9, v14

    .line 392
    goto/16 :goto_e

    .line 339
    :cond_15
    const/4 v14, 0x1

    if-ne v11, v14, :cond_17

    mul-int/lit8 v14, v20, 0x64

    mul-int/lit8 v15, v21, 0x5a

    if-ge v14, v15, :cond_17

    if-eqz v21, :cond_17

    .line 343
    mul-int/lit8 v14, v20, 0x64

    div-int v14, v14, v21

    add-int/lit8 v14, v14, -0x64

    .line 344
    if-gez v9, :cond_28

    .line 348
    neg-int v15, v10

    neg-int v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_16

    move v10, v14

    .line 352
    :cond_16
    neg-int v15, v10

    neg-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v15, v0, :cond_28

    :goto_15
    move v10, v9

    move v9, v14

    .line 358
    goto :goto_12

    .line 362
    :cond_17
    const/4 v9, 0x0

    goto :goto_12

    .line 388
    :cond_18
    sub-int v2, v20, v3

    sub-int v9, v12, v2

    .line 389
    const/4 v2, 0x1

    goto :goto_14

    .line 394
    :cond_19
    const/4 v14, 0x1

    if-ne v11, v14, :cond_1c

    mul-int/lit8 v14, v20, 0x64

    iget-short v2, v2, Lccc71/bmw/data/b;->f:S

    if-nez v2, :cond_1b

    const/16 v2, 0x6e

    :goto_16
    mul-int v2, v2, v21

    if-le v14, v2, :cond_1c

    if-eqz v21, :cond_1c

    .line 398
    mul-int/lit8 v2, v20, 0x64

    div-int v2, v2, v21

    add-int/lit8 v2, v2, -0x64

    .line 399
    if-lez v9, :cond_25

    .line 403
    if-ge v10, v2, :cond_1a

    move v10, v2

    .line 407
    :cond_1a
    if-ge v10, v9, :cond_25

    :goto_17
    move v10, v9

    move v9, v2

    move v2, v13

    .line 413
    goto/16 :goto_e

    .line 394
    :cond_1b
    const/16 v2, 0x64

    goto :goto_16

    .line 417
    :cond_1c
    const/4 v9, 0x0

    move v2, v13

    goto/16 :goto_e

    .line 440
    :cond_1d
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 441
    const/high16 v6, -0x8000

    .line 442
    const/4 v5, -0x1

    .line 443
    const/4 v4, 0x0

    :goto_18
    if-lt v4, v9, :cond_1e

    .line 452
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 453
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_6

    .line 445
    :cond_1e
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 446
    if-le v2, v6, :cond_23

    move v5, v2

    move v2, v4

    .line 443
    :goto_19
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v5, v2

    goto :goto_18

    .line 461
    :cond_1f
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v11, v7

    .line 462
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v7, v5

    .line 459
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v5, v7

    goto/16 :goto_7

    :cond_20
    move v13, v12

    .line 494
    goto/16 :goto_a

    :cond_21
    move v7, v2

    goto/16 :goto_9

    :cond_22
    move-wide v5, v7

    move-wide v8, v11

    goto/16 :goto_8

    :cond_23
    move v2, v5

    move v5, v6

    goto :goto_19

    :cond_24
    move v3, v2

    goto/16 :goto_5

    :cond_25
    move v9, v10

    goto :goto_17

    :cond_26
    move v9, v12

    move v10, v2

    move v2, v11

    goto/16 :goto_14

    :cond_27
    move v2, v10

    goto/16 :goto_13

    :cond_28
    move v9, v10

    goto/16 :goto_15

    :cond_29
    move v9, v10

    goto/16 :goto_11

    :cond_2a
    move v2, v13

    goto/16 :goto_e

    :cond_2b
    move v9, v10

    move v10, v15

    goto/16 :goto_d

    :cond_2c
    move v8, v9

    goto/16 :goto_c

    :cond_2d
    move/from16 v16, v8

    goto/16 :goto_b

    :cond_2e
    move v4, v2

    goto/16 :goto_2

    :cond_2f
    move v10, v4

    move v13, v7

    move v2, v9

    move v14, v6

    move v15, v8

    goto/16 :goto_4
.end method
