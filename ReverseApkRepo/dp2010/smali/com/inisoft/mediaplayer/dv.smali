.class final Lcom/inisoft/mediaplayer/dv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/bo;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPathActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->c(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    return-void
.end method

.method public final a(Lcom/inisoft/mediaplayer/bp;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a()Lcom/inisoft/mediaplayer/bq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bp;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->b(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->c(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    return-void
.end method

.method public final b(Lcom/inisoft/mediaplayer/bp;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/MediaPathActivity;)Lcom/inisoft/mediaplayer/ea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a()Lcom/inisoft/mediaplayer/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/MediaPathActivity;)Lcom/inisoft/mediaplayer/ea;

    move-result-object v1

    iget v1, v1, Lcom/inisoft/mediaplayer/ea;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/inisoft/mediaplayer/bq;->a(ILcom/inisoft/mediaplayer/bp;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->b(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dv;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->c(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    return-void
.end method
