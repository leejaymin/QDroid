.class Lnet/ser1/timetracker/Tasks$1;
.super Ljava/util/TimerTask;
.source "Tasks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ser1/timetracker/Tasks;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$1;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 183
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$1;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->running:Z
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks;->access$4(Lnet/ser1/timetracker/Tasks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$1;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks;->access$5(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Tasks$TaskAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$1;->this$0:Lnet/ser1/timetracker/Tasks;

    #calls: Lnet/ser1/timetracker/Tasks;->setTitle()V
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks;->access$6(Lnet/ser1/timetracker/Tasks;)V

    .line 190
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$1;->this$0:Lnet/ser1/timetracker/Tasks;

    invoke-virtual {v0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 192
    :cond_0
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$1;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->timer:Landroid/os/Handler;
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks;->access$7(Lnet/ser1/timetracker/Tasks;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method
