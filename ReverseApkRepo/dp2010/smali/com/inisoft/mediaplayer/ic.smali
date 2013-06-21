.class final Lcom/inisoft/mediaplayer/ic;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ei;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->e(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->f(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->n(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->n(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ic;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->g(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ei;->a()V

    :cond_1
    return-void
.end method
