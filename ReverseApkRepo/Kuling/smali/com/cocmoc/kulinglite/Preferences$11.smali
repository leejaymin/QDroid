.class Lcom/cocmoc/kulinglite/Preferences$11;
.super Ljava/lang/Object;
.source "Preferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocmoc/kulinglite/Preferences;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cocmoc/kulinglite/Preferences;


# direct methods
.method constructor <init>(Lcom/cocmoc/kulinglite/Preferences;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Preferences$11;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-string v4, "Kuling"

    .line 417
    :try_start_0
    const-string v2, "Kuling"

    const-string v3, "Preferences: onStart.run() try1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 419
    :try_start_1
    const-string v2, "Kuling"

    const-string v3, "Preferences: onStart.run() registercheck"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$11;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Preferences$11;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    invoke-virtual {v3}, Lcom/cocmoc/kulinglite/Preferences;->registerCheck()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/cocmoc/kulinglite/Preferences;->register:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/cocmoc/kulinglite/Preferences;->access$17(Lcom/cocmoc/kulinglite/Preferences;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 429
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/cocmoc/kulinglite/Preferences$11;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    iget-object v2, v2, Lcom/cocmoc/kulinglite/Preferences;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/cocmoc/kulinglite/Preferences$11;->this$0:Lcom/cocmoc/kulinglite/Preferences;

    iget-object v3, v3, Lcom/cocmoc/kulinglite/Preferences;->handler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    :goto_1
    return-void

    .line 424
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 426
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    const-string v2, "Kuling"

    const-string v3, "Graphics: Graphics.onStart.run() exception e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 431
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 433
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "Kuling"

    const-string v2, "Preferences: onStart.run() exception t"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
