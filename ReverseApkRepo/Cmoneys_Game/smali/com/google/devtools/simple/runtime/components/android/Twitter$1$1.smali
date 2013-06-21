.class Lcom/google/devtools/simple/runtime/components/android/Twitter$1$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$1;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1$1;->this$1:Lcom/google/devtools/simple/runtime/components/android/Twitter$1;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Twitter$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->IsAuthorized()V

    .line 267
    return-void
.end method
