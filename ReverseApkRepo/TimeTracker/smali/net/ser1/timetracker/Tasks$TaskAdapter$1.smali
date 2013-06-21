.class Lnet/ser1/timetracker/Tasks$TaskAdapter$1;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks$TaskAdapter;->findCurrentlyActive()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lnet/ser1/timetracker/Task;",
        ">;"
    }
.end annotation


# instance fields
.field iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lnet/ser1/timetracker/Task;",
            ">;"
        }
    .end annotation
.end field

.field next:Lnet/ser1/timetracker/Task;

.field final synthetic this$1:Lnet/ser1/timetracker/Tasks$TaskAdapter;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks$TaskAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->this$1:Lnet/ser1/timetracker/Tasks$TaskAdapter;

    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iget-object v0, p1, Lnet/ser1/timetracker/Tasks$TaskAdapter;->tasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->iter:Ljava/util/Iterator;

    .line 957
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->next:Lnet/ser1/timetracker/Task;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 959
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->next:Lnet/ser1/timetracker/Task;

    if-eqz v1, :cond_1

    move v1, v2

    .line 967
    :goto_0
    return v1

    .line 961
    :cond_0
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/ser1/timetracker/Task;

    .line 962
    .local v0, t:Lnet/ser1/timetracker/Task;
    invoke-virtual {v0}, Lnet/ser1/timetracker/Task;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    iput-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->next:Lnet/ser1/timetracker/Task;

    move v1, v2

    .line 964
    goto :goto_0

    .line 960
    .end local v0           #t:Lnet/ser1/timetracker/Task;
    :cond_1
    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->next()Lnet/ser1/timetracker/Task;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/ser1/timetracker/Task;
    .locals 2

    .prologue
    .line 970
    invoke-virtual {p0}, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->next:Lnet/ser1/timetracker/Task;

    .line 972
    .local v0, t:Lnet/ser1/timetracker/Task;
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/ser1/timetracker/Tasks$TaskAdapter$1;->next:Lnet/ser1/timetracker/Task;

    .line 973
    return-object v0

    .line 975
    .end local v0           #t:Lnet/ser1/timetracker/Task;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
