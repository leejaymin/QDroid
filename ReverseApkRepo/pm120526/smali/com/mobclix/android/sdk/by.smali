.class final Lcom/mobclix/android/sdk/by;
.super Lcom/mobclix/android/sdk/i;


# instance fields
.field final synthetic c:Lcom/mobclix/android/sdk/bv;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/by;->c:Lcom/mobclix/android/sdk/bv;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/mobclix/android/sdk/by;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/by;->c:Lcom/mobclix/android/sdk/bv;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mobclix/android/sdk/by;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/bv;->a(Lcom/mobclix/android/sdk/bv;Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/by;->c:Lcom/mobclix/android/sdk/bv;

    iget-object v1, p0, Lcom/mobclix/android/sdk/by;->c:Lcom/mobclix/android/sdk/bv;

    invoke-static {v1}, Lcom/mobclix/android/sdk/bv;->c(Lcom/mobclix/android/sdk/bv;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bv;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/by;->c:Lcom/mobclix/android/sdk/bv;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bv;->c()Lcom/mobclix/android/sdk/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bt;->sendEmptyMessage(I)Z

    return-void
.end method
