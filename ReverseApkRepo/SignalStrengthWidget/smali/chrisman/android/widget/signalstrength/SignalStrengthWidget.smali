.class public Lchrisman/android/widget/signalstrength/SignalStrengthWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SignalStrengthWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private RestartService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-class v2, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 33
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-class v10, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 40
    const-string v7, "airplane_mode_on"

    .line 38
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_2

    move v3, v9

    .line 43
    .local v3, isEnabled:Z
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    if-nez v3, :cond_3

    .line 48
    invoke-direct {p0, p1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget;->RestartService(Landroid/content/Context;)V

    .line 68
    :cond_0
    if-eqz v3, :cond_4

    .line 97
    :cond_1
    :goto_1
    return-void

    .end local v0           #action:Ljava/lang/String;
    .end local v3           #isEnabled:Z
    :cond_2
    move v3, v8

    .line 38
    goto :goto_0

    .line 53
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #isEnabled:Z
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 54
    .local v4, remoteViews:Landroid/widget/RemoteViews;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 55
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lchrisman/android/widget/signalstrength/SignalStrengthWidget;

    invoke-direct {v5, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v5, thisWidget:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-direct {v6, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 58
    const v6, 0x7f060007

    const/high16 v7, 0x7f02

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    const v6, 0x7f060003

    const v7, 0x7f020014

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 60
    const v6, 0x7f060008

    const-string v7, "Airplane Mode"

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 61
    const v6, 0x7f060004

    const-string v7, "No"

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 62
    const v6, 0x7f060005

    const-string v7, "Signal"

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v2, v5, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_1

    .line 73
    .end local v2           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v4           #remoteViews:Landroid/widget/RemoteViews;
    .end local v5           #thisWidget:Landroid/content/ComponentName;
    :cond_4
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 75
    invoke-direct {p0, p1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget;->RestartService(Landroid/content/Context;)V

    .line 83
    :cond_5
    :goto_2
    const-string v6, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 86
    const-string v7, "appWidgetId"

    .line 85
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, appWidgetId:I
    if-eqz v1, :cond_1

    .line 90
    new-array v6, v9, [I

    aput v1, v6, v8

    invoke-virtual {p0, p1, v6}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_1

    .line 78
    .end local v1           #appWidgetId:I
    :cond_6
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 80
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;

    invoke-direct {v6, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_2

    .line 95
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
