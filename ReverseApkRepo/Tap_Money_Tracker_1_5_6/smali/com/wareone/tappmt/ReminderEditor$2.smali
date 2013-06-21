.class Lcom/wareone/tappmt/ReminderEditor$2;
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
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReminderEditor$2;)Lcom/wareone/tappmt/ReminderEditor;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-string v3, "due_date"

    .line 128
    const/4 v0, 0x1

    .line 129
    .local v0, idx:I
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "due_date"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 130
    const/4 v0, 0x0

    .line 134
    :cond_0
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_due:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/ReminderEditor;->access$3(Lcom/wareone/tappmt/ReminderEditor;)[Ljava/lang/String;

    move-result-object v2

    .line 136
    new-instance v3, Lcom/wareone/tappmt/ReminderEditor$2$1;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/ReminderEditor$2$1;-><init>(Lcom/wareone/tappmt/ReminderEditor$2;)V

    .line 135
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$2;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    #getter for: Lcom/wareone/tappmt/ReminderEditor;->m_values:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/wareone/tappmt/ReminderEditor;->access$0(Lcom/wareone/tappmt/ReminderEditor;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "due_date"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method
