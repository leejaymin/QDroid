.class public Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;
.super Ljava/lang/Object;
.source "ExposurebarActionItem.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/ActionItem;


# instance fields
.field private exposureMaxText:Ljava/lang/String;

.field private exposureMidText:Ljava/lang/String;

.field private exposureMinText:Ljava/lang/String;

.field private initValue:I

.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private maxText:Landroid/widget/TextView;

.field private midText:Landroid/widget/TextView;

.field private minText:Landroid/widget/TextView;

.field private steps:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "-1"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMinText:Ljava/lang/String;

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMidText:Ljava/lang/String;

    .line 25
    const-string v0, "1"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMaxText:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "inflater"

    .prologue
    .line 69
    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, container:Landroid/view/View;
    const/high16 v3, 0x7f0d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, text:Landroid/widget/TextView;
    const v3, 0x7f0d0002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->minText:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f0d0003

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->midText:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f0d0004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->maxText:Landroid/widget/TextView;

    .line 76
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->minText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMinText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->midText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMidText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->maxText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMaxText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v3, 0x7f0d0001

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 82
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 89
    :cond_1
    iget v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->steps:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    iget v3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->initValue:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 91
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setExposureSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "min"
    .parameter "mid"
    .parameter "max"
    .parameter "steps"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMinText:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMidText:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->exposureMaxText:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->steps:I

    .line 54
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "onSeekBarChangeListener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 98
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->title:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .parameter "exposureUsed"

    .prologue
    .line 102
    iput p1, p0, Lcom/spritefish/fastburstcamera/controls/ExposurebarActionItem;->initValue:I

    .line 104
    return-void
.end method
