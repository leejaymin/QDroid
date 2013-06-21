.class public final Limoblife/toolbox/full/g/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/PendingIntent;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Limoblife/toolbox/full/g/a;->a:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_kill_process"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_command_optimize_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Limoblife/toolbox/full/g/a;->a:Landroid/app/PendingIntent;

    :cond_0
    sget-object v0, Limoblife/toolbox/full/g/a;->a:Landroid/app/PendingIntent;

    return-object v0
.end method
