.class final Lcom/mobclix/android/sdk/s;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/mobclix/android/sdk/s;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/s;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/mobclix/android/sdk/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/MobclixAdView;

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->l:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->d:Z

    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->i:I

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->setAllowAutoplay(Z)V

    :cond_2
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->j:I

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->f(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->setRichMediaRequiresUserInteraction(Z)V

    :cond_3
    invoke-static {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Lcom/mobclix/android/sdk/MobclixAdView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    :cond_4
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->d()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1
.end method
