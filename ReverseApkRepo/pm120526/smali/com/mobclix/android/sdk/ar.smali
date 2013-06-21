.class Lcom/mobclix/android/sdk/ar;
.super Landroid/widget/ViewFlipper;


# static fields
.field private static r:Z


# instance fields
.field a:Lcom/mobclix/android/sdk/MobclixAdView;

.field b:Lcom/mobclix/android/sdk/as;

.field c:Z

.field final d:Lcom/mobclix/android/sdk/bt;

.field final e:Lcom/mobclix/android/sdk/br;

.field private f:Lcom/mobclix/android/sdk/ce;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/Stack;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Z

.field private s:I

.field private t:Ljava/util/Timer;

.field private u:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobclix/android/sdk/ar;->r:Z

    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V
    .locals 7

    const/16 v1, 0xbb8

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/mobclix/android/sdk/ce;->a()Lcom/mobclix/android/sdk/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->k:Ljava/util/Stack;

    iput-boolean v6, p0, Lcom/mobclix/android/sdk/ar;->l:Z

    iput-boolean v6, p0, Lcom/mobclix/android/sdk/ar;->c:Z

    iput v3, p0, Lcom/mobclix/android/sdk/ar;->m:I

    iput v6, p0, Lcom/mobclix/android/sdk/ar;->n:I

    const-string v0, "none"

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->o:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/ar;->p:Z

    iput-boolean v6, p0, Lcom/mobclix/android/sdk/ar;->q:Z

    iput v1, p0, Lcom/mobclix/android/sdk/ar;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    new-instance v0, Lcom/mobclix/android/sdk/bt;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/bt;-><init>(Lcom/mobclix/android/sdk/ar;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->d:Lcom/mobclix/android/sdk/bt;

    new-instance v0, Lcom/mobclix/android/sdk/br;

    invoke-direct {v0, p0}, Lcom/mobclix/android/sdk/br;-><init>(Lcom/mobclix/android/sdk/ar;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->e:Lcom/mobclix/android/sdk/br;

    iput-object p1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    sget-object v2, Lcom/mobclix/android/sdk/ce;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "handle_response"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/ar;->requestDisallowInterceptTouchEvent(Z)V

    if-nez p2, :cond_0

    :try_start_0
    new-instance v1, Lcom/mobclix/android/sdk/au;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/au;-><init>(Lcom/mobclix/android/sdk/ar;)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/ar;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/mobclix/android/sdk/ar;->m:I

    const-string v1, "customAd"

    iput-object v1, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/ar;->l:Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "b_build_models"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "eventUrls"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    const-string v2, "onShow"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v6

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-lt v3, v4, :cond_1

    :goto_2
    :try_start_3
    const-string v2, "onTouch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v2, v6

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    if-lt v2, v3, :cond_2

    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "c_build_creative"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "a_determine_type"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "props"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    :try_start_5
    const-string v2, "creativeId"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/ar;->g:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string v2, "type"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    :try_start_7
    iput-boolean p3, p0, Lcom/mobclix/android/sdk/ar;->q:Z

    new-instance v2, Lcom/mobclix/android/sdk/as;

    const-string v3, "action"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p0, v3, p0}, Lcom/mobclix/android/sdk/as;-><init>(Lcom/mobclix/android/sdk/ar;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/ar;)V

    iput-object v2, p0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_6
    :try_start_8
    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v3, "b_get_view"

    invoke-virtual {v2, v0, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->B:Lcom/mobclix/android/sdk/bh;

    invoke-virtual {v2, p0}, Lcom/mobclix/android/sdk/bh;->a(Lcom/mobclix/android/sdk/ar;)Lcom/mobclix/android/sdk/aw;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mobclix/android/sdk/aw;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/ar;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/mobclix/android/sdk/ar;->m:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/ar;->l:Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_9
    iget-object v4, p0, Lcom/mobclix/android/sdk/ar;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_2
    :try_start_a
    iget-object v3, p0, Lcom/mobclix/android/sdk/ar;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :try_start_b
    new-instance v2, Lcom/mobclix/android/sdk/as;

    invoke-direct {v2, p0, p0}, Lcom/mobclix/android/sdk/as;-><init>(Lcom/mobclix/android/sdk/ar;Lcom/mobclix/android/sdk/ar;)V

    iput-object v2, p0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    goto :goto_6

    :cond_3
    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    const-string v3, "openallocation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/mobclix/android/sdk/bk;

    invoke-direct {v2, v1, p0}, Lcom/mobclix/android/sdk/bk;-><init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/ar;)V

    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/ar;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/mobclix/android/sdk/ar;->m:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/ar;->l:Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    :cond_4
    :try_start_c
    const-string v2, "transitionType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/ar;->o:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_4

    :goto_7
    :try_start_d
    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->o:Ljava/lang/String;

    invoke-direct {p0, p0, v2}, Lcom/mobclix/android/sdk/ar;->a(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    :try_start_e
    const-string v2, "transitionTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/mobclix/android/sdk/ar;->s:I
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3

    :goto_8
    :try_start_f
    iget v2, p0, Lcom/mobclix/android/sdk/ar;->s:I

    if-nez v2, :cond_5

    const/16 v2, 0xbb8

    iput v2, p0, Lcom/mobclix/android/sdk/ar;->s:I
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    :cond_5
    :try_start_10
    const-string v2, "loop"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/ar;->p:Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_2

    :goto_9
    :try_start_11
    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "images"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/ar;->m:I

    move v2, v6

    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "f_load_ad_creative"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->e()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/ar;->l:Z

    goto/16 :goto_0

    :cond_7
    new-instance v3, Lcom/mobclix/android/sdk/bi;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/mobclix/android/sdk/bi;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/ar;)V

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/ar;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_8
    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "texts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    iput v2, p0, Lcom/mobclix/android/sdk/ar;->m:I

    move v2, v6

    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    new-instance v3, Lcom/mobclix/android/sdk/bv;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/mobclix/android/sdk/bv;-><init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/ar;)V

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/ar;->addView(Landroid/view/View;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :catch_2
    move-exception v2

    goto :goto_9

    :catch_3
    move-exception v2

    goto/16 :goto_8

    :catch_4
    move-exception v2

    goto/16 :goto_7

    :catch_5
    move-exception v2

    goto/16 :goto_5

    :catch_6
    move-exception v1

    goto/16 :goto_4

    :catch_7
    move-exception v2

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/ar;)I
    .locals 1

    iget v0, p0, Lcom/mobclix/android/sdk/ar;->n:I

    return v0
.end method

.method private a(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    .locals 10

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "fade"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    const-string v0, "slideRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/high16 v3, -0x4080

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    :cond_3
    const-string v0, "slideLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x4080

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    :cond_4
    const-string v0, "slideUp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x3f80

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_1

    :cond_5
    const-string v0, "slideDown"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, -0x4080

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "flipRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/mobclix/android/sdk/bu;

    const/4 v2, 0x0

    const/high16 v3, 0x42b4

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x4000

    div-float v4, v1, v4

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobclix/android/sdk/bu;-><init>(Lcom/mobclix/android/sdk/ar;FFFFZ)V

    new-instance v1, Lcom/mobclix/android/sdk/bu;

    const/high16 v3, -0x3d4c

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mobclix/android/sdk/bu;-><init>(Lcom/mobclix/android/sdk/ar;FFFFZ)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1

    :cond_7
    const-string v0, "flipLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mobclix/android/sdk/bu;

    const/4 v2, 0x0

    const/high16 v3, -0x3d4c

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x4000

    div-float v4, v1, v4

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v5, 0x4000

    div-float v5, v1, v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mobclix/android/sdk/bu;-><init>(Lcom/mobclix/android/sdk/ar;FFFFZ)V

    new-instance v1, Lcom/mobclix/android/sdk/bu;

    const/high16 v3, 0x42b4

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/mobclix/android/sdk/bu;-><init>(Lcom/mobclix/android/sdk/ar;FFFFZ)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/ar;I)V
    .locals 0

    iput p1, p0, Lcom/mobclix/android/sdk/ar;->n:I

    return-void
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/ar;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/ar;->u:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/mobclix/android/sdk/ar;->r:Z

    return-void
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/ar;)I
    .locals 1

    iget v0, p0, Lcom/mobclix/android/sdk/ar;->m:I

    return v0
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/ar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ar;->p:Z

    return v0
.end method

.method static synthetic d(Lcom/mobclix/android/sdk/ar;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/mobclix/android/sdk/ar;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->k:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic f(Lcom/mobclix/android/sdk/ar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ar;->q:Z

    return-void
.end method

.method static synthetic g(Lcom/mobclix/android/sdk/ar;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->u:Ljava/lang/Thread;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/ar;->l:Z

    return v0
.end method

.method public final b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobclix/android/sdk/aw;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/aw;

    invoke-static {p0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->b()V

    iget-boolean v1, v0, Lcom/mobclix/android/sdk/cf;->c:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/bs;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/bs;-><init>(Lcom/mobclix/android/sdk/ar;)V

    iget v2, p0, Lcom/mobclix/android/sdk/ar;->s:I

    int-to-long v2, v2

    iget v4, p0, Lcom/mobclix/android/sdk/ar;->s:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobclix/android/sdk/aw;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/aw;

    invoke-static {p0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->c()V

    iget-boolean v1, v0, Lcom/mobclix/android/sdk/cf;->c:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->k()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mobclix/android/sdk/cf;->c:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->b()V

    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobclix/android/sdk/aw;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/aw;

    invoke-static {p0}, Lcom/mobclix/android/sdk/aw;->a(Lcom/mobclix/android/sdk/aw;)Lcom/mobclix/android/sdk/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->c()Lcom/mobclix/android/sdk/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cf;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->k:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iput v4, v0, Lcom/mobclix/android/sdk/MobclixAdView;->E:I

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    iput-boolean v7, v0, Lcom/mobclix/android/sdk/r;->a:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/r;->bringToFront()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    sget-object v2, Lcom/mobclix/android/sdk/ce;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "handle_response"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput v4, p0, Lcom/mobclix/android/sdk/ar;->n:I

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "c_build_creative"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "b_get_view"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "c_deque_view"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildCount()I

    move-result v0

    if-gt v0, v7, :cond_6

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "e_add_view"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1, p0}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "d_bring_onscreen"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->A:Lcom/mobclix/android/sdk/ar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->A:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/ar;->d()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->g:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    const-string v2, "flipRight"

    invoke-direct {p0, v1, v2}, Lcom/mobclix/android/sdk/ar;->a(Landroid/widget/ViewFlipper;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->showNext()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Lcom/mobclix/android/sdk/ar;->m:I

    if-le v0, v7, :cond_2

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->b()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->t:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/bs;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/bs;-><init>(Lcom/mobclix/android/sdk/ar;)V

    iget v2, p0, Lcom/mobclix/android/sdk/ar;->s:I

    int-to-long v2, v2

    iget v4, p0, Lcom/mobclix/android/sdk/ar;->s:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v1, "e_trigger_events"

    invoke-virtual {v0, v6, v1}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->f()V

    :cond_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "f_notify_delegates"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/mobclix/android/sdk/MobclixAdView;->m:J

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    const-string v2, "h_handle_autoplay"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    iget-boolean v1, v1, Lcom/mobclix/android/sdk/as;->d:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/mobclix/android/sdk/ar;->q:Z

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/mobclix/android/sdk/ar;->r:Z

    if-nez v1, :cond_5

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v7, p0, Lcom/mobclix/android/sdk/ar;->q:Z

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/as;->a()Z

    sget-object v1, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->f:Lcom/mobclix/android/sdk/ce;

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0, v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->A:Lcom/mobclix/android/sdk/ar;

    if-ne v0, v1, :cond_8

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/ar;

    move v3, v4

    :goto_3
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->getChildCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-lt v3, v1, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0, v7}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V

    goto/16 :goto_1

    :cond_7
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/ar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/bq;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/bq;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/ar;

    move v3, v4

    :goto_6
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->getChildCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-lt v3, v1, :cond_9

    :goto_7
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0, v4}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V

    goto/16 :goto_1

    :cond_9
    :try_start_3
    invoke-virtual {v0, v3}, Lcom/mobclix/android/sdk/ar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/bq;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/bq;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/u;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_5
.end method

.method final f()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/ar;->c:Z

    :goto_1
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/j;

    new-instance v4, Lcom/mobclix/android/sdk/i;

    invoke-direct {v4}, Lcom/mobclix/android/sdk/i;-><init>()V

    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method final g()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mobclix/android/sdk/j;

    new-instance v3, Lcom/mobclix/android/sdk/i;

    invoke-direct {v3}, Lcom/mobclix/android/sdk/i;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "MobclixCreative"

    const-string v1, "Android project  issue 6191  workaround."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    throw v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->h:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/ar;->g()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/ar;->b:Lcom/mobclix/android/sdk/as;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/as;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
