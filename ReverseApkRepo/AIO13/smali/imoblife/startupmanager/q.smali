.class final Limoblife/startupmanager/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Limoblife/startupmanager/MyActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/MyActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    #getter for: Limoblife/startupmanager/MyActivity;->_list_mode:I
    invoke-static {v0}, Limoblife/startupmanager/MyActivity;->access$1(Limoblife/startupmanager/MyActivity;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    iget-object v1, v1, Limoblife/startupmanager/MyActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    iget-object v1, v1, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    iput-object v2, v1, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWindowFocusChanged(): message.what = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    iget-object v1, v1, Limoblife/startupmanager/MyActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Limoblife/startupmanager/q;->a:Limoblife/startupmanager/MyActivity;

    iput-object v2, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method
