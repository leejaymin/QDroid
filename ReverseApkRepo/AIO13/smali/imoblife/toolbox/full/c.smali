.class final Limoblife/toolbox/full/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ScreenEventService;


# direct methods
.method constructor <init>(Limoblife/toolbox/full/ScreenEventService;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/c;->a:Limoblife/toolbox/full/ScreenEventService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mode_screenoff_optimize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_kill_process"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_command_optimize_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Limoblife/toolbox/full/c;->a:Limoblife/toolbox/full/ScreenEventService;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ScreenEventService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
