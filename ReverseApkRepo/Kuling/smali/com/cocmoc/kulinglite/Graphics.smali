.class public Lcom/cocmoc/kulinglite/Graphics;
.super Landroid/app/Activity;
.source "Graphics.java"


# static fields
.field public static final ABOUT_ID:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "Kuling"

.field public static final SETTINGS_ID:I = 0x2

.field public static final UPDATE_ID:I = 0x4


# instance fields
.field private appWidgetId:I

.field bm:Landroid/graphics/Bitmap;

.field handler:Landroid/os/Handler;

.field private image:Landroid/widget/ImageView;

.field private stationNAME:Ljava/lang/String;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    .line 36
    iput-object v1, p0, Lcom/cocmoc/kulinglite/Graphics;->stationNAME:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/cocmoc/kulinglite/Graphics$1;

    invoke-direct {v0, p0}, Lcom/cocmoc/kulinglite/Graphics$1;-><init>(Lcom/cocmoc/kulinglite/Graphics;)V

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Graphics;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/cocmoc/kulinglite/Graphics;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Graphics;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cocmoc/kulinglite/Graphics;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const-string v9, "appWidgetId"

    const-string v8, "_"

    const-string v7, "Kuling"

    const-string v6, " "

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/cocmoc/kulinglite/Graphics;->setContentView(I)V

    .line 62
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/cocmoc/kulinglite/Graphics;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->image:Landroid/widget/ImageView;

    .line 65
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/cocmoc/kulinglite/Graphics;->setProgressBarVisibility(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 68
    .local v3, getIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 71
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 72
    const-string v4, "appWidgetId"

    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, cancelResultValue:Landroid/content/Intent;
    const-string v4, "appWidgetId"

    iget v4, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v5, v1}, Lcom/cocmoc/kulinglite/Graphics;->setResult(ILandroid/content/Intent;)V

    .line 87
    .end local v1           #cancelResultValue:Landroid/content/Intent;
    :goto_0
    const-string v4, "STATION_NAME"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->stationNAME:Ljava/lang/String;

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://www.knutinge.com/cocmoc/cocmoc/kuling/data/graph.php?Station="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cocmoc/kulinglite/Graphics;->stationNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    .line 89
    iget-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    .line 90
    iget-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    const-string v5, " "

    const-string v5, "_"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    .line 92
    const-string v4, "STATION_ID"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, StationID:Ljava/lang/String;
    const-string v4, "Kuling"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Graphics: Graphics.onCreate StationID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xbb8

    if-le v4, v5, :cond_0

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://servlet.dmi.dk/bv/servlet/bvImage?stat="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&param=wind"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    .line 96
    iget-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    const-string v5, " "

    const-string v5, "_"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    .line 99
    :cond_0
    const-string v4, "Kuling"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Graphics: Graphics.onCreate URL="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cocmoc/kulinglite/Graphics;->urlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 84
    .end local v0           #StationID:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->finish()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 106
    const/4 v0, 0x2

    const v1, 0x7f060009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 107
    const/4 v0, 0x3

    const v1, 0x7f06000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 108
    const/4 v0, 0x4

    const v1, 0x7f06000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 116
    :pswitch_0
    move-object v8, p0

    .line 117
    .local v8, context:Landroid/content/Context;
    new-instance v9, Landroid/content/Intent;

    const-class v1, Lcom/cocmoc/kulinglite/Preferences;

    invoke-direct {v9, v8, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v9, graphicsIntent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    const-string v1, "STATION_NAME"

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Graphics;->stationNAME:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "Kuling://widget/id/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v9}, Lcom/cocmoc/kulinglite/Graphics;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->finish()V

    .line 125
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    .end local v8           #context:Landroid/content/Context;
    .end local v9           #graphicsIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v10, myIntent:Landroid/content/Intent;
    const-string v1, "com.cocmoc.kulinglite"

    const-string v2, "com.cocmoc.kulinglite.InfoTabs"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v10}, Lcom/cocmoc/kulinglite/Graphics;->startActivity(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->finish()V

    .line 131
    const/4 v1, 0x1

    goto :goto_0

    .line 133
    .end local v10           #myIntent:Landroid/content/Intent;
    :pswitch_2
    iget v1, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    if-eqz v1, :cond_0

    .line 136
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v11, resultValue:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v11}, Lcom/cocmoc/kulinglite/Graphics;->setResult(ILandroid/content/Intent;)V

    .line 140
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v13, widgetUpdate:Landroid/content/Intent;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "appWidgetIds"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    aput v4, v2, v3

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 145
    const-string v1, "Kuling://widget/id/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v13, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 149
    .local v6, newPending:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "KulingPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 150
    .local v7, config:Landroid/content/SharedPreferences;
    const-string v1, "UpdateRate-%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/cocmoc/kulinglite/Graphics;->appWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x708

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 151
    .local v12, updateRateSeconds:I
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 152
    .local v0, alarms:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-int/lit16 v4, v12, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 154
    .end local v0           #alarms:Landroid/app/AlarmManager;
    .end local v6           #newPending:Landroid/app/PendingIntent;
    .end local v7           #config:Landroid/content/SharedPreferences;
    .end local v11           #resultValue:Landroid/content/Intent;
    .end local v12           #updateRateSeconds:I
    .end local v13           #widgetUpdate:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/cocmoc/kulinglite/Graphics;->finish()V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cocmoc/kulinglite/Graphics$2;

    invoke-direct {v1, p0}, Lcom/cocmoc/kulinglite/Graphics$2;-><init>(Lcom/cocmoc/kulinglite/Graphics;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    .local v0, background:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 198
    return-void
.end method
