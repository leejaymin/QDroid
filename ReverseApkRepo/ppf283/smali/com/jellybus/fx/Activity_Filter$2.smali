.class Lcom/jellybus/fx/Activity_Filter$2;
.super Ljava/lang/Object;
.source "Activity_Filter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Filter;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_pic:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$3(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 384
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    rsub-int v2, p2, 0xff

    #setter for: Lcom/jellybus/fx/Activity_Filter;->opacity:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Filter;->access$4(Lcom/jellybus/fx/Activity_Filter;I)V

    .line 386
    int-to-float v1, p2

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 387
    .local v0, count_opacity:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_value:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Filter;->access$2(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    const v4, 0x7f05004e

    invoke-virtual {v3, v4}, Lcom/jellybus/fx/Activity_Filter;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$2(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$2(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Filter$2;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filter_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Filter;->access$2(Lcom/jellybus/fx/Activity_Filter;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    return-void
.end method
