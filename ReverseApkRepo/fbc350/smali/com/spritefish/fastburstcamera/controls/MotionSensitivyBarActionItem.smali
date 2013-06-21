.class public Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;
.super Ljava/lang/Object;
.source "MotionSensitivyBarActionItem.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/ActionItem;


# instance fields
.field private bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private delayText:Landroid/widget/TextView;

.field private seekBar:Landroid/widget/SeekBar;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "inflater"

    .prologue
    .line 55
    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, container:Landroid/view/View;
    const/high16 v2, 0x7f0d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0d0052

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->seekBar:Landroid/widget/SeekBar;

    .line 58
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->seekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 59
    const v2, 0x7f0d0014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->delayText:Landroid/widget/TextView;

    .line 60
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->seekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    :cond_1
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setOnBufferBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "bufferSeeker"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 87
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->title:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "val"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/MotionSensitivyBarActionItem;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    return-void
.end method

.method public updateBufferValueUI(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 93
    return-void
.end method
