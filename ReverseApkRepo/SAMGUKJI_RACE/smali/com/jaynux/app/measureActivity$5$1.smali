.class Lcom/jaynux/app/measureActivity$5$1;
.super Ljava/lang/Object;
.source "measureActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/measureActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaynux/app/measureActivity$5;


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 656
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 657
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "row1col1"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row1col1Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    const-string v1, "row1col2"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row1col2Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 659
    const-string v1, "row1col3"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row1col3Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    const-string v1, "row2col1"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row2col1Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 661
    const-string v1, "row2col2"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row2col2Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 662
    const-string v1, "row2col3"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row2col3Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    const-string v1, "row3col1"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row3col1Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 664
    const-string v1, "row3col2"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row3col2Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 665
    const-string v1, "row3col3"

    iget-object v2, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v2}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/jaynux/app/measureActivity;->row3col3Flag:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    iget-object v1, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v1}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aput v3, v1, v3

    .line 668
    iget-object v1, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v1}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 669
    iget-object v1, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v1}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v2, 0x2

    aput v3, v1, v2

    .line 670
    iget-object v1, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v1}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/jaynux/app/measureActivity;->setResult(ILandroid/content/Intent;)V

    .line 671
    iget-object v1, p0, Lcom/jaynux/app/measureActivity$5$1;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v1}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jaynux/app/measureActivity;->finish()V

    .line 672
    return-void
.end method
