.class Lcom/ui/LapseIt/project/TrimWidget$1;
.super Ljava/lang/Object;
.source "TrimWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/TrimWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/TrimWidget;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/TrimWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, -0x2

    const-wide/high16 v9, 0x4059

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 124
    :pswitch_1
    sget-boolean v2, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    if-eqz v2, :cond_0

    .line 125
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->setFinished()V

    .line 128
    :cond_0
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 130
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$0()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    int-to-double v3, v3

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$1(Lcom/ui/LapseIt/project/TrimWidget;D)V

    .line 131
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$2()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    int-to-double v3, v3

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$3(Lcom/ui/LapseIt/project/TrimWidget;D)V

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v0, objParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->listener:Lcom/ui/LapseIt/project/OnTrimChangedListener;
    invoke-static {v2}, Lcom/ui/LapseIt/project/TrimWidget;->access$11(Lcom/ui/LapseIt/project/TrimWidget;)Lcom/ui/LapseIt/project/OnTrimChangedListener;

    move-result-object v2

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    sget v4, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    invoke-interface {v2, v3, v4}, Lcom/ui/LapseIt/project/OnTrimChangedListener;->onTrimChangedListener(II)V

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$4()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 143
    .local v1, realX:I
    if-gtz v1, :cond_1

    .line 144
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    const-wide/16 v3, 0x0

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$1(Lcom/ui/LapseIt/project/TrimWidget;D)V

    .line 151
    :goto_2
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v3}, Lcom/ui/LapseIt/project/TrimWidget;->access$6(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v3

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$7()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    mul-double/2addr v3, v9

    double-to-int v3, v3

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->perc:I
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/TrimWidget;->access$8(Lcom/ui/LapseIt/project/TrimWidget;I)V

    .line 152
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$9()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->perc:I
    invoke-static {v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$10(Lcom/ui/LapseIt/project/TrimWidget;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v9

    double-to-int v2, v2

    sput v2, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    .line 154
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v2}, Lcom/ui/LapseIt/project/TrimWidget;->access$6(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 156
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    invoke-virtual {v2, v3}, Lcom/ui/LapseIt/project/TrimWidget;->getBitmapInFrame(I)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 145
    :cond_1
    int-to-double v2, v1

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$4()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$5(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    int-to-double v3, v1

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$1(Lcom/ui/LapseIt/project/TrimWidget;D)V

    goto :goto_2

    .line 148
    :cond_2
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v3}, Lcom/ui/LapseIt/project/TrimWidget;->access$5(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$4()D

    move-result-wide v5

    sub-double/2addr v3, v5

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$1(Lcom/ui/LapseIt/project/TrimWidget;D)V

    goto :goto_2

    .line 161
    .end local v1           #realX:I
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$4()D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 162
    .restart local v1       #realX:I
    int-to-double v2, v1

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$7()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$7()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$3(Lcom/ui/LapseIt/project/TrimWidget;D)V

    .line 170
    :goto_3
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v3}, Lcom/ui/LapseIt/project/TrimWidget;->access$5(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-double v5, v5

    sub-double/2addr v3, v5

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$7()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    int-to-double v7, v7

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    mul-double/2addr v3, v9

    double-to-int v3, v3

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->perc:I
    invoke-static {v2, v3}, Lcom/ui/LapseIt/project/TrimWidget;->access$8(Lcom/ui/LapseIt/project/TrimWidget;I)V

    .line 172
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$9()D

    move-result-wide v2

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->perc:I
    invoke-static {v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$10(Lcom/ui/LapseIt/project/TrimWidget;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v9

    double-to-int v2, v2

    sput v2, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    .line 174
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v2}, Lcom/ui/LapseIt/project/TrimWidget;->access$5(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 176
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    invoke-virtual {v2, v3}, Lcom/ui/LapseIt/project/TrimWidget;->getBitmapInFrame(I)Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 164
    :cond_3
    int-to-double v2, v1

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$4()D

    move-result-wide v4

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$6(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 165
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    int-to-double v3, v1

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$3(Lcom/ui/LapseIt/project/TrimWidget;D)V

    goto :goto_3

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimWidget$1;->this$0:Lcom/ui/LapseIt/project/TrimWidget;

    #getter for: Lcom/ui/LapseIt/project/TrimWidget;->leftSliderPos:D
    invoke-static {v3}, Lcom/ui/LapseIt/project/TrimWidget;->access$6(Lcom/ui/LapseIt/project/TrimWidget;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->access$4()D

    move-result-wide v5

    sub-double/2addr v3, v5

    #setter for: Lcom/ui/LapseIt/project/TrimWidget;->rightSliderPos:D
    invoke-static {v2, v3, v4}, Lcom/ui/LapseIt/project/TrimWidget;->access$3(Lcom/ui/LapseIt/project/TrimWidget;D)V

    goto :goto_3

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 140
    :pswitch_data_1
    .packed-switch 0x7f0b00a1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
