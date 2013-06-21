.class Lcom/wareone/tappmt/Reminder$4;
.super Ljava/lang/Object;
.source "Reminder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Reminder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Reminder;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Reminder;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Reminder$4;)Lcom/wareone/tappmt/Reminder;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v2, p0, Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;

    const-string v3, "TapPMTPrefs"

    invoke-virtual {v2, v3, v4}, Lcom/wareone/tappmt/Reminder;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "authorized"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;

    #getter for: Lcom/wareone/tappmt/Reminder;->m_reminder:Ljava/util/List;
    invoke-static {v2}, Lcom/wareone/tappmt/Reminder;->access$0(Lcom/wareone/tappmt/Reminder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 207
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;

    const-class v3, Lcom/wareone/tappmt/ReminderEditor;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, it:Landroid/content/Intent;
    const-string v2, "ACTION"

    const v3, 0x7f09005b

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v2, "_id"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    iget-object v2, p0, Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;

    invoke-virtual {v2, v0}, Lcom/wareone/tappmt/Reminder;->startActivity(Landroid/content/Intent;)V

    .line 238
    .end local v0           #it:Landroid/content/Intent;
    :goto_0
    return-void

    .line 213
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 214
    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 215
    const v3, 0x7f0900a1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 216
    const v3, 0x7f090053

    .line 217
    new-instance v4, Lcom/wareone/tappmt/Reminder$4$1;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Reminder$4$1;-><init>(Lcom/wareone/tappmt/Reminder$4;)V

    .line 216
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 227
    const v3, 0x7f090051

    .line 228
    new-instance v4, Lcom/wareone/tappmt/Reminder$4$2;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Reminder$4$2;-><init>(Lcom/wareone/tappmt/Reminder$4;)V

    .line 227
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
