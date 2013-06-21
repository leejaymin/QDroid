.class final Lcom/mobclix/android/sdk/p;
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

    invoke-direct {p0}, Lcom/mobclix/android/sdk/p;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/MobclixAdView;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->m:J

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/p;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/mobclix/android/sdk/p;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/mobclix/android/sdk/MobclixAdView;->k:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/mobclix/android/sdk/p;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v1

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    sget-object v3, Lcom/mobclix/android/sdk/ce;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v2

    const-string v3, "handle_response"

    invoke-virtual {v2, v1, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->A:Lcom/mobclix/android/sdk/ar;

    :cond_3
    :try_start_0
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v2

    const-string v3, "a_decode_json"

    invoke-virtual {v2, v1, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v2

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    const-string v4, "raw_json"

    iget-object v5, v0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mobclix/android/sdk/bz;

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/mobclix/android/sdk/bz;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    iget-object v2, v2, Lcom/mobclix/android/sdk/bz;->a:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v2

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/bz;->a()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "decoded_json"

    iget-object v5, v0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mobclix/android/sdk/ar;

    iget-object v3, v0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/bz;->a()Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/mobclix/android/sdk/ar;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V

    iput-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/ar;->a()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;

    move-result-object v1

    iget-object v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/mobclix/android/sdk/p;->a()V

    goto/16 :goto_0
.end method
