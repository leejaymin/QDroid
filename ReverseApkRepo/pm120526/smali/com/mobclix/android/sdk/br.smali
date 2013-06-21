.class final Lcom/mobclix/android/sdk/br;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ar;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/br;->a:Lcom/mobclix/android/sdk/ar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/br;->a:Lcom/mobclix/android/sdk/ar;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ar;->a(Lcom/mobclix/android/sdk/ar;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mobclix/android/sdk/br;->a:Lcom/mobclix/android/sdk/ar;

    invoke-static {v1}, Lcom/mobclix/android/sdk/ar;->b(Lcom/mobclix/android/sdk/ar;)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/br;->a:Lcom/mobclix/android/sdk/ar;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ar;->c(Lcom/mobclix/android/sdk/ar;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/br;->a:Lcom/mobclix/android/sdk/ar;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ar;->d(Lcom/mobclix/android/sdk/ar;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/br;->a:Lcom/mobclix/android/sdk/ar;

    invoke-static {v1, v0}, Lcom/mobclix/android/sdk/ar;->a(Lcom/mobclix/android/sdk/ar;I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/br;->a:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->showNext()V

    goto :goto_0
.end method
