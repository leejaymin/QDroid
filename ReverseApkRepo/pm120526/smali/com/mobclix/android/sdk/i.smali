.class Lcom/mobclix/android/sdk/i;
.super Landroid/os/Handler;


# instance fields
.field protected a:Landroid/graphics/Bitmap;

.field protected b:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/i;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/mobclix/android/sdk/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/i;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/i;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/i;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
