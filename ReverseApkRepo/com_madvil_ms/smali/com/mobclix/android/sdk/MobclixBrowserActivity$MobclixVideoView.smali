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
    .locals 8
    .parameter
    .parameter "a"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 292
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    .line 268
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 245
    const-string v4, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    .line 247
    const-string v4, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    .line 248
    const-string v4, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    .line 251
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    .line 252
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    .line 253
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    .line 254
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    .line 255
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    .line 257
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 258
    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    .line 264
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    .line 265
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    .line 269
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    .line 271
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .local v2, responseObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "videoUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 273
    :goto_0
    :try_start_2
    const-string v4, "landingUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 274
    :goto_1
    :try_start_3
    const-string v4, "tagline"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 275
    :goto_2
    :try_start_4
    const-string v4, "taglineImageUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 277
    :goto_3
    :try_start_5
    const-string v4, "buttons"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 278
    .local v0, buttons:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v4

    if-lt v1, v4, :cond_0

    .line 283
    .end local v0           #buttons:Lorg/json/JSONArray;
    .end local v1           #i:I
    :goto_5
    :try_start_6
    const-string v4, "trackingUrls"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 284
    .local v3, tracking:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result v4

    if-lt v1, v4, :cond_1

    .line 289
    .end local v1           #i:I
    .end local v2           #responseObject:Lorg/json/JSONObject;
    .end local v3           #tracking:Lorg/json/JSONArray;
    :goto_7
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadVideoAd()V

    return-void

    .line 279
    .restart local v0       #buttons:Lorg/json/JSONArray;
    .restart local v1       #i:I
    .restart local v2       #responseObject:Lorg/json/JSONObject;
    :cond_0
    :try_start_7
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "imageUrl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 285
    .end local v0           #buttons:Lorg/json/JSONArray;
    .restart local v3       #tracking:Lorg/json/JSONArray;
    :cond_1
    :try_start_8
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 284
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 287
    .end local v1           #i:I
    .end local v2           #responseObject:Lorg/json/JSONObject;
    .end local v3           #tracking:Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    goto :goto_7

    .line 282
    .restart local v2       #responseObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    goto :goto_5

    .line 275
    :catch_2
    move-exception v4

    goto :goto_3

    .line 274
    :catch_3
    move-exception v4

    goto :goto_2

    .line 273
    :catch_4
    move-exception v4

    goto :goto_1

    .line 272
    :catch_5
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    return v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadComplete:Z

    return-void
.end method

.method static synthetic access$9(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)Lcom/mobclix/android/sdk/MobclixBrowserActivity;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public createAdButtonBanner()V
    .locals 20

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_0

    .line 414
    :goto_0
    return-void

    .line 381
    :cond_0
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 383
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, -0x2

    move-object v0, v4

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 384
    .local v4, adButtonBannerLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xc

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    const-string v16, "#CC666666"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 388
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object v15, v0

    invoke-direct {v8, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 389
    .local v8, divider:Landroid/widget/ImageView;
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x2

    invoke-direct/range {v15 .. v17}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    const v15, 0x1080014

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    .line 394
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

    .line 395
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v10, v15, :cond_1

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtonBanner:Landroid/widget/LinearLayout;

    move-object v15, v0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 396
    :cond_1
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    move-object v15, v0

    invoke-direct {v5, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 397
    .local v5, b:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImages:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 398
    .local v6, bmImg:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 399
    .local v12, rawWidth:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 400
    .local v11, rawHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-object v15, v0

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v15, v12}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v14

    .line 401
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    move-object v15, v0

    #calls: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->dp(I)I
    invoke-static {v15, v11}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$0(Lcom/mobclix/android/sdk/MobclixBrowserActivity;I)I

    move-result v9

    .line 402
    .local v9, height:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v7, buttonLayout:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v15, 0x3f80

    iput v15, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 404
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    sget-object v15, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 407
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonUrls:Ljava/util/ArrayList;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 409
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

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->adButtons:Landroid/widget/LinearLayout;

    move-object v15, v0

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1
.end method

.method public loadBackgroundImage()V
    .locals 4

    .prologue
    .line 417
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$2;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 424
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 425
    return-void
.end method

.method public loadButtonImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$4;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, p1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 455
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method public loadTaglineImage()V
    .locals 4

    .prologue
    .line 428
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$3;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 443
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public loadTrackingImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$5;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-direct {v1, p1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 464
    .local v0, fetchBackground:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    #getter for: Lcom/mobclix/android/sdk/MobclixBrowserActivity;->asyncRequestThreads:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->access$2(Lcom/mobclix/android/sdk/MobclixBrowserActivity;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method public loadVideoAd()V
    .locals 10

    .prologue
    const/16 v8, 0x400

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/4 v9, 0x4

    .line 312
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 315
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    .local v0, paramsCenter:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    new-instance v5, Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    .line 320
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    const/16 v6, 0x539

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setId(I)V

    .line 321
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    new-instance v5, Landroid/widget/MediaController;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 324
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v6}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 326
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 327
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v5, v6}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 328
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 329
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 330
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 331
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v5, v9}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 332
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 334
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    .line 335
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    new-instance v6, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;

    invoke-direct {v6, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView$1;-><init>(Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 348
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 349
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 350
    .local v3, taglineWrap:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 351
    .local v1, taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    const-string v5, "#CC666666"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 354
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

    .line 355
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 356
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 357
    .local v2, taglineView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->tagline:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    .end local v2           #taglineView:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->addView(Landroid/view/View;)V

    .line 367
    .end local v1           #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #taglineWrap:Landroid/widget/LinearLayout;
    :cond_3
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->this$0:Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5, p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity;->setContentView(Landroid/view/View;)V

    .line 368
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->buttonImageUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 371
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->landingUrl:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 372
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadBackgroundImage()V

    .line 373
    :cond_4
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->trackingUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 376
    return-void

    .line 360
    .restart local v1       #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3       #taglineWrap:Landroid/widget/LinearLayout;
    :cond_5
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    .line 361
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->taglineImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTaglineImage()V

    goto :goto_0

    .line 368
    .end local v1           #taglineLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #taglineWrap:Landroid/widget/LinearLayout;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 369
    .local v4, u:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadButtonImage(Ljava/lang/String;)V

    goto :goto_1

    .line 373
    .end local v4           #u:Ljava/lang/String;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 374
    .restart local v4       #u:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->loadTrackingImage(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 303
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->removeView(Landroid/view/View;)V

    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->videoLoaded:Z

    .line 297
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mBackgroundImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixBrowserActivity$MobclixVideoView;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 299
    return-void
.end method
