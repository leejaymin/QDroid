.class final Lcom/mobclix/android/sdk/al;
.super Lcom/mobclix/android/sdk/i;


# instance fields
.field final synthetic c:Lcom/mobclix/android/sdk/ai;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/al;->c:Lcom/mobclix/android/sdk/ai;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/mobclix/android/sdk/al;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/al;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/al;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/al;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v2}, Lcom/mobclix/android/sdk/ai;->i(Lcom/mobclix/android/sdk/ai;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/al;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v2}, Lcom/mobclix/android/sdk/ai;->i(Lcom/mobclix/android/sdk/ai;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/al;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v2}, Lcom/mobclix/android/sdk/ai;->d(Lcom/mobclix/android/sdk/ai;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/al;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->d(Lcom/mobclix/android/sdk/ai;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/al;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->d(Lcom/mobclix/android/sdk/ai;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/al;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/al;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->i(Lcom/mobclix/android/sdk/ai;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/ap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ap;->sendEmptyMessage(I)Z

    return-void
.end method
