.class public Lelectrum2/drums/distortionsettings;
.super Landroid/app/Activity;
.source "distortionsettings.java"


# instance fields
.field bar1:Landroid/widget/SeekBar;

.field bartouch:Landroid/view/View$OnTouchListener;

.field distortiongain:Landroid/widget/SeekBar;

.field distortiongaintouch:Landroid/view/View$OnTouchListener;

.field distortionon:Landroid/widget/CheckBox;

.field distortiononlistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field gain:F

.field threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Lelectrum2/drums/distortionsettings$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/distortionsettings$1;-><init>(Lelectrum2/drums/distortionsettings;)V

    iput-object v0, p0, Lelectrum2/drums/distortionsettings;->distortiononlistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 186
    new-instance v0, Lelectrum2/drums/distortionsettings$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/distortionsettings$2;-><init>(Lelectrum2/drums/distortionsettings;)V

    iput-object v0, p0, Lelectrum2/drums/distortionsettings;->distortiongaintouch:Landroid/view/View$OnTouchListener;

    .line 211
    new-instance v0, Lelectrum2/drums/distortionsettings$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/distortionsettings$3;-><init>(Lelectrum2/drums/distortionsettings;)V

    iput-object v0, p0, Lelectrum2/drums/distortionsettings;->bartouch:Landroid/view/View$OnTouchListener;

    .line 24
    return-void
.end method

.method private ClearFx()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 109
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6}, Lelectrum2/drums/soundObj;->ClearDistortion()V

    .line 112
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v6, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 114
    .local v2, oldsamplefulllen:I
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->pitch:I

    invoke-virtual {v6, v7}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    .line 116
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v0, v6, v8

    .line 117
    .local v0, endpointdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v3, v6, v8

    .line 121
    .local v3, startposdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 122
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 124
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v6, v7, :cond_0

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 125
    :cond_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v6, :cond_1

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v10, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 129
    :cond_1
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6, v10}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 131
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v6, v6, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 135
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 140
    .end local v5           #temptoast:Landroid/widget/Toast;
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 141
    return-void
.end method

.method private DoFx()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 147
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v6, v6, Lelectrum2/drums/soundObj;->hasDistortion:Z

    if-eqz v6, :cond_3

    .line 150
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, p0, Lelectrum2/drums/distortionsettings;->threshold:F

    iget v8, p0, Lelectrum2/drums/distortionsettings;->gain:F

    invoke-virtual {v6, v7, v8}, Lelectrum2/drums/soundObj;->SetDistortionParams(FF)V

    .line 153
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v6, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 155
    .local v2, oldsamplefulllen:I
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->pitch:I

    invoke-virtual {v6, v7}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    .line 157
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v0, v6, v8

    .line 158
    .local v0, endpointdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v3, v6, v8

    .line 162
    .local v3, startposdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 163
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 165
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v6, v7, :cond_0

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 166
    :cond_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v6, :cond_1

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v10, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 170
    :cond_1
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6, v10}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 172
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v6, v6, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 176
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 180
    .end local v5           #temptoast:Landroid/widget/Toast;
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 184
    .end local v0           #endpointdiff:D
    .end local v2           #oldsamplefulllen:I
    .end local v3           #startposdiff:D
    :cond_3
    return-void
.end method

.method static synthetic access$0(Lelectrum2/drums/distortionsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lelectrum2/drums/distortionsettings;->ClearFx()V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/distortionsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Lelectrum2/drums/distortionsettings;->DoFx()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lelectrum2/drums/distortionsettings;->setContentView(I)V

    .line 43
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdistortionthreshold:F

    iput v0, p0, Lelectrum2/drums/distortionsettings;->threshold:F

    .line 44
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdistortiongain:F

    iput v0, p0, Lelectrum2/drums/distortionsettings;->gain:F

    .line 47
    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lelectrum2/drums/distortionsettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lelectrum2/drums/distortionsettings;->bar1:Landroid/widget/SeekBar;

    .line 48
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->bar1:Landroid/widget/SeekBar;

    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 49
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->bar1:Landroid/widget/SeekBar;

    iget-object v1, p0, Lelectrum2/drums/distortionsettings;->bartouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 51
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lelectrum2/drums/distortionsettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lelectrum2/drums/distortionsettings;->distortiongain:Landroid/widget/SeekBar;

    .line 52
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->distortiongain:Landroid/widget/SeekBar;

    iget-object v1, p0, Lelectrum2/drums/distortionsettings;->distortiongaintouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 53
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->distortiongain:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 57
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->bar1:Landroid/widget/SeekBar;

    iget v1, p0, Lelectrum2/drums/distortionsettings;->threshold:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 58
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->distortiongain:Landroid/widget/SeekBar;

    iget v1, p0, Lelectrum2/drums/distortionsettings;->gain:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lelectrum2/drums/distortionsettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lelectrum2/drums/distortionsettings;->distortionon:Landroid/widget/CheckBox;

    .line 61
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->distortionon:Landroid/widget/CheckBox;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v1, v1, Lelectrum2/drums/soundObj;->hasDistortion:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lelectrum2/drums/distortionsettings;->distortionon:Landroid/widget/CheckBox;

    iget-object v1, p0, Lelectrum2/drums/distortionsettings;->distortiononlistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    return-void
.end method
