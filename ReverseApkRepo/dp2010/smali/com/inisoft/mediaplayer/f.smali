.class final Lcom/inisoft/mediaplayer/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/e;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/f;)Lcom/inisoft/mediaplayer/e;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/e;->a(Lcom/inisoft/mediaplayer/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->a(Lcom/inisoft/mediaplayer/e;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->b(Lcom/inisoft/mediaplayer/e;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->b(Lcom/inisoft/mediaplayer/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/e;->a(Lcom/inisoft/mediaplayer/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->a(Lcom/inisoft/mediaplayer/e;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->c()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/e;->c:Lcom/inisoft/mediaplayer/l;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/l;->d()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/e;->b:Landroid/content/Context;

    const-string v2, ""

    new-instance v3, Lcom/inisoft/mediaplayer/g;

    invoke-direct {v3, p0}, Lcom/inisoft/mediaplayer/g;-><init>(Lcom/inisoft/mediaplayer/f;)V

    invoke-static {v1, v2, v3}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnKeyListener;)Lcom/inisoft/mediaplayer/et;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/e;->a(Lcom/inisoft/mediaplayer/e;Lcom/inisoft/mediaplayer/et;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/f;->a:Lcom/inisoft/mediaplayer/e;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->e(Lcom/inisoft/mediaplayer/e;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
