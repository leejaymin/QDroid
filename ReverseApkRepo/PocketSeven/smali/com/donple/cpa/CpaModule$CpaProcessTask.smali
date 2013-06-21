.class Lcom/donple/cpa/CpaModule$CpaProcessTask;
.super Landroid/os/AsyncTask;
.source "CpaModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/donple/cpa/CpaModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CpaProcessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/donple/cpa/CpaModule;


# direct methods
.method private constructor <init>(Lcom/donple/cpa/CpaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$CpaProcessTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/donple/cpa/CpaModule$CpaProcessTask;-><init>(Lcom/donple/cpa/CpaModule;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .parameter "params"

    .prologue
    .line 537
    :try_start_0
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->checkNetworkState()Z
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$5(Lcom/donple/cpa/CpaModule;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 539
    const/16 v6, 0x3ee

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 657
    :goto_0
    return-object v6

    .line 543
    :cond_0
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    iget-object v7, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->donple:Lcom/donple/cpa/CpaModule$DonpleWork;
    invoke-static {v7}, Lcom/donple/cpa/CpaModule;->access$6(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$DonpleWork;

    move-result-object v7

    invoke-virtual {v7}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestIni()Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v7

    #setter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v6, v7}, Lcom/donple/cpa/CpaModule;->access$7(Lcom/donple/cpa/CpaModule;Lcom/donple/cpa/CpaModule$IniData;)V

    .line 544
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$IniData;->getRetCode()I

    move-result v6

    if-nez v6, :cond_f

    .line 547
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$IniData;->isOnOff()Z

    move-result v6

    if-nez v6, :cond_1

    .line 549
    const-string v6, "CPA\uac00 OFF\ub418\uc5b4 \uc788\uc2b5\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 550
    const/16 v6, 0x3e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 554
    :cond_1
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->devMode:Z
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$9(Lcom/donple/cpa/CpaModule;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->devModeInitialize:Z
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$10(Lcom/donple/cpa/CpaModule;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 556
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->donple:Lcom/donple/cpa/CpaModule$DonpleWork;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$6(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$DonpleWork;

    move-result-object v6

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestDevInit()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 558
    const-string v6, "DB\uc0c1\uc758 \ubaa8\ub4e0 \ub370\uc774\ud130\ub97c \uc0ad\uc81c\ud558\uba70, \ub3d9\uae30\ud654 \ud50c\ub798\uadf8\ub97c \ucd08\uae30\ud654\ud569\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 560
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->cpaDao:Lcom/donple/cpa/CpaModule$CPADao;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$11(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$CPADao;

    move-result-object v6

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$CPADao;->deleteAll()V

    .line 563
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v7, "DONPLE_CPA"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/donple/cpa/CpaModule;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 564
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 565
    .local v4, spe:Landroid/content/SharedPreferences$Editor;
    const-string v6, "key_sync"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 566
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 576
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v4           #spe:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v6, "\ub3d9\uae30\ud654 \uc2e4\ud589 \uc5ec\ubd80\ub97c \ud655\uc778\ud569\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 577
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v7, "DONPLE_CPA"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/donple/cpa/CpaModule;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 578
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    const-string v6, "key_sync"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_a

    .line 581
    const-string v6, "\t>> \ub3d9\uae30\ud654\ub97c \uc9c4\ud589\ud569\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 582
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->donple:Lcom/donple/cpa/CpaModule$DonpleWork;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$6(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$DonpleWork;

    move-result-object v6

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestSync()Lcom/donple/cpa/CpaModule$SyncData;

    move-result-object v5

    .line 584
    .local v5, syncData:Lcom/donple/cpa/CpaModule$SyncData;
    invoke-virtual {v5}, Lcom/donple/cpa/CpaModule$SyncData;->getRetCode()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/donple/cpa/CpaModule$SyncData;->getRetCode()I

    move-result v6

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_9

    .line 587
    :cond_3
    invoke-virtual {v5}, Lcom/donple/cpa/CpaModule$SyncData;->getRetCode()I

    move-result v6

    if-nez v6, :cond_7

    .line 589
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->cpaDao:Lcom/donple/cpa/CpaModule$CPADao;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$11(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$CPADao;

    move-result-object v6

    invoke-virtual {v5}, Lcom/donple/cpa/CpaModule$SyncData;->getRecords()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/donple/cpa/CpaModule$CPADao;->saveSyncData(Ljava/util/List;)V

    .line 597
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 598
    .restart local v4       #spe:Landroid/content/SharedPreferences$Editor;
    const-string v6, "key_sync"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 599
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 613
    .end local v4           #spe:Landroid/content/SharedPreferences$Editor;
    .end local v5           #syncData:Lcom/donple/cpa/CpaModule$SyncData;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->donple:Lcom/donple/cpa/CpaModule$DonpleWork;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$6(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$DonpleWork;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestAuth(I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 616
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    iget-object v7, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->donple:Lcom/donple/cpa/CpaModule$DonpleWork;
    invoke-static {v7}, Lcom/donple/cpa/CpaModule;->access$6(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$DonpleWork;

    move-result-object v7

    invoke-virtual {v7}, Lcom/donple/cpa/CpaModule$DonpleWork;->requestList()Ljava/util/Map;

    move-result-object v7

    #setter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v6, v7}, Lcom/donple/cpa/CpaModule;->access$12(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)V

    .line 618
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$13(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$13(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_b

    .line 620
    :cond_5
    const/16 v6, 0x3e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 570
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_6
    const-string v6, "\uac1c\ubc1c\uc790\ubaa8\ub4dc \ucd08\uae30\ud654 \uc2e4\ud328"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 571
    const/16 v6, 0x3ed

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 593
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    .restart local v5       #syncData:Lcom/donple/cpa/CpaModule$SyncData;
    :cond_7
    const-string v6, "\t>> \ub3d9\uae30\ud654\ud560 \ub370\uc774\ud130\uac00 \uc5c6\uc2b5\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 653
    .end local v3           #sp:Landroid/content/SharedPreferences;
    .end local v5           #syncData:Lcom/donple/cpa/CpaModule$SyncData;
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "CpaProcessTask, doInBackground(...)"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v6, v0}, Lcom/donple/cpa/CpaModule;->access$14(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 657
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    const/16 v6, 0x270f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 602
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    .restart local v5       #syncData:Lcom/donple/cpa/CpaModule$SyncData;
    :cond_9
    :try_start_1
    invoke-virtual {v5}, Lcom/donple/cpa/CpaModule$SyncData;->getRetCode()I

    move-result v6

    const/16 v7, 0x384

    if-ne v6, v7, :cond_4

    .line 604
    const/16 v6, 0x3eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 609
    .end local v5           #syncData:Lcom/donple/cpa/CpaModule$SyncData;
    :cond_a
    const-string v6, "\uc774\ubbf8 \ub3d9\uae30\ud654\uac00 \uc644\ub8cc\ub41c \uc0c1\ud0dc\uc785\ub2c8\ub2e4."

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    goto :goto_2

    .line 626
    :cond_b
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    iget-object v7, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    iget-object v8, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v8}, Lcom/donple/cpa/CpaModule;->access$13(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/donple/cpa/CpaModule;->removeCompleteAD(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    #setter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v6, v7}, Lcom/donple/cpa/CpaModule;->access$12(Lcom/donple/cpa/CpaModule;Ljava/util/Map;)V

    .line 628
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$13(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$13(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-eqz v6, :cond_d

    .line 630
    const-string v6, "\uad11\uace0 \ub9ac\uc2a4\ud2b8"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 631
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->apps:Ljava/util/Map;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$13(Lcom/donple/cpa/CpaModule;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 632
    .local v2, listApps:Ljava/util/List;,"Ljava/util/List<Lcom/donple/cpa/CpaModule$App;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_c

    .line 637
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 634
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\t>> AD["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$App;->getAppId()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", url= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/donple/cpa/CpaModule$App;

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$App;->getAppStoreUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 639
    .end local v1           #i:I
    .end local v2           #listApps:Ljava/util/List;,"Ljava/util/List<Lcom/donple/cpa/CpaModule$App;>;"
    :cond_d
    const/16 v6, 0x3e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 644
    :cond_e
    const/16 v6, 0x3ec

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto/16 :goto_0

    .line 648
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_f
    iget-object v6, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v6}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/donple/cpa/CpaModule$IniData;->getRetCode()I

    move-result v6

    const/16 v7, 0x1bc

    if-ne v6, v7, :cond_8

    .line 650
    const/16 v6, 0x3ea

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/donple/cpa/CpaModule$CpaProcessTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 663
    const-string v1, ""

    .line 664
    .local v1, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule$IniData;->getGuideTxt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #getter for: Lcom/donple/cpa/CpaModule;->iniData:Lcom/donple/cpa/CpaModule$IniData;
    invoke-static {v3}, Lcom/donple/cpa/CpaModule;->access$2(Lcom/donple/cpa/CpaModule;)Lcom/donple/cpa/CpaModule$IniData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/donple/cpa/CpaModule$IniData;->getGuideTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 706
    :goto_0
    return-void

    .line 674
    :sswitch_0
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    invoke-virtual {v2}, Lcom/donple/cpa/CpaModule;->showAD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "N1"

    #calls: Lcom/donple/cpa/CpaModule;->debug(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/donple/cpa/CpaModule;->access$8(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const/4 v4, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v4}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 680
    :sswitch_2
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const-string v4, "\ub124\ud2b8\uc6cc\ud06c\uac00 \uc5f0\uacb0\ub418\uc5b4 \uc788\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4.\n\ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc\ub97c \ud655\uc778\ud574 \uc8fc\uc138\uc694."

    const/4 v5, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 683
    :sswitch_3
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const/4 v4, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v4}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 686
    :sswitch_4
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const-string v4, "\uc11c\ube44\uc2a4 \uc810\uac80\uc911\uc785\ub2c8\ub2e4."

    const/4 v5, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 689
    :sswitch_5
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const/4 v4, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v4}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 692
    :sswitch_6
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const/4 v4, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v4}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 695
    :sswitch_7
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const-string v4, "\uac1c\ubc1c\uc790\ubaa8\ub4dc\uc5d0\uc11c \uc815\uc0c1\uc801\uc73c\ub85c \ucd08\uae30\ud654\uac00 \uc9c4\ud589\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4.\n\uc7a0\uc2dc\ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694."

    const/4 v5, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 698
    :sswitch_8
    iget-object v2, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    const-string v3, "\uc54c\ub9bc"

    const/4 v4, 0x1

    #calls: Lcom/donple/cpa/CpaModule;->alertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v1, v4}, Lcom/donple/cpa/CpaModule;->access$3(Lcom/donple/cpa/CpaModule;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 670
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_6
        0x3ed -> :sswitch_7
        0x3ee -> :sswitch_2
        0x2707 -> :sswitch_1
        0x270f -> :sswitch_8
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/donple/cpa/CpaModule$CpaProcessTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CpaProcessTask;->this$0:Lcom/donple/cpa/CpaModule;

    #calls: Lcom/donple/cpa/CpaModule;->startLoading()V
    invoke-static {v0}, Lcom/donple/cpa/CpaModule;->access$4(Lcom/donple/cpa/CpaModule;)V

    .line 529
    return-void
.end method
