.class public Lorg/tf/SettingsActivity;
.super Lorg/tf/ui/ActivityBase;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final MAX_VOLUME:I = 0xa

.field private static final PAGE_ADVANCED:I = 0x1

.field private static final VOLUME_CONTROL_IDS:[[I = null

.field private static final VOLUME_STEP:F = 0.5f


# instance fields
.field private m_advancedPageInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sput-object v0, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    .line 267
    sget-object v0, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    .line 270
    sget-object v0, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    .line 273
    sget-object v0, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 276
    sget-object v0, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    .line 32
    return-void

    .line 267
    :array_0
    .array-data 0x4
        0x3dt 0x0t 0xct 0x7ft
        0x3ct 0x0t 0xct 0x7ft
        0xct 0x0t 0x6t 0x7ft
    .end array-data

    .line 270
    :array_1
    .array-data 0x4
        0x40t 0x0t 0xct 0x7ft
        0x3ft 0x0t 0xct 0x7ft
        0xdt 0x0t 0x6t 0x7ft
    .end array-data

    .line 273
    :array_2
    .array-data 0x4
        0x43t 0x0t 0xct 0x7ft
        0x42t 0x0t 0xct 0x7ft
        0xet 0x0t 0x6t 0x7ft
    .end array-data

    .line 276
    :array_3
    .array-data 0x4
        0x46t 0x0t 0xct 0x7ft
        0x45t 0x0t 0xct 0x7ft
        0xft 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/tf/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/tf/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->resetValues()V

    return-void
.end method

.method private static formatVolume(F)Ljava/lang/String;
    .locals 1
    .parameter "volume"

    .prologue
    .line 208
    const/high16 v0, 0x4120

    mul-float/2addr p0, v0

    .line 209
    const-string v0, ""

    return-object v0
.end method

.method private getBooleanValue(I)Z
    .locals 2
    .parameter "viewID"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 251
    .local v0, view:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    return v1
.end method

.method private getPositiveFloatValue(IF)F
    .locals 4
    .parameter "viewID"
    .parameter "defaultValue"

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    .local v2, view:Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 222
    .local v1, value:F
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    move v3, p2

    .line 225
    .end local v1           #value:F
    :goto_0
    return v3

    .restart local v1       #value:F
    :cond_0
    move v3, v1

    .line 222
    goto :goto_0

    .line 224
    .end local v1           #value:F
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, p2

    .line 225
    goto :goto_0
.end method

.method private getPositiveIntegerValue(II)I
    .locals 4
    .parameter "viewID"
    .parameter "defaultValue"

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    .local v2, view:Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 237
    .local v1, value:I
    if-gez v1, :cond_0

    move v3, p2

    .line 240
    .end local v1           #value:I
    :goto_0
    return v3

    .restart local v1       #value:I
    :cond_0
    move v3, v1

    .line 237
    goto :goto_0

    .line 239
    .end local v1           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NumberFormatException;
    move v3, p2

    .line 240
    goto :goto_0
.end method

.method private getVolumeControl(I)Landroid/widget/SeekBar;
    .locals 2
    .parameter "volumeIndex"

    .prologue
    .line 185
    sget-object v0, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/SeekBar;

    return-object p0
.end method

.method private loadAdvancedValues()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/tf/SettingsActivity;->m_advancedPageInitialized:Z

    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    const v0, 0x7f0c004a

    invoke-static {}, Lorg/tf/Config;->getEarlyPickMargin()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putFloatValue(IF)V

    .line 95
    const v0, 0x7f0c004b

    invoke-static {}, Lorg/tf/Config;->getLatePickMargin()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putFloatValue(IF)V

    .line 96
    const v0, 0x7f0c004c

    invoke-static {}, Lorg/tf/Config;->getRepickMargin()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putFloatValue(IF)V

    .line 97
    const v0, 0x7f0c004d

    invoke-static {}, Lorg/tf/Config;->getMinNotesDistance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putIntegerValue(II)V

    .line 99
    const v0, 0x7f0c004e

    invoke-static {}, Lorg/tf/Config;->getTargetFPS()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putIntegerValue(II)V

    .line 100
    const v0, 0x7f0c004f

    invoke-static {}, Lorg/tf/Config;->getTouchHandlerSleep()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putIntegerValue(II)V

    .line 101
    const v0, 0x7f0c0050

    invoke-static {}, Lorg/tf/Config;->showDebugInfo()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putBooleanValue(IZ)V

    goto :goto_0
.end method

.method private loadBasicValues()V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->loadVolumeValues()V

    .line 143
    const v0, 0x7f0c0047

    invoke-static {}, Lorg/tf/Config;->getNotesDelay()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putIntegerValue(II)V

    .line 144
    const v0, 0x7f0c0048

    invoke-static {}, Lorg/tf/Config;->getSongCacheLength()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->putIntegerValue(II)V

    .line 145
    return-void
.end method

.method private loadValues()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->loadBasicValues()V

    .line 75
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->loadAdvancedValues()V

    .line 76
    return-void
.end method

.method private loadVolumeValues()V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 163
    return-void

    .line 159
    :cond_0
    invoke-static {v0}, Lorg/tf/Config;->getAbsoluteVolume(I)F

    move-result v1

    .line 160
    .local v1, volume:F
    invoke-direct {p0, v0}, Lorg/tf/SettingsActivity;->getVolumeControl(I)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-static {v1}, Lorg/tf/SettingsActivity;->volumeToProgress(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->updateVolumeLabel(IF)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static progressToVolume(I)F
    .locals 2
    .parameter "progress"

    .prologue
    .line 201
    int-to-float v0, p0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    const/high16 v1, 0x4120

    div-float/2addr v0, v1

    return v0
.end method

.method private putBooleanValue(IZ)V
    .locals 1
    .parameter "viewID"
    .parameter "value"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 246
    .local v0, view:Landroid/widget/CheckBox;
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 247
    return-void
.end method

.method private putFloatValue(IF)V
    .locals 2
    .parameter "viewID"
    .parameter "value"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    .local v0, view:Landroid/widget/TextView;
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method private putIntegerValue(II)V
    .locals 2
    .parameter "viewID"
    .parameter "value"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    .local v0, view:Landroid/widget/TextView;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method private resetValues()V
    .locals 0

    .prologue
    .line 84
    invoke-static {}, Lorg/tf/Config;->reset()V

    .line 85
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->loadValues()V

    .line 86
    return-void
.end method

.method private setupVolumeControl(I)V
    .locals 2
    .parameter "volumeIndex"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lorg/tf/SettingsActivity;->getVolumeControl(I)Landroid/widget/SeekBar;

    move-result-object v0

    .line 174
    .local v0, control:Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 175
    const/high16 v1, 0x41a0

    invoke-static {v1}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 176
    return-void
.end method

.method private storeAdvancedValues()V
    .locals 2

    .prologue
    const/high16 v1, 0x3e80

    .line 105
    iget-boolean v0, p0, Lorg/tf/SettingsActivity;->m_advancedPageInitialized:Z

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 109
    :cond_0
    const v0, 0x7f0c004a

    .line 108
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveFloatValue(IF)F

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setEarlyPickMargin(F)V

    .line 111
    const v0, 0x7f0c004b

    .line 110
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveFloatValue(IF)F

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setLatePickMargin(F)V

    .line 113
    const v0, 0x7f0c004c

    .line 112
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveFloatValue(IF)F

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setRepickMargin(F)V

    .line 115
    const v0, 0x7f0c004d

    const/16 v1, 0x64

    .line 114
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveIntegerValue(II)I

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setMinNotesDistance(I)V

    .line 118
    const v0, 0x7f0c004e

    const/16 v1, 0x1e

    .line 117
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveIntegerValue(II)I

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setTargetFPS(I)V

    .line 120
    const v0, 0x7f0c004f

    const/16 v1, 0x14

    .line 119
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveIntegerValue(II)I

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setTouchHandlerSleep(I)V

    .line 122
    const v0, 0x7f0c0050

    invoke-direct {p0, v0}, Lorg/tf/SettingsActivity;->getBooleanValue(I)Z

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->showDebugInfo(Z)V

    goto :goto_0
.end method

.method private storeBasicValues()V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->storeVolumeValues()V

    .line 150
    const v0, 0x7f0c0047

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveIntegerValue(II)I

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setNotesDelay(I)V

    .line 152
    const v0, 0x7f0c0048

    const/4 v1, 0x5

    .line 151
    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->getPositiveIntegerValue(II)I

    move-result v0

    invoke-static {v0}, Lorg/tf/Config;->setSongCacheLength(I)V

    .line 153
    return-void
.end method

.method private storeValues()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->storeBasicValues()V

    .line 80
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->storeAdvancedValues()V

    .line 81
    return-void
.end method

.method private storeVolumeValues()V
    .locals 3

    .prologue
    .line 166
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 170
    return-void

    .line 167
    :cond_0
    invoke-direct {p0, v1}, Lorg/tf/SettingsActivity;->getVolumeControl(I)Landroid/widget/SeekBar;

    move-result-object v0

    .line 168
    .local v0, control:Landroid/widget/SeekBar;
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v2}, Lorg/tf/SettingsActivity;->progressToVolume(I)F

    move-result v2

    invoke-static {v1, v2}, Lorg/tf/Config;->setAbsoluteVolume(IF)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateVolumeLabel(IF)V
    .locals 5
    .parameter "volumeIndex"
    .parameter "volume"

    .prologue
    const/4 v4, 0x1

    .line 179
    sget-object v2, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    aget-object v2, v2, p1

    aget v1, v2, v4

    .line 180
    .local v1, labelID:I
    sget-object v2, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    aget-object v2, v2, p1

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 181
    .local v0, formatID:I
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Lorg/tf/SettingsActivity;->formatVolume(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lorg/tf/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/tf/ui/UIHelpers;->setText(Landroid/app/Activity;ILjava/lang/String;)V

    .line 182
    return-void
.end method

.method private static volumeToProgress(F)I
    .locals 2
    .parameter "volume"

    .prologue
    .line 204
    const/high16 v0, 0x4120

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    div-float/2addr v0, v1

    invoke-static {v0}, Lorg/tf/util/MathHelpers;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected doPageAction(II)V
    .locals 3
    .parameter "page"
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    .line 126
    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    .line 127
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lorg/tf/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    new-instance v1, Lorg/tf/SettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/tf/SettingsActivity$1;-><init>(Lorg/tf/SettingsActivity;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-boolean v2, p0, Lorg/tf/SettingsActivity;->m_advancedPageInitialized:Z

    .line 135
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->loadAdvancedValues()V

    .line 137
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lorg/tf/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 37
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lorg/tf/SettingsActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0, p1}, Lorg/tf/SettingsActivity;->usePageFlipper(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 43
    return-void

    .line 41
    :cond_0
    invoke-direct {p0, v0}, Lorg/tf/SettingsActivity;->setupVolumeControl(I)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onPause()V

    .line 55
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->storeValues()V

    .line 56
    invoke-static {p0}, Lorg/tf/Config;->store(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-virtual {p0, v0, v0}, Lorg/tf/SettingsActivity;->flipToPage(IZ)V

    .line 70
    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 194
    return-void

    .line 190
    :cond_0
    sget-object v1, Lorg/tf/SettingsActivity;->VOLUME_CONTROL_IDS:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 191
    invoke-static {p2}, Lorg/tf/SettingsActivity;->progressToVolume(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/tf/SettingsActivity;->updateVolumeLabel(IF)V

    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onResume()V

    .line 47
    invoke-direct {p0}, Lorg/tf/SettingsActivity;->loadValues()V

    .line 48
    invoke-virtual {p0}, Lorg/tf/SettingsActivity;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const v0, 0x7f0c0019

    invoke-static {p0, v0}, Lorg/tf/ui/UIHelpers;->animateHeadAndBody(Landroid/app/Activity;I)V

    .line 51
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 196
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 198
    return-void
.end method
