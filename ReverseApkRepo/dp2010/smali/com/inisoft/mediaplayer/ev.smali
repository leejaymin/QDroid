.class final Lcom/inisoft/mediaplayer/ev;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->al()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ev;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->b(Z)V

    goto :goto_0
.end method
