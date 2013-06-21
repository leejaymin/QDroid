.class Llf;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final 癤욱븳援:Landroid/os/Handler;

.field final synthetic 궗:Llc;


# direct methods
.method constructor <init>(Llc;)V
    .locals 2

    iput-object p1, p0, Llf;->궗:Llc;

    const-string v0, "light"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Llf;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Llf;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Llf;->癤욱븳援:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, v0}, Lql;->궗(Ljava/io/File;)I

    move-result v2

    if-lez v2, :cond_0

    sget-object v3, Lcom/mxtech/videoplayer/L;->붿슧:Loe;

    invoke-virtual {v3, v2, v0}, Loe;->궗(ILjava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Llg;

    iget-object v4, p0, Llf;->궗:Llc;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v3, v4, v5, v0}, Llg;-><init>(Llc;ILjava/io/File;)V

    iput-object v2, v3, Llg;->洹:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    iput v0, v3, Llg;->먯꽌:I

    iget-object v0, p0, Llf;->궗:Llc;

    invoke-static {v0}, Llc;->ㅼ꽑嫄(Llc;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lql;->먯꽌()V

    :goto_0
    return v6

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Llc;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lql;->먯꽌()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    iget-object v1, p0, Llf;->궗:Llc;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v0, v4}, Llc;->癤욱븳援(Llc;IILjava/io/File;I)V

    goto :goto_0
.end method
