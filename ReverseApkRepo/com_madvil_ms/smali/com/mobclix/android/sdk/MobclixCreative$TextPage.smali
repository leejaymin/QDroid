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

.field private leftIconUrl:Ljava/lang/String;

.field private leftIconView:Landroid/widget/ImageView;

.field private rightIconUrl:Ljava/lang/String;

.field private rightIconView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 3
    .parameter
    .parameter "resource"
    .parameter "p"

    .prologue
    const v2, -0xffff01

    .line 480
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 452
    invoke-direct {p0, p1, p3}, Lcom/mobclix/android/sdk/MobclixCreative$Page;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    .line 434
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    .line 435
    const/4 v1, -0x1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I

    .line 436
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    .line 437
    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    .line 439
    const-string v1, "center"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;

    .line 440
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    .line 441
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I

    .line 442
    const-string v1, "center"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;

    .line 443
    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    .line 444
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I

    .line 453
    :try_start_0
    const-string v1, "bgColor"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_9

    .line 454
    :goto_0
    :try_start_1
    const-string v1, "bgImg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_8

    .line 455
    :goto_1
    :try_start_2
    const-string v1, "leftIcon"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7

    .line 456
    :goto_2
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    .line 457
    :cond_0
    :try_start_3
    const-string v1, "rightIcon"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    .line 458
    :goto_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "null"

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    .line 460
    :cond_1
    :try_start_4
    const-string v1, "headerText"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    .line 461
    .local v0, text:Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 462
    :goto_4
    :try_start_6
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 463
    :goto_5
    :try_start_7
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    .line 464
    :cond_2
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 467
    .end local v0           #text:Lorg/json/JSONObject;
    :goto_6
    :try_start_8
    const-string v1, "bodyText"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v0

    .line 468
    .restart local v0       #text:Lorg/json/JSONObject;
    :try_start_9
    const-string v1, "alignment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_2

    .line 469
    :goto_7
    :try_start_a
    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    .line 470
    :goto_8
    :try_start_b
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    .line 471
    :cond_3
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->getColorFromJSON(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    .line 474
    .end local v0           #text:Lorg/json/JSONObject;
    :goto_9
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->createLayout()V

    .line 476
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadIcons()V

    .line 477
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 478
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->loadBackgroundImage()V

    :cond_4
    return-void

    .line 472
    :catch_0
    move-exception v1

    goto :goto_9

    .line 469
    .restart local v0       #text:Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    goto :goto_8

    .line 468
    :catch_2
    move-exception v1

    goto :goto_7

    .line 465
    .end local v0           #text:Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    goto :goto_6

    .line 462
    .restart local v0       #text:Lorg/json/JSONObject;
    :catch_4
    move-exception v1

    goto :goto_5

    .line 461
    :catch_5
    move-exception v1

    goto :goto_4

    .line 457
    .end local v0           #text:Lorg/json/JSONObject;
    :catch_6
    move-exception v1

    goto/16 :goto_3

    .line 455
    :catch_7
    move-exception v1

    goto/16 :goto_2

    .line 454
    :catch_8
    move-exception v1

    goto/16 :goto_1

    .line 453
    :catch_9
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 447
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public createLayout()V
    .locals 11

    .prologue
    const/16 v10, 0x3c

    const/16 v9, 0x30

    const/4 v8, -0x1

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 483
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 484
    .local v3, textLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v9}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v5, v9}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 485
    .local v0, leftIconLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 486
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v9}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v5, v9}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 487
    .local v1, rightIconLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 488
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 489
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v5, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 506
    :goto_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 507
    .local v2, textLayout:Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 508
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 511
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    .line 512
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->alignmentMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hAlign:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 513
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<b>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 516
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    .line 517
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->alignmentMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bAlign:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 518
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->hTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 524
    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 526
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    .line 528
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 531
    :cond_0
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 532
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    .line 533
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->addView(Landroid/view/View;)V

    .line 537
    :cond_1
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgColor:I

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->setBackgroundColor(I)V

    .line 539
    return-void

    .line 490
    .end local v2           #textLayout:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v5, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 492
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 493
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v0, v4, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 494
    :cond_3
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    const-string v5, "null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 495
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v5, v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 496
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 497
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v1, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    .line 499
    :cond_4
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v5, v10}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 500
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 501
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v0, v4, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 502
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 503
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #calls: Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I
    invoke-static {v4, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I

    move-result v4

    invoke-virtual {v1, v6, v6, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method

.method public loadBackgroundImage()V
    .locals 4

    .prologue
    .line 565
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->bgImgUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$3;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 572
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return-void
.end method

.method public loadIcons()V
    .locals 4

    .prologue
    .line 542
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->leftIconUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 550
    .local v0, fetchIcon:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .end local v0           #fetchIcon:Ljava/lang/Thread;
    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->rightIconUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$TextPage;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 560
    .restart local v0       #fetchIcon:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .end local v0           #fetchIcon:Ljava/lang/Thread;
    :cond_1
    return-void
.end method
