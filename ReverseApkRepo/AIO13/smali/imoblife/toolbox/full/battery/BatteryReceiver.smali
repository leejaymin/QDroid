.class public Limoblife/toolbox/full/battery/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Limoblife/toolbox/full/battery/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Limoblife/toolbox/full/battery/a;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/battery/BatteryReceiver;->a:Limoblife/toolbox/full/battery/a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "temperature"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "voltage"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    iget-object v3, p0, Limoblife/toolbox/full/battery/BatteryReceiver;->a:Limoblife/toolbox/full/battery/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Limoblife/toolbox/full/battery/BatteryReceiver;->a:Limoblife/toolbox/full/battery/a;

    invoke-interface {v3, v0, v1, v2}, Limoblife/toolbox/full/battery/a;->a(III)V

    :cond_0
    invoke-static {p1}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Limoblife/toolbox/full/f/a;->a(III)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive(): ACTION_BATTERY_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
