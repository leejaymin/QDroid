.class final Lcom/mobclix/android/sdk/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/e;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/h;->a:Lcom/mobclix/android/sdk/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/h;->a:Lcom/mobclix/android/sdk/e;

    invoke-static {v1, v0}, Lcom/mobclix/android/sdk/e;->a(Lcom/mobclix/android/sdk/e;I)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
