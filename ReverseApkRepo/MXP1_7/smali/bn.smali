.class public Lbn;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static final 먯꽌:Lau;


# instance fields
.field private ㅼ꽑嫄:Ljava/util/Map;

.field private 弱밧:Z

.field private 洹:Z

.field protected 癤욱븳援:Lbg;

.field protected 궗:Z

.field private 대쫫:Z

.field private 쇰뒗:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lau;->癤욱븳援:Lde;

    invoke-interface {v0}, Lde;->궗()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau;

    sput-object v0, Lbn;->먯꽌:Lau;

    return-void
.end method

.method protected constructor <init>(Lbg;Ljava/util/Map;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lbn;->癤욱븳援:Lbg;

    iput-object p2, p0, Lbn;->ㅼ꽑嫄:Ljava/util/Map;

    iput-boolean p3, p0, Lbn;->弱밧:Z

    iput-boolean p4, p0, Lbn;->쇰뒗:Z

    iput-boolean v0, p0, Lbn;->궗:Z

    iput-boolean v0, p0, Lbn;->대쫫:Z

    iput-boolean v0, p0, Lbn;->洹:Z

    return-void
.end method

.method public static 癤욱븳援(Lbg;Ljava/util/Map;ZZ)Lbn;
    .locals 2

    sget v0, Lcom/google/ads/util/AdUtil;->癤욱븳援:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    new-instance v0, Ldo;

    invoke-direct {v0, p0, p1, p2, p3}, Ldo;-><init>(Lbg;Ljava/util/Map;ZZ)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lbn;

    invoke-direct {v0, p0, p1, p2, p3}, Lbn;-><init>(Lbg;Ljava/util/Map;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbn;->대쫫:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbn;->癤욱븳援:Lbg;

    invoke-virtual {v0}, Lbg;->먯껜蹂대떎()Laz;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Laz;->먯꽌()V

    :goto_0
    iput-boolean v1, p0, Lbn;->대쫫:Z

    :cond_0
    iget-boolean v0, p0, Lbn;->洹:Z

    if-eqz v0, :cond_1

    sget-object v0, Lbn;->먯꽌:Lau;

    invoke-virtual {v0, p1}, Lau;->癤욱븳援(Landroid/webkit/WebView;)V

    iput-boolean v1, p0, Lbn;->洹:Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->癤욱븳援(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->궗(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "ai"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lbn;->癤욱븳援:Lbg;

    invoke-virtual {v3}, Lbg;->붿슧()Lbl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbl;->癤욱븳援(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lbn;->먯꽌:Lau;

    invoke-virtual {v0, v2}, Lau;->癤욱븳援(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbn;->먯꽌:Lau;

    iget-object v3, p0, Lbn;->癤욱븳援:Lbg;

    iget-object v4, p0, Lbn;->ㅼ꽑嫄:Ljava/util/Map;

    invoke-virtual {v0, v3, v4, v2, p1}, Lau;->癤욱븳援(Lbg;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lbn;->쇰뒗:Z

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/ads/util/AdUtil;->癤욱븳援(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "u"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lbn;->癤욱븳援:Lbg;

    new-instance v3, Lbh;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lbh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->癤욱븳援(Lbg;Lbh;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lbn;->弱밧:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lbn;->癤욱븳援:Lbg;

    new-instance v3, Lbh;

    const-string v4, "intent"

    invoke-direct {v3, v4, v0}, Lbh;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->癤욱븳援(Lbg;Lbh;)V

    move v0, v1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public ㅼ꽑嫄(Z)V
    .locals 0

    iput-boolean p1, p0, Lbn;->洹:Z

    return-void
.end method

.method public 癤욱븳援(Z)V
    .locals 0

    iput-boolean p1, p0, Lbn;->궗:Z

    return-void
.end method

.method public 궗(Z)V
    .locals 0

    iput-boolean p1, p0, Lbn;->쇰뒗:Z

    return-void
.end method

.method public 먯꽌(Z)V
    .locals 0

    iput-boolean p1, p0, Lbn;->대쫫:Z

    return-void
.end method
