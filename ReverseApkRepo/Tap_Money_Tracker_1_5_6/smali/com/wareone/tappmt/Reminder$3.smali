.class Lcom/wareone/tappmt/Reminder$3;
.super Ljava/lang/Object;
.source "Reminder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Reminder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Reminder;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Reminder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Reminder$3;)Lcom/wareone/tappmt/Reminder;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    #getter for: Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder;->access$0(Lcom/wareone/tappmt/Reminder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    #setter for: Lcom/wareone/tappmt/Reminder;->m_id:J
    invoke-static {v1, v2, v3}, Lcom/wareone/tappmt/Reminder;->access$2(Lcom/wareone/tappmt/Reminder;J)V

    .line 172
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    const-wide/16 v1, 0x0

    #setter for: Lcom/wareone/tappmt/Reminder;->m_remote_id:J
    invoke-static {v0, v1, v2}, Lcom/wareone/tappmt/Reminder;->access$3(Lcom/wareone/tappmt/Reminder;J)V

    .line 174
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    #getter for: Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder;->access$0(Lcom/wareone/tappmt/Reminder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 177
    const v1, 0x7f070008

    new-instance v2, Lcom/wareone/tappmt/Reminder$3$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/Reminder$3$1;-><init>(Lcom/wareone/tappmt/Reminder$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 197
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$3;->this$0:Lcom/wareone/tappmt/Reminder;

    #calls: Lcom/wareone/tappmt/Reminder;->_delete()V
    invoke-static {v0}, Lcom/wareone/tappmt/Reminder;->access$4(Lcom/wareone/tappmt/Reminder;)V

    goto :goto_0
.end method
