.class public Lcom/ui/LapseIt/capture/ScheduleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleReceiver.java"


# static fields
.field public static final WAKELOCKTAG:Ljava/lang/String; = "LapseItSchedule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 17
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ui/LapseIt/StartView;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    const-string v2, "LapseItSchedule"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 19
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 21
    .local v0, i:Landroid/content/Intent;
    const-string v1, "trace"

    const-string v2, "Starting receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method
