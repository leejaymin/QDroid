.class public Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;
.super Ljava/lang/Object;
.source "RangeDialogHelper.java"


# instance fields
.field private lastLeftIdx:J

.field private lastRightIdx:J

.field private leftImage:Landroid/widget/ImageView;

.field private pics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spritefish/fastburstcamera/db/dao/Picture;",
            ">;"
        }
    .end annotation
.end field

.field private rightImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->lastLeftIdx:J

    .line 27
    iput-wide v0, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->lastRightIdx:J

    .line 22
    return-void
.end method


# virtual methods
.method public createRangeDialog(Landroid/content/Context;JLjava/lang/String;Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;)V
    .locals 12
    .parameter "c"
    .parameter "burstId"
    .parameter "header"
    .parameter "listener"
    .parameter "resultListener"

    .prologue
    .line 51
    new-instance v7, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-direct {v7, p1}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 52
    .local v7, bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 54
    .local v9, dialog:Landroid/app/Dialog;
    const v1, 0x7f030011

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 55
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f0d0059

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;

    .line 58
    .local v11, rangeBar:Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;
    const v1, 0x7f0d0057

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->leftImage:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0d0058

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->rightImage:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f0d005a

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 62
    .local v10, okButton:Landroid/widget/Button;
    const v1, 0x7f0d0043

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 64
    .local v8, cancelButton:Landroid/widget/Button;
    new-instance v1, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$1;

    move-object/from16 v0, p6

    invoke-direct {v1, p0, v0, v11, v9}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$1;-><init>(Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;Landroid/app/Dialog;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v1, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;

    move-object/from16 v0, p6

    invoke-direct {v1, p0, v0, v9}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$2;-><init>(Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;Landroid/app/Dialog;)V

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v1, 0x7f0d0017

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 83
    .local v6, largeTextView:Landroid/widget/TextView;
    invoke-virtual {v7, p2, p3}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->pics:Ljava/util/List;

    .line 84
    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->pics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setRange(JJ)V

    .line 85
    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->pics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v6}, Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;->onRangeChange(JJLandroid/widget/TextView;)V

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setNotifyWhileDragging(Z)V

    .line 87
    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->pics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->updatePictures(JJ)V

    .line 88
    new-instance v1, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;

    move-object/from16 v0, p5

    invoke-direct {v1, p0, v0, v6}, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper$3;-><init>(Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;Landroid/widget/TextView;)V

    invoke-virtual {v11, v1}, Lcom/spritefish/fastburstcamera/controls/RangeSeekBar;->setOnRangeSeekBarChangeListener(Lcom/spritefish/fastburstcamera/controls/RangeSeekBar$OnRangeSeekBarChangeListener;)V

    .line 96
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 98
    return-void
.end method

.method public updatePictures(JJ)V
    .locals 4
    .parameter "leftIdx"
    .parameter "rightIdx"

    .prologue
    .line 32
    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->lastLeftIdx:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->pics:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/spritefish/camera/Util;->safeLongToInt(J)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    .local v0, b1:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 36
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->leftImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    :cond_0
    iput-wide p1, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->lastLeftIdx:J

    .line 40
    .end local v0           #b1:Landroid/graphics/Bitmap;
    :cond_1
    iget-wide v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->lastRightIdx:J

    cmp-long v2, p3, v2

    if-eqz v2, :cond_3

    .line 42
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->pics:Ljava/util/List;

    invoke-static {p3, p4}, Lcom/spritefish/camera/Util;->safeLongToInt(J)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/spritefish/camera/Util;->getRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    .local v1, b2:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 44
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->rightImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    :cond_2
    iput-wide p3, p0, Lcom/spritefish/fastburstcamera/controls/RangeDialogHelper;->lastRightIdx:J

    .line 47
    .end local v1           #b2:Landroid/graphics/Bitmap;
    :cond_3
    return-void
.end method
