.class Lcom/google/devtools/simple/runtime/components/android/GameClient$16;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->GetMessages(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

.field final synthetic val$count:I

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;->val$type:Ljava/lang/String;

    iput p3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;->val$type:Ljava/lang/String;

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$16;->val$count:I

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->postGetMessages(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$200(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;I)V

    return-void
.end method
