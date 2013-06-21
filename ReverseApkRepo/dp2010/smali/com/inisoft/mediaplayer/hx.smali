.class final Lcom/inisoft/mediaplayer/hx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/eq;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inisoft/mediaplayer/es;)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-interface {p1}, Lcom/inisoft/mediaplayer/es;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-interface {p1}, Lcom/inisoft/mediaplayer/es;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hx;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method
