.class final Lcom/inisoft/mediaplayer/ht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hq;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-wide/16 v5, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget v1, v1, Lcom/inisoft/mediaplayer/hp;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->j()J

    move-result-wide v1

    cmp-long v0, v1, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v3, v3, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget v3, v3, Lcom/inisoft/mediaplayer/hp;->d:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->d()J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->f:Lcom/inisoft/mediaplayer/ProgressDrawView;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/inisoft/mediaplayer/ProgressDrawView;->a(JJ)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->f:Lcom/inisoft/mediaplayer/ProgressDrawView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ProgressDrawView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ht;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hp;->f:Lcom/inisoft/mediaplayer/ProgressDrawView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/ProgressDrawView;->setVisibility(I)V

    goto :goto_0
.end method
