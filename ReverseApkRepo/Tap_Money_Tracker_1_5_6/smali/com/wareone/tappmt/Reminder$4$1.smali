.class Lcom/wareone/tappmt/Reminder$4$1;
.super Ljava/lang/Object;
.source "Reminder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Reminder$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Reminder$4;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Reminder$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Reminder$4$1;->this$1:Lcom/wareone/tappmt/Reminder$4;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/Reminder$4$1;->this$1:Lcom/wareone/tappmt/Reminder$4;

    #getter for: Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;
    invoke-static {v1}, Lcom/wareone/tappmt/Reminder$4;->access$0(Lcom/wareone/tappmt/Reminder$4;)Lcom/wareone/tappmt/Reminder;

    move-result-object v1

    const-class v2, Lcom/wareone/tappmt/Register;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/Reminder$4$1;->this$1:Lcom/wareone/tappmt/Reminder$4;

    #getter for: Lcom/wareone/tappmt/Reminder$4;->this$0:Lcom/wareone/tappmt/Reminder;
    invoke-static {v1}, Lcom/wareone/tappmt/Reminder$4;->access$0(Lcom/wareone/tappmt/Reminder$4;)Lcom/wareone/tappmt/Reminder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/Reminder;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method
