.class Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$6;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$6;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 561
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$6;

    iget-object v2, v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->followers:Ljava/util/List;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$1300(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 562
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$6;

    iget-object v2, v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->friends:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltwitter4j/User;

    .line 563
    .local v1, user:Ltwitter4j/User;
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$6;

    iget-object v2, v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->followers:Ljava/util/List;
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$1300(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ltwitter4j/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    .end local v1           #user:Ltwitter4j/User;
    :cond_0
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$6;

    iget-object v2, v2, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$6$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$6;

    iget-object v3, v3, Lcom/google/devtools/simple/runtime/components/android/Twitter$6;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/Twitter;->followers:Ljava/util/List;
    invoke-static {v3}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$1300(Lcom/google/devtools/simple/runtime/components/android/Twitter;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->FollowersReceived(Ljava/util/List;)V

    .line 566
    return-void
.end method
