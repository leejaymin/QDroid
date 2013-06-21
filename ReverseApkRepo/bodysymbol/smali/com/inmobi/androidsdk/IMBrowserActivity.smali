.class public Lcom/inmobi/androidsdk/IMBrowserActivity;
.super Landroid/app/Activity;
.source "IMBrowserActivity.java"


# static fields
.field public static final EXTRA_ADUNIT:Ljava/lang/String; = "extra_adunit"

.field public static final EXTRA_BROWSER_ACTIVITY_TYPE:Ljava/lang/String; = "extra_browser_type"

.field public static final EXTRA_BROWSER_CLOSE:I = 0x64

.field public static final EXTRA_BROWSER_EXPAND_URL:I = 0x66

.field public static final EXTRA_BROWSER_STATUS_BAR:I = 0x65

.field public static final EXTRA_URL:Ljava/lang/String; = "extra_url"

.field private static final b:I = 0x64

.field private static c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private static d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private static f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private static g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

.field private static h:Landroid/os/Message;


# instance fields
.field a:Landroid/widget/RelativeLayout;

.field private e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 449
    new-instance v0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$1;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:Landroid/webkit/WebViewClient;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a()Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x41a0

    const v5, 0x106000d

    .line 287
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 289
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 290
    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 291
    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$4;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$4;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 299
    const-string v2, "assets/im_bkgrnd.png"

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 298
    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 303
    const/4 v2, -0x1

    .line 304
    const/high16 v3, 0x4230

    iget v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 302
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 306
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 309
    iget v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 310
    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 308
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 311
    const/high16 v2, 0x41c8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 312
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 315
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 318
    const-string v3, "assets/im_close_icon.png"

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 317
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 320
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 321
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$5;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$5;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 334
    const-string v3, "assets/im_refresh.png"

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 333
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 337
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$6;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$6;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 351
    const-string v3, "assets/im_previous_arrow_active.png"

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 350
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 354
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$7;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$7;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Landroid/widget/ImageView;

    .line 370
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Landroid/widget/ImageView;

    .line 371
    const-string v3, "assets/im_next_arrow_inactive.png"

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 370
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 374
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$8;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$8;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4248

    .line 262
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 263
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 266
    if-eqz p2, :cond_0

    .line 268
    const-string v2, "assets/im_close_transparent.png"

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 267
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 273
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v0, Lcom/inmobi/androidsdk/IMBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$3;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    return-void

    .line 271
    :cond_0
    const-string v2, "assets/im_close_button.png"

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 270
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method public static requestCallbackOnClosed(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/os/Message;

    .line 499
    return-void
.end method

.method public static setIntWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 507
    return-void
.end method

.method public static setOriginalWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 511
    return-void
.end method

.method public static setWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 503
    return-void
.end method

.method public static setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 515
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestWindowFeature(I)Z

    .line 82
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 83
    const/16 v2, 0x400

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 86
    const-string v0, "window"

    .line 85
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 87
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    .line 91
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 94
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 96
    const-string v1, "EXPAND_WIDTH"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 97
    const-string v1, "EXPAND_HEIGHT"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 98
    const-string v6, "EXPAND_CUSTOM_CLOSE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 99
    const-string v7, "EXPAND_ORIENTATION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 100
    const-string v8, "EXPAND_BACKGROUND_ID"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 101
    const-string v9, "INTERSTITIAL_ORIENTATION"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 102
    const-string v10, "extra_url"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 103
    const-string v11, "FIRST_INSTANCE"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/lang/String;

    .line 105
    sget-boolean v11, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 106
    const-string v11, "InMobiAndroidSDK_3.5.2"

    .line 107
    const-string v12, "IMBrowserActivity-> onCreate"

    .line 106
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    if-nez v10, :cond_1

    if-nez v7, :cond_1

    if-eqz v9, :cond_6

    .line 112
    :cond_1
    if-eqz v7, :cond_9

    .line 114
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    .line 115
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    .line 116
    sget-object v4, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 117
    sget-object v4, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 118
    sget-object v4, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->replaceByPlaceholder()V

    .line 119
    const-string v4, "portrait"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 120
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V

    .line 121
    if-le v0, v2, :cond_8

    .line 134
    :cond_2
    :goto_0
    if-lez v3, :cond_3

    if-gtz v1, :cond_4

    :cond_3
    move v1, v0

    move v3, v2

    .line 138
    :cond_4
    if-le v3, v2, :cond_10

    .line 139
    :goto_1
    if-le v1, v0, :cond_f

    .line 140
    :goto_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    const/4 v4, -0x1

    .line 143
    const/4 v7, -0x1

    .line 141
    invoke-direct {v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 144
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 145
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 148
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v7, v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-direct {p0, v7, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;Z)V

    .line 156
    invoke-virtual {v1, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {p0, v1, v3}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput v2, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 159
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput v2, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 160
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 161
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 161
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_5

    .line 166
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "EXPAND_WITH_URL"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    :cond_5
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_6

    .line 169
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onExpand()Z

    .line 258
    :cond_6
    :goto_3
    return-void

    .line 127
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V

    .line 128
    if-gt v2, v0, :cond_2

    :cond_8
    move v13, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 161
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :cond_9
    if-eqz v9, :cond_e

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    .line 174
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 175
    const-string v0, "portrait"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V

    .line 180
    :cond_a
    :goto_4
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 181
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    const/4 v2, -0x1

    .line 183
    const/4 v3, -0x1

    .line 181
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    sget-object v2, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 192
    const/high16 v2, 0x4248

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x4248

    iget v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 191
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 197
    const-string v3, "INTERSTITIAL_CUSTOM_CLOSE"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 198
    if-nez v3, :cond_d

    .line 200
    const-string v3, "assets/im_close_button.png"

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 199
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    :goto_5
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 207
    const-string v3, "INTERSTITIAL_CLOSE_ID"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 208
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$2;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 219
    const/4 v2, -0x1

    .line 220
    const/4 v3, -0x1

    .line 218
    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    const-string v2, "INTERSTTIAL_BACKGROUND_ID"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 223
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 224
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_b

    .line 226
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onExpand()Z

    .line 228
    :cond_b
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setViewable(Z)V

    goto/16 :goto_3

    .line 177
    :cond_c
    const-string v0, "landscape"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V

    goto/16 :goto_4

    .line 203
    :cond_d
    const-string v3, "assets/im_close_transparent.png"

    invoke-static {v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 202
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 232
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    .line 234
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    .line 235
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 236
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 237
    const/4 v1, -0x1

    .line 238
    const/4 v2, -0x1

    .line 236
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 239
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 241
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V

    .line 244
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExternalWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 247
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 248
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "extra_url"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 251
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 252
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 254
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_f
    move v0, v1

    goto/16 :goto_2

    :cond_10
    move v2, v3

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 413
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 422
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 424
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 429
    const-string v1, "InMobiAndroidSDK_3.5.2"

    const-string v2, "Exception in onDestroy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 436
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 437
    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 438
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    if-nez v1, :cond_0

    .line 439
    sget-object v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 446
    :goto_0
    return v0

    .line 441
    :cond_0
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    if-eqz v1, :cond_1

    .line 442
    sget-object v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    goto :goto_0

    .line 446
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 396
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 397
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 408
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 409
    return-void
.end method
