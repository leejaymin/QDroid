.class Lcom/wareone/tappmt/ReminderEditor$8;
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
    iput-object p1, p0, Lcom/wareone/tappmt/ReminderEditor$8;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/ReminderEditor$8;)Lcom/wareone/tappmt/ReminderEditor;
    .locals 1
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor$8;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 385
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/wareone/tappmt/ReminderEditor$8;->this$0:Lcom/wareone/tappmt/ReminderEditor;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-static {}, Lcom/wareone/tappmt/ReminderEditor;->access$12()Ljava/util/List;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 387
    new-instance v2, Lcom/wareone/tappmt/ReminderEditor$8$1;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/ReminderEditor$8$1;-><init>(Lcom/wareone/tappmt/ReminderEditor$8;)V

    .line 386
    invoke-virtual {v1, v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 400
    return-void
.end method
