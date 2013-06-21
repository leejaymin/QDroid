.class final Lcom/inisoft/mediaplayer/fh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/en;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->c()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gt;->b(I)V

    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gt;->a([B)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/fs;->f()I

    move-result v3

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->g()I

    move-result v2

    if-eq v2, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->V()I

    move-result v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->f()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->g()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/inisoft/mediaplayer/fs;->q(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->W()I

    move-result v2

    add-int/lit8 v3, v1, -0x2

    if-le v2, v3, :cond_4

    :goto_0
    if-ge v1, v0, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->r(I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->e(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/inisoft/mediaplayer/hm;->setPadding(IIII)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/hv;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->X()Lcom/inisoft/mediaplayer/hv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Lcom/inisoft/mediaplayer/hv;Z)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fh;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    goto :goto_0
.end method
