.class final Lcom/inisoft/mediaplayer/ie;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/id;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/id;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ie;->a:Lcom/inisoft/mediaplayer/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ie;->a:Lcom/inisoft/mediaplayer/id;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->n(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ie;->a:Lcom/inisoft/mediaplayer/id;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/VideoView;->n(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ie;->a:Lcom/inisoft/mediaplayer/id;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/id;->a:Lcom/inisoft/mediaplayer/VideoView;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/VideoView;->g(Lcom/inisoft/mediaplayer/VideoView;)Lcom/inisoft/mediaplayer/es;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ei;->a()V

    :cond_0
    return-void
.end method
