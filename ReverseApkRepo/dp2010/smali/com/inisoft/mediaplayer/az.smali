.class final Lcom/inisoft/mediaplayer/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/ax;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->c(Lcom/inisoft/mediaplayer/ax;)Lcom/inisoft/mediaplayer/cn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->c(Lcom/inisoft/mediaplayer/ax;)Lcom/inisoft/mediaplayer/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cn;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->c(Lcom/inisoft/mediaplayer/ax;)Lcom/inisoft/mediaplayer/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cn;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->d(Lcom/inisoft/mediaplayer/ax;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->e(Lcom/inisoft/mediaplayer/ax;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->e(Lcom/inisoft/mediaplayer/ax;)Lcom/inisoft/mediaplayer/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bx;->c()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/az;->a:Lcom/inisoft/mediaplayer/ax;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/ax;->f(Lcom/inisoft/mediaplayer/ax;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
