.class public Lorg/connectbot/util/VolumePreference;
.super Landroid/preference/DialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/connectbot/util/VolumePreference;->setupLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/connectbot/util/VolumePreference;->setupLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private setupLayout(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/connectbot/util/VolumePreference;->setPersistent(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onCreateDialogView()Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 54
    new-instance v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lorg/connectbot/util/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, sb:Landroid/widget/SeekBar;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 58
    const/high16 v1, 0x3e80

    .line 57
    invoke-virtual {p0, v1}, Lorg/connectbot/util/VolumePreference;->getPersistedFloat(F)F

    move-result v1

    .line 58
    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 60
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 62
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 66
    int-to-float v0, p2

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/connectbot/util/VolumePreference;->persistFloat(F)Z

    .line 67
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 69
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 71
    return-void
.end method
