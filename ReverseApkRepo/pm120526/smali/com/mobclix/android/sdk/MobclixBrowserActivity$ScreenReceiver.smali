.class public Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public a:Z

.field final synthetic b:Lcom/mobclix/android/sdk/MobclixBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;->a:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$ScreenReceiver;->b:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->c(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/ae;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ae;->k:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->j()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
