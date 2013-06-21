.class Lcom/qiip/arm/ArmManager$2;
.super Ljava/lang/Object;
.source "ArmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/ArmManager;->ARM_Plugin_ExecuteARM2(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/ArmManager;


# direct methods
.method constructor <init>(Lcom/qiip/arm/ArmManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 121
    const-string v1, "ARMPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " getPackageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qiip/arm/ArmManager;->access$6()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    iget-object v1, v1, Lcom/qiip/arm/ArmManager;->strRet:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    iget-object v2, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    iget-object v2, v2, Lcom/qiip/arm/ArmManager;->mService:Lcom/qiip/arm/ArmServiceInAppProc;

    iget-object v3, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    iget-object v3, v3, Lcom/qiip/arm/ArmManager;->strRet:Ljava/lang/String;

    invoke-static {}, Lcom/qiip/arm/ArmManager;->access$6()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/qiip/arm/ArmServiceInAppProc;->executeArm(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/qiip/arm/ArmManager;->nRet:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    const-string v1, "ARMPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " 1**nRet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    iget v3, v3, Lcom/qiip/arm/ArmManager;->nRet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v1, "ARMPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " 2**nRet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    iget v3, v3, Lcom/qiip/arm/ArmManager;->nRet:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/qiip/arm/ArmManager$2;->this$0:Lcom/qiip/arm/ArmManager;

    #getter for: Lcom/qiip/arm/ArmManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/qiip/arm/ArmManager;->access$10(Lcom/qiip/arm/ArmManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
