.class final Lccc71/pmw/lib/ib;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_memory;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_memory;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    .line 280
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 286
    :try_start_0
    const-string v1, "[ \t]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 287
    array-length v2, v1

    if-lez v2, :cond_0

    .line 289
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter

    .prologue
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lccc71/pmw/b/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 302
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received internal data with "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " lines"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 307
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/lib/ib;->a(Ljava/lang/String;)I

    move-result v4

    .line 308
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/lib/ib;->a(Ljava/lang/String;)I

    move-result v5

    .line 309
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/lib/ib;->a(Ljava/lang/String;)I

    move-result v6

    .line 310
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/lib/ib;->a(Ljava/lang/String;)I

    move-result v7

    .line 311
    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/lib/ib;->a(Ljava/lang/String;)I

    move-result v2

    .line 312
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x6

    if-lt v1, v8, :cond_2

    .line 313
    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/lib/ib;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    move v3, v1

    .line 315
    :goto_0
    new-instance v2, Lccc71/utils/aa;

    const/16 v1, -0x7f80

    int-to-long v8, v4

    invoke-direct {v2, v1, v8, v9}, Lccc71/utils/aa;-><init>(IJ)V

    .line 316
    new-instance v8, Lccc71/utils/aa;

    const v1, -0x30afb0

    int-to-long v9, v5

    invoke-direct {v8, v1, v9, v10}, Lccc71/utils/aa;-><init>(IJ)V

    .line 317
    new-instance v9, Lccc71/utils/aa;

    const v1, -0x7f0080

    int-to-long v10, v6

    invoke-direct {v9, v1, v10, v11}, Lccc71/utils/aa;-><init>(IJ)V

    .line 318
    new-instance v10, Lccc71/utils/aa;

    const v1, -0xaf20b0

    int-to-long v11, v7

    invoke-direct {v10, v1, v11, v12}, Lccc71/utils/aa;-><init>(IJ)V

    .line 319
    new-instance v11, Lccc71/utils/aa;

    const v1, -0x7f7f01

    int-to-long v12, v3

    invoke-direct {v11, v1, v12, v13}, Lccc71/utils/aa;-><init>(IJ)V

    .line 320
    new-instance v12, Lccc71/utils/aa;

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v13}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v13

    iget-wide v13, v13, Lccc71/pmw/b/u;->b:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v15}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v15

    iget-wide v15, v15, Lccc71/pmw/b/u;->a:J

    sub-long/2addr v13, v15

    int-to-long v15, v4

    sub-long/2addr v13, v15

    int-to-long v15, v6

    sub-long/2addr v13, v15

    int-to-long v15, v3

    sub-long/2addr v13, v15

    invoke-direct {v12, v1, v13, v14}, Lccc71/utils/aa;-><init>(IJ)V

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v13, Lccc71/pmw/lib/d;->fK:I

    invoke-virtual {v1, v13}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lccc71/utils/ccc71_piechartview;

    .line 324
    new-instance v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 326
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 327
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v8, Lccc71/pmw/lib/d;->bt:I

    invoke-virtual {v2, v8}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v4}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v8, Lccc71/pmw/lib/d;->bu:I

    invoke-virtual {v2, v8}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v5}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v5, Lccc71/pmw/lib/d;->br:I

    invoke-virtual {v2, v5}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v6}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v5, Lccc71/pmw/lib/d;->bv:I

    invoke-virtual {v2, v5}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v7}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v5, Lccc71/pmw/lib/d;->bq:I

    invoke-virtual {v2, v5}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v5, Lccc71/pmw/lib/d;->bs:I

    invoke-virtual {v2, v5}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v5

    iget-wide v7, v5, Lccc71/pmw/b/u;->b:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_memory;->a(Lccc71/pmw/lib/pmw_memory;)Lccc71/pmw/b/u;

    move-result-object v5

    iget-wide v9, v5, Lccc71/pmw/b/u;->a:J

    sub-long/2addr v7, v9

    int-to-long v4, v4

    sub-long v4, v7, v4

    int-to-long v6, v6

    sub-long/2addr v4, v6

    int-to-long v6, v3

    sub-long v3, v4, v6

    long-to-int v3, v3

    invoke-static {v3}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    const/4 v2, 0x0

    invoke-virtual {v1, v13, v2}, Lccc71/utils/ccc71_piechartview;->setData(Ljava/util/List;Z)V

    .line 342
    invoke-virtual {v1}, Lccc71/utils/ccc71_piechartview;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_0
    :goto_1
    return-void

    .line 344
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 346
    const-string v1, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v3, Lccc71/pmw/lib/d;->jb:I

    invoke-virtual {v1, v3}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jc:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jd:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->je:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 355
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jf:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 357
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jg:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 359
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 365
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jb:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_memory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lccc71/pmw/lib/g;->dD:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jc:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 368
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jd:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 370
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->je:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 372
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jf:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 374
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lccc71/pmw/lib/ib;->a:Lccc71/pmw/lib/pmw_memory;

    sget v2, Lccc71/pmw/lib/d;->jg:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_memory;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 376
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 379
    const-string v2, "process_monitor_widget"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "Received "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    move v3, v2

    goto/16 :goto_0
.end method
