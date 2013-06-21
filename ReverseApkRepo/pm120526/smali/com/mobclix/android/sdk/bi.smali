.class final Lcom/mobclix/android/sdk/bi;
.super Lcom/mobclix/android/sdk/bq;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mobclix/android/sdk/ar;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/bq;-><init>(Lcom/mobclix/android/sdk/ar;)V

    iput-object p1, p0, Lcom/mobclix/android/sdk/bi;->a:Ljava/lang/String;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobclix/android/sdk/bi;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v2, v2, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/bi;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/bi;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/bi;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/j;

    iget-object v2, p0, Lcom/mobclix/android/sdk/bi;->a:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/bj;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/bj;-><init>(Lcom/mobclix/android/sdk/bi;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/bi;->f:Lcom/mobclix/android/sdk/ar;

    invoke-static {v1}, Lcom/mobclix/android/sdk/ar;->e(Lcom/mobclix/android/sdk/ar;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/bi;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bi;->b:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
