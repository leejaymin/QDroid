.class Lne;
.super Lec;


# instance fields
.field private ㅼ꽑嫄:I

.field final synthetic 癤욱븳援:Lnb;

.field private final 궗:Ljava/lang/String;

.field private 먯꽌:Landroid/view/SurfaceHolder;


# direct methods
.method constructor <init>(Lnb;Ljava/lang/String;Landroid/view/SurfaceHolder;I)V
    .locals 0

    iput-object p1, p0, Lne;->癤욱븳援:Lnb;

    invoke-direct {p0}, Lec;-><init>()V

    iput-object p2, p0, Lne;->궗:Ljava/lang/String;

    iput-object p3, p0, Lne;->먯꽌:Landroid/view/SurfaceHolder;

    iput p4, p0, Lne;->ㅼ꽑嫄:I

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lne;->癤욱븳援([Ljava/lang/Void;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lne;->癤욱븳援(Ljava/net/InetAddress;)V

    return-void
.end method

.method protected varargs 癤욱븳援([Ljava/lang/Void;)Ljava/net/InetAddress;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lne;->궗:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lnb;->꾩떎()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method 癤욱븳援(Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lne;->먯꽌:Landroid/view/SurfaceHolder;

    return-void
.end method

.method protected 癤욱븳援(Ljava/net/InetAddress;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    invoke-static {v0}, Lnb;->癤욱븳援(Lnb;)Lne;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnb;->癤욱븳援(Lnb;Lne;)V

    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    invoke-static {v0, p1}, Lnb;->癤욱븳援(Lnb;Ljava/net/InetAddress;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    invoke-static {v0, v4}, Lnb;->癤욱븳援(Lnb;I)V

    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lnb;->궗(Lnb;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    invoke-static {v0}, Lnb;->궗(Lnb;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    invoke-static {v0, v4}, Lnb;->癤욱븳援(Lnb;Z)V

    :try_start_0
    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    iget-object v1, p0, Lne;->먯꽌:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lne;->癤욱븳援:Lnb;

    invoke-static {v2}, Lnb;->먯꽌(Lnb;)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lne;->ㅼ꽑嫄:I

    invoke-static {v0, v1, v2, v3}, Lnb;->癤욱븳援(Lnb;Landroid/view/SurfaceHolder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lnb;->꾩떎()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lne;->癤욱븳援:Lnb;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4}, Lnb;->癤욱븳援(Lnb;IZ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lnb;->꾩떎()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lne;->癤욱븳援:Lnb;

    invoke-static {v2}, Lnb;->궗(Lnb;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while looking up DNS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
