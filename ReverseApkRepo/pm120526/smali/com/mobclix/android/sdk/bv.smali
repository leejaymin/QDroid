.class final Lcom/mobclix/android/sdk/bv;
.super Lcom/mobclix/android/sdk/bq;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/graphics/drawable/BitmapDrawable;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/mobclix/android/sdk/ar;)V
    .locals 9

    const/16 v8, 0x3c

    const/16 v4, 0x30

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/bq;-><init>(Lcom/mobclix/android/sdk/ar;)V

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->a:Ljava/lang/String;

    iput v7, p0, Lcom/mobclix/android/sdk/bv;->b:I

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    const-string v0, "center"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->h:Ljava/lang/String;

    const v0, -0xffff01

    iput v0, p0, Lcom/mobclix/android/sdk/bv;->i:I

    const-string v0, "center"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->k:Ljava/lang/String;

    const v0, -0xffff01

    iput v0, p0, Lcom/mobclix/android/sdk/bv;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->o:Landroid/graphics/drawable/BitmapDrawable;

    :try_start_0
    const-string v0, "bgColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/bv;->a(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/bv;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    const-string v0, "bgImg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->a:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    const-string v0, "leftIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    :cond_0
    :try_start_3
    const-string v0, "rightIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    :cond_1
    :try_start_4
    const-string v0, "headerText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    :try_start_5
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/bv;->g:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_4
    :try_start_6
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/bv;->h:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/mobclix/android/sdk/bv;->h:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/bv;->h:Ljava/lang/String;

    :cond_2
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/bv;->a(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/bv;->i:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_6
    :try_start_8
    const-string v0, "bodyText"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    :try_start_9
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/bv;->j:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_7
    :try_start_a
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/bv;->k:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    :goto_8
    :try_start_b
    iget-object v1, p0, Lcom/mobclix/android/sdk/bv;->k:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/bv;->k:Ljava/lang/String;

    :cond_3
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/bv;->a(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/bv;->l:I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    :goto_9
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_a
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v4, v4, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v4, v4, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->p:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/bv;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->e:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mobclix/android/sdk/bv;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->p:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mobclix/android/sdk/bv;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->p:Landroid/widget/TextView;

    iget v4, p0, Lcom/mobclix/android/sdk/bv;->i:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->k:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v4, v4, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->q:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/bv;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->e:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mobclix/android/sdk/bv;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->q:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/bv;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->q:Landroid/widget/TextView;

    iget v4, p0, Lcom/mobclix/android/sdk/bv;->l:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->q:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/bv;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v3, v3, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->m:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/bv;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    iget-object v1, v1, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/bv;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/bv;->addView(Landroid/view/View;)V

    :cond_7
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/bv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/mobclix/android/sdk/bv;->b:I

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/bv;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/j;

    iget-object v2, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/bw;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/bw;-><init>(Lcom/mobclix/android/sdk/bv;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    invoke-static {v1}, Lcom/mobclix/android/sdk/ar;->e(Lcom/mobclix/android/sdk/ar;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/j;

    iget-object v2, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/bx;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/bx;-><init>(Lcom/mobclix/android/sdk/bv;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    invoke-static {v1}, Lcom/mobclix/android/sdk/ar;->e(Lcom/mobclix/android/sdk/ar;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->a:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/j;

    iget-object v2, p0, Lcom/mobclix/android/sdk/bv;->a:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/by;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/by;-><init>(Lcom/mobclix/android/sdk/bv;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/j;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/mobclix/android/sdk/bv;->f:Lcom/mobclix/android/sdk/ar;

    invoke-static {v1}, Lcom/mobclix/android/sdk/ar;->e(Lcom/mobclix/android/sdk/ar;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    return-void

    :cond_b
    iget-object v3, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_a

    :cond_c
    iget-object v3, p0, Lcom/mobclix/android/sdk/bv;->c:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mobclix/android/sdk/bv;->d:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_a

    :cond_d
    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/bv;->a(I)I

    move-result v3

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v1

    goto/16 :goto_8

    :catch_2
    move-exception v1

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    move-exception v1

    goto/16 :goto_5

    :catch_5
    move-exception v1

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto/16 :goto_3

    :catch_7
    move-exception v0

    goto/16 :goto_2

    :catch_8
    move-exception v0

    goto/16 :goto_1

    :catch_9
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/bv;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/bv;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bv;->o:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/bv;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/bv;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->o:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/bv;->o:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
