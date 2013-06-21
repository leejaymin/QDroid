.class Lcom/cauly/android/ad/AdView$1;
.super Ljava/lang/Thread;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cauly/android/ad/AdView;->realodAD()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cauly/android/ad/AdView;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    .line 398
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/cauly/android/ad/AdView$1;)Lcom/cauly/android/ad/AdView;
    .locals 1
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 42

    .prologue
    .line 401
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 402
    .local v3, context:Landroid/content/Context;
    new-instance v2, Lcom/cauly/android/ad/AdHandler;

    sget-object v4, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_ADDRESS:Ljava/lang/String;

    .line 403
    sget-object v5, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_PORT:Ljava/lang/String;

    sget-object v6, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_PAGE:Ljava/lang/String;

    .line 404
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cauly/android/ad/AdCommon;->getAppCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cauly/android/ad/AdCommon;->getGender()Ljava/lang/String;

    move-result-object v8

    .line 405
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cauly/android/ad/AdCommon;->getAge()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v10

    invoke-virtual {v10}, Lcom/cauly/android/ad/AdCommon;->getGpsInfo()Ljava/lang/String;

    move-result-object v10

    .line 406
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v11

    invoke-virtual {v11}, Lcom/cauly/android/ad/AdCommon;->getUdid()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v12

    invoke-virtual {v12}, Lcom/cauly/android/ad/AdCommon;->getVersion()Ljava/lang/String;

    move-result-object v12

    .line 407
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v13

    invoke-virtual {v13}, Lcom/cauly/android/ad/AdCommon;->getAdType()Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_CONNECT_TIMEOUT:I

    .line 408
    sget v15, Lcom/cauly/android/ad/AdCommon;->AD_SERVER_READ_TIMEOUT:I

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/cauly/android/ad/AdCommon;->getLang()Ljava/lang/String;

    move-result-object v16

    .line 409
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cauly/android/ad/AdCommon;->getProvider()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/cauly/android/ad/AdCommon;->getManufacturer()Ljava/lang/String;

    move-result-object v18

    .line 410
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/cauly/android/ad/AdCommon;->getModel()Ljava/lang/String;

    move-result-object v19

    .line 402
    invoke-direct/range {v2 .. v19}, Lcom/cauly/android/ad/AdHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$2(Lcom/cauly/android/ad/AdHandler;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$3()Lcom/cauly/android/ad/AdHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cauly/android/ad/AdHandler;->parse()Ljava/util/List;

    move-result-object v6

    #setter for: Lcom/cauly/android/ad/AdView;->messages:Ljava/util/List;
    invoke-static {v2, v6}, Lcom/cauly/android/ad/AdView;->access$4(Lcom/cauly/android/ad/AdView;Ljava/util/List;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->messages:Ljava/util/List;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$5(Lcom/cauly/android/ad/AdView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v35

    .line 416
    .local v35, m_len:I
    if-lez v35, :cond_b

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->messages:Ljava/util/List;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$5(Lcom/cauly/android/ad/AdView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    .line 480
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    :try_start_1
    const-string v2, "window"

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v37

    .line 482
    .local v37, orien:I
    const-string v2, "window"

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    .line 483
    .local v25, display:Landroid/view/Display;
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getHeight()I

    move-result v30

    .line 484
    .local v30, height:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getWidth()I

    move-result v41

    .line 485
    .local v41, width:I
    const/16 v34, 0x0

    .line 486
    .local v34, layout_height:I
    move/from16 v0, v30

    move/from16 v1, v41

    if-le v0, v1, :cond_10

    .line 488
    div-int/lit8 v34, v30, 0xa

    .line 495
    :goto_1
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "cpm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v37

    if-ne v0, v2, :cond_0

    .line 497
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 498
    .local v31, i:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v6

    iget-object v6, v6, Lcom/cauly/android/ad/AdCommon;->action:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const/high16 v2, 0x1000

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 503
    .end local v31           #i:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "cpc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "banner"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "left_slide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 505
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .line 506
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    .line 507
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 505
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 509
    .local v4, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 510
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 511
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cauly/android/ad/AdLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 512
    invoke-virtual {v4}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 514
    .end local v4           #anim:Landroid/view/animation/TranslateAnimation;
    :cond_2
    new-instance v2, Lcom/cauly/android/ad/AdLayout;

    invoke-direct {v2, v3}, Lcom/cauly/android/ad/AdLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$10(Lcom/cauly/android/ad/AdLayout;)V

    .line 515
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v2, v6, v7, v0}, Lcom/cauly/android/ad/AdLayout;->setAdData(Lcom/cauly/android/ad/AdData;Lcom/cauly/android/ad/AdCommon;I)V

    .line 516
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/cauly/android/ad/AdLayout;->setVisibility(I)V

    .line 517
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x4000

    div-float v23, v2, v6

    .line 518
    .local v23, centerX:F
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "cpc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "banner"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 519
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "bottom_slide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "top_slide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "left_slide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 521
    :cond_4
    new-instance v39, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 523
    .local v39, set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "bottom_slide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 525
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v5, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 526
    .local v5, animation:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 527
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 528
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #animation:Landroid/view/animation/Animation;
    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v0, v34

    int-to-float v7, v0

    const/4 v8, 0x0

    invoke-direct {v5, v2, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 529
    .restart local v5       #animation:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 530
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 531
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 558
    .end local v5           #animation:Landroid/view/animation/Animation;
    .end local v39           #set:Landroid/view/animation/AnimationSet;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "circle"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "half"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 560
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "circle"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    new-instance v6, Lcom/cauly/android/ad/Rotate3dAnimation;

    const/4 v7, 0x0

    const/high16 v8, 0x4334

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v9, v23

    invoke-direct/range {v6 .. v12}, Lcom/cauly/android/ad/Rotate3dAnimation;-><init>(FFFFFZ)V

    iput-object v6, v2, Lcom/cauly/android/ad/AdView;->rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

    .line 568
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    iget-object v2, v2, Lcom/cauly/android/ad/AdView;->rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v6, v7}, Lcom/cauly/android/ad/Rotate3dAnimation;->setDuration(J)V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    iget-object v2, v2, Lcom/cauly/android/ad/AdView;->rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/cauly/android/ad/Rotate3dAnimation;->setFillAfter(Z)V

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    iget-object v2, v2, Lcom/cauly/android/ad/AdView;->rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Lcom/cauly/android/ad/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "circle"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    iget-object v2, v2, Lcom/cauly/android/ad/AdView;->rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

    new-instance v6, Lcom/cauly/android/ad/AdView$DisplayRolling;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/cauly/android/ad/AdView$DisplayRolling;-><init>(Lcom/cauly/android/ad/AdView;Lcom/cauly/android/ad/AdView$DisplayRolling;)V

    invoke-virtual {v2, v6}, Lcom/cauly/android/ad/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 575
    :cond_8
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    iget-object v6, v6, Lcom/cauly/android/ad/AdView;->rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

    invoke-virtual {v2, v6}, Lcom/cauly/android/ad/AdLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 578
    :cond_9
    new-instance v38, Landroid/widget/RelativeLayout$LayoutParams;

    .line 579
    const/4 v2, -0x1

    .line 578
    move-object/from16 v0, v38

    move/from16 v1, v34

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 581
    .local v38, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getPay_type()Ljava/lang/String;

    move-result-object v2

    const-string v6, "cpc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 584
    const/16 v33, 0x0

    .line 585
    .local v33, layout_background:Landroid/graphics/Bitmap;
    const/16 v20, 0x0

    .line 586
    .local v20, background:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getEventUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    .line 588
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    .line 589
    invoke-virtual {v6}, Lcom/cauly/android/ad/AdData;->getBackgroundColor()Ljava/lang/String;

    move-result-object v6

    .line 588
    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v33

    .line 590
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    .end local v20           #background:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 644
    .restart local v20       #background:Landroid/graphics/drawable/BitmapDrawable;
    :goto_4
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    .end local v20           #background:Landroid/graphics/drawable/BitmapDrawable;
    .end local v33           #layout_background:Landroid/graphics/Bitmap;
    :cond_a
    :goto_5
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$11()Landroid/os/Handler;

    move-result-object v2

    new-instance v6, Lcom/cauly/android/ad/AdView$1$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lcom/cauly/android/ad/AdView$1$1;-><init>(Lcom/cauly/android/ad/AdView$1;Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 732
    .end local v23           #centerX:F
    .end local v25           #display:Landroid/view/Display;
    .end local v30           #height:I
    .end local v34           #layout_height:I
    .end local v35           #m_len:I
    .end local v37           #orien:I
    .end local v38           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v41           #width:I
    :cond_b
    :goto_6
    return-void

    .line 418
    .restart local v35       #m_len:I
    :cond_c
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/cauly/android/ad/Message_Ads;

    .line 419
    .local v36, msg:Lcom/cauly/android/ad/Message_Ads;
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_PAY_TYPE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setPay_type(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_CODE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setCode(Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_ID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setAdsId(Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_TITLE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setTitle(Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_DESCRIPTION()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setText(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_LINK()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setLink(Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_AD_TYPE()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setAdType(Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_IMG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setImageUrl(Ljava/lang/String;)V

    .line 427
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_MARKET()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setMarket(Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_EVENT()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setEventUrl(Ljava/lang/String;)V

    .line 429
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual/range {v36 .. v36}, Lcom/cauly/android/ad/Message_Ads;->getC_COLOR()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cauly/android/ad/AdCommon;->BackgroundImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/cauly/android/ad/AdData;->setBackgroundColor(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cauly/android/ad/AdData;->getImageUrl()Ljava/lang/String;

    move-result-object v40

    .line 433
    .local v40, url:Ljava/lang/String;
    const-string v6, "/"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 435
    .local v29, file_name:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$7()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 436
    .local v28, file:Ljava/io/File;
    new-instance v24, Ljava/io/File;

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$7()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 438
    .local v24, dir:Ljava/io/File;
    const/16 v22, 0x0

    .line 441
    .local v22, bitmap:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_d

    .line 443
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdir()Z

    .line 445
    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_e

    .line 447
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v40

    #calls: Lcom/cauly/android/ad/AdView;->loadImage(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v7}, Lcom/cauly/android/ad/AdView;->access$8(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 448
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/cauly/android/ad/AdData;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 463
    :catch_0
    move-exception v26

    .line 465
    .local v26, e:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "File Save/Load"

    const-string v7, "Fail!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 679
    .end local v3           #context:Landroid/content/Context;
    .end local v22           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #dir:Ljava/io/File;
    .end local v26           #e:Ljava/lang/Exception;
    .end local v28           #file:Ljava/io/File;
    .end local v29           #file_name:Ljava/lang/String;
    .end local v35           #m_len:I
    .end local v36           #msg:Lcom/cauly/android/ad/Message_Ads;
    .end local v40           #url:Ljava/lang/String;
    :catch_1
    move-exception v26

    .line 680
    .restart local v26       #e:Ljava/lang/Exception;
    const-string v2, "Cauly Ads"

    const-string v6, "reloadAD()"

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 682
    .restart local v3       #context:Landroid/content/Context;
    monitor-enter p0

    .line 683
    :try_start_5
    const-string v2, "window"

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    .line 684
    .restart local v25       #display:Landroid/view/Display;
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getHeight()I

    move-result v30

    .line 685
    .restart local v30       #height:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/Display;->getWidth()I

    move-result v41

    .line 686
    .restart local v41       #width:I
    const/16 v34, 0x0

    .line 687
    .restart local v34       #layout_height:I
    move/from16 v0, v30

    move/from16 v1, v41

    if-le v0, v1, :cond_19

    .line 689
    div-int/lit8 v34, v30, 0xa

    .line 696
    :goto_7
    new-instance v2, Lcom/cauly/android/ad/AdLayout;

    invoke-direct {v2, v3}, Lcom/cauly/android/ad/AdLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$10(Lcom/cauly/android/ad/AdLayout;)V

    .line 697
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$1()Lcom/cauly/android/ad/AdCommon;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v2, v6, v7, v0}, Lcom/cauly/android/ad/AdLayout;->setAdData(Lcom/cauly/android/ad/AdData;Lcom/cauly/android/ad/AdCommon;I)V

    .line 698
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/cauly/android/ad/AdLayout;->setVisibility(I)V

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->adtype:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$12(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "cpc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 700
    new-instance v38, Landroid/widget/RelativeLayout$LayoutParams;

    .line 701
    const/4 v2, -0x1

    .line 700
    move-object/from16 v0, v38

    move/from16 v1, v34

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 703
    .restart local v38       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 704
    const/16 v33, 0x0

    .line 706
    .restart local v33       #layout_background:Landroid/graphics/Bitmap;
    :try_start_6
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v6, "cauly_default_banner.png"

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v33

    .line 710
    :goto_8
    :try_start_7
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 711
    .restart local v20       #background:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    .end local v20           #background:Landroid/graphics/drawable/BitmapDrawable;
    .end local v33           #layout_background:Landroid/graphics/Bitmap;
    :goto_9
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$11()Landroid/os/Handler;

    move-result-object v2

    new-instance v6, Lcom/cauly/android/ad/AdView$1$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/cauly/android/ad/AdView$1$2;-><init>(Lcom/cauly/android/ad/AdView$1;)V

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    monitor-exit p0

    goto/16 :goto_6

    .end local v25           #display:Landroid/view/Display;
    .end local v30           #height:I
    .end local v34           #layout_height:I
    .end local v38           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v41           #width:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v2

    .line 453
    .end local v26           #e:Ljava/lang/Exception;
    .restart local v22       #bitmap:Landroid/graphics/Bitmap;
    .restart local v24       #dir:Ljava/io/File;
    .restart local v28       #file:Ljava/io/File;
    .restart local v29       #file_name:Ljava/lang/String;
    .restart local v35       #m_len:I
    .restart local v36       #msg:Lcom/cauly/android/ad/Message_Ads;
    .restart local v40       #url:Ljava/lang/String;
    :cond_e
    :try_start_8
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 454
    .local v32, is:Ljava/io/FileInputStream;
    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 455
    .local v21, bis:Ljava/io/BufferedInputStream;
    invoke-static/range {v21 .. v21}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 456
    if-nez v22, :cond_f

    .line 458
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v40

    #calls: Lcom/cauly/android/ad/AdView;->loadImage(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v7}, Lcom/cauly/android/ad/AdView;->access$8(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 460
    :cond_f
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/cauly/android/ad/AdData;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 492
    .end local v21           #bis:Ljava/io/BufferedInputStream;
    .end local v22           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #dir:Ljava/io/File;
    .end local v28           #file:Ljava/io/File;
    .end local v29           #file_name:Ljava/lang/String;
    .end local v32           #is:Ljava/io/FileInputStream;
    .end local v36           #msg:Lcom/cauly/android/ad/Message_Ads;
    .end local v40           #url:Ljava/lang/String;
    .restart local v25       #display:Landroid/view/Display;
    .restart local v30       #height:I
    .restart local v34       #layout_height:I
    .restart local v37       #orien:I
    .restart local v41       #width:I
    :cond_10
    :try_start_9
    div-int/lit8 v34, v41, 0xa

    goto/16 :goto_1

    .line 533
    .restart local v23       #centerX:F
    .restart local v39       #set:Landroid/view/animation/AnimationSet;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "top_slide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 535
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    invoke-direct {v5, v2, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 536
    .restart local v5       #animation:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 537
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 538
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .line 539
    .end local v5           #animation:Landroid/view/animation/Animation;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 540
    const/4 v10, 0x1

    const/high16 v11, -0x4080

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 538
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 542
    .restart local v5       #animation:Landroid/view/animation/Animation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 543
    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 544
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 480
    .end local v5           #animation:Landroid/view/animation/Animation;
    .end local v23           #centerX:F
    .end local v25           #display:Landroid/view/Display;
    .end local v30           #height:I
    .end local v34           #layout_height:I
    .end local v37           #orien:I
    .end local v39           #set:Landroid/view/animation/AnimationSet;
    .end local v41           #width:I
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 546
    .restart local v23       #centerX:F
    .restart local v25       #display:Landroid/view/Display;
    .restart local v30       #height:I
    .restart local v34       #layout_height:I
    .restart local v37       #orien:I
    .restart local v39       #set:Landroid/view/animation/AnimationSet;
    .restart local v41       #width:I
    :cond_12
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "left_slide"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 548
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    .line 549
    const/4 v7, 0x1

    const/high16 v8, -0x4080

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 550
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v6, v4

    .line 548
    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 552
    .restart local v4       #anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 553
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 554
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cauly/android/ad/AdLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 555
    invoke-virtual {v4}, Landroid/view/animation/TranslateAnimation;->start()V

    goto/16 :goto_2

    .line 564
    .end local v4           #anim:Landroid/view/animation/TranslateAnimation;
    .end local v39           #set:Landroid/view/animation/AnimationSet;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    #getter for: Lcom/cauly/android/ad/AdView;->effect:Ljava/lang/String;
    invoke-static {v2}, Lcom/cauly/android/ad/AdView;->access$9(Lcom/cauly/android/ad/AdView;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "half"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cauly/android/ad/AdView$1;->this$0:Lcom/cauly/android/ad/AdView;

    new-instance v6, Lcom/cauly/android/ad/Rotate3dAnimation;

    const/high16 v7, 0x4334

    const/high16 v8, 0x43b4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v9, v23

    invoke-direct/range {v6 .. v12}, Lcom/cauly/android/ad/Rotate3dAnimation;-><init>(FFFFFZ)V

    iput-object v6, v2, Lcom/cauly/android/ad/AdView;->rotation:Lcom/cauly/android/ad/Rotate3dAnimation;

    goto/16 :goto_3

    .line 594
    .restart local v20       #background:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v33       #layout_background:Landroid/graphics/Bitmap;
    .restart local v38       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$6()Lcom/cauly/android/ad/AdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cauly/android/ad/AdData;->getEventUrl()Ljava/lang/String;

    move-result-object v40

    .line 595
    .restart local v40       #url:Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    .line 598
    .restart local v29       #file_name:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$7()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .restart local v28       #file:Ljava/io/File;
    new-instance v24, Ljava/io/File;

    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$7()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 601
    .restart local v24       #dir:Ljava/io/File;
    const/16 v22, 0x0

    .line 604
    .restart local v22       #bitmap:Landroid/graphics/Bitmap;
    :try_start_c
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_15

    .line 606
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->mkdir()Z

    .line 608
    :cond_15
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    .line 610
    const/4 v2, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v40

    #calls: Lcom/cauly/android/ad/AdView;->loadImage(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    invoke-static {v0, v2, v6}, Lcom/cauly/android/ad/AdView;->access$8(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v22

    .line 628
    :cond_16
    :goto_a
    move-object/from16 v33, v22

    .line 629
    :try_start_d
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    .end local v20           #background:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .restart local v20       #background:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_4

    .line 615
    :cond_17
    :try_start_e
    new-instance v32, Ljava/io/FileInputStream;

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 616
    .restart local v32       #is:Ljava/io/FileInputStream;
    new-instance v21, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 617
    .restart local v21       #bis:Ljava/io/BufferedInputStream;
    invoke-static/range {v21 .. v21}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 618
    if-nez v22, :cond_16

    .line 620
    const/4 v2, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v40

    #calls: Lcom/cauly/android/ad/AdView;->loadImage(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    invoke-static {v0, v2, v6}, Lcom/cauly/android/ad/AdView;->access$8(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    move-result-object v22

    goto :goto_a

    .line 624
    .end local v21           #bis:Ljava/io/BufferedInputStream;
    .end local v32           #is:Ljava/io/FileInputStream;
    :catch_2
    move-exception v26

    .line 626
    .restart local v26       #e:Ljava/lang/Exception;
    :try_start_f
    const-string v2, "File Save/Load"

    const-string v6, "Fail!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 647
    .end local v20           #background:Landroid/graphics/drawable/BitmapDrawable;
    .end local v22           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #dir:Ljava/io/File;
    .end local v26           #e:Ljava/lang/Exception;
    .end local v28           #file:Ljava/io/File;
    .end local v29           #file_name:Ljava/lang/String;
    .end local v33           #layout_background:Landroid/graphics/Bitmap;
    .end local v38           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v40           #url:Ljava/lang/String;
    :cond_18
    new-instance v38, Landroid/widget/RelativeLayout$LayoutParams;

    .line 648
    const/4 v2, -0x1

    .line 649
    const/4 v6, -0x1

    .line 647
    move-object/from16 v0, v38

    invoke-direct {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 650
    .restart local v38       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_5

    .line 693
    .end local v23           #centerX:F
    .end local v35           #m_len:I
    .end local v37           #orien:I
    .end local v38           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v26       #e:Ljava/lang/Exception;
    :cond_19
    :try_start_10
    div-int/lit8 v34, v41, 0xa

    goto/16 :goto_7

    .line 707
    .restart local v33       #layout_background:Landroid/graphics/Bitmap;
    .restart local v38       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :catch_3
    move-exception v27

    .line 708
    .local v27, e1:Ljava/io/IOException;
    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 713
    .end local v27           #e1:Ljava/io/IOException;
    .end local v33           #layout_background:Landroid/graphics/Bitmap;
    .end local v38           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1a
    new-instance v38, Landroid/widget/RelativeLayout$LayoutParams;

    .line 714
    const/4 v2, -0x1

    .line 715
    const/4 v6, -0x1

    .line 713
    move-object/from16 v0, v38

    invoke-direct {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 716
    .restart local v38       #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/cauly/android/ad/AdView;->access$0()Lcom/cauly/android/ad/AdLayout;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Lcom/cauly/android/ad/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_9
.end method
