.class final Lcom/inisoft/mediaplayer/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ci;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/e;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->b(Lcom/inisoft/mediaplayer/e;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->b(Lcom/inisoft/mediaplayer/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->g(Lcom/inisoft/mediaplayer/e;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->b(Lcom/inisoft/mediaplayer/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/e;->g(Lcom/inisoft/mediaplayer/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inisoft/mediaplayer/cj;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/l;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/i;->a:Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
