.class Ljd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Ljc;


# direct methods
.method constructor <init>(Ljc;)V
    .locals 0

    iput-object p1, p0, Ljd;->癤욱븳援:Ljc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lql;->대쫫()V

    iget-object v0, p0, Ljd;->癤욱븳援:Ljc;

    invoke-static {v0}, Ljc;->癤욱븳援(Ljc;)Lcom/mxtech/videoplayer/ActivityPreferences;

    move-result-object v0

    sget v2, Lnt;->cfg_message_history_cleared:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lql;->먯꽌()V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lql;->먯꽌()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ljd;->癤욱븳援:Ljc;

    invoke-static {v0}, Ljc;->癤욱븳援(Ljc;)Lcom/mxtech/videoplayer/ActivityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljd;->癤욱븳援:Ljc;

    invoke-static {v0}, Ljc;->癤욱븳援(Ljc;)Lcom/mxtech/videoplayer/ActivityPreferences;

    move-result-object v0

    iget-object v1, p0, Ljd;->癤욱븳援:Ljc;

    invoke-static {v1}, Ljc;->癤욱븳援(Ljc;)Lcom/mxtech/videoplayer/ActivityPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v1

    sget v2, Lnt;->error_database:I

    invoke-static {v0, v1, v2}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;I)Landroid/app/AlertDialog;

    goto :goto_0
.end method
