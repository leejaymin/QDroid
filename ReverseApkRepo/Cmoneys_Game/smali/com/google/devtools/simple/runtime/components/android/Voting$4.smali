.class Lcom/google/devtools/simple/runtime/components/android/Voting$4;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Voting;->SendBallot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Voting;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->userChoice:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$900(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Voting;->userId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$1000(Lcom/google/devtools/simple/runtime/components/android/Voting;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/devtools/simple/runtime/components/android/Voting;->postSendBallot(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$1100(Lcom/google/devtools/simple/runtime/components/android/Voting;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
