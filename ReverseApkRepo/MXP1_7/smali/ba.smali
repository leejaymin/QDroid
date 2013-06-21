.class Lba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lad;

.field final synthetic 궗:Laz;


# direct methods
.method constructor <init>(Laz;Lad;)V
    .locals 0

    iput-object p1, p0, Lba;->궗:Laz;

    iput-object p2, p0, Lba;->癤욱븳援:Lad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lba;->궗:Laz;

    invoke-static {v0}, Laz;->癤욱븳援(Laz;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lba;->궗:Laz;

    invoke-static {v0}, Laz;->癤욱븳援(Laz;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lba;->궗:Laz;

    invoke-static {v0}, Laz;->癤욱븳援(Laz;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lba;->궗:Laz;

    invoke-static {v0}, Laz;->먯꽌(Laz;)Lbg;

    move-result-object v0

    iget-object v1, p0, Lba;->궗:Laz;

    invoke-static {v1}, Laz;->궗(Laz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(Ljava/lang/String;)V

    iget-object v0, p0, Lba;->궗:Laz;

    invoke-static {v0}, Laz;->ㅼ꽑嫄(Laz;)Ll;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lba;->궗:Laz;

    invoke-static {v0}, Laz;->먯꽌(Laz;)Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->洹()Lbw;

    move-result-object v0

    iget-object v0, v0, Lbw;->몃Ъ:Ldu;

    invoke-virtual {v0}, Ldu;->癤욱븳援()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbm;

    iget-object v1, p0, Lba;->궗:Laz;

    invoke-static {v1}, Laz;->ㅼ꽑嫄(Laz;)Ll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbm;->궗(Ll;)V

    :cond_1
    iget-object v0, p0, Lba;->궗:Laz;

    invoke-static {v0}, Laz;->먯꽌(Laz;)Lbg;

    move-result-object v0

    iget-object v1, p0, Lba;->癤욱븳援:Lad;

    invoke-virtual {v0, v1}, Lbg;->癤욱븳援(Lad;)V

    return-void
.end method
