.class public Lcom/kms/kmsshared/alarmscheduler/KMSAlarmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lfy;

    new-instance v1, LfB;

    invoke-direct {v1}, LfB;-><init>()V

    invoke-direct {v0, p1, v1}, Lfy;-><init>(Landroid/content/Context;Lfx;)V

    sput-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    .line 24
    :cond_0
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->e:Lfy;

    invoke-virtual {v0, p2}, Lfy;->a(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
