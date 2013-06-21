.class final Limoblife/startupmanager/x;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Limoblife/startupmanager/w;


# direct methods
.method constructor <init>(Limoblife/startupmanager/w;)V
    .locals 0

    iput-object p1, p0, Limoblife/startupmanager/x;->a:Limoblife/startupmanager/w;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Limoblife/startupmanager/x;->a:Limoblife/startupmanager/w;

    iget-object v0, v0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/startupmanager/x;->a:Limoblife/startupmanager/w;

    iget-object v0, v0, Limoblife/startupmanager/w;->f:Limoblife/startupmanager/MyActivity;

    iget-object v0, v0, Limoblife/startupmanager/MyActivity;->myDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
