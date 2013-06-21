.class final Lcom/inisoft/mediaplayer/fi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ij;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/inisoft/mediaplayer/CommonListActivity;->c:Lcom/inisoft/mediaplayer/ft;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ft;->a()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/inisoft/mediaplayer/bw;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->f(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->g(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->n()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->h(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->d()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0, v4}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/gt;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->i(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->i(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->j(Lcom/inisoft/mediaplayer/PlayerActivity;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/fs;->m(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/fs;->a(Lcom/inisoft/mediaplayer/bw;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->a()Lcom/inisoft/mediaplayer/PlayerActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/fi;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/fs;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
