.class Lcom/google/devtools/simple/runtime/components/android/GameClient$13;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->WebServiceError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;->val$functionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    const-string v1, "WebServiceError"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;->val$functionName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$13;->val$message:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    return-void
.end method
