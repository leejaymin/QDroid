.class Lbd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ㅼ꽑嫄:Landroid/webkit/WebView;

.field final synthetic 癤욱븳援:Laz;

.field private final 궗:Ljava/lang/String;

.field private final 먯꽌:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laz;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbd;->癤욱븳援:Laz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbd;->ㅼ꽑嫄:Landroid/webkit/WebView;

    iput-object p3, p0, Lbd;->궗:Ljava/lang/String;

    iput-object p4, p0, Lbd;->먯꽌:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lbd;->먯꽌:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbd;->ㅼ꽑嫄:Landroid/webkit/WebView;

    iget-object v1, p0, Lbd;->궗:Ljava/lang/String;

    iget-object v2, p0, Lbd;->먯꽌:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbd;->ㅼ꽑嫄:Landroid/webkit/WebView;

    iget-object v1, p0, Lbd;->궗:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
