.class final Lcom/inisoft/mediaplayer/du;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ci;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPathActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/MediaPathActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/du;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/du;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/MediaPathActivity;->d(Lcom/inisoft/mediaplayer/MediaPathActivity;)I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/inisoft/mediaplayer/bp;

    sget-object v1, Lcom/inisoft/mediaplayer/bs;->b:Lcom/inisoft/mediaplayer/bs;

    invoke-direct {v0, v1, p1}, Lcom/inisoft/mediaplayer/bp;-><init>(Lcom/inisoft/mediaplayer/bs;Ljava/lang/String;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a()Lcom/inisoft/mediaplayer/bq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/bq;->a(Lcom/inisoft/mediaplayer/bp;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/du;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->b(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/MediaPathActivity;->a()Lcom/inisoft/mediaplayer/bq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/bq;->a(I)Lcom/inisoft/mediaplayer/bp;

    move-result-object v1

    iget-object v1, v1, Lcom/inisoft/mediaplayer/bp;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/du;->a:Lcom/inisoft/mediaplayer/MediaPathActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/MediaPathActivity;->e(Lcom/inisoft/mediaplayer/MediaPathActivity;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
