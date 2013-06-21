.class final Lcom/mobclix/android/sdk/at;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/as;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/as;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/at;->a:Lcom/mobclix/android/sdk/as;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/at;->a:Lcom/mobclix/android/sdk/as;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mobclix/android/sdk/as;->f:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/at;->a:Lcom/mobclix/android/sdk/as;

    invoke-static {v0}, Lcom/mobclix/android/sdk/as;->a(Lcom/mobclix/android/sdk/as;)Lcom/mobclix/android/sdk/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bt;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    const-string v1, "failure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/at;->a:Lcom/mobclix/android/sdk/as;

    const-string v1, ""

    iput-object v1, v0, Lcom/mobclix/android/sdk/as;->f:Ljava/lang/String;

    goto :goto_0
.end method
