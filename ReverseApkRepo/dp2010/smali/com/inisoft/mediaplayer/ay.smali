.class final Lcom/inisoft/mediaplayer/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/ax;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ay;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ay;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->a(Lcom/inisoft/mediaplayer/ax;)La/d/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ay;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->a(Lcom/inisoft/mediaplayer/ax;)La/d/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/bd;->c()V
    :try_end_0
    .catch La/d/ay; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ay;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->b(Lcom/inisoft/mediaplayer/ax;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, La/d/ay;->printStackTrace()V

    goto :goto_0
.end method
