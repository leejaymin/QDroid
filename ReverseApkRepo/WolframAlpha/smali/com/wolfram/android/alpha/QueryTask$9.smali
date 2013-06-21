.class Lcom/wolfram/android/alpha/QueryTask$9;
.super Ljava/lang/Object;
.source "QueryTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/QueryTask;->onPostExecute(Ljava/lang/Object;)V
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
    .line 735
    iput-object p1, p0, Lcom/wolfram/android/alpha/QueryTask$9;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 737
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 738
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$9;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$200(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/QueryResultAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/QueryTask$9;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->OldqueryResult:Lcom/wolfram/alpha/WAQueryResult;
    invoke-static {v1}, Lcom/wolfram/android/alpha/QueryTask;->access$2300(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/android/alpha/QueryResultAdapter;->setQueryResult(Lcom/wolfram/alpha/WAQueryResult;Z)V

    .line 739
    iget-object v0, p0, Lcom/wolfram/android/alpha/QueryTask$9;->this$0:Lcom/wolfram/android/alpha/QueryTask;

    #getter for: Lcom/wolfram/android/alpha/QueryTask;->adapter:Lcom/wolfram/android/alpha/QueryResultAdapter;
    invoke-static {v0}, Lcom/wolfram/android/alpha/QueryTask;->access$200(Lcom/wolfram/android/alpha/QueryTask;)Lcom/wolfram/android/alpha/QueryResultAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/QueryResultAdapter;->notifyDataSetChanged()V

    .line 740
    return-void
.end method
