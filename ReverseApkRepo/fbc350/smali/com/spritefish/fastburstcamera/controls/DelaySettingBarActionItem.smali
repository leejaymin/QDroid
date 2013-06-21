.class public Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;
.super Ljava/lang/Object;
.source "DelaySettingBarActionItem.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/ActionItem;


# instance fields
.field private bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private delayMax:I

.field private delaySeekBar:Landroid/widget/SeekBar;

.field private delayText:Landroid/widget/TextView;

.field descriptions:[Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x7

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->delayMax:I

    .line 32
    return-void
.end method


# virtual methods
.method public getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 4
    .parameter "inflater"

    .prologue
    .line 61
    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, container:Landroid/view/View;
    const/high16 v2, 0x7f0d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0d0013

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->delaySeekBar:Landroid/widget/SeekBar;

    .line 64
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->delaySeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->descriptions:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 65
    const v2, 0x7f0d0014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->delayText:Landroid/widget/TextView;

    .line 66
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->title:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->delaySeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    :cond_1
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDelayValue(I)V
    .locals 1
    .parameter "val"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->delaySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    return-void
.end method

.method public setOnBufferBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "bufferSeeker"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->bufferlistener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 93
    return-void
.end method

.method public setStringDescriptors([Ljava/lang/String;)V
    .locals 0
    .parameter "descs"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->descriptions:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public updateBufferValueUI(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->delayText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/DelaySettingBarActionItem;->descriptions:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method
