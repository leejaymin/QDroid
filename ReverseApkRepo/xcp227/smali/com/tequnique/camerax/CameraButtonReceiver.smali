.class public Lcom/tequnique/camerax/CameraButtonReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p1}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    const-string v1, "CameraPro"

    const-string v2, "Received camera button"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraButtonReceiver;->abortBroadcast()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
