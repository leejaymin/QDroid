.class Lcom/google/devtools/simple/runtime/components/android/GameClient$20;
.super Ljava/lang/Object;
.source "GameClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/GameClient;->LeaveInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V
    .locals 0
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$20;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/GameClient$20;->this$0:Lcom/google/devtools/simple/runtime/components/android/GameClient;

    #calls: Lcom/google/devtools/simple/runtime/components/android/GameClient;->postLeaveInstance()V
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/GameClient;->access$500(Lcom/google/devtools/simple/runtime/components/android/GameClient;)V

    .line 831
    return-void
.end method
