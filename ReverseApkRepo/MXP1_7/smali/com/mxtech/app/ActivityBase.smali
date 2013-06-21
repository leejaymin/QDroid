.class public Lcom/mxtech/app/ActivityBase;
.super Landroid/app/Activity;


# instance fields
.field private ㅼ꽑嫄:Z

.field public 癤욱븳援:Lfm;

.field public 궗:Z

.field protected 먯꽌:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    iput-object v0, p0, Lcom/mxtech/app/ActivityBase;->癤욱븳援:Lfm;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lfd;->癤욱븳援(Landroid/app/Activity;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/app/ActivityBase;->癤욱븳援:Lfm;

    invoke-virtual {v0}, Lfm;->癤욱븳援()V

    invoke-static {p0}, Lfd;->쇰뒗(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->먯꽌:Z

    invoke-static {p0}, Lfd;->ㅼ꽑嫄(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->먯꽌:Z

    invoke-static {p0}, Lfd;->먯꽌(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->궗:Z

    iget-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->ㅼ꽑嫄:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->ㅼ꽑嫄:Z

    invoke-virtual {p0}, Lcom/mxtech/app/ActivityBase;->癤욱븳援()V

    :cond_0
    invoke-static {p0}, Lfd;->궗(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->궗:Z

    invoke-static {p0}, Lfd;->弱밧(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public 癤욱븳援()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mxtech/app/ActivityBase;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/mxtech/app/ActivityBase;->overridePendingTransition(II)V

    :try_start_0
    invoke-virtual {p0}, Lcom/mxtech/app/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/mxtech/app/ActivityBase;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/app/ActivityBase;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public 궗()V
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->궗:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/app/ActivityBase;->癤욱븳援()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/app/ActivityBase;->ㅼ꽑嫄:Z

    goto :goto_0
.end method
