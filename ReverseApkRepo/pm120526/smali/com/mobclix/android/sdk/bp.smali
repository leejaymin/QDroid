.class final Lcom/mobclix/android/sdk/bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/bn;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bp;->a:Lcom/mobclix/android/sdk/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bp;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bp;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v1}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bp;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bp;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/bp;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bp;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v1}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
