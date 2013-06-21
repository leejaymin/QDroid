.class public Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;
.super Landroid/app/Service;
.source "SignalStrengthWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchrisman/android/widget/signalstrength/SignalStrengthWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;
    }
.end annotation


# static fields
.field public static MyListener:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;

.field public static Tel:Landroid/telephony/TelephonyManager;

.field public static listeners:I

.field private static sswReceiver:Lchrisman/android/widget/signalstrength/SignalStrengthWidget;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateUI(II)V
    .locals 9
    .parameter "value"
    .parameter "UpdateType"

    .prologue
    const/4 v8, 0x2

    .line 176
    :try_start_0
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 177
    .local v3, remoteViews:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 178
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lchrisman/android/widget/signalstrength/SignalStrengthWidget;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v5, thisWidget:Landroid/content/ComponentName;
    sget-object v6, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 182
    .local v2, networkType:I
    const v6, 0x7f060008

    sget-object v7, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 184
    sget-object v6, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 186
    packed-switch v2, :pswitch_data_0

    .line 213
    const v1, 0x7f020020

    .line 217
    .local v1, network:I
    :goto_0
    const v6, 0x7f060006

    invoke-virtual {v3, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 220
    .end local v1           #network:I
    :cond_0
    const/4 v6, 0x1

    if-ne p2, v6, :cond_2

    .line 224
    packed-switch p1, :pswitch_data_1

    .line 267
    :pswitch_0
    const v4, 0x7f020016

    .line 271
    .local v4, signal_img:I
    :goto_1
    const v6, 0x7f060003

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 272
    const v6, 0x7f060004

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 273
    const v6, 0x7f060005

    const-string v7, "dBm"

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 360
    .end local v4           #signal_img:I
    :cond_1
    :goto_2
    :pswitch_1
    invoke-virtual {v0, v5, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 363
    const/4 v3, 0x0

    .line 364
    const/4 v0, 0x0

    .line 365
    const/4 v5, 0x0

    .line 371
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v2           #networkType:I
    .end local v3           #remoteViews:Landroid/widget/RemoteViews;
    .end local v5           #thisWidget:Landroid/content/ComponentName;
    :goto_3
    return-void

    .line 189
    .restart local v0       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v2       #networkType:I
    .restart local v3       #remoteViews:Landroid/widget/RemoteViews;
    .restart local v5       #thisWidget:Landroid/content/ComponentName;
    :pswitch_2
    const v1, 0x7f020012

    .line 190
    .restart local v1       #network:I
    goto :goto_0

    .line 192
    .end local v1           #network:I
    :pswitch_3
    const v1, 0x7f020002

    .line 193
    .restart local v1       #network:I
    goto :goto_0

    .line 195
    .end local v1           #network:I
    :pswitch_4
    const v1, 0x7f020005

    .line 196
    .restart local v1       #network:I
    goto :goto_0

    .line 199
    .end local v1           #network:I
    :pswitch_5
    const v1, 0x7f020007

    .line 200
    .restart local v1       #network:I
    goto :goto_0

    .line 202
    .end local v1           #network:I
    :pswitch_6
    const v1, 0x7f020009

    .line 203
    .restart local v1       #network:I
    goto :goto_0

    .line 205
    .end local v1           #network:I
    :pswitch_7
    const v1, 0x7f020022

    .line 206
    .restart local v1       #network:I
    goto :goto_0

    .line 210
    .end local v1           #network:I
    :pswitch_8
    const v1, 0x7f02000b

    .line 211
    .restart local v1       #network:I
    goto :goto_0

    .line 228
    .end local v1           #network:I
    :pswitch_9
    const v4, 0x7f020014

    .line 229
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 232
    .end local v4           #signal_img:I
    :pswitch_a
    const v4, 0x7f020015

    .line 233
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 236
    .end local v4           #signal_img:I
    :pswitch_b
    const v4, 0x7f020017

    .line 237
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 240
    .end local v4           #signal_img:I
    :pswitch_c
    const v4, 0x7f020018

    .line 241
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 244
    .end local v4           #signal_img:I
    :pswitch_d
    const v4, 0x7f020019

    .line 245
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 248
    .end local v4           #signal_img:I
    :pswitch_e
    const v4, 0x7f02001a

    .line 249
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 252
    .end local v4           #signal_img:I
    :pswitch_f
    const v4, 0x7f02001b

    .line 253
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 256
    .end local v4           #signal_img:I
    :pswitch_10
    const v4, 0x7f02001c

    .line 257
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 260
    .end local v4           #signal_img:I
    :pswitch_11
    const v4, 0x7f02001d

    .line 261
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 264
    .end local v4           #signal_img:I
    :pswitch_12
    const v4, 0x7f02001e

    .line 265
    .restart local v4       #signal_img:I
    goto :goto_1

    .line 275
    .end local v4           #signal_img:I
    :cond_2
    if-ne p2, v8, :cond_4

    .line 277
    sget-object v6, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 279
    packed-switch p1, :pswitch_data_2

    .line 291
    const v6, 0x7f060007

    const v7, 0x7f020010

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 367
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v2           #networkType:I
    .end local v3           #remoteViews:Landroid/widget/RemoteViews;
    .end local v5           #thisWidget:Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    goto :goto_3

    .line 282
    .restart local v0       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v2       #networkType:I
    .restart local v3       #remoteViews:Landroid/widget/RemoteViews;
    .restart local v5       #thisWidget:Landroid/content/ComponentName;
    :pswitch_13
    const v6, 0x7f060007

    const v7, 0x7f02000e

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 285
    :pswitch_14
    const v6, 0x7f060007

    const v7, 0x7f02000f

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 288
    :pswitch_15
    const v6, 0x7f060007

    const v7, 0x7f020011

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 297
    :cond_3
    const v6, 0x7f060007

    const v7, 0x7f020010

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 300
    :cond_4
    const/4 v6, 0x3

    if-ne p2, v6, :cond_5

    .line 303
    if-nez p1, :cond_1

    .line 305
    const v6, 0x7f060007

    const v7, 0x7f020010

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 306
    packed-switch v2, :pswitch_data_3

    .line 333
    const v1, 0x7f020021

    .line 337
    .restart local v1       #network:I
    :goto_4
    const v6, 0x7f060006

    invoke-virtual {v3, v6, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 309
    .end local v1           #network:I
    :pswitch_16
    const v1, 0x7f020013

    .line 310
    .restart local v1       #network:I
    goto :goto_4

    .line 312
    .end local v1           #network:I
    :pswitch_17
    const v1, 0x7f020003

    .line 313
    .restart local v1       #network:I
    goto :goto_4

    .line 315
    .end local v1           #network:I
    :pswitch_18
    const v1, 0x7f020006

    .line 316
    .restart local v1       #network:I
    goto :goto_4

    .line 319
    .end local v1           #network:I
    :pswitch_19
    const v1, 0x7f020008

    .line 320
    .restart local v1       #network:I
    goto :goto_4

    .line 322
    .end local v1           #network:I
    :pswitch_1a
    const v1, 0x7f02000a

    .line 323
    .restart local v1       #network:I
    goto :goto_4

    .line 325
    .end local v1           #network:I
    :pswitch_1b
    const v1, 0x7f020023

    .line 326
    .restart local v1       #network:I
    goto :goto_4

    .line 330
    .end local v1           #network:I
    :pswitch_1c
    const v1, 0x7f02000c

    .line 331
    .restart local v1       #network:I
    goto :goto_4

    .line 340
    .end local v1           #network:I
    :cond_5
    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    .line 342
    packed-switch p1, :pswitch_data_4

    goto/16 :goto_2

    .line 350
    :pswitch_1d
    const v6, 0x7f060004

    const-string v7, "No"

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 351
    const v6, 0x7f060005

    const-string v7, "Signal"

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 352
    const v6, 0x7f060003

    const v7, 0x7f020014

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 347
    :pswitch_1e
    const v6, 0x7f060008

    const-string v7, "911 Only"

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    .line 224
    :pswitch_data_1
    .packed-switch -0x71
        :pswitch_9
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_12
    .end packed-switch

    .line 279
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_13
        :pswitch_15
        :pswitch_14
    .end packed-switch

    .line 306
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_18
        :pswitch_1b
        :pswitch_17
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    .line 342
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 121
    new-instance v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget;

    invoke-direct {v1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget;-><init>()V

    sput-object v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->sswReceiver:Lchrisman/android/widget/signalstrength/SignalStrengthWidget;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->sswReceiver:Lchrisman/android/widget/signalstrength/SignalStrengthWidget;

    invoke-virtual {p0, v1, v0}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    sget-object v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    sget-object v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->MyListener:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->MyListener:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    .line 160
    sget-object v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->sswReceiver:Lchrisman/android/widget/signalstrength/SignalStrengthWidget;

    invoke-virtual {p0, v0}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    new-instance v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;-><init>(Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;)V

    sput-object v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->MyListener:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;

    .line 145
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    .line 146
    sget-object v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->Tel:Landroid/telephony/TelephonyManager;

    sget-object v1, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->MyListener:Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService$MyPhoneStateListener;

    sget v2, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->listeners:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 147
    return-void

    .line 135
    .restart local p0
    :pswitch_0
    const/16 v0, 0xc3

    sput v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->listeners:I

    goto :goto_0

    .line 139
    :pswitch_1
    const/16 v0, 0x1c1

    sput v0, Lchrisman/android/widget/signalstrength/SignalStrengthWidget$UpdateService;->listeners:I

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
