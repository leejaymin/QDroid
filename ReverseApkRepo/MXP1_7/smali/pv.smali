.class public Lpv;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Lri;

.field private final 弱밧:Lcom/mxtech/widget/Spinner2;

.field private final 洹:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field public 癤욱븳援:Z

.field private final 궗:Log;

.field private final 꾨뱾:Landroid/widget/CheckBox;

.field private final 대쫫:Landroid/widget/TextView;

.field private final 뚮Ц:Landroid/widget/CheckBox;

.field private final 뚮젮議뚮떎怨:Landroid/widget/TextView;

.field private final 먮:Landroid/widget/SeekBar;

.field private final 먯껜蹂대떎:Landroid/widget/CheckBox;

.field private final 먯꽌:Loh;

.field private final 몃Ъ:Landroid/widget/CheckBox;

.field private final 붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field private final 쇰뒗:Landroid/widget/SeekBar;

.field private final 留먰븷:Lqh;


# direct methods
.method public constructor <init>(Log;Landroid/view/ViewGroup;Loh;Lri;)V
    .locals 5

    const/high16 v3, 0x4000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object p1, p0, Lpv;->궗:Log;

    iput-object p3, p0, Lpv;->먯꽌:Loh;

    iput-object p4, p0, Lpv;->ㅼ꽑嫄:Lri;

    sget v0, Lno;->subtitleTypeface:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/Spinner2;

    iput-object v0, p0, Lpv;->弱밧:Lcom/mxtech/widget/Spinner2;

    sget v0, Lno;->subtitleTextSize:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lpv;->쇰뒗:Landroid/widget/SeekBar;

    sget v0, Lno;->subtitleTextSizeText:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpv;->대쫫:Landroid/widget/TextView;

    sget v0, Lno;->subtitleTextColor:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lpv;->洹:Lafzkl/development/mColorPicker/views/ColorPanelView;

    sget v0, Lno;->subtitleShadow:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpv;->먯껜蹂대떎:Landroid/widget/CheckBox;

    sget v0, Lno;->subtitleBorder:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpv;->뚮Ц:Landroid/widget/CheckBox;

    sget v0, Lno;->subtitleBorderColor:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lpv;->붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

    sget v0, Lno;->subtitleBold:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpv;->몃Ъ:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpv;->弱밧:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v0, p4}, Lcom/mxtech/widget/Spinner2;->setClient(Lri;)V

    new-instance v0, Lqh;

    invoke-static {}, Lms;->뚮젮議뚮떎怨()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lqh;-><init>(Lpv;Ljava/io/File;)V

    iput-object v0, p0, Lpv;->留먰븷:Lqh;

    iget-object v0, p0, Lpv;->弱밧:Lcom/mxtech/widget/Spinner2;

    iget-object v2, p0, Lpv;->留먰븷:Lqh;

    invoke-virtual {v0, v2}, Lcom/mxtech/widget/Spinner2;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lpv;->弱밧:Lcom/mxtech/widget/Spinner2;

    iget-object v2, p0, Lpv;->留먰븷:Lqh;

    invoke-virtual {v2}, Lqh;->癤욱븳援()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    iget-object v0, p0, Lpv;->弱밧:Lcom/mxtech/widget/Spinner2;

    iget-object v2, p0, Lpv;->留먰븷:Lqh;

    invoke-virtual {v0, v2}, Lcom/mxtech/widget/Spinner2;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lpv;->대쫫:Landroid/widget/TextView;

    iget-object v2, p0, Lpv;->대쫫:Landroid/widget/TextView;

    invoke-static {v2}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-static {v1}, Lms;->궗(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lpv;->대쫫:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lpv;->쇰뒗:Landroid/widget/SeekBar;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lpv;->쇰뒗:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lpv;->쇰뒗:Landroid/widget/SeekBar;

    new-instance v1, Lpw;

    invoke-direct {v1, p0}, Lpw;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lpv;->洹:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, v3}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setBorderWidth(F)V

    iget-object v0, p0, Lpv;->洹:Lafzkl/development/mColorPicker/views/ColorPanelView;

    sget v1, Lms;->대쫫:I

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, Lpv;->洹:Lafzkl/development/mColorPicker/views/ColorPanelView;

    new-instance v1, Lpx;

    invoke-direct {v1, p0}, Lpx;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lpv;->먯껜蹂대떎:Landroid/widget/CheckBox;

    invoke-static {}, Lms;->꾨뱾()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpv;->먯껜蹂대떎:Landroid/widget/CheckBox;

    new-instance v1, Lpz;

    invoke-direct {v1, p0}, Lpz;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lno;->subtitle_fadeout:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpv;->꾨뱾:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpv;->꾨뱾:Landroid/widget/CheckBox;

    invoke-static {}, Lms;->寃껋씠()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpv;->꾨뱾:Landroid/widget/CheckBox;

    new-instance v1, Lqa;

    invoke-direct {v1, p0}, Lqa;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lpv;->뚮Ц:Landroid/widget/CheckBox;

    invoke-static {}, Lms;->먯껜蹂대떎()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpv;->뚮Ц:Landroid/widget/CheckBox;

    new-instance v1, Lqb;

    invoke-direct {v1, p0}, Lqb;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lpv;->붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0, v3}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setBorderWidth(F)V

    iget-object v0, p0, Lpv;->붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

    sget v1, Lms;->洹:I

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, Lpv;->붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

    new-instance v1, Lqc;

    invoke-direct {v1, p0}, Lqc;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lno;->border_thickness:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lpv;->먮:Landroid/widget/SeekBar;

    sget v0, Lno;->border_thickness_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpv;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    iget-object v0, p0, Lpv;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    iget-object v1, p0, Lpv;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    invoke-static {v1}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lpv;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    const-string v3, "%"

    invoke-static {v2, v3}, Lis;->癤욱븳援(Landroid/widget/TextView;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "subtitle_border_thickness"

    const v2, 0x3da3d70a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Lpv;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const/high16 v3, 0x42c8

    mul-float/2addr v3, v0

    const v4, 0x3dcccccd

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lpv;->먮:Landroid/widget/SeekBar;

    const/high16 v2, 0x41c8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lpv;->먮:Landroid/widget/SeekBar;

    const v2, 0x3d4ccccd

    sub-float/2addr v0, v2

    const v2, 0x3c23d70a

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lpv;->먮:Landroid/widget/SeekBar;

    new-instance v1, Lqe;

    invoke-direct {v1, p0}, Lqe;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lpv;->몃Ъ:Landroid/widget/CheckBox;

    sget v0, Lms;->쇰뒗:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpv;->몃Ъ:Landroid/widget/CheckBox;

    new-instance v1, Lqf;

    invoke-direct {v1, p0}, Lqf;-><init>(Lpv;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic ㅼ꽑嫄(Lpv;)Loh;
    .locals 1

    iget-object v0, p0, Lpv;->먯꽌:Loh;

    return-object v0
.end method

.method static synthetic 弱밧(Lpv;)Log;
    .locals 1

    iget-object v0, p0, Lpv;->궗:Log;

    return-object v0
.end method

.method static synthetic 洹(Lpv;)Lafzkl/development/mColorPicker/views/ColorPanelView;
    .locals 1

    iget-object v0, p0, Lpv;->洹:Lafzkl/development/mColorPicker/views/ColorPanelView;

    return-object v0
.end method

.method private 癤욱븳援()I
    .locals 1

    iget-object v0, p0, Lpv;->몃Ъ:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lms;->쇰뒗:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget v0, Lms;->쇰뒗:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method static synthetic 癤욱븳援(Lpv;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lpv;->몃Ъ:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic 궗(Lpv;)Lcom/mxtech/widget/Spinner2;
    .locals 1

    iget-object v0, p0, Lpv;->弱밧:Lcom/mxtech/widget/Spinner2;

    return-object v0
.end method

.method private 궗()V
    .locals 7

    iget-object v0, p0, Lpv;->먯꽌:Loh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpv;->먯꽌:Loh;

    iget-object v1, p0, Lpv;->궗:Log;

    iget-object v2, p0, Lpv;->뚮Ц:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lpv;->붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v3}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getColor()I

    move-result v3

    const v4, 0x3d4ccccd

    iget-object v5, p0, Lpv;->먮:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3c23d70a

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Loh;->癤욱븳援(Log;ZIF)V

    :cond_0
    return-void
.end method

.method static synthetic 꾨뱾(Lpv;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lpv;->뚮Ц:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic 대쫫(Lpv;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lpv;->대쫫:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic 뚮Ц(Lpv;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lpv;->뚮젮議뚮떎怨:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic 먯껜蹂대떎(Lpv;)Lafzkl/development/mColorPicker/views/ColorPanelView;
    .locals 1

    iget-object v0, p0, Lpv;->붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

    return-object v0
.end method

.method static synthetic 먯꽌(Lpv;)Lri;
    .locals 1

    iget-object v0, p0, Lpv;->ㅼ꽑嫄:Lri;

    return-object v0
.end method

.method static synthetic 몃Ъ(Lpv;)V
    .locals 0

    invoke-direct {p0}, Lpv;->궗()V

    return-void
.end method

.method static synthetic 붿슧(Lpv;)Lqh;
    .locals 1

    iget-object v0, p0, Lpv;->留먰븷:Lqh;

    return-object v0
.end method

.method static synthetic 쇰뒗(Lpv;)I
    .locals 1

    invoke-direct {p0}, Lpv;->癤욱븳援()I

    move-result v0

    return v0
.end method


# virtual methods
.method public 癤욱븳援(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    iget-object v0, p0, Lpv;->留먰븷:Lqh;

    invoke-virtual {v0}, Lqh;->궗()Lqg;

    move-result-object v0

    iget-object v0, v0, Lqg;->궗:Ljava/lang/String;

    sput-object v0, Lms;->弱밧:Ljava/lang/String;

    invoke-direct {p0}, Lpv;->癤욱븳援()I

    move-result v0

    sput v0, Lms;->쇰뒗:I

    iget-object v0, p0, Lpv;->洹:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getColor()I

    move-result v0

    sput v0, Lms;->대쫫:I

    iget-object v0, p0, Lpv;->붿슧:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getColor()I

    move-result v0

    sput v0, Lms;->洹:I

    const-string v0, "subtitle_typeface_name"

    sget-object v1, Lms;->弱밧:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_typeface_style"

    sget v1, Lms;->쇰뒗:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_text_size"

    iget-object v1, p0, Lpv;->쇰뒗:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_text_color"

    sget v1, Lms;->대쫫:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_shadow_enabled"

    iget-object v1, p0, Lpv;->먯껜蹂대떎:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_border_enabled"

    iget-object v1, p0, Lpv;->뚮Ц:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_border_color"

    sget v1, Lms;->洹:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "typeface_dir"

    iget-object v1, p0, Lpv;->留먰븷:Lqh;

    iget-object v1, v1, Lqh;->癤욱븳援:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_border_thickness"

    const v1, 0x3d4ccccd

    iget-object v2, p0, Lpv;->먮:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3c23d70a

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lpv;->꾨뱾:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {}, Lms;->寃껋씠()Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "subtitle_fadeout"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
