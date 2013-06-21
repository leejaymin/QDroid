.class Lcom/google/devtools/simple/runtime/components/android/GameClient$23;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V
    .locals 0
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, "MakeNewInstance"

    invoke-virtual {v0, v1, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 884
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->processInstanceLists(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$100(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lorg/json/JSONObject;)V

    .line 887
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->NewInstanceMade(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$23;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, "MakeNewInstance"

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 889
    return-void
.end method
