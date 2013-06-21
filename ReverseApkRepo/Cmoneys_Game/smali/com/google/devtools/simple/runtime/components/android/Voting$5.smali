.class Lcom/google/devtools/simple/runtime/components/android/Voting$5;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Voting;->postSendBallot(Ljava/lang/String;Ljava/lang/String;)V
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
        "Ljava/lang/String;",
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
    .line 427
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$5;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 439
    const-string v0, "Voting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postSendBallot Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$5;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Voting$5$2;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Voting$5$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 445
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 427
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Voting$5;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$5;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$200(Lcom/google/devtools/simple/runtime/components/android/Voting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/Voting$5$1;

    invoke-direct {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Voting$5$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Voting$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method
