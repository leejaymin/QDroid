.class Lcom/google/devtools/simple/runtime/components/android/Voting$1;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Voting;->initEmailAddressAsynch()V
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
    .line 240
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Voting$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Voting;

    #calls: Lcom/google/devtools/simple/runtime/components/android/Voting;->ensureEmailAddress()V
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Voting;->access$000(Lcom/google/devtools/simple/runtime/components/android/Voting;)V

    .line 243
    return-void
.end method
