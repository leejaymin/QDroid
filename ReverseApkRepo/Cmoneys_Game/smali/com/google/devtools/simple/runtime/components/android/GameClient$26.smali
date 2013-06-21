.class Lcom/google/devtools/simple/runtime/components/android/GameClient$26;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->ServerCommand(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

.field final synthetic val$arguments:Lcom/google/devtools/simple/runtime/components/util/YailList;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 974
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;->val$arguments:Lcom/google/devtools/simple/runtime/components/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$26;->val$arguments:Lcom/google/devtools/simple/runtime/components/util/YailList;

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->postServerCommand(Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V
    invoke-static {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$800(Lcom/google/devtools/simple/runtime/components/android/GameClient;Ljava/lang/String;Lcom/google/devtools/simple/runtime/components/util/YailList;)V

    return-void
.end method
