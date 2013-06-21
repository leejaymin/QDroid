.class final Lcom/inisoft/mediaplayer/gk;
.super Landroid/os/Handler;


# instance fields
.field a:Landroid/os/Messenger;

.field final synthetic b:Lcom/inisoft/mediaplayer/PopupService;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gk;->a:Landroid/os/Messenger;

    goto :goto_0

    :sswitch_1
    iput-object v1, p0, Lcom/inisoft/mediaplayer/gk;->a:Landroid/os/Messenger;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PopupService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    new-instance v2, Lcom/inisoft/mediaplayer/gb;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/PopupService;->b(Lcom/inisoft/mediaplayer/PopupService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    iget-object v4, v4, Lcom/inisoft/mediaplayer/PopupService;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/a/DicePlayerApplication;->a()Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/inisoft/mediaplayer/gb;-><init>(Landroid/content/Context;Landroid/os/Messenger;Lcom/inisoft/mediaplayer/fs;)V

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->a()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PopupService;->b(Lcom/inisoft/mediaplayer/PopupService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/et;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/inisoft/mediaplayer/et;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/et;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->c(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->c(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/et;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/et;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Z)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->c()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->d()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->d(Lcom/inisoft/mediaplayer/PopupService;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    :cond_6
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->d(Lcom/inisoft/mediaplayer/PopupService;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;)Lcom/inisoft/mediaplayer/gb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gb;->b()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gk;->b:Lcom/inisoft/mediaplayer/PopupService;

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/PopupService;->a(Lcom/inisoft/mediaplayer/PopupService;Lcom/inisoft/mediaplayer/gb;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_7
        0x1e -> :sswitch_8
        0x28 -> :sswitch_9
        0x32 -> :sswitch_a
        0x3e8 -> :sswitch_b
        0x3e9 -> :sswitch_c
    .end sparse-switch
.end method
