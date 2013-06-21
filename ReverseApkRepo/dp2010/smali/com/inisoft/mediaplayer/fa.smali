.class final Lcom/inisoft/mediaplayer/fa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/fa;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/fa;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/inisoft/mediaplayer/fa;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/inisoft/mediaplayer/fa;->e:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->I()Lcom/inisoft/mediaplayer/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fa;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/cj;->a(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->v(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->v(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ax;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/ax;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fa;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fa;->e:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/ax;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/ax;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fa;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
