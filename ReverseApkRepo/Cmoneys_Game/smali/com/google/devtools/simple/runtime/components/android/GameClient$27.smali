.class Lcom/google/devtools/simple/runtime/components/android/GameClient$27;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->postServerCommand(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
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

.field final synthetic val$arguments:Lcom/google/devtools/simple/runtime/components/util/YailList;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 979
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->val$arguments:Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 992
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->val$arguments:Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-virtual {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->ServerCommandFailure(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    .line 993
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, "ServerCommand"

    invoke-virtual {v0, v1, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 979
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 982
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->val$command:Ljava/lang/String;

    const-string v3, "contents"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v2, "ServerCommand"

    invoke-virtual {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 989
    return-void

    .line 984
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 985
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 986
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$27;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v2, "Server command response failed to parse."

    invoke-virtual {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    goto :goto_0
.end method
