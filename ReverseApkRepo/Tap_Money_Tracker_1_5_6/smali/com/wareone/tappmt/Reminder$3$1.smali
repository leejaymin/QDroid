.class Lcom/wareone/tappmt/Reminder$3$1;
.super Ljava/lang/Object;
.source "Reminder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Reminder$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Reminder$3;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Reminder$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Reminder$3$1;->this$1:Lcom/wareone/tappmt/Reminder$3;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    packed-switch p2, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$3$1;->this$1:Lcom/wareone/tappmt/Reminder$3;

    #getter for: Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder$3;->access$0(Lcom/wareone/tappmt/Reminder$3;)Lcom/wareone/tappmt/Reminder;

    move-result-object v0

    #calls: Lcom/wareone/tappmt/Reminder;->_delete()V
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder;->access$4(Lcom/wareone/tappmt/Reminder;)V

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$3$1;->this$1:Lcom/wareone/tappmt/Reminder$3;

    #getter for: Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder$3;->access$0(Lcom/wareone/tappmt/Reminder$3;)Lcom/wareone/tappmt/Reminder;

    move-result-object v0

    #calls: Lcom/wareone/tappmt/Reminder;->_execTransaction()V
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder;->access$5(Lcom/wareone/tappmt/Reminder;)V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
