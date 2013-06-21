.class public Lcom/rookiestudio/perfectviewer/TNavigateBar;
.super Landroid/widget/LinearLayout;
.source "TNavigateBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private CurrentPageText:Landroid/widget/TextView;

.field private ImageButtonList:[Landroid/widget/ImageView;

.field private TotalPageText:Landroid/widget/TextView;

.field private TrackBar:Landroid/widget/SeekBar;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0x14

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-array v2, v5, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->ImageButtonList:[Landroid/widget/ImageView;

    .line 42
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->inflater:Landroid/view/LayoutInflater;

    .line 43
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030021

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 48
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 53
    const v2, 0x7f0c000c

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TrackBar:Landroid/widget/SeekBar;

    .line 54
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TrackBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 55
    const v2, 0x7f0c000b

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->CurrentPageText:Landroid/widget/TextView;

    .line 56
    const v2, 0x7f0c000d

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TotalPageText:Landroid/widget/TextView;

    .line 57
    const/16 v2, 0x50

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->setGravity(I)V

    .line 58
    return-void

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->ImageButtonList:[Landroid/widget/ImageView;

    const v2, 0x7f0c0062

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v1

    .line 46
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->ImageButtonList:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v0

    .line 50
    .local v0, aQuickButtonInfo:Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->ImageButtonList:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    iget v3, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->ImageButtonList:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Hide()V
    .locals 3

    .prologue
    .line 141
    const/4 v1, 0x0

    sput-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    .line 142
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 143
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    new-instance v1, Lcom/rookiestudio/perfectviewer/TNavigateBar$2;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TNavigateBar$2;-><init>(Lcom/rookiestudio/perfectviewer/TNavigateBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 158
    return-void
.end method

.method public Show()V
    .locals 3

    .prologue
    .line 118
    const/4 v1, 0x1

    sput-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->ShowQuickBar:Z

    .line 119
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->UpdateInfo()V

    .line 120
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040010

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 121
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 123
    new-instance v1, Lcom/rookiestudio/perfectviewer/TNavigateBar$1;

    invoke-direct {v1, p0}, Lcom/rookiestudio/perfectviewer/TNavigateBar$1;-><init>(Lcom/rookiestudio/perfectviewer/TNavigateBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    return-void
.end method

.method public UpdateInfo()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TrackBar:Landroid/widget/SeekBar;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 83
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TrackBar:Landroid/widget/SeekBar;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 84
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TotalPageText:Landroid/widget/TextView;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->CurrentPageText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TrackBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 62
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    if-nez v2, :cond_0

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0c0062

    sub-int v1, v2, v3

    .line 66
    .local v1, Index:I
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, FunctionIndex:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 68
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 69
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 70
    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->Hide()V

    .line 74
    :cond_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    invoke-static {v2, v0}, Lcom/rookiestudio/perfectviewer/TViewerMain;->ActionHandler(Landroid/app/Activity;I)Z

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->CurrentPageText:Landroid/widget/TextView;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 101
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 105
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TNavigateBar;->TrackBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 110
    .local v0, progress:I
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->GetIndex()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 113
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->Navigater:Lcom/rookiestudio/perfectviewer/TNavigater;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    goto :goto_0
.end method
