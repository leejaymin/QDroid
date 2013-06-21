.class Lcom/mobclix/android/sdk/bq;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected e:Ljava/util/HashMap;

.field protected f:Lcom/mobclix/android/sdk/ar;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ar;)V
    .locals 3

    invoke-virtual {p1}, Lcom/mobclix/android/sdk/ar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/bq;->e:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->e:Ljava/util/HashMap;

    const-string v1, "center"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->e:Ljava/util/HashMap;

    const-string v1, "left"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->e:Ljava/util/HashMap;

    const-string v1, "right"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/r;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/bq;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/r;->a:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/r;->b:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)I
    .locals 4

    :try_start_0
    const-string v0, "a"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "r"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "g"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->u:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method a()V
    .locals 0

    return-void
.end method

.method public final c()Lcom/mobclix/android/sdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bq;->f:Lcom/mobclix/android/sdk/ar;

    return-object v0
.end method
