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

.field private m:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

.field private n:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 494
    new-instance v0, Lcom/inmobi/androidsdk/IMBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$1;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:Landroid/webkit/WebViewClient;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMCustomView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    return-object v0
.end method

.method static synthetic a()Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 298
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 300
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 301
    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 302
    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$4;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$4;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    const v1, 0x108009a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 313
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 314
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    const/high16 v2, 0x4230

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 314
    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 318
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 323
    const/high16 v2, 0x41c8

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 328
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 334
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$5;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$5;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 353
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->REFRESH:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 359
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$6;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$6;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->BACK:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 384
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v3, Lcom/inmobi/androidsdk/IMBrowserActivity$7;

    invoke-direct {v3, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$7;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    new-instance v2, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v2, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    iput-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    .line 411
    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->m:Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$8;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$8;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4248

    .line 270
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 271
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 275
    if-eqz p2, :cond_0

    .line 276
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v0, p0, v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 284
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    new-instance v1, Lcom/inmobi/androidsdk/IMBrowserActivity$3;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$3;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    return-void

    .line 280
    :cond_0
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v3, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v0, p0, v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    return-object v0
.end method

.method public static requestCallbackOnClosed(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/os/Message;

    .line 546
    return-void
.end method

.method public static setIntWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 554
    return-void
.end method

.method public static setOriginalWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 558
    return-void
.end method

.method public static setWebView(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 550
    return-void
.end method

.method public static setWebViewListener(Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    sput-object p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    .line 562
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->requestWindowFeature(I)Z

    .line 80
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 81
    const/16 v2, 0x400

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 84
    const-string v0, "window"

    .line 83
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 85
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    .line 89
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 90
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 92
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 94
    const-string v1, "EXPAND_WIDTH"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 95
    const-string v1, "EXPAND_HEIGHT"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 96
    const-string v6, "EXPAND_CUSTOM_CLOSE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 97
    const-string v7, "EXPAND_ORIENTATION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    const-string v8, "EXPAND_BACKGROUND_ID"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 99
    const-string v9, "INTERSTITIAL_ORIENTATION"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    const-string v10, "extra_url"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 101
    const-string v11, "FIRST_INSTANCE"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/lang/String;

    .line 103
    sget-boolean v11, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 104
    const-string v11, "InMobiAndroidSDK_3.5.4"

    .line 105
    const-string v12, "IMBrowserActivity-> onCreate"

    .line 104
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    if-nez v10, :cond_1

    if-nez v7, :cond_1

    if-eqz v9, :cond_6

    .line 110
    :cond_1
    if-eqz v7, :cond_9

    .line 112
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    .line 113
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    .line 114
    sget-object v4, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 115
    sget-object v4, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 116
    sget-object v4, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->replaceByPlaceholder()V

    .line 117
    const-string v4, "portrait"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V

    .line 119
    if-le v0, v2, :cond_8

    .line 132
    :cond_2
    :goto_0
    if-lez v3, :cond_3

    if-gtz v1, :cond_4

    :cond_3
    move v1, v0

    move v3, v2

    .line 136
    :cond_4
    if-le v3, v2, :cond_10

    .line 137
    :goto_1
    if-le v1, v0, :cond_f

    .line 138
    :goto_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 140
    const/4 v4, -0x1

    .line 141
    const/4 v7, -0x1

    .line 139
    invoke-direct {v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 142
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setId(I)V

    .line 143
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 146
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v7, v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    invoke-direct {p0, v7, v6}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;Z)V

    .line 154
    invoke-virtual {v1, v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-virtual {p0, v1, v3}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput v2, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 157
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput v2, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->videoValidateWidth:I

    .line 158
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    .line 159
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :try_start_1
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isMutexAquired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    if-eqz v0, :cond_5

    .line 164
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->c:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "EXPAND_WITH_URL"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 166
    :cond_5
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_6

    .line 167
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onExpand()Z

    .line 266
    :cond_6
    :goto_3
    return-void

    .line 125
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    if-gt v2, v0, :cond_2

    :cond_8
    move v13, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Have u added \'android:configChanges=keyboardHidden|orientation|keyboard|uiMode|screenLayout|screenSize|smallestScreenSize\' in the declaration of IMBrowserActivity in the manifest file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 169
    :cond_9
    if-eqz v9, :cond_e

    .line 170
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    .line 172
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExpandedActivity(Landroid/app/Activity;)V

    .line 173
    const-string v0, "portrait"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V

    .line 178
    :cond_a
    :goto_4
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    const/4 v2, -0x1

    .line 181
    const/4 v3, -0x1

    .line 179
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    sget-object v2, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 190
    const/high16 v0, 0x4248

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/high16 v3, 0x4248

    iget v4, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 189
    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 196
    const-string v0, "INTERSTITIAL_CUSTOM_CLOSE"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 197
    if-nez v0, :cond_d

    .line 198
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v0, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    .line 207
    :goto_5
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 208
    const-string v3, "INTERSTITIAL_CLOSE_ID"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setId(I)V

    .line 209
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v2, Lcom/inmobi/androidsdk/IMBrowserActivity$2;

    invoke-direct {v2, p0}, Lcom/inmobi/androidsdk/IMBrowserActivity$2;-><init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 220
    const/4 v2, -0x1

    .line 221
    const/4 v3, -0x1

    .line 219
    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    const-string v2, "INTERSTTIAL_BACKGROUND_ID"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 224
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 225
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_b

    .line 227
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onExpand()Z

    .line 229
    :cond_b
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setViewable(Z)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 261
    :catch_1
    move-exception v0

    .line 262
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 263
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "Failed Rendering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 175
    :cond_c
    :try_start_6
    const-string v0, "landscape"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setRequestedOrientation(I)V

    goto/16 :goto_4

    .line 202
    :cond_d
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMCustomView;

    iget v3, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->i:F

    sget-object v4, Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;

    invoke-direct {v0, p0, v3, v4}, Lcom/inmobi/androidsdk/ai/container/IMCustomView;-><init>(Landroid/content/Context;FLcom/inmobi/androidsdk/ai/container/IMCustomView$SwitchIconType;)V

    goto :goto_5

    .line 233
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    .line 235
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    .line 236
    new-instance v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->g:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/inmobi/androidsdk/ai/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 237
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 238
    const/4 v1, -0x1

    .line 239
    const/4 v2, -0x1

    .line 237
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 242
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V

    .line 245
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->n:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setExternalWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 248
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 249
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "extra_url"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->loadUrl(Ljava/lang/String;)V

    .line 252
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 253
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 255
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setContentView(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

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
    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->e:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->releaseAllPlayers()V

    .line 467
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/os/Message;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 469
    sget-object v0, Lcom/inmobi/androidsdk/IMBrowserActivity;->h:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_1
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 474
    const-string v1, "InMobiAndroidSDK_3.5.4"

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

    .line 481
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 482
    sput-boolean v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->userInitiatedClose:Z

    .line 483
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    if-nez v1, :cond_0

    .line 484
    sget-object v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->d:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    .line 491
    :goto_0
    return v0

    .line 486
    :cond_0
    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->j:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity;->k:Z

    if-eqz v1, :cond_1

    .line 487
    sget-object v1, Lcom/inmobi/androidsdk/IMBrowserActivity;->f:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->close()V

    goto :goto_0

    .line 491
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 441
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 442
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 453
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 454
    return-void
.end method
