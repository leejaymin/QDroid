.class final Lcom/inisoft/mediaplayer/dt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ci;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPathActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dt;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dt;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->c(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dt;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/MediaPathActivity;)Lcom/inisoft/mediaplayer/ea;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/bp;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {v0, v1, p1}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a()Lcom/inisoft/mediaplayer/bq;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/dt;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a(Lcom/inisoft/mediaplayer/MediaPathActivity;)Lcom/inisoft/mediaplayer/ea;

    move-result-object v2

    iget v2, v2, Lcom/inisoft/mediaplayer/ea;->c:I

    invoke-virtual {v1, v2, v0}, Lcom/inisoft/mediaplayer/bq;->a(ILcom/inisoft/mediaplayer/bp;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dt;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->b(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dt;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->c(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    return-void
.end method
