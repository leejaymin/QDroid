.class final Lcom/inisoft/mediaplayer/gi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/gb;

.field private final synthetic b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gb;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gi;->a:Lcom/inisoft/mediaplayer/gb;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/gi;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gi;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->q(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gi;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->q(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ax;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gi;->a:Lcom/inisoft/mediaplayer/gb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;Lcom/inisoft/mediaplayer/ax;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gi;->a:Lcom/inisoft/mediaplayer/gb;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gi;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->k(Lcom/inisoft/mediaplayer/gb;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gi;->b:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/ax;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/inisoft/mediaplayer/ax;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;Lcom/inisoft/mediaplayer/ax;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gi;->a:Lcom/inisoft/mediaplayer/gb;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
