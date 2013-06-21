.class Lcom/google/devtools/simple/runtime/components/android/Voting$3$3;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Voting$3;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Voting$3;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$3;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$3;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->NoOpenPoll()V

    .line 340
    return-void
.end method
