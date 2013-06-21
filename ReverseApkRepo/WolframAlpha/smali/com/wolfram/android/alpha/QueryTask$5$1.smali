.class Lcom/wolfram/android/alpha/QueryTask$5$1;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/QueryTask$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wolfram/android/alpha/QueryTask$5;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/QueryTask$5;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$5$1;->this$1:Lcom/wolfram/android/alpha/QueryTask$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$5$1;->this$1:Lcom/wolfram/android/alpha/QueryTask$5;

    iget-object v0, v0, Lcom/wolfram/android/alpha/QueryTask$5;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {}, Lcom/wolfram/android/alpha/QueryTask;->access$1400()Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryTask;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 314
    return-void
.end method
