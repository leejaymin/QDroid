.class Lcom/google/devtools/simple/runtime/components/android/Voting$3;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Voting;->postRequestBallot()V
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
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Voting;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 361
    const-string v0, "Voting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRequestBallot Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Voting$3$5;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Voting$3$5;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 306
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Voting$3$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$3$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    :goto_0
    return-void

    .line 319
    :cond_0
    :try_start_0
    const-string v1, "Voting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postRequestBallot: ballot retrieved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    const-string v2, "isPolling"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->isPolling:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$302(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 325
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->isPolling:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$300(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    const-string v2, "idRequested"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->idRequested:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$402(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 328
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    const-string v2, "question"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotQuestion:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$502(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    const-string v2, "options"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptionsString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$602(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptionsString:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$600(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    #calls: Lcom/google/devtools/simple/runtime/components/android/Voting;->JSONArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$800(Lcom/google/devtools/simple/runtime/components/android/Voting;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->ballotOptions:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$702(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 331
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Voting$3$2;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$3$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 351
    .local v0, e:Lorg/json/JSONException;
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Voting$3$4;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$3$4;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 337
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Voting$3$3;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$3$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
