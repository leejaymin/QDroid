.class Lbb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ㅼ꽑嫄:Lj;

.field private final 弱밧:Z

.field private final 癤욱븳援:Lbg;

.field private final 궗:Landroid/webkit/WebView;

.field private final 먯꽌:Lbi;


# direct methods
.method public constructor <init>(Lbg;Landroid/webkit/WebView;Lbi;Lj;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb;->癤욱븳援:Lbg;

    iput-object p2, p0, Lbb;->궗:Landroid/webkit/WebView;

    iput-object p3, p0, Lbb;->먯꽌:Lbi;

    iput-object p4, p0, Lbb;->ㅼ꽑嫄:Lj;

    iput-boolean p5, p0, Lbb;->弱밧:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbb;->궗:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbb;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lbb;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lbb;->먯꽌:Lbi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbb;->먯꽌:Lbi;

    invoke-virtual {v0}, Lbi;->癤욱븳援()V

    :cond_1
    iget-boolean v0, p0, Lbb;->弱밧:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbb;->癤욱븳援:Lbg;

    invoke-virtual {v0}, Lbg;->꾨뱾()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lbb;->癤욱븳援:Lbg;

    iget-object v1, p0, Lbb;->ㅼ꽑嫄:Lj;

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(Lj;)V

    return-void
.end method
