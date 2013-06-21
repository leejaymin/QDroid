.class final Lcom/mobclix/android/sdk/bt;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ar;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bt;->a:Lcom/mobclix/android/sdk/ar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bt;->a:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
