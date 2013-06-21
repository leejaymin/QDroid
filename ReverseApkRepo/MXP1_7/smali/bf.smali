.class Lbf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ㅼ꽑嫄:I

.field private final 弱밧:Z

.field private final 癤욱븳援:Lbg;

.field private final 궗:Landroid/webkit/WebView;

.field private final 대쫫:Ll;

.field private final 먯꽌:Ljava/util/LinkedList;

.field private final 쇰뒗:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbg;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Ll;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbf;->癤욱븳援:Lbg;

    iput-object p2, p0, Lbf;->궗:Landroid/webkit/WebView;

    iput-object p3, p0, Lbf;->먯꽌:Ljava/util/LinkedList;

    iput p4, p0, Lbf;->ㅼ꽑嫄:I

    iput-boolean p5, p0, Lbf;->弱밧:Z

    iput-object p6, p0, Lbf;->쇰뒗:Ljava/lang/String;

    iput-object p7, p0, Lbf;->대쫫:Ll;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lbf;->궗:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbf;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lbf;->궗:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lbf;->癤욱븳援:Lbg;

    iget-object v1, p0, Lbf;->먯꽌:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lbf;->癤욱븳援:Lbg;

    iget v1, p0, Lbf;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(I)V

    iget-object v0, p0, Lbf;->癤욱븳援:Lbg;

    iget-boolean v1, p0, Lbf;->弱밧:Z

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(Z)V

    iget-object v0, p0, Lbf;->癤욱븳援:Lbg;

    iget-object v1, p0, Lbf;->쇰뒗:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lbf;->대쫫:Ll;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbf;->癤욱븳援:Lbg;

    invoke-virtual {v0}, Lbg;->洹()Lbw;

    move-result-object v0

    iget-object v0, v0, Lbw;->몃Ъ:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm;

    iget-object v1, p0, Lbf;->대쫫:Ll;

    invoke-virtual {v0, v1}, Lbm;->궗(Ll;)V

    iget-object v0, p0, Lbf;->癤욱븳援:Lbg;

    invoke-virtual {v0}, Lbg;->꾨뱾()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lbf;->대쫫:Ll;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Ll;)V

    :cond_1
    iget-object v0, p0, Lbf;->癤욱븳援:Lbg;

    invoke-virtual {v0}, Lbg;->洹멸()V

    return-void
.end method
