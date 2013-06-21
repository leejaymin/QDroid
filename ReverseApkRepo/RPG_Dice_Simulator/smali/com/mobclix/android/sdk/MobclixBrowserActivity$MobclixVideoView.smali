.class Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;
.super Landroid/widget/RelativeLayout;
.source "MobclixBrowserActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobclixVideoView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private adButtonBanner:Landroid/widget/LinearLayout;

.field private adButtons:Landroid/widget/LinearLayout;

.field private buttonImageUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private buttonImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private buttonUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private landingUrl:Ljava/lang/String;

.field private loadComplete:Z

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mMediaController:Landroid/widget/MediaController;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mVideoView:Landroid/widget/VideoView;

.field private tagline:Ljava/lang/String;

.field private taglineImageUrl:Ljava/lang/String;

.field private taglineImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

.field private trackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoLoaded:Z

.field private videoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "a"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    const-string v8, ""

    .line 288
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 266
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 245
    const-string v4, ""

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    .line 246
    const-string v4, ""

    iput-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    .line 247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    .line 250
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    .line 252
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    .line 253
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    .line 255
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 256
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    .line 262
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    .line 263
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    .line 267
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    .line 269
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, responseObject:Lorg/json/JSONObject;
    const-string v4, "videoUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoUrl:Ljava/lang/String;

    .line 271
    const-string v4, "landingUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    .line 272
    const-string v4, "tagline"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    .line 273
    const-string v4, "taglineImageUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    .line 274
    const-string v4, "buttons"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 275
    .local v0, buttons:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 279
    const-string v4, "trackingUrls"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 280
    .local v3, tracking:Lorg/json/JSONArray;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lt v1, v4, :cond_1

    .line 285
    .end local v0           #buttons:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #responseObject:Lorg/json/JSONObject;
    .end local v3           #tracking:Lorg/json/JSONArray;
    :goto_2
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadVideoAd()V

    return-void

    .line 276
    .restart local v0       #buttons:Lorg/json/JSONArray;
    .restart local v1       #i:I
    .restart local v2       #responseObject:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "imageUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .restart local v3       #tracking:Lorg/json/JSONArray;
    :cond_1
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    .end local v0           #buttons:Lorg/json/JSONArray;
    .end local v1           #i:I
    .end local v2           #responseObject:Lorg/json/JSONObject;
    .end local v3           #tracking:Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    return v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    return-void
.end method

.method static synthetic access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public createAdButtonBanner()V
    .locals 20

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_0

    .line 409
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 378
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    move-object v0, v4

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v4, adButtonBannerLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xc

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    const-string v16, "#CC666666"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 383
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object v15, v0

    invoke-direct {v8, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 384
    .local v8, divider:Landroid/widget/ImageView;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    const v15, 0x1080014

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    move-object v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static/range {v17 .. v18}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 390
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v10, v15, :cond_1

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 391
    :cond_1
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object v15, v0

    invoke-direct {v5, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 392
    .local v5, b:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 393
    .local v6, bmImg:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 394
    .local v12, rawWidth:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 395
    .local v11, rawHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-object v15, v0

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v15, v12}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v14

    .line 396
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-object v15, v0

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v15, v11}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v9

    .line 397
    .local v9, height:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 398
    .local v7, buttonLayout:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v15, 0x3f80

    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 399
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 402
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 404
    .local v13, url:Ljava/lang/String;
    new-instance v15, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    move-object v15, v0

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public loadBackgroundImage()V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 419
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method

.method public loadButtonImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 443
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, p1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 450
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public loadTaglineImage()V
    .locals 4

    .prologue
    .line 423
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 438
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 439
    return-void
.end method

.method public loadTrackingImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 454
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, p1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 459
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public loadVideoAd()V
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v9, 0x4

    const-string v10, ""

    .line 308
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 311
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 313
    .local v0, paramsCenter:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 315
    new-instance v5, Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    .line 316
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    const/16 v6, 0x539

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setId(I)V

    .line 317
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v5, Landroid/widget/MediaController;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 320
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v6}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 322
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 323
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 324
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 325
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 326
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 327
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v9}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 328
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 330
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    .line 331
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;

    invoke-direct {v6, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 344
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 345
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    .local v3, taglineWrap:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v1, taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 348
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    const-string v5, "#CC666666"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 350
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v5, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v5

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v6, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v7, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v8, v9}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 351
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 352
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 353
    .local v2, taglineView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    .end local v2           #taglineView:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 363
    .end local v1           #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #taglineWrap:Landroid/widget/LinearLayout;
    :cond_3
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 364
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 367
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadBackgroundImage()V

    .line 368
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 371
    return-void

    .line 356
    .restart local v1       #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3       #taglineWrap:Landroid/widget/LinearLayout;
    :cond_4
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    .line 357
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTaglineImage()V

    goto :goto_0

    .line 364
    .end local v1           #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #taglineWrap:Landroid/widget/LinearLayout;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 365
    .local v4, u:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadButtonImage(Ljava/lang/String;)V

    goto :goto_1

    .line 368
    .end local v4           #u:Ljava/lang/String;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 369
    .restart local v4       #u:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTrackingImage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 299
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->removeView(Landroid/view/View;)V

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    .line 293
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 295
    return-void
.end method
