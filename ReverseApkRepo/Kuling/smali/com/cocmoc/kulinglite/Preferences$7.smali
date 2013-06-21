.class Lcom/cocmoc/kulinglite/Preferences$7;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Preferences;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Preferences;

.field private final synthetic val$config:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    iput-object p2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->val$config:Landroid/content/SharedPreferences;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->updateRate:Ljava/lang/String;
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences;->access$5(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v9, v1, 0x3c

    .line 230
    .local v9, updateRateSeconds:I
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences;->access$7(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I
    invoke-static {v1, v11}, Lcom/cocmoc/kulinglite/Preferences;->access$8(Lcom/cocmoc/kulinglite/Preferences;I)V

    .line 232
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const v2, -0x333334

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->myTextColor_2:I
    invoke-static {v1, v2}, Lcom/cocmoc/kulinglite/Preferences;->access$9(Lcom/cocmoc/kulinglite/Preferences;I)V

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences;->access$7(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dark"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const/high16 v2, -0x100

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I
    invoke-static {v1, v2}, Lcom/cocmoc/kulinglite/Preferences;->access$8(Lcom/cocmoc/kulinglite/Preferences;I)V

    .line 236
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    const v2, -0xbbbbbc

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->myTextColor_2:I
    invoke-static {v1, v2}, Lcom/cocmoc/kulinglite/Preferences;->access$9(Lcom/cocmoc/kulinglite/Preferences;I)V

    .line 238
    :cond_1
    const-string v1, "Kuling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preferences: SaveButton.Tema: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->tema:Ljava/lang/String;
    invoke-static {v3}, Lcom/cocmoc/kulinglite/Preferences;->access$7(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->val$config:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 244
    .local v7, configEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "UpdateRate-%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I
    invoke-static {v3}, Lcom/cocmoc/kulinglite/Preferences;->access$10(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v1, "WeatherStation-%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I
    invoke-static {v3}, Lcom/cocmoc/kulinglite/Preferences;->access$10(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->station:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$11(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v1, "TextColor-1"

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->myTextColor:I
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$12(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v2

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 247
    const-string v1, "TextColor-2"

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->myTextColor_2:I
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$13(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v2

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    const-string v1, "Theme"

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->theme:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$14(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v1, "r"

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->register:Ljava/lang/String;
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$0(Lcom/cocmoc/kulinglite/Preferences;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I
    invoke-static {v1}, Lcom/cocmoc/kulinglite/Preferences;->access$10(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v8, resultValue:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$10(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    invoke-virtual {v1, v11, v8}, Lcom/cocmoc/kulinglite/Preferences;->setResult(ILandroid/content/Intent;)V

    .line 259
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v10, widgetUpdate:Landroid/content/Intent;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v1, "appWidgetIds"

    new-array v2, v5, [I

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I
    invoke-static {v3}, Lcom/cocmoc/kulinglite/Preferences;->access$10(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v3

    aput v3, v2, v4

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 264
    const-string v1, "Kuling://widget/id/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    #getter for: Lcom/cocmoc/kulinglite/Preferences;->appWidgetId:I
    invoke-static {v2}, Lcom/cocmoc/kulinglite/Preferences;->access$10(Lcom/cocmoc/kulinglite/Preferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    invoke-virtual {v1}, Lcom/cocmoc/kulinglite/Preferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x800

    invoke-static {v1, v4, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 268
    .local v6, newPending:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    invoke-virtual {v1}, Lcom/cocmoc/kulinglite/Preferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 269
    .local v0, alarms:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-int/lit16 v4, v9, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 273
    .end local v0           #alarms:Landroid/app/AlarmManager;
    .end local v6           #newPending:Landroid/app/PendingIntent;
    .end local v8           #resultValue:Landroid/content/Intent;
    .end local v10           #widgetUpdate:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/cocmoc/kulinglite/Preferences$7;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    invoke-virtual {v1}, Lcom/cocmoc/kulinglite/Preferences;->finish()V

    .line 274
    return-void
.end method
