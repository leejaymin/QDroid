.class Lnet/ser1/timetracker/Tasks$5;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks;->openEditTaskDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ser1/timetracker/Tasks;

.field private final synthetic val$textEntryView:Landroid/view/View;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$5;->this$0:Lnet/ser1/timetracker/Tasks;

    iput-object p2, p0, Lnet/ser1/timetracker/Tasks$5;->val$textEntryView:Landroid/view/View;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 590
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$5;->val$textEntryView:Landroid/view/View;

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 591
    .local v1, textView:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, name:Ljava/lang/String;
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$5;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks;->access$14(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Task;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/ser1/timetracker/Task;->setTaskName(Ljava/lang/String;)V

    .line 594
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$5;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->adapter:Lnet/ser1/timetracker/Tasks$TaskAdapter;
    invoke-static {v2}, Lnet/ser1/timetracker/Tasks;->access$5(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Tasks$TaskAdapter;

    move-result-object v2

    iget-object v3, p0, Lnet/ser1/timetracker/Tasks$5;->this$0:Lnet/ser1/timetracker/Tasks;

    #getter for: Lnet/ser1/timetracker/Tasks;->selectedTask:Lnet/ser1/timetracker/Task;
    invoke-static {v3}, Lnet/ser1/timetracker/Tasks;->access$14(Lnet/ser1/timetracker/Tasks;)Lnet/ser1/timetracker/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/ser1/timetracker/Tasks$TaskAdapter;->updateTask(Lnet/ser1/timetracker/Task;)V

    .line 596
    iget-object v2, p0, Lnet/ser1/timetracker/Tasks$5;->this$0:Lnet/ser1/timetracker/Tasks;

    invoke-virtual {v2}, Lnet/ser1/timetracker/Tasks;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    .line 597
    return-void
.end method