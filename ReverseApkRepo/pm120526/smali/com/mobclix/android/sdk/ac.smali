.class final Lcom/mobclix/android/sdk/ac;
.super Lcom/mobclix/android/sdk/ae;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field final synthetic i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ac;->i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0, p1, p2}, Lcom/mobclix/android/sdk/ae;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    iput v6, p0, Lcom/mobclix/android/sdk/ac;->c:I

    iput v6, p0, Lcom/mobclix/android/sdk/ac;->d:I

    iput v6, p0, Lcom/mobclix/android/sdk/ac;->e:I

    iput v6, p0, Lcom/mobclix/android/sdk/ac;->f:I

    iput v6, p0, Lcom/mobclix/android/sdk/ac;->g:I

    iput v6, p0, Lcom/mobclix/android/sdk/ac;->h:I

    const/16 v0, 0x1f4

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v2, "statusBarHeight"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/ac;->g:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    :try_start_2
    const-string v2, "topMargin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/ac;->c:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    :try_start_3
    const-string v2, "leftMargin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/ac;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_2
    :try_start_4
    const-string v2, "fTopMargin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v2

    :goto_3
    :try_start_5
    const-string v3, "fLeftMargin"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    move-result v3

    :goto_4
    :try_start_6
    const-string v4, "fWidth"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    move-result v4

    :goto_5
    :try_start_7
    const-string v5, "fHeight"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_9

    move-result v5

    :goto_6
    :try_start_8
    const-string v6, "duration"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_a

    move-result v0

    move v6, v5

    move v7, v0

    move v5, v4

    move v4, v2

    move v2, v3

    :goto_7
    :try_start_9
    iget v0, p0, Lcom/mobclix/android/sdk/ac;->c:I

    iget v1, p0, Lcom/mobclix/android/sdk/ac;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobclix/android/sdk/ac;->c:I

    new-instance v0, Lcom/mobclix/android/sdk/ad;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/ad;-><init>(Lcom/mobclix/android/sdk/ac;)V

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ac;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iget v3, p0, Lcom/mobclix/android/sdk/ac;->c:I

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/ac;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ac;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/mobclix/android/sdk/ac;->d:I

    const/4 v8, 0x1

    invoke-direct {v0, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/view/View;

    iget-object v8, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-direct {v3, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobclix/android/sdk/ac;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->b:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mobclix/android/sdk/ac;->l:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->l:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/ac;->e:I

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/ac;->f:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/mobclix/android/sdk/ac;->e:I

    iget v8, p0, Lcom/mobclix/android/sdk/ac;->f:I

    invoke-direct {v0, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v3, v0}, Lcom/mobclix/android/sdk/cq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/ac;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/ac;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-class v0, Landroid/view/View;

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setHorizontalScrollBarEnabled(Z)V

    iget v1, p0, Lcom/mobclix/android/sdk/ac;->d:I

    iget v3, p0, Lcom/mobclix/android/sdk/ac;->c:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mobclix/android/sdk/ac;->a(IIIIIII)V

    :goto_8
    return-void

    :catch_0
    move-exception v2

    move v2, v6

    goto/16 :goto_3

    :catch_1
    move-exception v3

    move v3, v6

    goto/16 :goto_4

    :catch_2
    move-exception v4

    move v4, v6

    goto/16 :goto_5

    :catch_3
    move-exception v5

    move v5, v6

    goto/16 :goto_6

    :catch_4
    move-exception v1

    move v6, v5

    move v7, v0

    move v5, v4

    move v4, v2

    move v2, v3

    goto/16 :goto_7

    :catch_5
    move-exception v1

    move v1, v6

    move v2, v6

    move v3, v6

    move v4, v6

    :goto_9
    iget-object v5, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move v6, v1

    move v5, v2

    move v7, v0

    move v2, v3

    goto/16 :goto_7

    :catch_6
    move-exception v0

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_8

    :catch_7
    move-exception v1

    move v1, v6

    move v3, v6

    move v4, v2

    move v2, v6

    goto :goto_9

    :catch_8
    move-exception v1

    move v1, v6

    move v4, v2

    move v2, v6

    goto :goto_9

    :catch_9
    move-exception v1

    move v1, v6

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_9

    :catch_a
    move-exception v1

    move v1, v5

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_9

    :catch_b
    move-exception v2

    goto/16 :goto_2

    :catch_c
    move-exception v2

    goto/16 :goto_1

    :catch_d
    move-exception v2

    goto/16 :goto_0
.end method

.method private a(IIIIIII)V
    .locals 13

    if-gez p7, :cond_c

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xbb8

    if-le v0, v1, :cond_b

    const/16 v0, 0xbb8

    move v9, v0

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ac;->n:Z

    if-eqz v0, :cond_a

    if-gez p3, :cond_9

    const/4 v0, 0x0

    :goto_2
    if-gez p1, :cond_8

    const/4 v1, 0x0

    :goto_3
    if-gez p4, :cond_7

    const/4 v2, 0x0

    :goto_4
    if-gez p2, :cond_6

    const/4 v3, 0x0

    :goto_5
    if-gez p5, :cond_5

    const/4 v4, 0x1

    :goto_6
    if-gez p6, :cond_4

    const/4 v5, 0x1

    :goto_7
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v7, p0, Lcom/mobclix/android/sdk/ac;->i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v7, :cond_0

    const/4 v3, 0x0

    move v4, v3

    move v3, v7

    :goto_8
    if-le v5, v6, :cond_1

    const/4 v2, 0x0

    move v8, v6

    move v10, v3

    move v5, v0

    move v7, v4

    move v11, v1

    move v6, v2

    :goto_9
    new-instance v0, Lcom/mobclix/android/sdk/x;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ac;->i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ac;->a:Landroid/view/View;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Lcom/mobclix/android/sdk/x;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V

    int-to-long v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/mobclix/android/sdk/x;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ac;->i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->b:Landroid/view/View;

    int-to-float v4, v11

    int-to-float v5, v7

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct/range {v1 .. v7}, Lcom/mobclix/android/sdk/x;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V

    int-to-long v2, v9

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/mobclix/android/sdk/x;

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v4, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    iget-object v5, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/cq;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v10

    iget-object v7, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v7}, Lcom/mobclix/android/sdk/cq;->getHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Lcom/mobclix/android/sdk/x;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/view/View;FFFF)V

    int-to-long v3, v9

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v3, p0, Lcom/mobclix/android/sdk/ac;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/cq;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    return-void

    :cond_0
    add-int v8, v4, v3

    if-le v8, v7, :cond_3

    sub-int v3, v7, v4

    move v12, v4

    move v4, v3

    move v3, v12

    goto :goto_8

    :cond_1
    add-int v7, v5, v2

    if-le v7, v6, :cond_2

    sub-int v2, v6, v5

    move v8, v5

    move v10, v3

    move v6, v2

    move v7, v4

    move v11, v1

    move v5, v0

    goto :goto_9

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_a

    :cond_2
    move v8, v5

    move v10, v3

    move v6, v2

    move v7, v4

    move v11, v1

    move v5, v0

    goto :goto_9

    :cond_3
    move v12, v4

    move v4, v3

    move v3, v12

    goto/16 :goto_8

    :cond_4
    move/from16 v5, p6

    goto/16 :goto_7

    :cond_5
    move/from16 v4, p5

    goto/16 :goto_6

    :cond_6
    move v3, p2

    goto/16 :goto_5

    :cond_7
    move/from16 v2, p4

    goto/16 :goto_4

    :cond_8
    move v1, p1

    goto/16 :goto_3

    :cond_9
    move/from16 v0, p3

    goto/16 :goto_2

    :cond_a
    move/from16 v8, p6

    move/from16 v10, p5

    move/from16 v6, p4

    move/from16 v5, p3

    move v7, p2

    move v11, p1

    goto/16 :goto_9

    :cond_b
    move v9, v0

    goto/16 :goto_1

    :cond_c
    move/from16 v0, p7

    goto/16 :goto_0
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->u:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->u:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->setHorizontalScrollBarEnabled(Z)V

    const-class v0, Landroid/view/View;

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v2

    iget-object v2, v2, Lcom/mobclix/android/sdk/cf;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->u:Ljava/lang/ref/SoftReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ac;->n:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/mobclix/android/sdk/ac;->m:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->h()V

    iget v2, p0, Lcom/mobclix/android/sdk/ac;->d:I

    iget v4, p0, Lcom/mobclix/android/sdk/ac;->c:I

    iget v5, p0, Lcom/mobclix/android/sdk/ac;->e:I

    iget v6, p0, Lcom/mobclix/android/sdk/ac;->f:I

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object v0, p0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mobclix/android/sdk/ac;->a(IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ac;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/cf;->c:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ac;->i:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/mobclix/android/sdk/ac;->g:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->c()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ac;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
