.class Lcom/google/devtools/simple/runtime/components/android/Voting$5$1;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Voting$5;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$5;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Voting$5;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$5$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$5$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$5;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Voting$5;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->GotBallotConfirmation()V

    .line 435
    return-void
.end method
