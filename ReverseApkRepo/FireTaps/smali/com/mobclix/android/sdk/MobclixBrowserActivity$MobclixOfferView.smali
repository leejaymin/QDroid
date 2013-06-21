.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;
.super Landroid/widget/LinearLayout;
.source "MobclixBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixOfferView"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field bundleId:Ljava/lang/String;

.field currency:Ljava/lang/String;

.field description:Ljava/lang/String;

.field private iconImageView:Landroid/widget/ImageView;

.field iconUrlLarge:Ljava/lang/String;

.field instructions:Ljava/lang/String;

.field name:Ljava/lang/String;

.field points:D

.field price:D

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field whatYouGet:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .parameter
    .parameter "a"
    .parameter "d"
    .parameter "c"

    .prologue
    .line 626
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 490
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->price:D

    .line 499
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->activity:Landroid/app/Activity;

    .line 500
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->currency:Ljava/lang/String;

    .line 502
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 503
    .local v5, data:Lorg/json/JSONObject;
    const-string v21, "type"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->type:Ljava/lang/String;

    .line 504
    const-string v21, "name"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->name:Ljava/lang/String;

    .line 505
    const-string v21, "desc"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 506
    .local v6, descriptions:Lorg/json/JSONObject;
    const-string v21, "long"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->description:Ljava/lang/String;

    .line 507
    const-string v21, "instructions"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->instructions:Ljava/lang/String;

    .line 508
    const-string v21, "what_you_get"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->whatYouGet:Ljava/lang/String;

    .line 509
    const-string v21, "icon"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 510
    .local v8, iconUrls:Lorg/json/JSONObject;
    const-string v21, "120x120"

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconUrlLarge:Ljava/lang/String;

    .line 511
    const-string v21, "price"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 512
    const-string v21, "price"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->price:D

    .line 514
    :cond_0
    const-string v21, "points"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->points:D

    .line 515
    const-string v21, "url"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->url:Ljava/lang/String;

    .line 516
    const-string v21, "bundle_id"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 517
    const-string v21, "bundle_id"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->bundleId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v5           #data:Lorg/json/JSONObject;
    .end local v6           #descriptions:Lorg/json/JSONObject;
    .end local v8           #iconUrls:Lorg/json/JSONObject;
    :goto_0
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->setOrientation(I)V

    .line 524
    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->setBackgroundColor(I)V

    .line 526
    new-instance v19, Landroid/widget/ScrollView;

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 527
    .local v19, scrollView:Landroid/widget/ScrollView;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 528
    .local v20, scrollViewLayout:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v21, 0x3f80

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 529
    invoke-virtual/range {v19 .. v20}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    new-instance v10, Landroid/widget/RelativeLayout;

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 532
    .local v10, infoView:Landroid/widget/RelativeLayout;
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    const/16 v21, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v21

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v21

    const/16 v22, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v22

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v22

    const/16 v23, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v23

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v23

    const/16 v24, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v24

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v24

    move-object v0, v10

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 534
    new-instance v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v23

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v23

    const/16 v24, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v24

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v24

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v22

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x539

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setId(I)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const-string v22, "#CC666666"

    invoke-static/range {v22 .. v22}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 541
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 542
    .local v17, priceView:Landroid/widget/TextView;
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 543
    .local v18, priceViewLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0x1

    const/16 v22, 0x539

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 544
    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v21

    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 546
    const/high16 v21, -0x100

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v21 .. v21}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v13

    .line 548
    .local v13, nf:Ljava/text/NumberFormat;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 549
    .local v16, priceBuffer:Ljava/lang/StringBuffer;
    const-string v21, "<h1>"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v21, "</h1><p><b>Cost:</b> "

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->price:D

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmpg-double v21, v21, v23

    if-gtz v21, :cond_5

    .line 553
    const-string v21, "Free"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :goto_1
    const-string v21, "<br><b>Award:</b> "

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    sget-object v21, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static/range {v21 .. v21}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v13

    .line 559
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->points:D

    move-wide/from16 v21, v0

    move-object v0, v13

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    const-string v21, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->currency:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 564
    new-instance v11, Landroid/widget/TextView;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 565
    .local v11, instructionsView:Landroid/widget/TextView;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move-object v0, v12

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 566
    .local v12, instructionsViewLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0x3

    const/16 v22, 0x539

    move-object v0, v12

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 567
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    const/16 v21, 0x0

    const/16 v22, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 569
    const/high16 v21, -0x100

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 571
    .local v9, info:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->instructions:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 572
    const-string v21, "<b>Instructions</b><br>"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->instructions:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->whatYouGet:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 576
    const-string v21, "<p><b>What You Get</b><br>"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->whatYouGet:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->description:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 580
    const-string v21, "<p><b>About this Offer</b><br>"

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->description:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 586
    new-instance v14, Landroid/widget/Button;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 587
    .local v14, offerButton:Landroid/widget/Button;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move-object v0, v15

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 588
    .local v15, offerButtonLayout:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v14, v15}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    const-string v21, "Start Offer"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 590
    new-instance v21, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)V

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 615
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->addView(Landroid/view/View;)V

    .line 616
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->addView(Landroid/view/View;)V

    .line 618
    new-instance v7, Ljava/lang/Thread;

    new-instance v21, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconUrlLarge:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView$2;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)V

    invoke-direct/range {v21 .. v23}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 625
    .local v7, fetchIcon:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void

    .line 519
    .end local v7           #fetchIcon:Ljava/lang/Thread;
    .end local v9           #info:Ljava/lang/StringBuffer;
    .end local v10           #infoView:Landroid/widget/RelativeLayout;
    .end local v11           #instructionsView:Landroid/widget/TextView;
    .end local v12           #instructionsViewLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13           #nf:Ljava/text/NumberFormat;
    .end local v14           #offerButton:Landroid/widget/Button;
    .end local v15           #offerButtonLayout:Landroid/widget/LinearLayout$LayoutParams;
    .end local v16           #priceBuffer:Ljava/lang/StringBuffer;
    .end local v17           #priceView:Landroid/widget/TextView;
    .end local v18           #priceViewLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v19           #scrollView:Landroid/widget/ScrollView;
    .end local v20           #scrollViewLayout:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5       #data:Lorg/json/JSONObject;
    .restart local v6       #descriptions:Lorg/json/JSONObject;
    .restart local v8       #iconUrls:Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->bundleId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 521
    .end local v5           #data:Lorg/json/JSONObject;
    .end local v6           #descriptions:Lorg/json/JSONObject;
    .end local v8           #iconUrls:Lorg/json/JSONObject;
    :catch_0
    move-exception v21

    goto/16 :goto_0

    .line 555
    .restart local v10       #infoView:Landroid/widget/RelativeLayout;
    .restart local v13       #nf:Ljava/text/NumberFormat;
    .restart local v16       #priceBuffer:Ljava/lang/StringBuffer;
    .restart local v17       #priceView:Landroid/widget/TextView;
    .restart local v18       #priceViewLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v19       #scrollView:Landroid/widget/ScrollView;
    .restart local v20       #scrollViewLayout:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->price:D

    move-wide/from16 v21, v0

    move-object v0, v13

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->iconImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixOfferView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    return-object v0
.end method
