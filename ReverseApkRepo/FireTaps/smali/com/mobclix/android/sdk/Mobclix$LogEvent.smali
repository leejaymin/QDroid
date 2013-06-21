.class Lcom/mobclix/android/sdk/Mobclix$LogEvent;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogEvent"
.end annotation


# instance fields
.field event:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method public constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter "e"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$LogEvent;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p2, p0, Lcom/mobclix/android/sdk/Mobclix$LogEvent;->event:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 592
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$1()I

    move-result v2

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$2()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 593
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$3(Z)V

    .line 595
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$4()Z

    move-result v2

    if-nez v2, :cond_1

    .line 596
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$LogEvent;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #calls: Lcom/mobclix/android/sdk/Mobclix;->OpenAnalyticsFile()Z
    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$5(Lcom/mobclix/android/sdk/Mobclix;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 597
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$3(Z)V

    .line 619
    :goto_0
    return-void

    .line 601
    :cond_1
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$4()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/Mobclix;->updateSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$7()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 606
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$8()I

    move-result v2

    if-le v2, v5, :cond_2

    .line 607
    const-string v2, ","

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 608
    :cond_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$LogEvent;->event:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 609
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 611
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$8()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$9(I)V

    .line 612
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$8()I

    move-result v2

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$10()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 613
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$11(Z)V

    .line 614
    iget-object v2, p0, Lcom/mobclix/android/sdk/Mobclix$LogEvent;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #calls: Lcom/mobclix/android/sdk/Mobclix;->OpenAnalyticsFile()Z
    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$5(Lcom/mobclix/android/sdk/Mobclix;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 617
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v2}, Lcom/mobclix/android/sdk/Mobclix;->access$3(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    invoke-static {v4}, Lcom/mobclix/android/sdk/Mobclix;->access$3(Z)V

    goto :goto_0

    .line 616
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
