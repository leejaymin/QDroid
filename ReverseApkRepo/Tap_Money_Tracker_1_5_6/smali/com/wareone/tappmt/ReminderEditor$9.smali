.class Lcom/wareone/tappmt/ReminderEditor$9;
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
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$9;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReminderEditor$9;)Lcom/wareone/tappmt/ReminderEditor;
    .locals 1
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor$9;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 408
    const v1, 0x7f0c0026

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 410
    .local v0, btn:Landroid/widget/Button;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/wareone/tappmt/ReminderEditor$9;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$13()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$13()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 412
    new-instance v4, Lcom/wareone/tappmt/ReminderEditor$9$1;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/ReminderEditor$9$1;-><init>(Lcom/wareone/tappmt/ReminderEditor$9;)V

    .line 411
    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 425
    return-void
.end method
