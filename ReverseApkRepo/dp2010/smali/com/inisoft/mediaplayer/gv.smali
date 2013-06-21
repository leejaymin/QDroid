.class final Lcom/inisoft/mediaplayer/gv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/gu;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gu;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v2

    invoke-static {v2}, Lcom/inisoft/mediaplayer/gt;->b(Lcom/inisoft/mediaplayer/gt;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->c(Lcom/inisoft/mediaplayer/gt;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->d(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->e(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->e(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/ha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/ha;->b()Lcom/inisoft/mediaplayer/hc;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->e:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->e(I)V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->g(Lcom/inisoft/mediaplayer/gt;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gv;->a:Lcom/inisoft/mediaplayer/gu;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gu;->a(Lcom/inisoft/mediaplayer/gu;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/inisoft/mediaplayer/gt;->a(Lcom/inisoft/mediaplayer/gt;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
