.class Lcom/wareone/tappmt/ReminderEditor$7$1;
.super Ljava/lang/Object;
.source "ReminderEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ReminderEditor$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/ReminderEditor$7;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ReminderEditor$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$7$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$7;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "position"

    .prologue
    const-string v3, "group_name"

    .line 368
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$7$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$7;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$7;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$7;->access$0(Lcom/wareone/tappmt/ReminderEditor$7;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    const v2, 0x7f0c0028

    invoke-virtual {v1, v2}, Lcom/wareone/tappmt/ReminderEditor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 369
    .local v0, btn:Landroid/widget/Button;
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$11()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "group_name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$7$1;->this$1:Lcom/wareone/tappmt/ReminderEditor$7;

    #getter for: Lcom/wareone/tappmt/ReminderEditor$7;->this$0:Lcom/wareone/tappmt/ReminderEditor;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor$7;->access$0(Lcom/wareone/tappmt/ReminderEditor$7;)Lcom/wareone/tappmt/ReminderEditor;

    move-result-object v1

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "group_name"

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$11()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    const-string v2, "_id"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 373
    return-void
.end method
