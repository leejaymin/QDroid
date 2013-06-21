.class final Lcom/mobclix/android/sdk/bj;
.super Lcom/mobclix/android/sdk/i;


# instance fields
.field final synthetic c:Lcom/mobclix/android/sdk/bi;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/bi;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bj;->c:Lcom/mobclix/android/sdk/bi;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/bj;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bj;->c:Lcom/mobclix/android/sdk/bi;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bi;->a(Lcom/mobclix/android/sdk/bi;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bj;->c:Lcom/mobclix/android/sdk/bi;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bi;->c()Lcom/mobclix/android/sdk/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bt;->sendEmptyMessage(I)Z

    return-void
.end method
