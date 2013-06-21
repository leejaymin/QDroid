.class public Lcom/cocmoc/kulinglite/Kuling;
.super Landroid/appwidget/AppWidgetProvider;
.source "Kuling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cocmoc/kulinglite/Kuling$State;
    }
.end annotation


# static fields
.field private static final ACTION_WIDGET_CONTROL:Ljava/lang/String; = "com.cocmoc.kulinglite.WIDGET_CONTROL"

.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"

.field public static final URI_SCHEME:Ljava/lang/String; = "Kuling"


# instance fields
.field private myMessage:Lcom/cocmoc/kulinglite/Message;

.field remoteView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private WindSpeedAlarm(Ljava/lang/String;Landroid/content/Context;)V
    .locals 20
    .parameter "windSpeed"
    .parameter "context"

    .prologue
    .line 317
    const-string v17, "Kuling"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "KulingProvider: WindSpeedAlarm() WindSpeed: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v16, 0x0

    .line 319
    .local v16, windSpeedInt:I
    const/4 v5, 0x3

    .line 322
    .local v5, alarmLimit:I
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 329
    :goto_0
    move/from16 v0, v16

    move v1, v5

    if-lt v0, v1, :cond_0

    .line 330
    const-string v17, "Kuling"

    const-string v18, "KulingProvider: WindSpeedAlarm() Start Alarm! "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const v10, 0x7f020009

    .line 333
    .local v10, icon:I
    const-string v13, "Kuling Alarm"

    .line 334
    .local v13, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 335
    .local v14, when:J
    const-string v8, "Kuling"

    .line 336
    .local v8, contentTitle:Ljava/lang/CharSequence;
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Windpeed: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " m/s."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 338
    .local v7, contentText:Ljava/lang/CharSequence;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v12, notificationIntent:Landroid/content/Intent;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object v2, v12

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 342
    .local v6, contentIntent:Landroid/app/PendingIntent;
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11, v10, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 343
    .local v11, notification:Landroid/app/Notification;
    move-object v0, v11

    move-object/from16 v1, p2

    move-object v2, v8

    move-object v3, v7

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 349
    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    .end local v7           #contentText:Ljava/lang/CharSequence;
    .end local v8           #contentTitle:Ljava/lang/CharSequence;
    .end local v10           #icon:I
    .end local v11           #notification:Landroid/app/Notification;
    .end local v12           #notificationIntent:Landroid/content/Intent;
    .end local v13           #tickerText:Ljava/lang/CharSequence;
    .end local v14           #when:J
    :cond_0
    return-void

    .line 323
    :catch_0
    move-exception v9

    .line 324
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v17, "Kuling"

    const-string v18, " - KulingProvider WindSpeedAlarm NumberFormatException"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteStateForId(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "WeatherStation-%d"

    .line 203
    const-string v2, "KulingPrefs"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, config:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 205
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "UpdateRate-%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v2, "WeatherStation-%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v2, "WeatherStation-%d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    return-void
.end method

.method private getState(Landroid/content/Context;I)Lcom/cocmoc/kulinglite/Kuling$State;
    .locals 13
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    const-string v9, "-1"

    .line 42
    new-instance v3, Lcom/cocmoc/kulinglite/Kuling$State;

    invoke-direct {v3, p0, v12}, Lcom/cocmoc/kulinglite/Kuling$State;-><init>(Lcom/cocmoc/kulinglite/Kuling;Lcom/cocmoc/kulinglite/Kuling$State;)V

    .line 43
    .local v3, state:Lcom/cocmoc/kulinglite/Kuling$State;
    const-string v5, "KulingPrefs"

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, config:Landroid/content/SharedPreferences;
    const-string v5, "UpdateRate-%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x708

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->updateRateSeconds:I

    .line 45
    const-string v5, "WeatherStation-%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->weatherStation:Ljava/lang/String;

    .line 46
    const-string v5, "TextColor-1"

    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->myTextColor:I

    .line 47
    const-string v5, "TextColor-2"

    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->myTextColor_2:I

    .line 48
    const-string v5, "Theme"

    const-string v6, "default"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->myTheme:Ljava/lang/String;

    .line 49
    const-string v5, "r"

    const-string v6, "-1"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->registered:Ljava/lang/String;

    .line 50
    new-instance v2, Lcom/cocmoc/kulinglite/RegisterHelper;

    invoke-direct {v2, v0}, Lcom/cocmoc/kulinglite/RegisterHelper;-><init>(Landroid/content/SharedPreferences;)V

    .line 51
    .local v2, registerHelper:Lcom/cocmoc/kulinglite/RegisterHelper;
    iget-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->registered:Ljava/lang/String;

    const-string v6, "-1"

    if-eq v5, v9, :cond_0

    iget-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->registered:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/cocmoc/kulinglite/RegisterHelper;->isExpired(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const-string v5, "-1"

    iput-object v9, v3, Lcom/cocmoc/kulinglite/Kuling$State;->registered:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->weatherStation:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 57
    new-instance v4, Lcom/cocmoc/kulinglite/WeatherStation;

    invoke-direct {v4, p1}, Lcom/cocmoc/kulinglite/WeatherStation;-><init>(Landroid/content/Context;)V

    .line 58
    .local v4, ws:Lcom/cocmoc/kulinglite/WeatherStation;
    iget-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->weatherStation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/cocmoc/kulinglite/WeatherStation;->getStationNamePosition(Ljava/lang/String;)I

    move-result v1

    .line 59
    .local v1, position:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cocmoc/kulinglite/WeatherStation;->getStationID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/cocmoc/kulinglite/Kuling$State;->WeatherStationID:Ljava/lang/String;

    .line 61
    .end local v1           #position:I
    .end local v4           #ws:Lcom/cocmoc/kulinglite/WeatherStation;
    :cond_1
    return-object v3
.end method

.method private setAlarm(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "updateRateSeconds"

    .prologue
    const/4 v4, 0x0

    .line 177
    const-string v1, "Kuling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KulingProvider: setAlarm. WidgetID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 178
    const-string v3, "Updaterateseconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 181
    .local v7, widgetUpdate:Landroid/content/Intent;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "appWidgetIds"

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p2, v2, v4

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 185
    const-string v1, "Kuling://widget/id/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 186
    const/high16 v1, 0x800

    invoke-static {p1, v4, v7, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 189
    .local v6, newPending:Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 190
    .local v0, alarms:Landroid/app/AlarmManager;
    if-ltz p3, :cond_0

    .line 195
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-int/lit16 v4, p3, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public UpdateTheme(Ljava/lang/String;)V
    .locals 6
    .parameter "theme"

    .prologue
    .line 307
    new-instance v3, Lcom/cocmoc/kulinglite/ZipHelper;

    invoke-direct {v3}, Lcom/cocmoc/kulinglite/ZipHelper;-><init>()V

    .line 308
    .local v3, myZipHelper:Lcom/cocmoc/kulinglite/ZipHelper;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    invoke-virtual {v5}, Lcom/cocmoc/kulinglite/Message;->getWindDirectionUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, fileName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/Kuling/skins/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, ZipName:Ljava/lang/String;
    invoke-virtual {v3, v0, v2}, Lcom/cocmoc/kulinglite/ZipHelper;->getBitmapInZip(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 311
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 312
    iget-object v4, p0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    const v5, 0x7f080011

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 314
    :cond_0
    return-void
.end method

.method public isInteger(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 248
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    const/4 v1, 0x1

    .line 254
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const-string v5, "Kuling"

    .line 152
    const-string v1, "Kuling"

    const-string v1, "KulingProvider: onDelete()"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 162
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 163
    return-void

    .line 154
    :cond_0
    aget v0, p2, v2

    .line 156
    .local v0, appWidgetId:I
    const/4 v3, -0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/cocmoc/kulinglite/Kuling;->setAlarm(Landroid/content/Context;II)V

    .line 158
    const-string v3, "Kuling"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "KulingProvider: Removing preference for id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/cocmoc/kulinglite/Kuling;->deleteStateForId(Landroid/content/Context;I)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const-string v0, "Kuling"

    const-string v1, "KulingProvider: onEnabled()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public onHandleAction(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "data"

    .prologue
    .line 167
    const-string v3, "Kuling"

    const-string v4, "KulingProvider: onHandleAction"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/cocmoc/kulinglite/Kuling;->getState(Landroid/content/Context;I)Lcom/cocmoc/kulinglite/Kuling$State;

    move-result-object v2

    .line 169
    .local v2, state:Lcom/cocmoc/kulinglite/Kuling$State;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030004

    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 170
    .local v1, remoteView:Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, controlType:Ljava/lang/String;
    iget v3, v2, Lcom/cocmoc/kulinglite/Kuling$State;->updateRateSeconds:I

    invoke-direct {p0, p1, p2, v3}, Lcom/cocmoc/kulinglite/Kuling;->setAlarm(Landroid/content/Context;II)V

    .line 173
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/cocmoc/kulinglite/Kuling;->updateDisplayState(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/cocmoc/kulinglite/Kuling$State;I)V

    .line 174
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, action:Ljava/lang/String;
    const-string v5, "Kuling"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "KulingProvider: OnReceive:Action: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const-string v5, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appWidgetId"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 269
    .local v1, appWidgetId:I
    if-eqz v1, :cond_0

    .line 270
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    invoke-virtual {p0, p1, v5}, Lcom/cocmoc/kulinglite/Kuling;->onDeleted(Landroid/content/Context;[I)V

    .line 304
    .end local v1           #appWidgetId:I
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v5, "com.cocmoc.kulinglite.WIDGET_CONTROL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    const-string v5, "appWidgetId"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 275
    .restart local v1       #appWidgetId:I
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, p1, v1, v5}, Lcom/cocmoc/kulinglite/Kuling;->onHandleAction(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 279
    .end local v1           #appWidgetId:I
    :cond_2
    const-string v5, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 281
    const-string v5, "Kuling"

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "appWidgetIds"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 288
    .local v2, appWidgetIds:[I
    array-length v5, v2

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_4

    .line 300
    .end local v2           #appWidgetIds:[I
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 288
    .restart local v2       #appWidgetIds:[I
    :cond_4
    aget v1, v2, v6

    .line 291
    .restart local v1       #appWidgetId:I
    const-string v7, "KulingPrefs"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 292
    .local v3, config:Landroid/content/SharedPreferences;
    const-string v7, "UpdateRate-%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 293
    .local v4, updateRateSeconds:I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    .line 294
    const-string v7, "Kuling"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "KulingProvider: Starting recurring alarm for id "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0, p1, v1, v4}, Lcom/cocmoc/kulinglite/Kuling;->setAlarm(Landroid/content/Context;II)V

    .line 288
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 302
    .end local v1           #appWidgetId:I
    .end local v2           #appWidgetIds:[I
    .end local v3           #config:Landroid/content/SharedPreferences;
    .end local v4           #updateRateSeconds:I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 19
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 76
    const-string v12, "Kuling"

    const-string v13, "KulingProvider: onUpdate(): "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v12, "Kuling"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "KulingProvider: AntallAppwidgetIDer: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    array-length v0, v0

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    const/4 v13, 0x0

    :goto_0
    if-lt v13, v12, :cond_0

    .line 141
    return-void

    .line 78
    :cond_0
    aget v5, p3, v13

    .line 80
    .local v5, appWidgetId:I
    const-string v14, "Kuling"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "KulingProvider: appWidgetId : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/cocmoc/kulinglite/Kuling;->getState(Landroid/content/Context;I)Lcom/cocmoc/kulinglite/Kuling$State;

    move-result-object v11

    .line 82
    .local v11, state:Lcom/cocmoc/kulinglite/Kuling$State;
    new-instance v14, Lcom/cocmoc/kulinglite/Message;

    invoke-direct {v14}, Lcom/cocmoc/kulinglite/Message;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    .line 83
    const-string v14, "connectivity"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 84
    .local v6, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 86
    .local v8, info:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v11, Lcom/cocmoc/kulinglite/Kuling$State;->weatherStation:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 87
    iget-object v14, v11, Lcom/cocmoc/kulinglite/Kuling$State;->weatherStation:Ljava/lang/String;

    iget-object v15, v11, Lcom/cocmoc/kulinglite/Kuling$State;->registered:Ljava/lang/String;

    move-object v0, v11

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling$State;->WeatherStationID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/cocmoc/kulinglite/Kuling;->upDateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cocmoc/kulinglite/Message;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    .line 90
    :cond_1
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f030005

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/cocmoc/kulinglite/Message;->getWindSpeed()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 95
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f030004

    invoke-direct/range {v14 .. v16}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f08000f

    move-object v0, v11

    iget v0, v0, Lcom/cocmoc/kulinglite/Kuling$State;->myTextColor:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080010

    move-object v0, v11

    iget v0, v0, Lcom/cocmoc/kulinglite/Kuling$State;->myTextColor:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080014

    move-object v0, v11

    iget v0, v0, Lcom/cocmoc/kulinglite/Kuling$State;->myTextColor_2:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080013

    move-object v0, v11

    iget v0, v0, Lcom/cocmoc/kulinglite/Kuling$State;->myTextColor_2:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f08000f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cocmoc/kulinglite/Message;->getWindSpeed()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080010

    const-string v16, "m/s"

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080013

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cocmoc/kulinglite/Message;->getLastUpdate()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080014

    move-object v0, v11

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling$State;->weatherStation:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 108
    iget-object v14, v11, Lcom/cocmoc/kulinglite/Kuling$State;->myTheme:Ljava/lang/String;

    const-string v15, "default"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080011

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->myMessage:Lcom/cocmoc/kulinglite/Message;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/cocmoc/kulinglite/Message;->getWindDirectionUri()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/cocmoc/kulinglite/Message;->getWindDirectionImgage(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 125
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/cocmoc/kulinglite/Graphics;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v7, graphicsIntent:Landroid/content/Intent;
    const/high16 v14, 0x3000

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    const-string v14, "STATION_NAME"

    iget-object v15, v11, Lcom/cocmoc/kulinglite/Kuling$State;->weatherStation:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v14, "STATION_ID"

    iget-object v15, v11, Lcom/cocmoc/kulinglite/Kuling$State;->WeatherStationID:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v14, "appWidgetId"

    invoke-virtual {v7, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v14, "Kuling://widget/id/"

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    const/4 v14, 0x0

    const/high16 v15, 0x800

    move-object/from16 v0, p1

    move v1, v14

    move-object v2, v7

    move v3, v15

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 135
    .local v10, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f08000e

    invoke-virtual {v14, v15, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v11

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cocmoc/kulinglite/Kuling;->updateDisplayState(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/cocmoc/kulinglite/Kuling$State;I)V

    .line 78
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 112
    .end local v7           #graphicsIntent:Landroid/content/Intent;
    .end local v10           #pendingIntent:Landroid/app/PendingIntent;
    :cond_2
    iget-object v14, v11, Lcom/cocmoc/kulinglite/Kuling$State;->myTheme:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/cocmoc/kulinglite/Kuling;->UpdateTheme(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_3
    const-string v14, "Kuling"

    const-string v15, "KulingProvider: inget weatherStationInfo?"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060003

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 120
    .local v9, noConnection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x1010001

    const/16 v16, 0xa

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cocmoc/kulinglite/Kuling;->remoteView:Landroid/widget/RemoteViews;

    move-object v14, v0

    const v15, 0x7f080011

    const v16, 0x7f020003

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1
.end method

.method public upDateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cocmoc/kulinglite/Message;
    .locals 7
    .parameter "weatherStation"
    .parameter "Registered"
    .parameter "weatherStationID"

    .prologue
    const-string v6, "Kuling"

    .line 214
    const-string v4, "Kuling"

    const-string v4, "KulingProvider: upDateMessage()"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Lcom/cocmoc/kulinglite/Message;

    invoke-direct {v1}, Lcom/cocmoc/kulinglite/Message;-><init>()V

    .line 216
    .local v1, messy:Lcom/cocmoc/kulinglite/Message;
    const/4 v1, 0x0

    .line 217
    const-string v2, ""

    .line 219
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/cocmoc/kulinglite/Kuling;->isInteger(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xbb8

    if-le v4, v5, :cond_0

    .line 220
    const-string v4, "Kuling"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KulingProvider: upDateMessage()HentData:dmi station: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://www.knutinge.com/cocmoc/cocmoc/kuling/data/dmi.php?Station="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    :goto_0
    :try_start_0
    new-instance v3, Lcom/cocmoc/kulinglite/DomFeedParser;

    invoke-direct {v3, v2}, Lcom/cocmoc/kulinglite/DomFeedParser;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, xmlLeser:Lcom/cocmoc/kulinglite/DomFeedParser;
    invoke-virtual {v3, p1}, Lcom/cocmoc/kulinglite/DomFeedParser;->parse(Ljava/lang/String;)Lcom/cocmoc/kulinglite/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 241
    .end local v3           #xmlLeser:Lcom/cocmoc/kulinglite/DomFeedParser;
    :goto_1
    return-object v1

    .line 223
    :cond_0
    const-string v4, "-1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    const-string v2, "http://www.knutinge.com/cocmoc/cocmoc/kuling/data/notregistered.xml"

    .line 225
    const-string v4, "Kuling"

    const-string v4, "KulingProvider: upDateMessage()HentData:NOT REGISTERED"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_1
    const-string v4, "Kuling"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KulingProvider: upDateMessage()HentData:smhi station: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v2, "http://www.knutinge.com/cocmoc/cocmoc/kuling/data/smhi.xml"

    goto :goto_0

    .line 235
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 236
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Kuling"

    const-string v4, " - KulingProvider UpdateMessage Exception(e)"

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public updateDisplayState(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/cocmoc/kulinglite/Kuling$State;I)V
    .locals 1
    .parameter "context"
    .parameter "remoteView"
    .parameter "state"
    .parameter "appWidgetId"

    .prologue
    .line 147
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p4, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 148
    return-void
.end method
