.class public Loj;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

.field private final 弱밧:Lcom/mxtech/widget/Spinner2;

.field private final 洹:Landroid/widget/CheckBox;

.field public 癤욱븳援:Z

.field private final 궗:Log;

.field private final 꾨뱾:Landroid/widget/CheckBox;

.field private final 대쫫:Landroid/widget/CheckBox;

.field private final 뚮Ц:Landroid/widget/SeekBar;

.field private 뚮젮議뚮떎怨:Landroid/widget/CheckBox;

.field private final 먮:Ljava/lang/String;

.field private final 먯껜蹂대떎:Landroid/widget/CheckBox;

.field private final 먯꽌:Loh;

.field private final 몃Ъ:Landroid/widget/CheckBox;

.field private final 붿슧:Landroid/widget/TextView;

.field private final 쇰뒗:[I


# direct methods
.method public constructor <init>(Log;Landroid/view/ViewGroup;Loi;Loh;Lri;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loj;->궗:Log;

    iput-object p4, p0, Loj;->먯꽌:Loh;

    sget v0, Lno;->touch_action:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/Spinner2;

    iput-object v0, p0, Loj;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    iget-object v0, p0, Loj;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v0, p5}, Lcom/mxtech/widget/Spinner2;->setClient(Lri;)V

    sget v0, Lno;->lock_mode:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/Spinner2;

    iput-object v0, p0, Loj;->弱밧:Lcom/mxtech/widget/Spinner2;

    iget-object v0, p0, Loj;->弱밧:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v0, p5}, Lcom/mxtech/widget/Spinner2;->setClient(Lri;)V

    sget v0, Lno;->video_seeking:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Loj;->대쫫:Landroid/widget/CheckBox;

    sget v0, Lno;->zoom:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Loj;->洹:Landroid/widget/CheckBox;

    sget v0, Lno;->volume:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Loj;->몃Ъ:Landroid/widget/CheckBox;

    sget v0, Lno;->brightness:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Loj;->먯껜蹂대떎:Landroid/widget/CheckBox;

    sget v0, Lno;->lock_show_interface:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Loj;->꾨뱾:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lnj;->tune_touch_action_option_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Loj;->쇰뒗:[I

    iget-object v1, p0, Loj;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    sget v2, Lms;->寃껋씠:I

    iget-object v3, p0, Loj;->쇰뒗:[I

    invoke-static {v2, v3, v5}, Log;->癤욱븳援(I[II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    iget-object v1, p0, Loj;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    new-instance v2, Lok;

    invoke-direct {v2, p0}, Lok;-><init>(Loj;)V

    invoke-virtual {v1, v2}, Lcom/mxtech/widget/Spinner2;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Lor;

    invoke-direct {v1, p0, v0, p3, p5}, Lor;-><init>(Loj;Landroid/content/Context;Loi;Lri;)V

    iget-object v1, p0, Loj;->대쫫:Landroid/widget/CheckBox;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "drag_screen"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Loj;->대쫫:Landroid/widget/CheckBox;

    new-instance v2, Lol;

    invoke-direct {v2, p0}, Lol;-><init>(Loj;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Loj;->洹:Landroid/widget/CheckBox;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "drag_zoom"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Loj;->洹:Landroid/widget/CheckBox;

    new-instance v2, Lom;

    invoke-direct {v2, p0}, Lom;-><init>(Loj;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Loj;->몃Ъ:Landroid/widget/CheckBox;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "drag_volume"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Loj;->몃Ъ:Landroid/widget/CheckBox;

    new-instance v2, Lon;

    invoke-direct {v2, p0}, Lon;-><init>(Loj;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Loj;->먯껜蹂대떎:Landroid/widget/CheckBox;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "drag_brigtness"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Loj;->먯껜蹂대떎:Landroid/widget/CheckBox;

    new-instance v2, Loo;

    invoke-direct {v2, p0}, Loo;-><init>(Loj;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Loj;->꾨뱾:Landroid/widget/CheckBox;

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "lock_show_interface"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Loj;->꾨뱾:Landroid/widget/CheckBox;

    new-instance v2, Lop;

    invoke-direct {v2, p0}, Lop;-><init>(Loj;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v1, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    sget v1, Lnt;->second_abbr:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Loj;->먮:Ljava/lang/String;

    sget v0, Lno;->interface_auto_hide_delay:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Loj;->뚮Ц:Landroid/widget/SeekBar;

    sget v0, Lno;->interface_auto_hide_delay_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loj;->붿슧:Landroid/widget/TextView;

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "interface_auto_hide_delay"

    const/16 v3, 0x7d0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Loj;->붿슧:Landroid/widget/TextView;

    iget-object v3, p0, Loj;->붿슧:Landroid/widget/TextView;

    invoke-static {v3}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Loj;->붿슧:Landroid/widget/TextView;

    invoke-static {v4, v1}, Lis;->癤욱븳援(Landroid/widget/TextView;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v1, p0, Loj;->붿슧:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Loj;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Loj;->뚮Ц:Landroid/widget/SeekBar;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Loj;->뚮Ц:Landroid/widget/SeekBar;

    add-int/lit16 v0, v0, -0x3e8

    div-int/lit16 v0, v0, 0x1f4

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Loj;->뚮Ц:Landroid/widget/SeekBar;

    new-instance v1, Loq;

    invoke-direct {v1, p0}, Loq;-><init>(Loj;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Loj;)Log;
    .locals 1

    iget-object v0, p0, Loj;->궗:Log;

    return-object v0
.end method

.method static synthetic 弱밧(Loj;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Loj;->뚮젮議뚮떎怨:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic 癤욱븳援(Loj;)Lcom/mxtech/widget/Spinner2;
    .locals 1

    iget-object v0, p0, Loj;->弱밧:Lcom/mxtech/widget/Spinner2;

    return-object v0
.end method

.method private 癤욱븳援(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    sget-object v1, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    int-to-double v2, p1

    const-wide v4, 0x408f400000000000L

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Loj;->먮:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mxtech/videoplayer/L;->먮:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic 癤욱븳援(Loj;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Loj;->癤욱븳援(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic 궗(Loj;)[I
    .locals 1

    iget-object v0, p0, Loj;->쇰뒗:[I

    return-object v0
.end method

.method static synthetic 먯꽌(Loj;)Loh;
    .locals 1

    iget-object v0, p0, Loj;->먯꽌:Loh;

    return-object v0
.end method

.method static synthetic 쇰뒗(Loj;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Loj;->붿슧:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public 癤욱븳援(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    iget-object v0, p0, Loj;->쇰뒗:[I

    iget-object v1, p0, Loj;->ㅼ꽑嫄:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v1}, Lcom/mxtech/widget/Spinner2;->getSelectedItemPosition()I

    move-result v1

    aget v0, v0, v1

    sput v0, Lms;->寃껋씠:I

    const-string v0, "playback_touch_action"

    sget v1, Lms;->寃껋씠:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lock_mode"

    iget-object v1, p0, Loj;->弱밧:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v1}, Lcom/mxtech/widget/Spinner2;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "drag_screen"

    iget-object v1, p0, Loj;->대쫫:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "drag_zoom"

    iget-object v1, p0, Loj;->洹:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "drag_volume"

    iget-object v1, p0, Loj;->몃Ъ:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "drag_brigtness"

    iget-object v1, p0, Loj;->먯껜蹂대떎:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lock_show_interface"

    iget-object v1, p0, Loj;->꾨뱾:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "interface_auto_hide_delay"

    iget-object v1, p0, Loj;->뚮Ц:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1f4

    add-int/lit16 v1, v1, 0x3e8

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public 癤욱븳援(Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Loj;->뚮젮議뚮떎怨:Landroid/widget/CheckBox;

    return-void
.end method
