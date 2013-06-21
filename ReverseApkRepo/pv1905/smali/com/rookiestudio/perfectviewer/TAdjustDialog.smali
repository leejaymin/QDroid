.class public Lcom/rookiestudio/perfectviewer/TAdjustDialog;
.super Landroid/app/Dialog;
.source "TAdjustDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private BrightnessSeekBar:Landroid/widget/SeekBar;

.field private BrightnessValue:Landroid/widget/TextView;

.field private CancelButton:Landroid/widget/Button;

.field private ContrastSeekBar:Landroid/widget/SeekBar;

.field private ContrastValue:Landroid/widget/TextView;

.field private DefaultButton:Landroid/widget/Button;

.field private EnableCheckBox:Landroid/widget/CheckBox;

.field private GammaSeekBar:Landroid/widget/SeekBar;

.field private GammaValue:Landroid/widget/TextView;

.field private OKButton:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v1, 0x64

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->EnableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableColorAdjust:Z

    .line 81
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    int-to-double v0, v0

    sput-wide v0, Lcom/rookiestudio/perfectviewer/Config;->ColorBrightness:D

    .line 82
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    int-to-double v0, v0

    sput-wide v0, Lcom/rookiestudio/perfectviewer/Config;->ColorContrast:D

    .line 83
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    sput-wide v0, Lcom/rookiestudio/perfectviewer/Config;->ColorGamma:D

    .line 84
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    const-string v1, "perfect_viewer_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Landroid/content/SharedPreferences;)V

    .line 85
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->dismiss()V

    .line 86
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainImageCache:Lcom/rookiestudio/perfectviewer/TImageCache;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TImageCache;->UpdateAllImage()V

    .line 87
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 88
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 93
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->dismiss()V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0012
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x3

    const-wide/high16 v3, 0x4059

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->requestWindowFeature(I)Z

    .line 40
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->setContentView(I)V

    .line 41
    const v0, 0x7f0a00fd

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->setTitle(I)V

    .line 42
    const v0, 0x7f020010

    invoke-virtual {p0, v1, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->setFeatureDrawableResource(II)V

    .line 49
    const v0, 0x7f0c0009

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->EnableCheckBox:Landroid/widget/CheckBox;

    .line 50
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->EnableCheckBox:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/rookiestudio/perfectviewer/Config;->EnableColorAdjust:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 51
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessValue:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastValue:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaValue:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessSeekBar:Landroid/widget/SeekBar;

    .line 55
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 56
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastSeekBar:Landroid/widget/SeekBar;

    .line 57
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaSeekBar:Landroid/widget/SeekBar;

    .line 59
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 60
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessSeekBar:Landroid/widget/SeekBar;

    sget-wide v1, Lcom/rookiestudio/perfectviewer/Config;->ColorBrightness:D

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 61
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastSeekBar:Landroid/widget/SeekBar;

    sget-wide v1, Lcom/rookiestudio/perfectviewer/Config;->ColorContrast:D

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 62
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaSeekBar:Landroid/widget/SeekBar;

    sget-wide v1, Lcom/rookiestudio/perfectviewer/Config;->ColorGamma:D

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 64
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessValue:Landroid/widget/TextView;

    sget-wide v1, Lcom/rookiestudio/perfectviewer/Config;->ColorBrightness:D

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastValue:Landroid/widget/TextView;

    sget-wide v1, Lcom/rookiestudio/perfectviewer/Config;->ColorContrast:D

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaValue:Landroid/widget/TextView;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-wide v4, Lcom/rookiestudio/perfectviewer/Config;->ColorGamma:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->OKButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->OKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->CancelButton:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->CancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->DefaultButton:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->DefaultButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->BrightnessValue:Landroid/widget/TextView;

    add-int/lit8 v1, p2, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->ContrastValue:Landroid/widget/TextView;

    add-int/lit8 v1, p2, -0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAdjustDialog;->GammaValue:Landroid/widget/TextView;

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-double v4, p2

    const-wide/high16 v6, 0x4059

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x7f0c000c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 120
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 126
    return-void
.end method
