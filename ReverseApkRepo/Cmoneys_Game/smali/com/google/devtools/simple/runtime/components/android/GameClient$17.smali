.class Lcom/google/devtools/simple/runtime/components/android/GameClient$17;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->postGetMessages(Ljava/lang/String;I)V
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

.field final synthetic val$requestedType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->val$requestedType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, "GetMessages"

    invoke-virtual {v0, v1, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 708
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "result"

    .prologue
    .line 711
    :try_start_0
    const-string v9, "count"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 712
    .local v1, count:I
    const-string v9, "messages"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 713
    .local v5, messages:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 714
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 715
    .local v4, message:Lorg/json/JSONObject;
    const-string v9, "type"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 716
    .local v8, type:Ljava/lang/String;
    const-string v9, "msender"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, sender:Ljava/lang/String;
    const-string v9, "mtime"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, time:Ljava/lang/String;
    const-string v9, "contents"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 722
    .local v0, contents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->val$requestedType:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 723
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;
    invoke-static {v9}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$300(Lcom/google/devtools/simple/runtime/components/android/GameClient;)Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    move-result-object v9

    iget-object v10, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->val$requestedType:Ljava/lang/String;

    invoke-virtual {v9, v10, v7}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->putMessageTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/GameClient;->instance:Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;
    invoke-static {v9}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$300(Lcom/google/devtools/simple/runtime/components/android/GameClient;)Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;

    move-result-object v9

    invoke-virtual {v9, v8, v7}, Lcom/google/devtools/simple/runtime/components/android/util/GameInstance;->putMessageTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-virtual {v9, v8, v6, v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 728
    .end local v0           #contents:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #message:Lorg/json/JSONObject;
    .end local v5           #messages:Lorg/json/JSONArray;
    .end local v6           #sender:Ljava/lang/String;
    .end local v7           #time:Ljava/lang/String;
    .end local v8           #type:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 729
    .local v2, e:Lorg/json/JSONException;
    const-string v9, "GameClient"

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v10, "Failed to parse messages response."

    invoke-virtual {v9, v10}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->Info(Ljava/lang/String;)V

    .line 732
    .end local v2           #e:Lorg/json/JSONException;
    :cond_1
    iget-object v9, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$17;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v10, "GetMessages"

    invoke-virtual {v9, v10}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->FunctionCompleted(Ljava/lang/String;)V

    .line 733
    return-void
.end method
