.class Lcom/jaynux/app/measureActivity$5$2;
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
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aput v2, v0, v2

    .line 680
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aput v2, v0, v3

    .line 681
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 682
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 684
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row1col1Flag:Z

    .line 685
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row1col2Flag:Z

    .line 686
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row1col3Flag:Z

    .line 687
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row2col1Flag:Z

    .line 688
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row2col2Flag:Z

    .line 689
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row2col3Flag:Z

    .line 690
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row3col1Flag:Z

    .line 691
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row3col2Flag:Z

    .line 692
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    iput-boolean v2, v0, Lcom/jaynux/app/measureActivity;->row3col3Flag:Z

    .line 694
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$5$2;->this$1:Lcom/jaynux/app/measureActivity$5;

    #getter for: Lcom/jaynux/app/measureActivity$5;->this$0:Lcom/jaynux/app/measureActivity;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity$5;->access$0(Lcom/jaynux/app/measureActivity$5;)Lcom/jaynux/app/measureActivity;

    move-result-object v0

    .line 695
    const v1, 0x7f07001f

    .line 694
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 695
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 696
    return-void
.end method
