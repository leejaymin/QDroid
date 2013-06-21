.class Lcom/devsmart/android/ui/HorizontialListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontialListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devsmart/android/ui/HorizontialListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devsmart/android/ui/HorizontialListView;


# direct methods
.method constructor <init>(Lcom/devsmart/android/ui/HorizontialListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    .line 88
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    const/4 v2, 0x1

    #setter for: Lcom/devsmart/android/ui/HorizontialListView;->mDataChanged:Z
    invoke-static {v0, v2}, Lcom/devsmart/android/ui/HorizontialListView;->access$2(Lcom/devsmart/android/ui/HorizontialListView;Z)V

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontialListView;->invalidate()V

    .line 96
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontialListView;->requestLayout()V

    .line 97
    return-void

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    #calls: Lcom/devsmart/android/ui/HorizontialListView;->reset()V
    invoke-static {v0}, Lcom/devsmart/android/ui/HorizontialListView;->access$3(Lcom/devsmart/android/ui/HorizontialListView;)V

    .line 102
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontialListView;->invalidate()V

    .line 103
    iget-object v0, p0, Lcom/devsmart/android/ui/HorizontialListView$1;->this$0:Lcom/devsmart/android/ui/HorizontialListView;

    invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontialListView;->requestLayout()V

    .line 104
    return-void
.end method
