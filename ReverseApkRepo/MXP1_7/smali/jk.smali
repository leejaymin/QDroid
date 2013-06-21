.class Ljk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic 癤욱븳援:Ljj;


# direct methods
.method constructor <init>(Ljj;)V
    .locals 0

    iput-object p1, p0, Ljk;->癤욱븳援:Ljj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Ljk;->癤욱븳援:Ljj;

    invoke-static {v0}, Ljj;->癤욱븳援(Ljj;)Lcom/mxtech/videoplayer/ActivityPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    :try_start_0
    iget-object v0, p0, Ljk;->癤욱븳援:Ljj;

    invoke-static {v0}, Ljj;->癤욱븳援(Ljj;)Lcom/mxtech/videoplayer/ActivityPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/mxtech/videoplayer/ActivityVideoList;

    invoke-static {v0, v2}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/ActivityPreferences;->궗:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
