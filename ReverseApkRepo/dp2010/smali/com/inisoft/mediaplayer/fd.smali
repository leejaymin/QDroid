.class final Lcom/inisoft/mediaplayer/fd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/hk;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iput-boolean p2, p0, Lcom/inisoft/mediaplayer/fd;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fd;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->U()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v0

    iget-boolean v1, v0, Lcom/inisoft/mediaplayer/gm;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/inisoft/mediaplayer/gm;->b:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    iget v0, v0, Lcom/inisoft/mediaplayer/gm;->b:I

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->O()Lcom/inisoft/mediaplayer/gm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gm;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fd;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :cond_2
    return-void
.end method
