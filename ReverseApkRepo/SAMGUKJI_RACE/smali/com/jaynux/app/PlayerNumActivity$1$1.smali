.class Lcom/jaynux/app/PlayerNumActivity$1$1;
.super Ljava/lang/Object;
.source "PlayerNumActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/PlayerNumActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaynux/app/PlayerNumActivity$1;

.field private final synthetic val$dialog:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jaynux/app/PlayerNumActivity$1;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    iput-object p2, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->val$dialog:Landroid/view/View;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 39
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->val$dialog:Landroid/view/View;

    const v5, 0x7f09001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, player1:Ljava/lang/String;
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->val$dialog:Landroid/view/View;

    const v5, 0x7f090022

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, player2:Ljava/lang/String;
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->val$dialog:Landroid/view/View;

    const v5, 0x7f090025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, player3:Ljava/lang/String;
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->val$dialog:Landroid/view/View;

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, player4:Ljava/lang/String;
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity;->access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "playerNum"

    iget-object v6, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v6}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v6

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->playerNum:I
    invoke-static {v6}, Lcom/jaynux/app/PlayerNumActivity;->access$1(Lcom/jaynux/app/PlayerNumActivity;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity;->access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "meter"

    iget-object v6, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v6}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v6

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->meter:I
    invoke-static {v6}, Lcom/jaynux/app/PlayerNumActivity;->access$2(Lcom/jaynux/app/PlayerNumActivity;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity;->access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "player1"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity;->access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "player2"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity;->access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "player3"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity;->access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "player4"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v5}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v5

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/jaynux/app/PlayerNumActivity;->access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jaynux/app/PlayerNumActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    iget-object v4, p0, Lcom/jaynux/app/PlayerNumActivity$1$1;->this$1:Lcom/jaynux/app/PlayerNumActivity$1;

    #getter for: Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;
    invoke-static {v4}, Lcom/jaynux/app/PlayerNumActivity$1;->access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jaynux/app/PlayerNumActivity;->finish()V

    .line 52
    return-void
.end method
