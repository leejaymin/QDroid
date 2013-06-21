.class Lexam/service/WatchBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "WatchBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/WatchBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field Count:I

.field final synthetic this$0:Lexam/service/WatchBattery;


# direct methods
.method constructor <init>(Lexam/service/WatchBattery;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/WatchBattery$1;->this$0:Lexam/service/WatchBattery;

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lexam/service/WatchBattery$1;->Count:I

    return-void
.end method


# virtual methods
.method public onBatteryChanged(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 59
    const-string v3, ""

    .line 60
    .local v3, sPlug:Ljava/lang/String;
    const-string v4, ""

    .line 62
    .local v4, sStatus:Ljava/lang/String;
    const-string v8, "present"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 63
    iget-object v8, p0, Lexam/service/WatchBattery$1;->this$0:Lexam/service/WatchBattery;

    iget-object v8, v8, Lexam/service/WatchBattery;->mStatus:Landroid/widget/TextView;

    const-string v9, "\ubc30\ud130\ub9ac \uc5c6\uc74c"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v8, "plugged"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 68
    .local v1, plug:I
    const-string v8, "status"

    invoke-virtual {p1, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 70
    .local v6, status:I
    const-string v8, "scale"

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 71
    .local v5, scale:I
    const-string v8, "level"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, level:I
    mul-int/lit8 v8, v0, 0x64

    div-int v2, v8, v5

    .line 74
    .local v2, ratio:I
    packed-switch v1, :pswitch_data_0

    .line 82
    const-string v3, "Battery"

    .line 86
    :goto_1
    packed-switch v6, :pswitch_data_1

    .line 101
    const-string v4, "\uc54c \uc218\uac00 \uc5c6\uc5b4"

    .line 105
    :goto_2
    const-string v8, "\uc218\uc2e0 \ud68c\uc218:%d\n\uc5f0\uacb0: %s\n\uc0c1\ud0dc:%s\n\ub808\ubca8:%d%%"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 106
    iget v10, p0, Lexam/service/WatchBattery$1;->Count:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    aput-object v3, v9, v12

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 105
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, str:Ljava/lang/String;
    iget-object v8, p0, Lexam/service/WatchBattery$1;->this$0:Lexam/service/WatchBattery;

    iget-object v8, v8, Lexam/service/WatchBattery;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    .end local v7           #str:Ljava/lang/String;
    :pswitch_0
    const-string v3, "AC"

    .line 77
    goto :goto_1

    .line 79
    :pswitch_1
    const-string v3, "USB"

    .line 80
    goto :goto_1

    .line 88
    :pswitch_2
    const-string v4, "\ucda9\uc804\uc911"

    .line 89
    goto :goto_2

    .line 91
    :pswitch_3
    const-string v4, "\ucda9\uc804\uc911 \uc544\ub2d8"

    .line 92
    goto :goto_2

    .line 94
    :pswitch_4
    const-string v4, "\ubc29\uc804\uc911"

    .line 95
    goto :goto_2

    .line 97
    :pswitch_5
    const-string v4, "\ub9cc\ucda9\uc804"

    .line 98
    goto :goto_2

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 86
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    iget v1, p0, Lexam/service/WatchBattery$1;->Count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lexam/service/WatchBattery$1;->Count:I

    .line 40
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p0, p2}, Lexam/service/WatchBattery$1;->onBatteryChanged(Landroid/content/Intent;)V

    .line 43
    :cond_0
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "\ubc30\ud130\ub9ac \uc704\ud5d8 \uc218\uc900"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 46
    :cond_1
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const-string v1, "\ubc30\ud130\ub9ac \uc591\ud638"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 49
    :cond_2
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    const-string v1, "\uc804\uc6d0 \uc5f0\uacb0\ub428"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 52
    :cond_3
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    const-string v1, "\uc804\uc6d0 \ubd84\ub9ac\ub428"

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    :cond_4
    return-void
.end method
