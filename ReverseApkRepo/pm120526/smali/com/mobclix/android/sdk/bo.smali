.class final Lcom/mobclix/android/sdk/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/bn;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget v0, v0, Lcom/mobclix/android/sdk/bk;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v1}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v1}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v1

    iget-object v1, v1, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bk;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bk;->c()Lcom/mobclix/android/sdk/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/bt;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/bo;->a:Lcom/mobclix/android/sdk/bn;

    invoke-static {v0}, Lcom/mobclix/android/sdk/bn;->a(Lcom/mobclix/android/sdk/bn;)Lcom/mobclix/android/sdk/bk;

    move-result-object v0

    iget v1, v0, Lcom/mobclix/android/sdk/bk;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mobclix/android/sdk/bk;->d:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
