.class Lcom/sphericbox/syb/processing/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:Lcom/sphericbox/syb/processing/g;


# direct methods
.method constructor <init>(Lcom/sphericbox/syb/processing/g;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sphericbox/syb/processing/a;->j:Lcom/sphericbox/syb/processing/g;

    iput p2, p0, Lcom/sphericbox/syb/processing/a;->g:I

    iput p3, p0, Lcom/sphericbox/syb/processing/a;->h:I

    iput p4, p0, Lcom/sphericbox/syb/processing/a;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/sphericbox/syb/processing/a;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v0, v0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aB:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$300(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/sphericbox/syb/processing/a;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget v0, p0, Lcom/sphericbox/syb/processing/a;->h:I

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sphericbox/syb/processing/a;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v0, v0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aA:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$400(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 115
    iget v0, p0, Lcom/sphericbox/syb/processing/a;->i:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/sphericbox/syb/processing/a;->h:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 116
    iget-object v1, p0, Lcom/sphericbox/syb/processing/a;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v1, v1, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aA:Landroid/widget/ProgressBar;
    invoke-static {v1}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$400(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/processing/a;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v0, v0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aA:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$400(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 119
    iget-object v0, p0, Lcom/sphericbox/syb/processing/a;->j:Lcom/sphericbox/syb/processing/g;

    iget-object v0, v0, Lcom/sphericbox/syb/processing/g;->aI:Lcom/sphericbox/syb/processing/ProcessingActivity;

    #getter for: Lcom/sphericbox/syb/processing/ProcessingActivity;->aA:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sphericbox/syb/processing/ProcessingActivity;->access$400(Lcom/sphericbox/syb/processing/ProcessingActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0
.end method
