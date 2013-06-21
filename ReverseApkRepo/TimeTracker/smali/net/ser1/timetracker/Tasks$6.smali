.class Lnet/ser1/timetracker/Tasks$6;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks;->openDeleteTaskDialog()Landroid/app/Dialog;
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
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$6;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 622
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$6;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;
    invoke-static {v0}, Lnet/ser1/timetracker/Tasks;->access$5(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Tasks$TaskAdapter;

    move-result-object v0

    iget-object v1, p0, Lnet/ser1/timetracker/Tasks$6;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;
    invoke-static {v1}, Lnet/ser1/timetracker/Tasks;->access$14(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->deleteTask(Lnet/ser1/timetracker/Task;)V

    .line 623
    iget-object v0, p0, Lnet/ser1/timetracker/Tasks$6;->this$0:Lnet/ser1/timetracker/Tasks;

    invoke-virtual {v0}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 624
    return-void
.end method
