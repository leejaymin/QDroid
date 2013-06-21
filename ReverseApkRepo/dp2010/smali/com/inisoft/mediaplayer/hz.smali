.class final Lcom/inisoft/mediaplayer/hz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hz;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hz;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hz;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->A(Lcom/inisoft/mediaplayer/VideoView;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hz;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->h(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hz;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->m(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hz;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->B(Lcom/inisoft/mediaplayer/VideoView;)V

    goto :goto_1
.end method
