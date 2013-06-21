.class Lexam/service/AlarmTest$1;
.super Ljava/lang/Object;
.source "AlarmTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/AlarmTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/AlarmTest;


# direct methods
.method constructor <init>(Lexam/service/AlarmTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/AlarmTest$1;->this$0:Lexam/service/AlarmTest;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v1, p0, Lexam/service/AlarmTest$1;->this$0:Lexam/service/AlarmTest;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lexam/service/AlarmTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 32
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 35
    :sswitch_0
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lexam/service/AlarmTest$1;->this$0:Lexam/service/AlarmTest;

    const-class v2, Lexam/service/AlarmReceiver;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v8, intent:Landroid/content/Intent;
    iget-object v1, p0, Lexam/service/AlarmTest$1;->this$0:Lexam/service/AlarmTest;

    invoke-static {v1, v3, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 39
    .local v6, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 40
    .local v7, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 41
    const/16 v1, 0xd

    const/16 v2, 0xa

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 48
    .end local v6           #sender:Landroid/app/PendingIntent;
    .end local v7           #calendar:Ljava/util/Calendar;
    .end local v8           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lexam/service/AlarmTest$1;->this$0:Lexam/service/AlarmTest;

    const-class v2, Lexam/service/DisplayScore;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .restart local v8       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lexam/service/AlarmTest$1;->this$0:Lexam/service/AlarmTest;

    invoke-static {v1, v3, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 52
    .restart local v6       #sender:Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c0065

    if-ne v1, v2, :cond_0

    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 55
    const-wide/16 v4, 0x1770

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 32
    :sswitch_data_0
    .sparse-switch
        0x7f0c002a -> :sswitch_1
        0x7f0c0064 -> :sswitch_0
        0x7f0c0065 -> :sswitch_1
    .end sparse-switch
.end method
