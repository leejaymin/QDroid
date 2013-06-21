.class Lcom/mobclix/android/sdk/MobclixCreative$TextPage;
.super Lcom/mobclix/android/sdk/MobclixCreative$Page;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextPage"
.end annotation


# instance fields
.field private bAlign:Ljava/lang/String;

.field private bColor:I

.field private bText:Ljava/lang/String;

.field private bTextView:Landroid/widget/TextView;

.field private bgColor:I

.field private bgImgUrl:Ljava/lang/String;

.field private hAlign:Ljava/lang/String;

.field private hColor:I

.field private hText:Ljava/lang/String;

.field private hTextView:Landroid/widget/TextView;

.field private iconAlign:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private iconView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 6
    .parameter
    .parameter "resource"
    .parameter "p"

    .prologue
    const v2, -0xffff01

    const-string v5, "center"

    const-string v1, "alignment"

    const-string v4, ""

    const-string v3, "null"

    .line 436
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 411
    invoke-direct {p0, p1, p3}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 394
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    .line 395
    const/4 v1, -0x1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I

    .line 396
    const-string v1, "null"

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconUrl:Ljava/lang/String;

    .line 397
    const-string v1, "left"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconAlign:Ljava/lang/String;

    .line 399
    const-string v1, "center"

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;

    .line 400
    const-string v1, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    .line 401
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I

    .line 402
    const-string v1, "center"

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;

    .line 403
    const-string v1, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    .line 404
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I

    .line 412
    :try_start_0
    const-string v1, "bgColor"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    .line 413
    :goto_0
    :try_start_1
    const-string v1, "bgImg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 414
    :goto_1
    :try_start_2
    const-string v1, "iconUrl"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconUrl:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    .line 415
    :goto_2
    :try_start_3
    const-string v1, "iconAlign"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconAlign:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 417
    :goto_3
    :try_start_4
    const-string v1, "headerText"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 418
    .local v0, text:Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 419
    :goto_4
    :try_start_6
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 420
    :goto_5
    :try_start_7
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 423
    .end local v0           #text:Lorg/json/JSONObject;
    :goto_6
    :try_start_8
    const-string v1, "bodyText"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 424
    .restart local v0       #text:Lorg/json/JSONObject;
    :try_start_9
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 425
    :goto_7
    :try_start_a
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    .line 426
    :goto_8
    :try_start_b
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    .line 429
    .end local v0           #text:Lorg/json/JSONObject;
    :goto_9
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->createLayout()V

    .line 431
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconUrl:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadIcon()V

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadBackgroundImage()V

    :cond_1
    return-void

    .line 427
    :catch_0
    move-exception v1

    goto :goto_9

    .line 425
    .restart local v0       #text:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    goto :goto_8

    .line 424
    :catch_2
    move-exception v1

    goto :goto_7

    .line 421
    .end local v0           #text:Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    goto :goto_6

    .line 419
    .restart local v0       #text:Lorg/json/JSONObject;
    :catch_4
    move-exception v1

    goto :goto_5

    .line 418
    :catch_5
    move-exception v1

    goto :goto_4

    .line 415
    .end local v0           #text:Lorg/json/JSONObject;
    :catch_6
    move-exception v1

    goto :goto_3

    .line 414
    :catch_7
    move-exception v1

    goto :goto_2

    .line 413
    :catch_8
    move-exception v1

    goto/16 :goto_1

    .line 412
    :catch_9
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public createLayout()V
    .locals 10

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x3c

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 439
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 440
    .local v2, textLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v9}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v9}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 441
    .local v0, iconLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 442
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconUrl:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 443
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 456
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v3, v3, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v3}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 457
    .local v1, textLayout:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 458
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 461
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    .line 462
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->alignmentMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 463
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    .line 467
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->alignmentMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 468
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 472
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 476
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconUrl:Ljava/lang/String;

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconView:Landroid/widget/ImageView;

    .line 478
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 482
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    iget v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I

    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->setBackgroundColor(I)V

    .line 484
    return-void

    .line 444
    .end local v1           #textLayout:Landroid/widget/LinearLayout;
    :cond_1
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconAlign:Ljava/lang/String;

    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 445
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v8}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 446
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 447
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    invoke-virtual {v0, v5, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconAlign:Ljava/lang/String;

    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v8}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 450
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 451
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 453
    :cond_3
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v3, v8}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method public loadBackgroundImage()V
    .locals 4

    .prologue
    .line 498
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 505
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    return-void
.end method

.method public loadIcon()V
    .locals 4

    .prologue
    .line 487
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->iconUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 494
    .local v0, fetchIcon:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method
