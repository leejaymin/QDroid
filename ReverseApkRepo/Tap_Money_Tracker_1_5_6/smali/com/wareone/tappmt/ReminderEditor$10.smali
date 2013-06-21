.class Lcom/wareone/tappmt/ReminderEditor$10;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/ReminderEditor;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$10;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$10;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    const v2, 0x7f0c0093

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 434
    .local v0, edt_name:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$10;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$10;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    invoke-virtual {v2}, Lcom/wareone/tappmt/ReminderEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$10;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #calls: Lcom/wareone/tappmt/ReminderEditor;->_saveReminder()V
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$14(Lcom/wareone/tappmt/ReminderEditor;)V

    .line 438
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$10;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    invoke-virtual {v1}, Lcom/wareone/tappmt/ReminderEditor;->finish()V

    goto :goto_0
.end method
