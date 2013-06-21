.class final Lcom/mobclix/android/sdk/bw;
.super Lcom/mobclix/android/sdk/i;


# instance fields
.field final synthetic c:Lcom/mobclix/android/sdk/bv;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bw;->c:Lcom/mobclix/android/sdk/bv;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/bw;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bw;->c:Lcom/mobclix/android/sdk/bv;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bv;->a(Lcom/mobclix/android/sdk/bv;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bw;->c:Lcom/mobclix/android/sdk/bv;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bv;->c()Lcom/mobclix/android/sdk/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bt;->sendEmptyMessage(I)Z

    return-void
.end method
