.class Lcom/google/devtools/simple/runtime/components/android/GameClient$22;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->MakeNewInstance(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$makePublic:Z


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;->val$instanceId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;->val$makePublic:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;->val$instanceId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$22;->val$makePublic:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$600(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
