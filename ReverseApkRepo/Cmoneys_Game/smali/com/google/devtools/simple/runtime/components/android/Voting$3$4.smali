.class Lcom/google/devtools/simple/runtime/components/android/Voting$3$4;
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
    .line 351
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$4;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$3$4;->this$1:Lcom/google/devtools/simple/runtime/components/android/Voting$3;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Voting$3;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    const-string v1, "The Web server returned a garbled object"

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Voting;->WebServiceError(Ljava/lang/String;)V

    .line 354
    return-void
.end method
