.class Lcom/google/devtools/simple/runtime/components/android/GameClient$28;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->SetInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, ""

    .line 1019
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->val$instanceId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    const-string v0, "GameClient"

    const-string v1, "Instance id set to empty string."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    const-string v2, ""

    invoke-direct {v1, v3}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;
    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$302(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;)Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    .line 1023
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, ""

    invoke-virtual {v0, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceIdChanged(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, "SetInstance"

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 1029
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$28;->val$instanceId:Ljava/lang/String;

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->postSetInstance(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$900(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    goto :goto_0
.end method
