.class Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1$1;
.super Ljava/lang/Object;
.source "AsynchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 40
    return-void
.end method
