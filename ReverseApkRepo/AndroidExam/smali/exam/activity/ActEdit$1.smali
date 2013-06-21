.class Lexam/activity/ActEdit$1;
.super Ljava/lang/Object;
.source "ActEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/activity/ActEdit;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/activity/ActEdit;


# direct methods
.method constructor <init>(Lexam/activity/ActEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/activity/ActEdit$1;->this$0:Lexam/activity/ActEdit;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TextOut"

    iget-object v2, p0, Lexam/activity/ActEdit$1;->this$0:Lexam/activity/ActEdit;

    iget-object v2, v2, Lexam/activity/ActEdit;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v1, p0, Lexam/activity/ActEdit$1;->this$0:Lexam/activity/ActEdit;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lexam/activity/ActEdit;->setResult(ILandroid/content/Intent;)V

    .line 28
    iget-object v1, p0, Lexam/activity/ActEdit$1;->this$0:Lexam/activity/ActEdit;

    invoke-virtual {v1}, Lexam/activity/ActEdit;->finish()V

    .line 29
    return-void
.end method
