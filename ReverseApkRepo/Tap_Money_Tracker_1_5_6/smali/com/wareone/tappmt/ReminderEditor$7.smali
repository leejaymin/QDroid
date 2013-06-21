.class Lcom/wareone/tappmt/ReminderEditor$7;
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
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$7;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReminderEditor$7;)Lcom/wareone/tappmt/ReminderEditor;
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor$7;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 359
    const v2, 0x7f0c0028

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 360
    .local v0, btn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$7;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$11()Ljava/util/List;

    move-result-object v3

    const-string v4, "group_name"

    #calls: Lcom/wareone/tappmt/ReminderEditor;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v3, v4}, Lcom/wareone/tappmt/ReminderEditor;->access$8(Lcom/wareone/tappmt/ReminderEditor;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 362
    .local v1, ls_group:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wareone/tappmt/ReminderEditor$7;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 364
    new-instance v5, Lcom/wareone/tappmt/ReminderEditor$7$1;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/ReminderEditor$7$1;-><init>(Lcom/wareone/tappmt/ReminderEditor$7;)V

    .line 363
    invoke-virtual {v3, v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 377
    return-void
.end method
