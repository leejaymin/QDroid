.class final Limoblife/toolbox/full/it/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/it/CommandReceiver;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/it/CommandReceiver;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/it/a;->a:Limoblife/toolbox/full/it/CommandReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/it/a;->a:Limoblife/toolbox/full/it/CommandReceiver;

    invoke-static {v0}, Limoblife/toolbox/full/it/CommandReceiver;->a(Limoblife/toolbox/full/it/CommandReceiver;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x7b

    iget-object v2, p0, Limoblife/toolbox/full/it/a;->a:Limoblife/toolbox/full/it/CommandReceiver;

    invoke-static {v2}, Limoblife/toolbox/full/it/CommandReceiver;->b(Limoblife/toolbox/full/it/CommandReceiver;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
