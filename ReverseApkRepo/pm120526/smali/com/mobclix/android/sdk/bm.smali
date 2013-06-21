.class public final Lcom/mobclix/android/sdk/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/bk;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v1, v1, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget v0, v0, Lcom/mobclix/android/sdk/bk;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget v1, v0, Lcom/mobclix/android/sdk/bk;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/mobclix/android/sdk/bk;->d:I

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v1, v1, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/bk;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bk;->c()Lcom/mobclix/android/sdk/ar;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/bt;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPresentScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLeaveApplication"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    const-string v1, ""

    iput-object v1, v0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v0, v0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bm;->a:Lcom/mobclix/android/sdk/bk;

    iget-object v1, v1, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
