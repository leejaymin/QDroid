.class Lcom/google/devtools/simple/runtime/components/android/GameClient$32;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;Z)V
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

.field final synthetic val$allowInstanceIdChange:Z

.field final synthetic val$callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;

.field final synthetic val$commandName:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;ZLjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$commandName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;

    iput-boolean p4, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$allowInstanceIdChange:Z

    iput-object p5, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$params:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "failureMessage"

    .prologue
    .line 1170
    const-string v0, "GameClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting to server failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$params:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Failure message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;

    invoke-interface {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1130
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "responseObject"

    .prologue
    const-string v6, "GameClient"

    const-string v3, "."

    const-string v3, ""

    const-string v3, "response"

    .line 1132
    const-string v3, "GameClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received response for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :try_start_0
    const-string v3, "e"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1136
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 1168
    :goto_0
    return-void

    .line 1138
    :cond_0
    const-string v3, "gid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, responseGameId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1140
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect game id in response: + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    .end local v1           #responseGameId:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1165
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "GameClient"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1166
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse JSON response to command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 1143
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #responseGameId:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "iid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, responseInstanceId:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1145
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1149
    :cond_2
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1150
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->updateInstanceInfo(Lorg/json/JSONObject;)V
    invoke-static {v3, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$1100(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lorg/json/JSONObject;)V

    .line 1162
    :goto_1
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$callback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;

    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1152
    :cond_3
    iget-boolean v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$allowInstanceIdChange:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-virtual {v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1153
    :cond_4
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    new-instance v4, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    invoke-direct {v4, v2}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;
    invoke-static {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$302(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;)Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    .line 1154
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->updateInstanceInfo(Lorg/json/JSONObject;)V
    invoke-static {v3, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$1100(Lcom/google/devtools/simple/runtime/components/android/GameClient;Lorg/json/JSONObject;)V

    .line 1155
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-virtual {v3, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->InstanceIdChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 1157
    :cond_5
    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignored server response to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$32;->val$commandName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for incorrect instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
