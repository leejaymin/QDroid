.class public Lelectrum2/drums/bpmsettings;
.super Landroid/app/Activity;
.source "bpmsettings.java"


# instance fields
.field OldPosition:I

.field OldY:F

.field Position:I

.field bpmInput:Landroid/widget/EditText;

.field private bpmbuttondown:Landroid/view/View$OnClickListener;

.field private bpmbuttonup:Landroid/view/View$OnClickListener;

.field bpmdown:Lelectrum2/drums/AutoRepeatButton;

.field bpmtimer:Ljava/util/Timer;

.field bpmup:Lelectrum2/drums/AutoRepeatButton;

.field private btnOkClick:Landroid/view/View$OnClickListener;

.field private btntestClick:Landroid/view/View$OnClickListener;

.field private cutpadOnClick:Landroid/view/View$OnClickListener;

.field cutpadscheck:Landroid/widget/CheckBox;

.field okbutton:Landroid/widget/Button;

.field private patternlightsOnClick:Landroid/view/View$OnClickListener;

.field pattlen:Landroid/widget/EditText;

.field private playpadOnClick:Landroid/view/View$OnClickListener;

.field playpadcheck:Landroid/widget/CheckBox;

.field private priorityOnClick:Landroid/view/View$OnClickListener;

.field resolution:Landroid/widget/EditText;

.field resolutionspin:Landroid/widget/Spinner;

.field rotator:Landroid/view/animation/RotateAnimation;

.field showpatternlights:Landroid/widget/CheckBox;

.field shuffleknob:Landroid/widget/ImageView;

.field shufflelistener:Landroid/view/View$OnTouchListener;

.field shuffletext:Landroid/widget/TextView;

.field shuffleval:D

.field starttracking:Z

.field useprioritycheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput v0, p0, Lelectrum2/drums/bpmsettings;->Position:I

    .line 49
    iput v0, p0, Lelectrum2/drums/bpmsettings;->OldPosition:I

    .line 51
    iput-boolean v0, p0, Lelectrum2/drums/bpmsettings;->starttracking:Z

    .line 213
    new-instance v0, Lelectrum2/drums/bpmsettings$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$1;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->shufflelistener:Landroid/view/View$OnTouchListener;

    .line 297
    new-instance v0, Lelectrum2/drums/bpmsettings$2;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$2;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->bpmbuttonup:Landroid/view/View$OnClickListener;

    .line 333
    new-instance v0, Lelectrum2/drums/bpmsettings$3;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$3;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->bpmbuttondown:Landroid/view/View$OnClickListener;

    .line 368
    new-instance v0, Lelectrum2/drums/bpmsettings$4;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$4;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->patternlightsOnClick:Landroid/view/View$OnClickListener;

    .line 394
    new-instance v0, Lelectrum2/drums/bpmsettings$5;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$5;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->priorityOnClick:Landroid/view/View$OnClickListener;

    .line 419
    new-instance v0, Lelectrum2/drums/bpmsettings$6;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$6;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->playpadOnClick:Landroid/view/View$OnClickListener;

    .line 444
    new-instance v0, Lelectrum2/drums/bpmsettings$7;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$7;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->cutpadOnClick:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lelectrum2/drums/bpmsettings$8;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$8;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->btntestClick:Landroid/view/View$OnClickListener;

    .line 482
    new-instance v0, Lelectrum2/drums/bpmsettings$9;

    invoke-direct {v0, p0}, Lelectrum2/drums/bpmsettings$9;-><init>(Lelectrum2/drums/bpmsettings;)V

    iput-object v0, p0, Lelectrum2/drums/bpmsettings;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 21
    return-void
.end method

.method private InitDisplayValues()V
    .locals 6

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lelectrum2/drums/bpmsettings;->OldPosition:I

    .line 151
    const-wide v0, -0x3fa9800000000000L

    iget-wide v2, p0, Lelectrum2/drums/bpmsettings;->shuffleval:D

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lelectrum2/drums/bpmsettings;->Position:I

    .line 155
    invoke-direct {p0}, Lelectrum2/drums/bpmsettings;->SetKnobPositions()V

    .line 157
    invoke-direct {p0}, Lelectrum2/drums/bpmsettings;->SetVolumeAndLengthText()V

    .line 160
    return-void
.end method

.method private SetKnobPositions()V
    .locals 8

    .prologue
    .line 166
    invoke-virtual {p0}, Lelectrum2/drums/bpmsettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, temp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 171
    .local v1, volknobsize:I
    move v2, v1

    .line 174
    .local v2, xrot:I
    new-instance v3, Landroid/view/animation/RotateAnimation;

    iget v4, p0, Lelectrum2/drums/bpmsettings;->OldPosition:I

    int-to-float v4, v4

    iget v5, p0, Lelectrum2/drums/bpmsettings;->Position:I

    int-to-float v5, v5

    int-to-float v6, v2

    int-to-float v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    iput-object v3, p0, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    .line 175
    iget-object v3, p0, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 176
    iget-object v3, p0, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 177
    iget-object v3, p0, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 179
    iget-object v3, p0, Lelectrum2/drums/bpmsettings;->shuffleknob:Landroid/widget/ImageView;

    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->rotator:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    iget v3, p0, Lelectrum2/drums/bpmsettings;->Position:I

    iput v3, p0, Lelectrum2/drums/bpmsettings;->OldPosition:I

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 184
    const/4 v0, 0x0

    .line 187
    return-void
.end method

.method private SetVolumeAndLengthText()V
    .locals 6

    .prologue
    .line 195
    iget v2, p0, Lelectrum2/drums/bpmsettings;->Position:I

    int-to-float v2, v2

    const/high16 v3, 0x42b4

    add-float/2addr v2, v3

    const/high16 v3, 0x4334

    div-float/2addr v2, v3

    float-to-double v2, v2

    iput-wide v2, p0, Lelectrum2/drums/bpmsettings;->shuffleval:D

    .line 197
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, twoPlaces:Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/Double;

    iget-wide v2, p0, Lelectrum2/drums/bpmsettings;->shuffleval:D

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    .line 202
    .local v1, volper:Ljava/lang/Double;
    iget-object v2, p0, Lelectrum2/drums/bpmsettings;->shuffletext:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Shuffle: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method static synthetic access$0(Lelectrum2/drums/bpmsettings;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Lelectrum2/drums/bpmsettings;->SetVolumeAndLengthText()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lelectrum2/drums/bpmsettings;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 70
    invoke-virtual {p0}, Lelectrum2/drums/bpmsettings;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, ""

    .line 72
    .local v3, value:Ljava/lang/String;
    const-string v2, ""

    .line 73
    .local v2, resolutionvalue:Ljava/lang/String;
    const-string v1, ""

    .line 76
    .local v1, pattlenvalue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 78
    const-string v4, "bpm"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v4, "resolution"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v4, "pattlen"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :cond_0
    const/high16 v4, 0x7f07

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->bpmInput:Landroid/widget/EditText;

    .line 85
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->resolution:Landroid/widget/EditText;

    .line 86
    const v4, 0x7f070002

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->pattlen:Landroid/widget/EditText;

    .line 88
    const v4, 0x7f070004

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lelectrum2/drums/AutoRepeatButton;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->bpmup:Lelectrum2/drums/AutoRepeatButton;

    .line 89
    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lelectrum2/drums/AutoRepeatButton;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->bpmdown:Lelectrum2/drums/AutoRepeatButton;

    .line 91
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->shuffleknob:Landroid/widget/ImageView;

    .line 92
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->shuffleknob:Landroid/widget/ImageView;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->shufflelistener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->shuffletext:Landroid/widget/TextView;

    .line 98
    const v4, 0x7f07000e

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->showpatternlights:Landroid/widget/CheckBox;

    .line 99
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->showpatternlights:Landroid/widget/CheckBox;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->patternlightsOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->showpatternlights:Landroid/widget/CheckBox;

    sget-boolean v5, Lelectrum2/drums/globalSounds;->showslotlights:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    const v4, 0x7f07000f

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->playpadcheck:Landroid/widget/CheckBox;

    .line 103
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->playpadcheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->playpadOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->playpadcheck:Landroid/widget/CheckBox;

    sget-boolean v5, Lelectrum2/drums/globalSounds;->playpadwhenhit:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    const v4, 0x7f070009

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->cutpadscheck:Landroid/widget/CheckBox;

    .line 107
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->cutpadscheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->cutpadOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->cutpadscheck:Landroid/widget/CheckBox;

    sget-boolean v5, Lelectrum2/drums/globalSounds;->cutpadswhenhit:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    const v4, 0x7f070006

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->useprioritycheck:Landroid/widget/CheckBox;

    .line 112
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->useprioritycheck:Landroid/widget/CheckBox;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->priorityOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->useprioritycheck:Landroid/widget/CheckBox;

    sget-boolean v5, Lelectrum2/drums/globalSounds;->usepriority:Z

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->bpmInput:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->resolution:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->pattlen:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    sget v4, Lelectrum2/drums/globalSounds;->shuffleamount:F

    float-to-double v4, v4

    iput-wide v4, p0, Lelectrum2/drums/bpmsettings;->shuffleval:D

    .line 126
    const v4, 0x7f070011

    invoke-virtual {p0, v4}, Lelectrum2/drums/bpmsettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lelectrum2/drums/bpmsettings;->okbutton:Landroid/widget/Button;

    .line 130
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->okbutton:Landroid/widget/Button;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->bpmup:Lelectrum2/drums/AutoRepeatButton;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->bpmbuttonup:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lelectrum2/drums/AutoRepeatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v4, p0, Lelectrum2/drums/bpmsettings;->bpmdown:Lelectrum2/drums/AutoRepeatButton;

    iget-object v5, p0, Lelectrum2/drums/bpmsettings;->bpmbuttondown:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lelectrum2/drums/AutoRepeatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-direct {p0}, Lelectrum2/drums/bpmsettings;->InitDisplayValues()V

    .line 139
    return-void
.end method
