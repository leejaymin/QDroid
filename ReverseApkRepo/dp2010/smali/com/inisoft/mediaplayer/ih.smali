.class final Lcom/inisoft/mediaplayer/ih;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0, p3}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0, p4}, Lcom/inisoft/mediaplayer/VideoView;->i(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->l(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v3

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v3

    if-ne v3, p4, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->g(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/es;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->i(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->i(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->x(Lcom/inisoft/mediaplayer/VideoView;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->y(Lcom/inisoft/mediaplayer/VideoView;)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->c:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->o(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ih;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->z(Lcom/inisoft/mediaplayer/VideoView;)V

    :cond_1
    return-void
.end method
