.class public Lcom/google/ads/AdActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static ㅼ꽑嫄:Lbg;

.field private static 弱밧:Lcom/google/ads/AdActivity;

.field private static final 癤욱븳援:Lau;

.field private static final 궗:Ljava/lang/Object;

.field private static final 대쫫:Lg;

.field private static 먯꽌:Lcom/google/ads/AdActivity;

.field private static 쇰뒗:Lcom/google/ads/AdActivity;


# instance fields
.field private 寃껋씠:Lcom/google/ads/internal/AdVideoView;

.field private 洹:Lcom/google/ads/internal/AdWebView;

.field private 꾨뱾:J

.field private 덉쓣:Z

.field private 뚮Ц:Landroid/widget/RelativeLayout;

.field private 뚮젮議뚮떎怨:Z

.field private 먮:Z

.field private 먯껜蹂대떎:Z

.field private 몃Ъ:Landroid/view/ViewGroup;

.field private 붿슧:Lcom/google/ads/AdActivity;

.field private 留먰븷:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lau;->癤욱븳援:Lde;

    invoke-interface {v0}, Lde;->궗()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau;

    sput-object v0, Lcom/google/ads/AdActivity;->癤욱븳援:Lau;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->궗:Ljava/lang/Object;

    sput-object v1, Lcom/google/ads/AdActivity;->먯꽌:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    sput-object v1, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    sput-object v1, Lcom/google/ads/AdActivity;->쇰뒗:Lcom/google/ads/AdActivity;

    new-instance v0, Lg;

    invoke-direct {v0}, Lg;-><init>()V

    sput-object v0, Lcom/google/ads/AdActivity;->대쫫:Lg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->몃Ъ:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->붿슧:Lcom/google/ads/AdActivity;

    return-void
.end method

.method public static synthetic ㅼ꽑嫄()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->궗:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic 弱밧()Lcom/google/ads/AdActivity;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    return-object v0
.end method

.method public static 癤욱븳援(Lbg;Lbh;)V
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->대쫫:Lg;

    invoke-virtual {v0, p0, p1}, Lg;->癤욱븳援(Lbg;Lbh;)V

    return-void
.end method

.method private 癤욱븳援(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcv;->궗(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method private 癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lcv;->궗(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method public static synthetic 궗(Lbg;)Lbg;
    .locals 0

    sput-object p0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    return-object p0
.end method

.method private 대쫫()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->먯껜蹂대떎:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->癤욱븳援:Lau;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Lau;->궗(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/AdWebView;->setAdActivity(Lcom/google/ads/AdActivity;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setIsExpandedMraid(Z)V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->뚮젮議뚮떎怨:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->몃Ъ:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->留먰븷:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->덉쓣:Z

    if-nez v0, :cond_8

    const-string v0, "Disabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->궗()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->몃Ъ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView;->弱밧()V

    iput-object v2, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    :cond_2
    sget-object v0, Lcom/google/ads/AdActivity;->먯꽌:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_3

    sput-object v2, Lcom/google/ads/AdActivity;->먯꽌:Lcom/google/ads/AdActivity;

    :cond_3
    iget-object v0, p0, Lcom/google/ads/AdActivity;->붿슧:Lcom/google/ads/AdActivity;

    sput-object v0, Lcom/google/ads/AdActivity;->쇰뒗:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->궗:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    sget-object v2, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    invoke-virtual {v2}, Lbg;->꾨뱾()Lcom/google/ads/internal/AdWebView;

    move-result-object v2

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    invoke-virtual {v0}, Lbg;->癤욱븳援()V

    :cond_4
    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    :cond_5
    sget-object v0, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    invoke-virtual {v0}, Lbg;->紐낆옱()V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    :cond_6
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->먯껜蹂대떎:Z

    const-string v0, "AdActivity is closing."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->留먰븷:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->덉쓣:Z

    if-eqz v0, :cond_0

    const-string v0, "Re-enabling hardware acceleration on collapsing MRAID WebView."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->먯꽌()V

    goto :goto_0

    :cond_9
    :try_start_1
    const-string v0, "currentAdManager is null while trying to destroy AdActivity."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private 먯꽌(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public static 먯꽌()Z
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->대쫫:Lg;

    invoke-virtual {v0}, Lg;->癤욱븳援()Z

    move-result v0

    return v0
.end method

.method public static synthetic 쇰뒗()Lbg;
    .locals 1

    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->궗()Lcom/google/ads/internal/AdWebView;

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

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.circles.platform.result.extra.CONFIRMATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.circles.platform.result.extra.ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "insert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->궗()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lt;->癤욱븳援(Landroid/webkit/WebView;Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->궗()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt;->癤욱븳援(Landroid/webkit/WebView;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->먯껜蹂대떎:Z

    sget-object v3, Lcom/google/ads/AdActivity;->궗:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    if-eqz v0, :cond_5

    sget-object v7, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    sget-object v0, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_0

    sput-object p0, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    invoke-virtual {v7}, Lbg;->롩퐢()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdActivity;->붿슧:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->쇰뒗:Lcom/google/ads/AdActivity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/ads/AdActivity;->쇰뒗:Lcom/google/ads/AdActivity;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->붿슧:Lcom/google/ads/AdActivity;

    :cond_1
    sput-object p0, Lcom/google/ads/AdActivity;->쇰뒗:Lcom/google/ads/AdActivity;

    invoke-virtual {v7}, Lbg;->洹()Lbw;

    move-result-object v0

    invoke-virtual {v0}, Lbw;->癤욱븳援()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    if-eq v0, p0, :cond_3

    :cond_2
    invoke-virtual {v7}, Lbg;->洹()Lbw;

    move-result-object v0

    invoke-virtual {v0}, Lbw;->궗()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/AdActivity;->붿슧:Lcom/google/ads/AdActivity;

    sget-object v1, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {v7}, Lbg;->弱방떙()V

    :cond_4
    invoke-virtual {v7}, Lbg;->덉쓣()Z

    move-result v8

    invoke-virtual {v7}, Lbg;->洹()Lbw;

    move-result-object v0

    iget-object v0, v0, Lbw;->癤욱븳援:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    iget-object v0, v0, Lbu;->癤욱븳援:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbv;

    sget v4, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    iget-object v1, v0, Lbv;->癤욱븳援:Ldv;

    invoke-virtual {v1}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v4, v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/ads/AdActivity;->덉쓣:Z

    sget v1, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    iget-object v0, v0, Lbv;->궗:Ldv;

    invoke-virtual {v0}, Ldv;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_7

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->留먰븷:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->먮:Z

    iput-boolean v2, p0, Lcom/google/ads/AdActivity;->뚮젮議뚮떎怨:Z

    iput-object v5, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.ads.AdOpener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "Could not get the Bundle used to create AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    :try_start_1
    const-string v0, "Could not get currentAdManager."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v1, v6

    goto :goto_0

    :cond_7
    move v0, v6

    goto :goto_1

    :cond_8
    new-instance v1, Lbh;

    invoke-direct {v1, v0}, Lbh;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lbh;->궗()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lbh;->먯꽌()Ljava/util/HashMap;

    move-result-object v9

    const-string v1, "plusone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v9, v7}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/util/HashMap;Lbg;)V

    goto :goto_2

    :cond_9
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v9, v7}, Lcom/google/ads/AdActivity;->궗(Ljava/util/HashMap;Lbg;)V

    goto :goto_2

    :cond_a
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v7}, Lbg;->洹()Lbw;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/google/ads/internal/AdWebView;-><init>(Lbw;Ll;)V

    iput-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    sget-object v1, Lau;->먯꽌:Ljava/util/Map;

    if-nez v8, :cond_c

    move v0, v2

    :goto_3
    invoke-static {v7, v1, v2, v0}, Lbn;->癤욱븳援(Lbg;Ljava/util/Map;ZZ)Lbn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbn;->ㅼ꽑嫄(Z)V

    if-eqz v8, :cond_b

    invoke-virtual {v0, v2}, Lbn;->癤욱븳援(Z)V

    :cond_b
    iget-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const-string v0, "u"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "baseurl"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "html"

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/AdWebView;->loadUrl(Ljava/lang/String;)V

    :goto_4
    const-string v0, "o"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/google/ads/util/AdUtil;->궗()I

    move-result v0

    :goto_5
    iget-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v1, v6, v0, v8}, Lcom/google/ads/AdActivity;->癤욱븳援(Lcom/google/ads/internal/AdWebView;ZIZ)V

    goto/16 :goto_2

    :cond_c
    move v0, v6

    goto :goto_3

    :cond_d
    if-eqz v2, :cond_e

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/internal/AdWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const-string v0, "Could not get the URL or HTML parameter to show a web app."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/ads/util/AdUtil;->癤욱븳援()I

    move-result v0

    goto :goto_5

    :cond_10
    sget-object v0, Lcom/google/ads/AdActivity;->弱밧:Lcom/google/ads/AdActivity;

    if-ne p0, v0, :cond_11

    invoke-virtual {v7}, Lbg;->먮()I

    move-result v0

    goto :goto_5

    :cond_11
    const/4 v0, -0x1

    goto :goto_5

    :cond_12
    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    invoke-virtual {v7}, Lbg;->꾨뱾()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v7}, Lbg;->먮()I

    move-result v1

    const-string v3, "expand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0, v2}, Lcom/google/ads/internal/AdWebView;->setIsExpandedMraid(Z)V

    iput-boolean v6, p0, Lcom/google/ads/AdActivity;->뚮젮議뚮떎怨:Z

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->留먰븷:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->덉쓣:Z

    if-nez v0, :cond_14

    const-string v0, "Re-enabling hardware acceleration on expanding MRAID WebView."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->먯꽌()V

    :cond_14
    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {p0, v0, v2, v1, v8}, Lcom/google/ads/AdActivity;->癤욱븳援(Lcom/google/ads/internal/AdWebView;ZIZ)V

    goto/16 :goto_2

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

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->대쫫()V

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->뚮젮議뚮떎怨:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/AdActivity;->대쫫()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/AdActivity;->먮:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/AdActivity;->꾨뱾:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "Launcher AdActivity got focus and is closing."

    invoke-static {v0}, Lcv;->ㅼ꽑嫄(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected 癤욱븳援(I)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-object v2
.end method

.method public 癤욱븳援()Lcom/google/ads/internal/AdVideoView;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    return-object v0
.end method

.method protected 癤욱븳援(Landroid/app/Activity;)Lcom/google/ads/internal/AdVideoView;
    .locals 2

    new-instance v0, Lcom/google/ads/internal/AdVideoView;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-direct {v0, p1, v1}, Lcom/google/ads/internal/AdVideoView;-><init>(Landroid/app/Activity;Lcom/google/ads/internal/AdWebView;)V

    return-object v0
.end method

.method public 癤욱븳援(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->먯꽌(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdVideoView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected 癤욱븳援(Lbg;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/AdActivity;->꾨뱾:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/AdActivity;->먮:Z

    sget-object v1, Lcom/google/ads/AdActivity;->궗:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->먯꽌:Lcom/google/ads/AdActivity;

    if-nez v0, :cond_0

    sput-object p0, Lcom/google/ads/AdActivity;->먯꽌:Lcom/google/ads/AdActivity;

    invoke-virtual {p1}, Lbg;->ㅼ쬆()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected 癤욱븳援(Lcom/google/ads/internal/AdWebView;ZIZ)V
    .locals 8

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0, v5}, Lcom/google/ads/AdActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    sget v1, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    if-lt v1, v7, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/AdActivity;->留먰븷:Z

    if-eqz v1, :cond_3

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-static {v0}, Ldf;->癤욱븳援(Landroid/view/Window;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/ads/AdActivity;->몃Ъ:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->몃Ъ:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->ㅼ꽑嫄()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "Interstitial created with an AdWebView that is already in use by another AdActivity."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "Disabling hardware acceleration on the AdActivity WebView."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/internal/AdWebView;->궗()V

    goto :goto_0

    :cond_4
    const-string v0, "MRAID banner was not a child of a ViewGroup."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "Interstitial created with an AdWebView that has a parent."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p3}, Lcom/google/ads/AdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p1, p0}, Lcom/google/ads/internal/AdWebView;->setAdActivity(Lcom/google/ads/AdActivity;)V

    if-eqz p4, :cond_7

    const/16 v0, 0x32

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p4, :cond_8

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3
    iget-object v2, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    if-eqz p2, :cond_2

    sget-object v0, Lcom/google/ads/AdActivity;->癤욱븳援:Lau;

    invoke-virtual {v0, p1}, Lau;->癤욱븳援(Landroid/webkit/WebView;)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x20

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3
.end method

.method protected 癤욱븳援(Ljava/util/HashMap;Lbg;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.apps.plus"

    const-string v3, "com.google.android.apps.circles.platform.PlusOneActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "com.google.circles.platform.intent.extra.ENTITY"

    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.google.circles.platform.intent.extra.ENTITY_TYPE"

    sget-object v2, Laa;->癤욱븳援:Laa;

    iget-object v2, v2, Laa;->먯꽌:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.google.circles.platform.intent.extra.ACTION"

    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->癤욱븳援(Lbg;)V

    :try_start_0
    const-string v0, "Launching Google+ intent from AdActivity."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/AdActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public 궗()Lcom/google/ads/internal/AdWebView;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/AdActivity;->붿슧:Lcom/google/ads/AdActivity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->붿슧:Lcom/google/ads/AdActivity;

    iget-object v0, v0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/google/ads/AdActivity;->궗:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    if-nez v1, :cond_1

    const-string v1, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v1}, Lcv;->弱밧(Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    invoke-virtual {v1}, Lbg;->꾨뱾()Lcom/google/ads/internal/AdWebView;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/AdActivity;->洹:Lcom/google/ads/internal/AdWebView;

    if-eq v1, v3, :cond_2

    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public 궗(IIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/google/ads/AdActivity;->癤욱븳援(Landroid/app/Activity;)Lcom/google/ads/internal/AdVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    iget-object v0, p0, Lcom/google/ads/AdActivity;->뚮Ц:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/ads/AdActivity;->寃껋씠:Lcom/google/ads/internal/AdVideoView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/AdActivity;->먯꽌(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/google/ads/AdActivity;->궗:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    if-nez v0, :cond_1

    const-string v0, "currentAdManager was null while trying to get the opening AdWebView."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/google/ads/AdActivity;->ㅼ꽑嫄:Lbg;

    invoke-virtual {v0}, Lbg;->뚮Ц()Lbn;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbn;->궗(Z)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected 궗(Ljava/util/HashMap;Lbg;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "Could not get the paramMap in launchIntent()"

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "Could not get the URL parameter in launchIntent()."

    invoke-direct {p0, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "i"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "m"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/ads/AdActivity;->癤욱븳援(Lbg;)V

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

    invoke-static {v1}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/ads/AdActivity;->癤욱븳援(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1
.end method
