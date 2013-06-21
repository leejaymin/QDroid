.class final Lcom/mobclix/android/sdk/am;
.super Lcom/mobclix/android/sdk/i;


# instance fields
.field final synthetic c:Lcom/mobclix/android/sdk/ai;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/am;->c:Lcom/mobclix/android/sdk/ai;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/am;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/am;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->e(Lcom/mobclix/android/sdk/ai;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/am;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/am;->c:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->i(Lcom/mobclix/android/sdk/ai;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->a(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Lcom/mobclix/android/sdk/ap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ap;->sendEmptyMessage(I)Z

    return-void
.end method
