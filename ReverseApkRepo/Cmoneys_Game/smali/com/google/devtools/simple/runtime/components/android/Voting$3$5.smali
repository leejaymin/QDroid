.class Lcom/google/devtools/simple/runtime/components/android/Voting$3$5;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Voting$3;->onFailure(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Voting$3;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$5;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$5;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$5;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$5;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->WebServiceError(Ljava/lang/String;)V

    .line 365
    return-void
.end method
