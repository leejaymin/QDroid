.class Lcom/google/devtools/simple/runtime/components/android/GameClient$30;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->SetLeader(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

.field final synthetic val$playerEmail:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$30;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$30;->val$playerEmail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$30;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$30;->val$playerEmail:Ljava/lang/String;

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->postSetLeader(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$1000(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;)V

    return-void
.end method
