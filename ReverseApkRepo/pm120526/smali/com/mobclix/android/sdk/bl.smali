.class final Lcom/mobclix/android/sdk/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/bk;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bl;->a:Lcom/mobclix/android/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/bl;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bl;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    goto :goto_0
.end method
