.class Lcom/qiip/arm/ArmManager$ArmConnection;
.super Ljava/lang/Object;
.source "ArmManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiip/arm/ArmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArmConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/ArmManager;


# direct methods
.method private constructor <init>(Lcom/qiip/arm/ArmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qiip/arm/ArmManager;Lcom/qiip/arm/ArmManager$ArmConnection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/qiip/arm/ArmManager$ArmConnection;-><init>(Lcom/qiip/arm/ArmManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "boundService"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 296
    const-string v4, ""

    .line 297
    .local v4, strRet:Ljava/lang/String;
    const/4 v3, -0x1

    .line 298
    .local v3, nRet:I
    const-string v5, "ARMPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " onServiceConnected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {p2}, Lcom/qiip/verify/arm/aidl/IQArmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qiip/verify/arm/aidl/IQArmService;

    move-result-object v5

    invoke-static {v5}, Lcom/qiip/arm/ArmManager;->access$1(Lcom/qiip/verify/arm/aidl/IQArmService;)V

    .line 302
    iget-object v5, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    iget-object v6, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    #getter for: Lcom/qiip/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;
    invoke-static {v6}, Lcom/qiip/arm/ArmManager;->access$2(Lcom/qiip/arm/ArmManager;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/qiip/arm/ArmManager;->existFile(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/qiip/arm/ArmManager;->access$3(Lcom/qiip/arm/ArmManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    const-string v5, "ARMPlugin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - Load JNI LIBRARY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v5, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    #getter for: Lcom/qiip/arm/ArmManager;->LIB_FILE_PATH:Ljava/lang/String;
    invoke-static {v5}, Lcom/qiip/arm/ArmManager;->access$2(Lcom/qiip/arm/ArmManager;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v5, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    sget-object v6, Lcom/qiip/arm/ArmManager;->sAID:Ljava/lang/String;

    #calls: Lcom/qiip/arm/ArmManager;->GetMakeChallenge(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/qiip/arm/ArmManager;->access$4(Lcom/qiip/arm/ArmManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    const-string v5, ""

    if-eq v4, v5, :cond_1

    .line 313
    iget-object v5, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    #calls: Lcom/qiip/arm/ArmManager;->ARMServiceExecute(Ljava/lang/String;)I
    invoke-static {v5, v4}, Lcom/qiip/arm/ArmManager;->access$5(Lcom/qiip/arm/ArmManager;Ljava/lang/String;)I

    move-result v3

    .line 314
    iget-object v5, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    invoke-static {}, Lcom/qiip/arm/ArmManager;->access$6()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/qiip/arm/ArmManager;->GetProcessResponse(ILjava/lang/String;)I
    invoke-static {v5, v3, v6}, Lcom/qiip/arm/ArmManager;->access$7(Lcom/qiip/arm/ArmManager;ILjava/lang/String;)I

    move-result v3

    .line 315
    if-eq v3, v8, :cond_1

    .line 316
    invoke-static {}, Lcom/qiip/arm/ArmManager;->access$6()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 317
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, v8}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 322
    .end local v0           #a:Landroid/app/Activity;
    :cond_1
    if-ne v3, v8, :cond_2

    .line 324
    iget-object v5, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    iput v8, v5, Lcom/qiip/arm/ArmManager;->nNetState:I

    .line 340
    :goto_0
    invoke-static {}, Lcom/qiip/arm/ArmManager;->access$6()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/qiip/arm/ArmManager;->access$8()Lcom/qiip/arm/ArmManager$ArmConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 343
    sget-object v5, Lcom/qiip/arm/ArmManager;->mArmListener:Lcom/qiip/arm/ArmListener;

    invoke-interface {v5}, Lcom/qiip/arm/ArmListener;->onArmResult()V

    .line 346
    invoke-static {v9}, Lcom/qiip/arm/ArmManager;->access$9(Lcom/qiip/arm/ArmManager$ArmConnection;)V

    .line 347
    invoke-static {v9}, Lcom/qiip/arm/ArmManager;->access$1(Lcom/qiip/verify/arm/aidl/IQArmService;)V

    .line 349
    return-void

    .line 326
    :cond_2
    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 328
    invoke-static {}, Lcom/qiip/arm/ArmManager;->access$6()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 330
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/qiip/arm/activity/ArmMainpageActivity;

    invoke-direct {v2, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 332
    const-string v5, "VIEW_CODE"

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v5, "TEXT_AID"

    sget-object v6, Lcom/qiip/arm/ArmManager;->sAID:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lcom/qiip/arm/ArmManager$ArmConnection;->this$0:Lcom/qiip/arm/ArmManager;

    const/16 v6, 0x14

    iput v6, v5, Lcom/qiip/arm/ArmManager;->nNetState:I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-static {v0}, Lcom/qiip/arm/ArmManager;->access$1(Lcom/qiip/verify/arm/aidl/IQArmService;)V

    .line 355
    invoke-static {v0}, Lcom/qiip/arm/ArmManager;->access$9(Lcom/qiip/arm/ArmManager$ArmConnection;)V

    .line 357
    return-void
.end method
