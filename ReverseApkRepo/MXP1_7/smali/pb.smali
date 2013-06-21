.class public Lpb;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

.field private final 寃껋씠:[I

.field private final 弱밧:Lcom/mxtech/widget/Spinner2;

.field private final 洹:Landroid/widget/TextView;

.field public 癤욱븳援:Z

.field private final 궗:Log;

.field private final 꾨뱾:Landroid/widget/CheckBox;

.field private final 대쫫:Landroid/widget/SeekBar;

.field private final 덉쓣:[I

.field private final 뚮Ц:Landroid/widget/CheckBox;

.field private 뚮벏:Landroid/widget/Toast;

.field private final 뚮젮議뚮떎怨:Landroid/widget/CheckBox;

.field private final 먮:Landroid/widget/CheckBox;

.field private final 먯껜蹂대떎:Landroid/widget/CheckBox;

.field private final 먯꽌:Loh;

.field private final 몃Ъ:Landroid/widget/CheckBox;

.field private final 붿슧:Landroid/widget/CheckBox;

.field private final 쇰뒗:Landroid/widget/CheckBox;

.field private final 留먰븷:Landroid/widget/CheckBox;

.field private final 紐낆옱:I


# direct methods
.method public constructor <init>(Log;Landroid/view/ViewGroup;Loh;Lri;)V
    .locals 7

    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb;->궗:Log;

    iput-object p3, p0, Lpb;->먯꽌:Loh;

    sget v0, Lno;->brightnessEnable:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->쇰뒗:Landroid/widget/CheckBox;

    sget v0, Lno;->brightness:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lpb;->대쫫:Landroid/widget/SeekBar;

    sget v0, Lno;->brightnessText:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpb;->洹:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lnj;->tune_orientation_values:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lpb;->덉쓣:[I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lnj;->fullscreen_values:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lpb;->寃껋씠:[I

    sget v0, Lno;->orientation:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/Spinner2;

    iput-object v0, p0, Lpb;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    iget-object v0, p0, Lpb;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v0, p4}, Lcom/mxtech/widget/Spinner2;->setClient(Lri;)V

    iget-object v0, p0, Lpb;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    sget v4, Lms;->덉쓣:I

    iget-object v5, p0, Lpb;->덉쓣:[I

    invoke-static {v4, v5, v1}, Log;->癤욱븳援(I[II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    iget-object v0, p0, Lpb;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    new-instance v4, Lpc;

    invoke-direct {v4, p0}, Lpc;-><init>(Lpb;)V

    invoke-virtual {v0, v4}, Lcom/mxtech/widget/Spinner2;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    sget-boolean v0, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lpb;->弱밧:Lcom/mxtech/widget/Spinner2;

    iput v1, p0, Lpb;->紐낆옱:I

    sget v0, Lno;->fullscreen_row:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lpb;->쇰뒗:Landroid/widget/CheckBox;

    sget-boolean v0, Lms;->뚮Ц:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->쇰뒗:Landroid/widget/CheckBox;

    new-instance v4, Lph;

    invoke-direct {v4, p0}, Lph;-><init>(Lpb;)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {v3}, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援(Landroid/content/Context;)I

    move-result v0

    sget v3, Lms;->붿슧:F

    float-to-double v3, v3

    invoke-static {v0, v3, v4}, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援(ID)I

    move-result v3

    iget-object v4, p0, Lpb;->洹:Landroid/widget/TextView;

    iget-object v5, p0, Lpb;->洹:Landroid/widget/TextView;

    invoke-static {v5}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v4, p0, Lpb;->洹:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lpb;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lpb;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lpb;->대쫫:Landroid/widget/SeekBar;

    new-instance v3, Lpi;

    invoke-direct {v3, p0}, Lpi;-><init>(Lpb;)V

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget v0, Lno;->alwaysShowStatusText:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->몃Ъ:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpb;->몃Ъ:Landroid/widget/CheckBox;

    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "status_show_always"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->몃Ъ:Landroid/widget/CheckBox;

    new-instance v3, Lpj;

    invoke-direct {v3, p0}, Lpj;-><init>(Lpb;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lno;->alwaysShowStatusBar:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->먯껜蹂대떎:Landroid/widget/CheckBox;

    sget-boolean v0, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpb;->먯껜蹂대떎:Landroid/widget/CheckBox;

    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "status_bar_show_always"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->먯껜蹂대떎:Landroid/widget/CheckBox;

    new-instance v3, Lpk;

    invoke-direct {v3, p0}, Lpk;-><init>(Lpb;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_2
    sget v0, Lno;->alwaysShowElapsedTime:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->꾨뱾:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpb;->꾨뱾:Landroid/widget/CheckBox;

    sget-boolean v3, Lms;->紐낆옱:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->꾨뱾:Landroid/widget/CheckBox;

    new-instance v3, Lpl;

    invoke-direct {v3, p0}, Lpl;-><init>(Lpb;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lno;->osd_bottom:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->뚮Ц:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpb;->뚮Ц:Landroid/widget/CheckBox;

    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "osd_bottom"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->뚮Ц:Landroid/widget/CheckBox;

    new-instance v3, Lpm;

    invoke-direct {v3, p0}, Lpm;-><init>(Lpb;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lno;->osd_background:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->붿슧:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpb;->붿슧:Landroid/widget/CheckBox;

    sget-object v3, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "osd_background"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->붿슧:Landroid/widget/CheckBox;

    new-instance v2, Lpn;

    invoke-direct {v2, p0}, Lpn;-><init>(Lpb;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lno;->softButtons:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->먮:Landroid/widget/CheckBox;

    sget-boolean v0, Lms;->李:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lpb;->먮:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_3
    sget v0, Lno;->keepScreenOn:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->留먰븷:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpb;->留먰븷:Landroid/widget/CheckBox;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "keep_screen_on"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->留먰븷:Landroid/widget/CheckBox;

    new-instance v2, Lpe;

    invoke-direct {v2, p0}, Lpe;-><init>(Lpb;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lno;->showLeftTime:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpb;->뚮젮議뚮떎怨:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpb;->뚮젮議뚮떎怨:Landroid/widget/CheckBox;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "show_left_time"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->뚮젮議뚮떎怨:Landroid/widget/CheckBox;

    new-instance v1, Lpf;

    invoke-direct {v1, p0}, Lpf;-><init>(Lpb;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_1
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "fullscreen"

    sget v5, Lms;->癤욱븳援:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lpb;->紐낆옱:I

    sget v0, Lno;->fullscreen:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/Spinner2;

    iput-object v0, p0, Lpb;->弱밧:Lcom/mxtech/widget/Spinner2;

    iget-object v0, p0, Lpb;->弱밧:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v0, p4}, Lcom/mxtech/widget/Spinner2;->setClient(Lri;)V

    iget-object v0, p0, Lpb;->弱밧:Lcom/mxtech/widget/Spinner2;

    iget v4, p0, Lpb;->紐낆옱:I

    iget-object v5, p0, Lpb;->寃껋씠:[I

    invoke-static {v4, v5, v1}, Log;->癤욱븳援(I[II)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    iget-object v0, p0, Lpb;->弱밧:Lcom/mxtech/widget/Spinner2;

    new-instance v4, Lpg;

    invoke-direct {v4, p0}, Lpg;-><init>(Lpb;)V

    invoke-virtual {v0, v4}, Lcom/mxtech/widget/Spinner2;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lpb;->먯껜蹂대떎:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lpb;->먮:Landroid/widget/CheckBox;

    invoke-static {}, Lms;->ㅼ꽑嫄()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpb;->먮:Landroid/widget/CheckBox;

    new-instance v2, Lpd;

    invoke-direct {v2, p0}, Lpd;-><init>(Lpb;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_3
.end method

.method static synthetic ㅼ꽑嫄(Lpb;)[I
    .locals 1

    iget-object v0, p0, Lpb;->寃껋씠:[I

    return-object v0
.end method

.method static synthetic 弱밧(Lpb;)I
    .locals 1

    iget v0, p0, Lpb;->紐낆옱:I

    return v0
.end method

.method static synthetic 洹(Lpb;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lpb;->洹:Landroid/widget/TextView;

    return-object v0
.end method

.method private 癤욱븳援()F
    .locals 2

    iget-object v0, p0, Lpb;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lpb;->대쫫:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic 癤욱븳援(Lpb;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lpb;->뚮벏:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic 癤욱븳援(Lpb;)[I
    .locals 1

    iget-object v0, p0, Lpb;->덉쓣:[I

    return-object v0
.end method

.method static synthetic 궗(Lpb;)Loh;
    .locals 1

    iget-object v0, p0, Lpb;->먯꽌:Loh;

    return-object v0
.end method

.method static synthetic 꾨뱾(Lpb;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lpb;->뚮Ц:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic 대쫫(Lpb;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lpb;->뚮벏:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic 먯껜蹂대떎(Lpb;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lpb;->붿슧:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic 먯꽌(Lpb;)Log;
    .locals 1

    iget-object v0, p0, Lpb;->궗:Log;

    return-object v0
.end method

.method static synthetic 몃Ъ(Lpb;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lpb;->쇰뒗:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic 쇰뒗(Lpb;)F
    .locals 1

    invoke-direct {p0}, Lpb;->癤욱븳援()F

    move-result v0

    return v0
.end method


# virtual methods
.method public 癤욱븳援(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    iget-object v0, p0, Lpb;->쇰뒗:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lms;->뚮Ц:Z

    invoke-direct {p0}, Lpb;->癤욱븳援()F

    move-result v0

    sput v0, Lms;->붿슧:F

    iget-object v0, p0, Lpb;->꾨뱾:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lms;->紐낆옱:Z

    iget-object v0, p0, Lpb;->덉쓣:[I

    iget-object v1, p0, Lpb;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v1}, Lcom/mxtech/widget/Spinner2;->getSelectedItemPosition()I

    move-result v1

    aget v0, v0, v1

    sput v0, Lms;->덉쓣:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-boolean v0, Lcom/mxtech/videoplayer/L;->대쫫:Z

    if-nez v0, :cond_0

    const-string v0, "fullscreen"

    iget-object v1, p0, Lpb;->寃껋씠:[I

    iget-object v2, p0, Lpb;->弱밧:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v2}, Lcom/mxtech/widget/Spinner2;->getSelectedItemPosition()I

    move-result v2

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v0, "screen_orientation"

    sget v1, Lms;->덉쓣:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "screen_brightness_auto"

    sget-boolean v1, Lms;->뚮Ц:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "screen_brightness"

    sget v1, Lms;->붿슧:F

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "status_show_always"

    iget-object v1, p0, Lpb;->몃Ъ:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lpb;->먯껜蹂대떎:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "status_bar_show_always"

    iget-object v1, p0, Lpb;->먯껜蹂대떎:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v0, "elapsed_time_show_always"

    sget-boolean v1, Lms;->紐낆옱:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "keep_screen_on"

    iget-object v1, p0, Lpb;->留먰븷:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "show_left_time"

    iget-object v1, p0, Lpb;->뚮젮議뚮떎怨:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lpb;->먮:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "auto_hide_soft_buttons"

    iget-object v1, p0, Lpb;->먮:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v0, "osd_bottom"

    iget-object v1, p0, Lpb;->뚮Ц:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "osd_background"

    iget-object v1, p0, Lpb;->붿슧:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
