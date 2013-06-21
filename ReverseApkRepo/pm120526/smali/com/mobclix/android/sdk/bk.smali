.class Lcom/mobclix/android/sdk/bk;
.super Lcom/mobclix/android/sdk/bq;


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/ar;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/16 v9, -0x2ee

    const/16 v8, -0x2774

    const v7, -0x1b207

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/bq;-><init>(Lcom/mobclix/android/sdk/ar;)V

    const-string v0, "openadmob"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bk;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    iput v6, p0, Lcom/mobclix/android/sdk/bk;->d:I

    :try_start_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bk;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->b:Ljava/lang/String;

    const-string v1, "openadmob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v9

    :goto_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v6

    :cond_0
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iput-wide v10, v0, Lcom/mobclix/android/sdk/MobclixAdView;->m:J

    :goto_5
    return-void

    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->b:Ljava/lang/String;

    const-string v1, "opengoogle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v8

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->b:Ljava/lang/String;

    const-string v1, "openmillennial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v7

    goto :goto_3

    :cond_4
    const/16 v0, -0x3ee

    move v1, v0

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/u;

    if-eqz v0, :cond_0

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v3, v3, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v0}, Lcom/mobclix/android/sdk/u;->a()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    :goto_6
    move v3, v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    if-ne v1, v7, :cond_8

    :try_start_3
    invoke-direct {p0}, Lcom/mobclix/android/sdk/bk;->b()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-eq v1, v9, :cond_9

    if-ne v1, v8, :cond_a

    :cond_9
    :try_start_4
    invoke-direct {p0}, Lcom/mobclix/android/sdk/bk;->e()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_5
    invoke-direct {p0}, Lcom/mobclix/android/sdk/bk;->d()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iput-wide v10, v0, Lcom/mobclix/android/sdk/MobclixAdView;->m:J

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_0
.end method

.method private b()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/o;

    iget-object v0, v0, Lcom/mobclix/android/sdk/o;->a:Ljava/util/HashMap;

    const-string v1, "openmillennial"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "height"

    iget-object v2, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v2, v2, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->t:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "width"

    iget-object v2, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v2, v2, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v2, v2, Lcom/mobclix/android/sdk/MobclixAdView;->s:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dbd"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyymmdd"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dbd"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long v1, v4, v1

    long-to-double v1, v1

    const-wide v4, 0x421d63eb0c000000L

    div-double/2addr v1, v4

    double-to-int v1, v1

    const-string v2, "age"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dec"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "den"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "den"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :cond_3
    :goto_2
    :pswitch_1
    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dg"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dg"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :cond_4
    :goto_3
    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dic"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v2, "income"

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dic"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dms"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_3

    :cond_6
    :goto_4
    :pswitch_2
    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v2, "dpo"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v2, "zip"

    sget-object v1, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dpo"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    const-string v1, "keywords"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v1, "com.millennialmedia.android.MMAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    aput-object v4, v1, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v10

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v11

    const-class v4, Ljava/util/Hashtable;

    aput-object v4, v1, v9

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v1, "MMBannerAdTop"

    iget-object v5, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v5, v5, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    const-string v6, "300x250"

    if-ne v5, v6, :cond_d

    const-string v1, "MMBannerAdRectangle"

    move-object v5, v1

    :goto_7
    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    aput-object v1, v6, v7

    const-string v1, "key1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v8

    aput-object v5, v6, v10

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v11

    aput-object v3, v6, v9

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const-string v0, "com.millennialmedia.android.MMAdView$MMAdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/bn;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/bn;-><init>(Lcom/mobclix/android/sdk/bk;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-static {v3, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setListener"

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setId"

    new-array v1, v8, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v7

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    rem-long/2addr v3, v5

    long-to-int v1, v3

    iget-object v3, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    const-string v0, "callForAd"

    new-array v1, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v6, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :pswitch_3
    :try_start_2
    const-string v1, "education"

    const-string v2, "highschool"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :pswitch_4
    const-string v1, "education"

    const-string v2, "somecollege"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "education"

    const-string v2, "bachelor"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_6
    const-string v1, "education"

    const-string v2, "masters"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_7
    const-string v1, "education"

    const-string v2, "phd"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_8
    const-string v1, "ethnicity"

    const-string v2, "hispanic"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_9
    const-string v1, "ethnicity"

    const-string v2, "africanamerican"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_a
    const-string v1, "ethnicity"

    const-string v2, "asian"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_b
    const-string v1, "ethnicity"

    const-string v2, "nativeamerican"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_c
    const-string v1, "ethnicity"

    const-string v2, "white"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_d
    const-string v1, "ethnicity"

    const-string v2, "other"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_e
    const-string v1, "gender"

    const-string v2, "male"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_f
    const-string v1, "gender"

    const-string v2, "female"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_10
    const-string v1, "gender"

    const-string v2, "unknown"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_11
    const-string v1, "marital"

    const-string v2, "single"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_12
    const-string v1, "marital"

    const-string v2, "relationship"

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/u;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/mobclix/android/sdk/u;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_d
    move-object v5, v1

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2
        :pswitch_12
    .end packed-switch
.end method

.method private d()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "com.admob.android.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v0, v8, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const-string v0, "com.admob.android.ads.AdListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Lcom/mobclix/android/sdk/bm;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/bm;-><init>(Lcom/mobclix/android/sdk/bk;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-static {v3, v4, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "setAdListener"

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v0, v4, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "setKeywords"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v4, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "setSearchQuery"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/mobclix/android/sdk/bl;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/bl;-><init>(Lcom/mobclix/android/sdk/bk;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    return-void

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mobclix/android/sdk/u;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, ""

    :cond_4
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {v0}, Lcom/mobclix/android/sdk/u;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private e()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "com.google.ads.AdView"

    const-string v1, "com.google.ads.f"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    move v3, v8

    move-object v4, v10

    move-object v5, v10

    :goto_0
    array-length v6, v2

    if-lt v3, v6, :cond_2

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v0, v12, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v0, v8

    aput-object v1, v0, v9

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v11

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    const-string v3, "300x250"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v3, v4

    :goto_1
    new-array v4, v12, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/e;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const-string v0, "com.google.ads.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/bm;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/bm;-><init>(Lcom/mobclix/android/sdk/bk;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Class;

    aput-object v0, v4, v8

    invoke-static {v3, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setAdListener"

    new-array v4, v9, [Ljava/lang/Class;

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google.ads.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v0, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "setKeywords"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/util/Set;

    aput-object v6, v5, v8

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, v8

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "setTesting"

    new-array v4, v9, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-virtual {v1, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loadAd"

    new-array v4, v9, [Ljava/lang/Class;

    aput-object v1, v4, v8

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BANNER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    aget-object v5, v2, v3

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_3
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "IAB_MRECT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    aget-object v4, v2, v3

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mobclix/android/sdk/u;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ",\\s*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v6, v8

    :goto_2
    array-length v7, v0

    if-ge v6, v7, :cond_0

    aget-object v7, v0, v6

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    move-object v3, v5

    goto/16 :goto_1
.end method


# virtual methods
.method final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.ads.AdView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "com.google.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.millennialmedia.android.MMAdView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "com.millennialmedia.android.MMAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "halt"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bk;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
