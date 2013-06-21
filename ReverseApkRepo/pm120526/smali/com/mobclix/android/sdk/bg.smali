.class final Lcom/mobclix/android/sdk/bg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/aw;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    invoke-static {v0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/cq;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v0, v0, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ar;->f(Lcom/mobclix/android/sdk/ar;)V

    sget-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "video/mp4"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "video/3gp"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "video/m4v"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "video/quicktime"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bg;->a:Lcom/mobclix/android/sdk/aw;

    iget-object v1, v1, Lcom/mobclix/android/sdk/aw;->f:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
