.class public Lcom/ui/LapseIt/project/RenderView;
.super Landroid/app/Activity;
.source "RenderView.java"


# instance fields
.field editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

.field private effect:Ljava/lang/String;

.field private encoder:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field private filenameInput:Landroid/widget/EditText;

.field private fps:I

.field private inputWatcher:Landroid/text/TextWatcher;

.field private mId:J

.field private quality:I

.field renderButton:Landroid/widget/ImageView;

.field private renderClickHandler:Landroid/view/View$OnClickListener;

.field private renderEffect:Landroid/widget/TextView;

.field renderFormat:Landroid/widget/TextView;

.field private renderFps:Landroid/widget/TextView;

.field private renderQuality:Landroid/widget/TextView;

.field private renderRange:Landroid/widget/TextView;

.field private renderResolution:Landroid/widget/TextView;

.field private renderTime:Landroid/widget/TextView;

.field private renderer:Lcom/ui/LapseIt/project/Renderer;

.field private resolution:Ljava/lang/String;

.field private seekBar:Landroid/widget/SeekBar;

.field private settingsButton:Landroid/widget/ImageView;

.field private settingsClickHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 228
    new-instance v0, Lcom/ui/LapseIt/project/RenderView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/RenderView$1;-><init>(Lcom/ui/LapseIt/project/RenderView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->renderClickHandler:Landroid/view/View$OnClickListener;

    .line 305
    new-instance v0, Lcom/ui/LapseIt/project/RenderView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/RenderView$2;-><init>(Lcom/ui/LapseIt/project/RenderView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->settingsClickHandler:Landroid/view/View$OnClickListener;

    .line 313
    new-instance v0, Lcom/ui/LapseIt/project/RenderView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/RenderView$3;-><init>(Lcom/ui/LapseIt/project/RenderView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    .line 409
    new-instance v0, Lcom/ui/LapseIt/project/RenderView$4;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/RenderView$4;-><init>(Lcom/ui/LapseIt/project/RenderView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->inputWatcher:Landroid/text/TextWatcher;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/project/RenderView;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->renderTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ui/LapseIt/project/RenderView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/ui/LapseIt/project/RenderView;->fps:I

    return-void
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/project/RenderView;)J
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/ui/LapseIt/project/RenderView;->mId:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/project/RenderView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->encoder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/project/RenderView;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/ui/LapseIt/project/RenderView;->quality:I

    return v0
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/project/RenderView;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/ui/LapseIt/project/RenderView;->fps:I

    return v0
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/project/RenderView;Lcom/ui/LapseIt/project/Renderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ui/LapseIt/project/RenderView;->renderer:Lcom/ui/LapseIt/project/Renderer;

    return-void
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/project/RenderView;)Lcom/ui/LapseIt/project/Renderer;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->renderer:Lcom/ui/LapseIt/project/Renderer;

    return-object v0
.end method

.method static synthetic access$8(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ui/LapseIt/project/RenderView;->renderFps:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ui/LapseIt/project/RenderView;DII)D
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ui/LapseIt/project/RenderView;->round(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method private round(DII)D
    .locals 4
    .parameter "unrounded"
    .parameter "precision"
    .parameter "roundingMode"

    .prologue
    .line 458
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 459
    .local v0, bd:Ljava/math/BigDecimal;
    invoke-virtual {v0, p3, p4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 460
    .local v1, rounded:Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v2, 0x7f03001e

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/RenderView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->extras:Landroid/os/Bundle;

    .line 94
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->extras:Landroid/os/Bundle;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ui/LapseIt/project/RenderView;->mId:J

    .line 96
    const v2, 0x7f0b006b

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderButton:Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView;->renderClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v2, 0x7f0b0061

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->settingsButton:Landroid/widget/ImageView;

    .line 113
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->settingsButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView;->settingsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v2, 0x7f0b006a

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;

    .line 116
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 117
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView;->inputWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderFormat:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f0b0067

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderFps:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0b0063

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderResolution:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f0b0064

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderQuality:Landroid/widget/TextView;

    .line 123
    const v2, 0x7f0b0065

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderEffect:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f0b0066

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderRange:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0b0068

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->renderTime:Landroid/widget/TextView;

    .line 127
    const/16 v0, 0x1e

    .line 129
    .local v0, currentFPS:I
    :try_start_0
    const-string v2, "renderfps"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    const v2, 0x7f0b0069

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/RenderView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->seekBar:Landroid/widget/SeekBar;

    .line 135
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->seekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xef

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 136
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->seekBar:Landroid/widget/SeekBar;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 137
    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView;->seekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/ui/LapseIt/project/RenderView$5;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/project/RenderView$5;-><init>(Lcom/ui/LapseIt/project/RenderView;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 219
    return-void

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 28

    .prologue
    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getParent()Landroid/app/Activity;

    move-result-object v23

    check-cast v23, Lcom/ui/LapseIt/project/ProjectView;

    sget-object v24, Lcom/ui/LapseIt/project/ProjectView$TABS;->RENDER:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual/range {v23 .. v24}, Lcom/ui/LapseIt/project/ProjectView;->setCurrentTab(Lcom/ui/LapseIt/project/ProjectView$TABS;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/EditText;->clearFocus()V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderFormat:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->requestFocus()Z

    .line 338
    const-string v23, "renderencoder"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/RenderView;->encoder:Ljava/lang/String;

    .line 339
    const-string v23, "renderquality"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ui/LapseIt/project/RenderView;->quality:I

    .line 340
    const-string v23, "renderfps"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ui/LapseIt/project/RenderView;->fps:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->extras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string v24, "resolution"

    invoke-virtual/range {v23 .. v24}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/RenderView;->resolution:Ljava/lang/String;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->resolution:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "fullsensor"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 344
    const-string v23, "720P"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/RenderView;->resolution:Ljava/lang/String;

    .line 346
    :cond_0
    sget-object v23, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    invoke-virtual/range {v23 .. v23}, Lui/utils/ImageUtils$EFFECTS;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/RenderView;->effect:Ljava/lang/String;

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800ea

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, formatString:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->encoder:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v8

    .line 351
    .local v8, formatSpan:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 352
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderFormat:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800eb

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 357
    .local v11, fpsString:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/RenderView;->fps:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v10

    .line 358
    .local v10, fpsSpan:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 359
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderFps:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800ec

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 364
    .local v20, resolutionString:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->resolution:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v19

    .line 365
    .local v19, resolutionSpan:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 366
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v19 .. v19}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderResolution:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800ed

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 371
    .local v15, qualityString:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/RenderView;->quality:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->parseQuality(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ( "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/RenderView;->quality:I

    move/from16 v24, v0

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Kbps )"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v14

    .line 372
    .local v14, qualitySpan:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 373
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderQuality:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800ee

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, effectString:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->effect:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v6

    .line 379
    .local v6, effectSpan:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 380
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderEffect:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 384
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v23

    add-int/lit8 v13, v23, 0x1

    .line 385
    .local v13, frameStart:I
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v23

    add-int/lit8 v12, v23, 0x1

    .line 387
    .local v12, frameEnd:I
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800f0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 388
    .local v17, rangeString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800f1

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 390
    .local v18, rangeToString:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v16

    .line 391
    .local v16, rangeSpan:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 392
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v25, v25, v26

    const/16 v26, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 393
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, 0x2

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v25

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v25, v25, v26

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    const/16 v26, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 394
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v24

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int v24, v24, v25

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderRange:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 398
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v23

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/RenderView;->fps:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v22, v23, v24

    .line 400
    .local v22, videoLength:F
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0800ef

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, durationString:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const/16 v26, 0x2

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/project/RenderView;->round(DII)D

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " secs"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v21

    .line 402
    .local v21, timeSpan:Landroid/text/SpannableString;
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x1

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 403
    new-instance v23, Landroid/text/style/ForegroundColorSpan;

    const/16 v24, -0x4600

    invoke-direct/range {v23 .. v24}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Landroid/text/SpannableString;->length()I

    move-result v25

    const/16 v26, 0x12

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/RenderView;->renderTime:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 406
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 407
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 83
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 225
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 226
    return-void
.end method
