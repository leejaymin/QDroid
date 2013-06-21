.class public Lelectrum2/drums/delaysettings;
.super Landroid/app/Activity;
.source "delaysettings.java"


# instance fields
.field bar1:Landroid/widget/SeekBar;

.field bartouch:Landroid/view/View$OnTouchListener;

.field delayon:Landroid/widget/CheckBox;

.field delayonlistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field delayseek:Landroid/widget/SeekBar;

.field delaytime:I

.field delaytimetouch:Landroid/view/View$OnTouchListener;

.field delaywrapcheck:Landroid/widget/CheckBox;

.field delaywraplistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field feedback:F

.field wrapornot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Lelectrum2/drums/delaysettings$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/delaysettings$1;-><init>(Lelectrum2/drums/delaysettings;)V

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->delaywraplistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 105
    new-instance v0, Lelectrum2/drums/delaysettings$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/delaysettings$2;-><init>(Lelectrum2/drums/delaysettings;)V

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->delayonlistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 218
    new-instance v0, Lelectrum2/drums/delaysettings$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/delaysettings$3;-><init>(Lelectrum2/drums/delaysettings;)V

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->delaytimetouch:Landroid/view/View$OnTouchListener;

    .line 241
    new-instance v0, Lelectrum2/drums/delaysettings$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/delaysettings$4;-><init>(Lelectrum2/drums/delaysettings;)V

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->bartouch:Landroid/view/View$OnTouchListener;

    .line 24
    return-void
.end method

.method private ClearFx()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 140
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6}, Lelectrum2/drums/soundObj;->ClearDelay()V

    .line 143
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v6, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 145
    .local v2, oldsamplefulllen:I
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->pitch:I

    invoke-virtual {v6, v7}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    .line 147
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v0, v6, v8

    .line 148
    .local v0, endpointdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v3, v6, v8

    .line 152
    .local v3, startposdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 153
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 155
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v6, v7, :cond_0

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 156
    :cond_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v6, :cond_1

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v10, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 160
    :cond_1
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6, v10}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 162
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v6, v6, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 166
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 171
    .end local v5           #temptoast:Landroid/widget/Toast;
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 172
    return-void
.end method

.method private DoFx()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 178
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v6, v6, Lelectrum2/drums/soundObj;->hasDelay:Z

    if-eqz v6, :cond_3

    .line 181
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, p0, Lelectrum2/drums/delaysettings;->delaytime:I

    iget-boolean v8, p0, Lelectrum2/drums/delaysettings;->wrapornot:Z

    iget v9, p0, Lelectrum2/drums/delaysettings;->feedback:F

    invoke-virtual {v6, v7, v8, v9}, Lelectrum2/drums/soundObj;->SetDelayParams(IZF)V

    .line 184
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v2, v6, Lelectrum2/drums/soundObj;->samplefulllen:I

    .line 186
    .local v2, oldsamplefulllen:I
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->pitch:I

    invoke-virtual {v6, v7}, Lelectrum2/drums/soundObj;->SetPitch(I)Z

    .line 188
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v0, v6, v8

    .line 189
    .local v0, endpointdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    int-to-double v6, v6

    int-to-double v8, v2

    div-double v3, v6, v8

    .line 193
    .local v3, startposdiff:D
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v0

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 194
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    int-to-double v7, v7

    mul-double/2addr v7, v3

    double-to-int v7, v7

    iput v7, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 196
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->samplelen:I

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    if-le v6, v7, :cond_0

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    sget-object v7, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v7, v7, Lelectrum2/drums/soundObj;->samplefulllen:I

    iput v7, v6, Lelectrum2/drums/soundObj;->samplelen:I

    .line 197
    :cond_0
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v6, v6, Lelectrum2/drums/soundObj;->startpos:I

    if-gez v6, :cond_1

    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iput v10, v6, Lelectrum2/drums/soundObj;->startpos:I

    .line 202
    :cond_1
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    invoke-virtual {v6, v10}, Lelectrum2/drums/soundObj;->ApplyEffects(Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 204
    sget-object v6, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-object v6, v6, Lelectrum2/drums/soundObj;->errmessage:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 208
    .local v5, temptoast:Landroid/widget/Toast;
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 212
    .end local v5           #temptoast:Landroid/widget/Toast;
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 216
    .end local v0           #endpointdiff:D
    .end local v2           #oldsamplefulllen:I
    .end local v3           #startposdiff:D
    :cond_3
    return-void
.end method

.method static synthetic access$0(Lelectrum2/drums/delaysettings;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    invoke-direct {p0}, Lelectrum2/drums/delaysettings;->DoFx()V

    return-void
.end method

.method static synthetic access$1(Lelectrum2/drums/delaysettings;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lelectrum2/drums/delaysettings;->ClearFx()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lelectrum2/drums/delaysettings;->setContentView(I)V

    .line 44
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdelaytime:I

    iput v0, p0, Lelectrum2/drums/delaysettings;->delaytime:I

    .line 45
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget v0, v0, Lelectrum2/drums/soundObj;->fxdelayfeedback:F

    iput v0, p0, Lelectrum2/drums/delaysettings;->feedback:F

    .line 46
    sget-object v0, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v0, v0, Lelectrum2/drums/soundObj;->fxdelaywrap:Z

    iput-boolean v0, p0, Lelectrum2/drums/delaysettings;->wrapornot:Z

    .line 48
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lelectrum2/drums/delaysettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->bar1:Landroid/widget/SeekBar;

    .line 49
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->bar1:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 50
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->bar1:Landroid/widget/SeekBar;

    iget-object v1, p0, Lelectrum2/drums/delaysettings;->bartouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lelectrum2/drums/delaysettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->delayseek:Landroid/widget/SeekBar;

    .line 53
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->delayseek:Landroid/widget/SeekBar;

    iget-object v1, p0, Lelectrum2/drums/delaysettings;->delaytimetouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->delayseek:Landroid/widget/SeekBar;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 56
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->bar1:Landroid/widget/SeekBar;

    iget v1, p0, Lelectrum2/drums/delaysettings;->feedback:F

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 57
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->delayseek:Landroid/widget/SeekBar;

    iget v1, p0, Lelectrum2/drums/delaysettings;->delaytime:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lelectrum2/drums/delaysettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->delayon:Landroid/widget/CheckBox;

    .line 60
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->delayon:Landroid/widget/CheckBox;

    sget-object v1, Lelectrum2/drums/globalSounds;->selectedSound:Lelectrum2/drums/soundObj;

    iget-boolean v1, v1, Lelectrum2/drums/soundObj;->hasDelay:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->delayon:Landroid/widget/CheckBox;

    iget-object v1, p0, Lelectrum2/drums/delaysettings;->delayonlistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lelectrum2/drums/delaysettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lelectrum2/drums/delaysettings;->delaywrapcheck:Landroid/widget/CheckBox;

    .line 66
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->delaywrapcheck:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lelectrum2/drums/delaysettings;->wrapornot:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lelectrum2/drums/delaysettings;->delaywrapcheck:Landroid/widget/CheckBox;

    iget-object v1, p0, Lelectrum2/drums/delaysettings;->delaywraplistener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    return-void
.end method
