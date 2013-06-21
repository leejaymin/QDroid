.class final Limoblife/startupmanager/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/as;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/startupmanager/as;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$0(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
