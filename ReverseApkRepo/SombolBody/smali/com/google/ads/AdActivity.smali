.class public Lcom/google/ads/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/AdActivity$StaticMethodWrapper;
    }
.end annotation


# static fields
.field public static final BASE_URL_PARAM:Ljava/lang/String; = "baseurl"

.field public static final HTML_PARAM:Ljava/lang/String; = "html"

.field public static final INTENT_ACTION_PARAM:Ljava/lang/String; = "i"

.field public static final ORIENTATION_PARAM:Ljava/lang/String; = "o"

.field public static final TYPE_PARAM:Ljava/lang/String; = "m"

.field public static final URL_PARAM:Ljava/lang/String; = "u"

.field private static final a:Lcom/google/ads/internal/a;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/ads/AdActivity;

.field private static d:Lcom/google/ads/internal/d;

.field private static e:Lcom/google/ads/AdActivity;

.field private static f:Lcom/google/ads/AdActivity;

.field private static final g:Lcom/google/ads/AdActivity$StaticMethodWrapper;


# instance fields
.field private h:Lcom/google/ads/internal/AdWebView;

.field private i:Landroid/view/ViewGroup;

.field private j:Z

.field private k:J

.field private l:Landroid/widget/RelativeLayout;

.field private m:Lcom/google/ads/AdActivity;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/ads/internal/AdVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/a;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    .line 93
    sput-object v1, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    .line 99
    sput-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    .line 102
    sput-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    .line 105
    sput-object v1, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    .line 108
    new-instance v0, Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-direct {v0}, Lcom/google/ads/AdActivity$StaticMethodWrapper;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 178
    iput-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    .line 196
    iput-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    return-void
.end method

.method private a(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 472
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 474
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 475
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 476
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 478
    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    invoke-static {p1}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    .line 253
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-static {p1, p2}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    .line 266
    return-void
.end method

.method static synthetic b()Lcom/google/ads/AdActivity;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/internal/d;)Lcom/google/ads/internal/d;
    .locals 0
    .parameter

    .prologue
    .line 49
    sput-object p0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    return-object p0
.end method

.method static synthetic c()Lcom/google/ads/internal/d;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 807
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->j:Z

    if-nez v0, :cond_7

    .line 809
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 810
    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/a;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/a;->b(Landroid/webkit/WebView;)V

    .line 811
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/AdWebView;->setAdActivity(Lcom/google/ads/AdActivity;)V

    .line 815
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setIsExpandedMraid(Z)V

    .line 818
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 820
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-nez v0, :cond_8

    .line 822
    const-string v0, "Disabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->b()V

    .line 830
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 831
    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    if-eqz v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView;->e()V

    .line 838
    iput-object v2, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    .line 842
    :cond_2
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_3

    .line 843
    sput-object v2, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    sput-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    .line 849
    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 850
    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_5

    .line 854
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->o:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_5

    .line 855
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    sget-object v2, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v2}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v2

    if-ne v0, v2, :cond_4

    .line 856
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->a()V

    .line 858
    :cond_4
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    .line 863
    :cond_5
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_6

    .line 865
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    .line 868
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_9

    .line 870
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->t()V

    .line 873
    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    .line 879
    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->j:Z

    .line 883
    const-string v0, "AdActivity is closing."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 885
    :cond_7
    return-void

    .line 824
    :cond_8
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "Re-enabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->c()V

    goto :goto_0

    .line 875
    :cond_9
    :try_start_1
    const-string v0, "currentAdManager is null while trying to destroy AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-virtual {v0}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->isShowing()Z

    move-result v0

    return v0
.end method

.method public static launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V
    .locals 1
    .parameter "adManager"
    .parameter "adOpener"

    .prologue
    .line 322
    sget-object v0, Lcom/google/ads/AdActivity;->g:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    .line 323
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 225
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 226
    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 228
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 232
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 237
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 240
    return-object v2
.end method

.method protected a(Landroid/app/Activity;)Lcom/google/ads/internal/AdVideoView;
    .locals 2
    .parameter

    .prologue
    .line 427
    new-instance v0, Lcom/google/ads/internal/AdVideoView;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/internal/AdVideoView;-><init>(Landroid/app/Activity;Lcom/google/ads/internal/AdWebView;)V

    return-object v0
.end method

.method protected a(Lcom/google/ads/internal/AdWebView;ZIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 678
    invoke-virtual {p0, v5}, Lcom/google/ads/AdActivity;->requestWindowFeature(I)Z

    .line 679
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 680
    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 684
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    if-lt v1, v7, :cond_0

    .line 685
    iget-boolean v1, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v1, :cond_3

    .line 686
    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 687
    invoke-static {v0}, Lcom/google/ads/util/g;->a(Landroid/view/Window;)V

    .line 696
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_1

    .line 698
    if-eqz p4, :cond_5

    .line 699
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 700
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    .line 701
    iget-object v0, p0, Lcom/google/ads/AdActivity;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 714
    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->d()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 716
    const-string v0, "Interstitial created with an AdWebView that is already in use by another AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    .line 753
    :cond_2
    :goto_1
    return-void

    .line 689
    :cond_3
    const-string v0, "Disabling hardware acceleration on the AdActivity WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->b()V

    goto :goto_0

    .line 703
    :cond_4
    const-string v0, "MRAID banner was not a child of a ViewGroup."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 707
    :cond_5
    const-string v0, "Interstitial created with an AdWebView that has a parent."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 720
    :cond_6
    invoke-virtual {p0, p3}, Lcom/google/ads/AdActivity;->setRequestedOrientation(I)V

    .line 721
    invoke-virtual {p1, p0}, Lcom/google/ads/internal/AdWebView;->setAdActivity(Lcom/google/ads/AdActivity;)V

    .line 724
    if-eqz p4, :cond_7

    const/16 v0, 0x32

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->a(I)Landroid/view/View;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 730
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 734
    if-eqz p4, :cond_8

    .line 735
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 736
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 742
    :goto_3
    iget-object v2, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    .line 744
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->setContentView(Landroid/view/View;)V

    .line 747
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 750
    if-eqz p2, :cond_2

    .line 751
    sget-object v0, Lcom/google/ads/AdActivity;->a:Lcom/google/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;)V

    goto :goto_1

    .line 724
    :cond_7
    const/16 v0, 0x20

    goto :goto_2

    .line 738
    :cond_8
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 739
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3
.end method

.method protected a(Lcom/google/ads/internal/d;)V
    .locals 2
    .parameter

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/AdActivity;->k:J

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->n:Z

    .line 415
    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_0

    .line 418
    sput-object p0, Lcom/google/ads/AdActivity;->c:Lcom/google/ads/AdActivity;

    .line 421
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->v()V

    .line 423
    :cond_0
    monitor-exit v1

    .line 424
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/util/HashMap;Lcom/google/ads/internal/d;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/internal/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 338
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.plus"

    const-string v3, "com.google.android.apps.circles.platform.PlusOneActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 340
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 342
    const-string v2, "com.google.circles.platform.intent.extra.ENTITY"

    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v0, "com.google.circles.platform.intent.extra.ENTITY_TYPE"

    sget-object v2, Lcom/google/ads/ah$b;->a:Lcom/google/ads/ah$b;

    iget-object v2, v2, Lcom/google/ads/ah$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v2, "com.google.circles.platform.intent.extra.ACTION"

    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/d;)V

    .line 351
    :try_start_0
    const-string v0, "Launching Google+ intent from AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/AdActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b(Ljava/util/HashMap;Lcom/google/ads/internal/d;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/internal/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    const-string v0, "Could not get the paramMap in launchIntent()"

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    .line 406
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    if-nez v0, :cond_1

    .line 376
    const-string v0, "Could not get the URL parameter in launchIntent()."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_1
    const-string v1, "i"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 382
    const-string v2, "m"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 387
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 388
    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    :goto_1
    if-eqz v2, :cond_2

    .line 392
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/d;)V

    .line 399
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching an intent from AdActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 388
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public getAdVideoView()Lcom/google/ads/internal/AdVideoView;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    return-object v0
.end method

.method public getOpeningAdWebView()Lcom/google/ads/internal/AdWebView;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    iget-object v0, v0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    .line 303
    :goto_0
    return-object v0

    .line 288
    :cond_0
    sget-object v2, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    :try_start_0
    sget-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-nez v1, :cond_1

    .line 290
    const-string v1, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 292
    monitor-exit v2

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 295
    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v1}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    .line 296
    iget-object v3, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eq v1, v3, :cond_2

    .line 299
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 303
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public moveAdVideoView(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView;->requestLayout()V

    .line 439
    :cond_0
    return-void
.end method

.method public newAdVideoView(IIII)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0, p0}, Lcom/google/ads/AdActivity;->a(Landroid/app/Activity;)Lcom/google/ads/internal/AdVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    .line 450
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 455
    sget-object v1, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 456
    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-nez v0, :cond_1

    .line 457
    const-string v0, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 459
    monitor-exit v1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->l()Lcom/google/ads/internal/i;

    move-result-object v0

    .line 462
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/i;->b(Z)V

    .line 463
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 915
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 918
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getOpeningAdWebView()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.circles.platform.result.extra.CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.circles.platform.result.extra.ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.circles.platform.result.extra.CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.circles.platform.result.extra.ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const-string v0, "insert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getOpeningAdWebView()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/ads/af;->a(Landroid/webkit/WebView;Z)V

    .line 938
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    .line 939
    return-void

    .line 930
    :cond_1
    const-string v0, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getOpeningAdWebView()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/ads/af;->a(Landroid/webkit/WebView;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    .line 490
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 503
    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->j:Z

    .line 508
    sget-object v3, Lcom/google/ads/AdActivity;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 509
    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    if-eqz v0, :cond_5

    .line 510
    sget-object v7, Lcom/google/ads/AdActivity;->d:Lcom/google/ads/internal/d;

    .line 517
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_0

    .line 518
    sput-object p0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    .line 521
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->u()V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_1

    .line 526
    sget-object v0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    .line 528
    :cond_1
    sput-object p0, Lcom/google/ads/AdActivity;->f:Lcom/google/ads/AdActivity;

    .line 531
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-eq v0, p0, :cond_3

    :cond_2
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/m;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/AdActivity;->m:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne v0, v1, :cond_4

    .line 534
    :cond_3
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->w()V

    .line 538
    :cond_4
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->q()Z

    move-result v8

    .line 541
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/l;

    iget-object v0, v0, Lcom/google/ads/l;->a:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/l$a;

    .line 542
    sget v4, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v1, v0, Lcom/google/ads/l$a;->a:Lcom/google/ads/util/i$c;

    invoke-virtual {v1}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v4, v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/AdActivity;->q:Z

    .line 544
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/l$a;->b:Lcom/google/ads/util/i$c;

    invoke-virtual {v0}, Lcom/google/ads/util/i$c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_7

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    .line 546
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    iput-object v5, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    .line 553
    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->n:Z

    .line 557
    iput-boolean v2, p0, Lcom/google/ads/AdActivity;->o:Z

    .line 560
    iput-object v5, p0, Lcom/google/ads/AdActivity;->r:Lcom/google/ads/internal/AdVideoView;

    .line 563
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.ads.AdOpener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 564
    if-nez v0, :cond_8

    .line 565
    const-string v0, "Could not get the Bundle used to create AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    .line 660
    :goto_2
    return-void

    .line 512
    :cond_5
    :try_start_1
    const-string v0, "Could not get currentAdManager."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    .line 513
    monitor-exit v3

    goto :goto_2

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v1, v6

    .line 542
    goto :goto_0

    :cond_7
    move v0, v6

    .line 544
    goto :goto_1

    .line 568
    :cond_8
    new-instance v1, Lcom/google/ads/internal/e;

    invoke-direct {v1, v0}, Lcom/google/ads/internal/e;-><init>(Landroid/os/Bundle;)V

    .line 571
    invoke-virtual {v1}, Lcom/google/ads/internal/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-virtual {v1}, Lcom/google/ads/internal/e;->c()Ljava/util/HashMap;

    move-result-object v9

    .line 575
    const-string v1, "plusone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 576
    invoke-virtual {p0, v9, v7}, Lcom/google/ads/AdActivity;->a(Ljava/util/HashMap;Lcom/google/ads/internal/d;)V

    goto :goto_2

    .line 577
    :cond_9
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 578
    invoke-virtual {p0, v9, v7}, Lcom/google/ads/AdActivity;->b(Ljava/util/HashMap;Lcom/google/ads/internal/d;)V

    goto :goto_2

    .line 581
    :cond_a
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    .line 584
    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 586
    new-instance v0, Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v7}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/m;Lcom/google/ads/AdSize;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    .line 590
    sget-object v1, Lcom/google/ads/internal/a;->c:Ljava/util/Map;

    if-nez v8, :cond_c

    move v0, v2

    :goto_3
    invoke-static {v7, v1, v2, v0}, Lcom/google/ads/internal/i;->a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;

    move-result-object v0

    .line 592
    invoke-virtual {v0, v2}, Lcom/google/ads/internal/i;->d(Z)V

    .line 593
    if-eqz v8, :cond_b

    .line 594
    invoke-virtual {v0, v2}, Lcom/google/ads/internal/i;->a(Z)V

    .line 596
    :cond_b
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 599
    const-string v0, "u"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 600
    const-string v1, "baseurl"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 601
    const-string v2, "html"

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 603
    if-eqz v0, :cond_d

    .line 604
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/AdWebView;->loadUrl(Ljava/lang/String;)V

    .line 615
    :goto_4
    const-string v0, "o"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 616
    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 617
    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v0

    .line 633
    :goto_5
    iget-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v1, v6, v0, v8}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/AdWebView;ZIZ)V

    goto/16 :goto_2

    :cond_c
    move v0, v6

    .line 590
    goto :goto_3

    .line 605
    :cond_d
    if-eqz v2, :cond_e

    .line 606
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/internal/AdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 609
    :cond_e
    const-string v0, "Could not get the URL or HTML parameter to show a web app."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 618
    :cond_f
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 619
    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v0

    goto :goto_5

    .line 625
    :cond_10
    sget-object v0, Lcom/google/ads/AdActivity;->e:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_11

    .line 626
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->n()I

    move-result v0

    goto :goto_5

    .line 628
    :cond_11
    const/4 v0, -0x1

    goto :goto_5

    .line 634
    :cond_12
    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 637
    :cond_13
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    .line 638
    invoke-virtual {v7}, Lcom/google/ads/internal/d;->n()I

    move-result v1

    .line 641
    const-string v3, "expand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 642
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/AdWebView;->setIsExpandedMraid(Z)V

    .line 643
    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->o:Z

    .line 646
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->p:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->q:Z

    if-nez v0, :cond_14

    .line 648
    const-string v0, "Re-enabling hardware acceleration on expanding MRAID WebView."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->c()V

    .line 654
    :cond_14
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v0, v2, v1, v8}, Lcom/google/ads/AdActivity;->a(Lcom/google/ads/internal/AdWebView;ZIZ)V

    goto/16 :goto_2

    .line 656
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown AdOpener, <action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/google/ads/AdActivity;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 774
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    invoke-direct {p0}, Lcom/google/ads/AdActivity;->d()V

    .line 776
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    .line 778
    iget-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->h:Lcom/google/ads/internal/AdWebView;

    .line 783
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 784
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/google/ads/AdActivity;->d()V

    .line 798
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 799
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->n:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/AdActivity;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 898
    const-string v0, "Launcher AdActivity got focus and is closing."

    invoke-static {v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    .line 903
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 904
    return-void
.end method
