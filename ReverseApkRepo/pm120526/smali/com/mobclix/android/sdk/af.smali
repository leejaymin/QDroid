.class final Lcom/mobclix/android/sdk/af;
.super Lcom/mobclix/android/sdk/ae;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field final synthetic b:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V
    .locals 7

    iput-object p1, p0, Lcom/mobclix/android/sdk/af;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0, p1, p2}, Lcom/mobclix/android/sdk/ae;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;)V

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->l:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/af;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/af;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/af;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/cq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->f:Lcom/mobclix/android/sdk/cf;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/cf;->c:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const-class v0, Landroid/view/View;

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x2e

    invoke-static {p1, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    const/16 v2, 0x2e

    invoke-static {p1, v2}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/mobclix/android/sdk/ag;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/ag;-><init>(Lcom/mobclix/android/sdk/af;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x1e

    invoke-static {p1, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    const/16 v4, 0x1e

    invoke-static {p1, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {p1, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/mobclix/android/sdk/v;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/v;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_0
    const v2, 0x108005a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/ArcShape;

    const/4 v4, 0x0

    const/high16 v5, 0x43b4

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v3, -0x6

    invoke-static {p1, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v3

    const/4 v4, -0x6

    invoke-static {p1, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v4

    const/4 v5, -0x6

    invoke-static {p1, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v5

    const/4 v6, -0x6

    invoke-static {p1, v6}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 3

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
    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/e;->u:Ljava/lang/ref/SoftReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/af;->n:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/mobclix/android/sdk/af;->m:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v1, p0, Lcom/mobclix/android/sdk/af;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/af;->removeAllViews()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->h()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->b()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->b:Lcom/mobclix/android/sdk/cd;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cd;->b()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/af;->k:Lcom/mobclix/android/sdk/cq;

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/af;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
