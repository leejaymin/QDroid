.class Lexam/service/NapAlarm$1$1;
.super Ljava/lang/Object;
.source "NapAlarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/service/NapAlarm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/service/NapAlarm$1;


# direct methods
.method constructor <init>(Lexam/service/NapAlarm$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/NapAlarm$1$1;->this$1:Lexam/service/NapAlarm$1;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 25
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020016

    .line 26
    const-string v4, "\uc77c\uc5b4\ub098\uc138\uc694"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 25
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 31
    .local v2, noti:Landroid/app/Notification;
    const/16 v3, 0xa

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    iput-object v3, v2, Landroid/app/Notification;->vibrate:[J

    .line 32
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 34
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lexam/service/NapAlarm$1$1;->this$1:Lexam/service/NapAlarm$1;

    #getter for: Lexam/service/NapAlarm$1;->this$0:Lexam/service/NapAlarm;
    invoke-static {v3}, Lexam/service/NapAlarm$1;->access$0(Lexam/service/NapAlarm$1;)Lexam/service/NapAlarm;

    move-result-object v3

    const-class v4, Lexam/service/NapEnd;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    iget-object v3, p0, Lexam/service/NapAlarm$1$1;->this$1:Lexam/service/NapAlarm$1;

    #getter for: Lexam/service/NapAlarm$1;->this$0:Lexam/service/NapAlarm;
    invoke-static {v3}, Lexam/service/NapAlarm$1;->access$0(Lexam/service/NapAlarm$1;)Lexam/service/NapAlarm;

    move-result-object v3

    .line 36
    invoke-static {v3, v7, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 38
    .local v0, content:Landroid/app/PendingIntent;
    iget-object v3, p0, Lexam/service/NapAlarm$1$1;->this$1:Lexam/service/NapAlarm$1;

    #getter for: Lexam/service/NapAlarm$1;->this$0:Lexam/service/NapAlarm;
    invoke-static {v3}, Lexam/service/NapAlarm$1;->access$0(Lexam/service/NapAlarm$1;)Lexam/service/NapAlarm;

    move-result-object v3

    const-string v4, "\uae30\uc0c1 \uc2dc\uac04"

    .line 39
    const-string v5, "\uc77c\uc5b4\ub098! \uc77c\ud560 \uc2dc\uac04\uc774\uc57c."

    .line 38
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 41
    iget-object v3, p0, Lexam/service/NapAlarm$1$1;->this$1:Lexam/service/NapAlarm$1;

    #getter for: Lexam/service/NapAlarm$1;->this$0:Lexam/service/NapAlarm;
    invoke-static {v3}, Lexam/service/NapAlarm$1;->access$0(Lexam/service/NapAlarm$1;)Lexam/service/NapAlarm;

    move-result-object v3

    iget-object v3, v3, Lexam/service/NapAlarm;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 42
    return-void

    .line 31
    :array_0
    .array-data 0x8
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
