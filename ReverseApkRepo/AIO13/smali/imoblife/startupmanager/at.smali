.class final Limoblife/startupmanager/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Limoblife/startupmanager/ZCustomizeActivity;


# direct methods
.method constructor <init>(Limoblife/startupmanager/ZCustomizeActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/at;->a:Limoblife/startupmanager/ZCustomizeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Limoblife/startupmanager/at;->a:Limoblife/startupmanager/ZCustomizeActivity;

    #getter for: Limoblife/startupmanager/ZCustomizeActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Limoblife/startupmanager/ZCustomizeActivity;->access$0(Limoblife/startupmanager/ZCustomizeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
