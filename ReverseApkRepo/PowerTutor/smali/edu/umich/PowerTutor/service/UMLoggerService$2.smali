.class Ledu/umich/PowerTutor/service/UMLoggerService$2;
.super Landroid/content/BroadcastReceiver;
.source "UMLoggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/service/UMLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/service/UMLoggerService;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/service/UMLoggerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/service/UMLoggerService$2;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    .line 288
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 290
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 293
    .local v1, extra:Landroid/os/Bundle;
    :try_start_0
    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService$2;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v2}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v2

    const-string v3, "airplane-mode on\n"

    invoke-virtual {v2, v3}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 321
    .end local v1           #extra:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v1       #extra:Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService$2;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v2}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v2

    const-string v3, "airplane-mode off\n"

    invoke-virtual {v2, v3}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "UMLoggerService"

    const-string v3, "Couldn\'t determine airplane mode state"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/ClassCastException;
    .end local v1           #extra:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService$2;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v2}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v2

    const-string v3, "battery low\n"

    invoke-virtual {v2, v3}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService$2;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v2}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "battery-change "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 308
    const-string v4, "level"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 309
    const-string v4, "scale"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 310
    const-string v4, "voltage"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 311
    const-string v4, "temperature"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {v2, v3}, Ledu/umich/PowerTutor/service/PowerEstimator;->writeToLog(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Ledu/umich/PowerTutor/service/UMLoggerService$2;->this$0:Ledu/umich/PowerTutor/service/UMLoggerService;

    #getter for: Ledu/umich/PowerTutor/service/UMLoggerService;->powerEstimator:Ledu/umich/PowerTutor/service/PowerEstimator;
    invoke-static {v2}, Ledu/umich/PowerTutor/service/UMLoggerService;->access$0(Ledu/umich/PowerTutor/service/UMLoggerService;)Ledu/umich/PowerTutor/service/PowerEstimator;

    move-result-object v3

    .line 313
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 312
    :goto_1
    invoke-virtual {v3, v2}, Ledu/umich/PowerTutor/service/PowerEstimator;->plug(Z)V

    goto/16 :goto_0

    .line 313
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 314
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 315
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    :cond_6
    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v2

    .line 319
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 318
    invoke-virtual {v2, v3}, Ledu/umich/PowerTutor/util/SystemInfo;->voidUidCache(I)V

    goto/16 :goto_0
.end method
