.class public Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;
.super Ljava/lang/Object;
.source "PreshotSettingBarActionItem.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/ActionItem;


# instance fields
.field private bufText:Landroid/widget/TextView;

.field private bufferMax:I

.field private bufferSeekBar:Landroid/widget/SeekBar;

.field private bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "inflater"

    .prologue
    .line 57
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, container:Landroid/view/View;
    const/high16 v2, 0x7f0d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0d0006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferSeekBar:Landroid/widget/SeekBar;

    .line 60
    const v2, 0x7f0d0007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufText:Landroid/widget/TextView;

    .line 61
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 69
    :cond_1
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBufferMax(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 75
    iput p1, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferMax:I

    .line 76
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 78
    return-void
.end method

.method public setBufferValue(I)V
    .locals 2
    .parameter "val"

    .prologue
    .line 82
    move v0, p1

    .line 83
    .local v0, useval:I
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 84
    const/16 v0, 0xa

    .line 85
    :cond_0
    iget v1, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferMax:I

    if-le v0, v1, :cond_1

    .line 86
    iget v0, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferMax:I

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    return-void
.end method

.method public setOnBufferBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "bufferSeeker"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 98
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public updateBufferValueUI(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/PreshotSettingBarActionItem;->bufText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
