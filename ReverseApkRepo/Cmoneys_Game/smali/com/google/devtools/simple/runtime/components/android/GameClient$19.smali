.class Lcom/google/devtools/simple/runtime/components/android/GameClient$19;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->postInvite(Ljava/lang/String;)V
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
    .line 777
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, "Invite"

    invoke-virtual {v0, v1, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 777
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 780
    :try_start_0
    const-string v2, "inv"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, invitedPlayer:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was already invited."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v1           #invitedPlayer:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v3, "Invite"

    invoke-virtual {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 792
    return-void

    .line 785
    .restart local v1       #invitedPlayer:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully invited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 787
    .end local v1           #invitedPlayer:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 788
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "GameClient"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$19;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v3, "Failed to parse invite player response."

    invoke-virtual {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    goto :goto_0
.end method
