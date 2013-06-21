.class final Lcom/inisoft/mediaplayer/fo;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/fn;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fn;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->d()V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->c(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->c(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->d()V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->d(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dm;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->d(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dm;->c()V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->e(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/di;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->e(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/di;->c()V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->f(Lcom/inisoft/mediaplayer/fn;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->g(Lcom/inisoft/mediaplayer/fn;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->h(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cs;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->h(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cs;->d()V

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->g(Lcom/inisoft/mediaplayer/fn;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->g()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->f()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->c(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dg;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->c(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->e()V

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->e()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fn;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->b(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->c()V

    :cond_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->c(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dg;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->c(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dg;->c()V

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->d(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dm;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->d(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/dm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/dm;->b()V

    :cond_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->e(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/di;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->e(Lcom/inisoft/mediaplayer/fn;)Lcom/inisoft/mediaplayer/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/di;->b()V

    :cond_a
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->f(Lcom/inisoft/mediaplayer/fn;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fo;->a:Lcom/inisoft/mediaplayer/fn;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/fn;->g(Lcom/inisoft/mediaplayer/fn;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
