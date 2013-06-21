.class public Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;
.super Ljava/lang/Object;
.source "SeekbarActionItem.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/ActionItem;


# instance fields
.field private initialZoomValue:I

.field private listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private title:Ljava/lang/String;

.field private zoomText:Ljava/lang/String;

.field private zoomTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "1.0x"

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->zoomText:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "inflater"

    .prologue
    .line 61
    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    .local v0, container:Landroid/widget/LinearLayout;
    const/high16 v3, 0x7f0d

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    .local v2, text:Landroid/widget/TextView;
    const v3, 0x7f0d000a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->zoomTextView:Landroid/widget/TextView;

    .line 65
    const v3, 0x7f0d0009

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 67
    .local v1, seekBar:Landroid/widget/SeekBar;
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    :cond_1
    iget v3, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->initialZoomValue:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 76
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->zoomText:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->setZoomText(Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setInitialZoomValue(I)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 88
    iput p1, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->initialZoomValue:I

    .line 90
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "onSeekBarChangeListener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 84
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->title:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setZoomText(Ljava/lang/String;)V
    .locals 1
    .parameter "zoomText"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->zoomText:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->zoomTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/SeekbarActionItem;->zoomTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method
