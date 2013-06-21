.class public Ledu/umich/PowerTutor/widget/PowerWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "PowerWidget.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerWidget"

.field private static final text_ids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    .line 45
    return-void

    .line 48
    nop

    :array_0
    .array-data 0x4
        0x15t 0x0t 0x8t 0x7ft
        0x16t 0x0t 0x8t 0x7ft
        0x17t 0x0t 0x8t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private static sumArray([J)J
    .locals 6
    .parameter "A"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .local v0, ret:J
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 59
    return-wide v0

    .line 56
    :cond_0
    aget-wide v2, p0, v4

    .line 57
    .local v2, x:J
    add-long/2addr v0, v2

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;Ledu/umich/PowerTutor/service/PowerEstimator;)V
    .locals 24
    .parameter "context"
    .parameter "p"

    .prologue
    .line 99
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 100
    .local v10, manager:Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    const-class v18, Ledu/umich/PowerTutor/widget/PowerWidget;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v4, comp:Landroid/content/ComponentName;
    invoke-virtual {v10, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 151
    return-void

    .line 102
    :cond_0
    aget v8, v19, v18

    .line 103
    .local v8, id:I
    new-instance v17, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 104
    const v22, 0x7f030009

    .line 103
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v17, views:Landroid/widget/RemoteViews;
    new-instance v11, Landroid/content/Intent;

    const-class v21, Ledu/umich/PowerTutor/ui/UMLogger;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v11, notificationIntent:Landroid/content/Intent;
    const-string v21, "isFromIcon"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    const/16 v21, 0x0

    .line 110
    const/high16 v22, 0x800

    .line 108
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 112
    .local v14, pendingIntent:Landroid/app/PendingIntent;
    const v21, 0x7f080014

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 113
    const v21, 0x7f080014

    const-string v22, "setImageResource"

    .line 114
    const v23, 0x7f02000f

    .line 113
    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 116
    const/4 v13, 0x0

    .line 119
    .local v13, ok:Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 120
    .local v15, prefs:Landroid/content/SharedPreferences;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "widget_"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, key:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v15, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 122
    .local v16, val:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 123
    new-instance v12, Ljava/io/ObjectInputStream;

    .line 124
    new-instance v21, Ljava/io/ByteArrayInputStream;

    invoke-static/range {v16 .. v16}, Ledu/umich/PowerTutor/util/HexEncode;->decode(Ljava/lang/String;)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 123
    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 125
    .local v12, objin:Ljava/io/ObjectInputStream;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    sget-object v21, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v0, v21

    if-lt v7, v0, :cond_2

    .line 129
    const/4 v13, 0x1

    .line 140
    .end local v7           #i:I
    .end local v9           #key:Ljava/lang/String;
    .end local v12           #objin:Ljava/io/ObjectInputStream;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    .end local v16           #val:Ljava/lang/String;
    :goto_2
    if-nez v13, :cond_1

    .line 141
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    sget-object v21, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v7, v0, :cond_4

    .line 145
    .end local v7           #i:I
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    sget-object v21, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v7, v0, :cond_5

    .line 149
    move-object/from16 v0, v17

    invoke-virtual {v10, v8, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 102
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 126
    .restart local v9       #key:Ljava/lang/String;
    .restart local v12       #objin:Ljava/io/ObjectInputStream;
    .restart local v15       #prefs:Landroid/content/SharedPreferences;
    .restart local v16       #val:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledu/umich/PowerTutor/widget/DataSource;

    .line 127
    .local v5, dataSource:Ledu/umich/PowerTutor/widget/DataSource;
    sget-object v21, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    aget v21, v21, v7

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ledu/umich/PowerTutor/widget/DataSource;->getValue(Ledu/umich/PowerTutor/service/PowerEstimator;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 131
    .end local v5           #dataSource:Ledu/umich/PowerTutor/widget/DataSource;
    .end local v7           #i:I
    .end local v12           #objin:Ljava/io/ObjectInputStream;
    :cond_3
    const-string v21, "PowerWidget"

    const-string v22, "Could not find widget data source preference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 133
    .end local v9           #key:Ljava/lang/String;
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    .end local v16           #val:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 134
    .local v6, e:Ljava/io/IOException;
    const-string v21, "PowerWidget"

    const-string v22, "Failed to extract widget data sources"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 135
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 136
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v21, "PowerWidget"

    const-string v22, "Failed to extract widget data sources"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 137
    .end local v6           #e:Ljava/lang/ClassCastException;
    :catch_2
    move-exception v6

    .line 138
    .local v6, e:Ljava/lang/ClassNotFoundException;
    const-string v21, "PowerWidget"

    const-string v22, "Failed to extract widget data sources"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 142
    .end local v6           #e:Ljava/lang/ClassNotFoundException;
    .restart local v7       #i:I
    :cond_4
    sget-object v21, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    aget v21, v21, v7

    const-string v22, "N/A"

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 146
    :cond_5
    sget-object v21, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    aget v21, v21, v7

    const/16 v22, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 145
    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method

.method public static updateWidgetDone(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const v8, 0x7f080014

    .line 78
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 79
    .local v2, manager:Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Ledu/umich/PowerTutor/widget/PowerWidget;

    invoke-direct {v0, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, comp:Landroid/content/ComponentName;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 81
    const v7, 0x7f030009

    .line 80
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 83
    .local v5, views:Landroid/widget/RemoteViews;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Ledu/umich/PowerTutor/ui/UMLogger;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v3, notificationIntent:Landroid/content/Intent;
    const/4 v6, 0x0

    .line 86
    const/high16 v7, 0x800

    .line 84
    invoke-static {p0, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 88
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v5, v8, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    const-string v6, "setImageResource"

    .line 90
    const v7, 0x7f02000e

    .line 89
    invoke-virtual {v5, v8, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 94
    invoke-virtual {v2, v0, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 95
    return-void

    .line 92
    :cond_0
    sget-object v6, Ledu/umich/PowerTutor/widget/PowerWidget;->text_ids:[I

    aget v6, v6, v1

    const-string v7, "N/A"

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 70
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void

    .line 71
    :cond_0
    aget v1, p2, v2

    .line 72
    .local v1, id:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widget_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 65
    invoke-static {p1}, Ledu/umich/PowerTutor/widget/PowerWidget;->updateWidgetDone(Landroid/content/Context;)V

    .line 66
    return-void
.end method
