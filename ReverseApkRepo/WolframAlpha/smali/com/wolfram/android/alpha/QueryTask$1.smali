.class Lcom/wolfram/android/alpha/QueryTask$1;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/QueryTask;->setAllRunnables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/QueryTask;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/QueryTask;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$1;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$1;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$1;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$100(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    #setter for: Lcom/wolfram/android/alpha/QueryTask;->FadeOut:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/QueryTask;->access$002(Lcom/wolfram/android/alpha/QueryTask;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 175
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$1;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$200(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/QueryResultAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$1;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->FadeOut:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$000(Lcom/wolfram/android/alpha/QueryTask;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/QueryResultAdapter;->fade_Old_ResultsView(Landroid/view/animation/Animation;)V

    .line 176
    return-void
.end method
