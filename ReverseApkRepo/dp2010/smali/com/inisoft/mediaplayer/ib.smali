.class final Lcom/inisoft/mediaplayer/ib;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/el;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inisoft/mediaplayer/es;I[B)V
    .locals 5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->e(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->c(Lcom/inisoft/mediaplayer/VideoView;)V

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->d(Lcom/inisoft/mediaplayer/VideoView;)V

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->e(Lcom/inisoft/mediaplayer/VideoView;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->f(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/el;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->f(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/el;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->g(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/es;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/inisoft/mediaplayer/el;->a(Lcom/inisoft/mediaplayer/es;I[B)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->b(Z)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-interface {p1}, Lcom/inisoft/mediaplayer/es;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-interface {p1}, Lcom/inisoft/mediaplayer/es;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->i(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->a(I)V

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->j(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->a(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->k(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/VideoView;->b(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->l(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->m(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->d()I

    move-result v0

    if-lez v0, :cond_3

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->m(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;I)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->l(Lcom/inisoft/mediaplayer/VideoView;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ib;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    goto :goto_1
.end method
