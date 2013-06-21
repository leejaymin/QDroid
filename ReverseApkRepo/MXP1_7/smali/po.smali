.class public Lpo;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Lri;

.field private final 弱밧:Landroid/widget/CheckBox;

.field private final 洹:Landroid/widget/SeekBar;

.field public 癤욱븳援:Z

.field private final 궗:Log;

.field private final 대쫫:Lcom/mxtech/widget/Spinner2;

.field private final 먯껜蹂대떎:Landroid/widget/CheckBox;

.field private final 먯꽌:Loh;

.field private final 몃Ъ:Landroid/widget/TextView;

.field private final 쇰뒗:Lafzkl/development/mColorPicker/views/ColorPanelView;


# direct methods
.method public constructor <init>(Log;Landroid/view/ViewGroup;Loh;Lri;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpo;->궗:Log;

    iput-object p3, p0, Lpo;->먯꽌:Loh;

    iput-object p4, p0, Lpo;->ㅼ꽑嫄:Lri;

    sget v0, Lno;->subtitleAlignment:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/widget/Spinner2;

    iput-object v0, p0, Lpo;->대쫫:Lcom/mxtech/widget/Spinner2;

    sget v0, Lno;->subtitleBottomPadding:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lpo;->洹:Landroid/widget/SeekBar;

    sget v0, Lno;->subtitleBottomPaddingText:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpo;->몃Ъ:Landroid/widget/TextView;

    sget v0, Lno;->subtitleBackground:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpo;->弱밧:Landroid/widget/CheckBox;

    sget v0, Lno;->subtitleBackgroundColor:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lpo;->쇰뒗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    sget v0, Lno;->fit_subtitle_overlay_to_video:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lpo;->먯껜蹂대떎:Landroid/widget/CheckBox;

    iget-object v0, p0, Lpo;->대쫫:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v0, p4}, Lcom/mxtech/widget/Spinner2;->setClient(Lri;)V

    iget-object v0, p0, Lpo;->대쫫:Lcom/mxtech/widget/Spinner2;

    sget v1, Lms;->몃Ъ:I

    invoke-direct {p0, v1}, Lpo;->궗(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mxtech/widget/Spinner2;->setSelection(I)V

    iget-object v0, p0, Lpo;->대쫫:Lcom/mxtech/widget/Spinner2;

    new-instance v1, Lpp;

    invoke-direct {v1, p0}, Lpp;-><init>(Lpo;)V

    invoke-virtual {v0, v1}, Lcom/mxtech/widget/Spinner2;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lpo;->몃Ъ:Landroid/widget/TextView;

    iget-object v1, p0, Lpo;->몃Ъ:Landroid/widget/TextView;

    invoke-static {v1}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v0, p0, Lpo;->몃Ъ:Landroid/widget/TextView;

    sget v1, Lms;->뚮벏:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lpo;->洹:Landroid/widget/SeekBar;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lpo;->洹:Landroid/widget/SeekBar;

    sget v1, Lms;->뚮벏:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lpo;->洹:Landroid/widget/SeekBar;

    new-instance v1, Lpq;

    invoke-direct {v1, p0}, Lpq;-><init>(Lpo;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lpo;->弱밧:Landroid/widget/CheckBox;

    sget-boolean v1, Lms;->먯껜蹂대떎:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpo;->弱밧:Landroid/widget/CheckBox;

    new-instance v1, Lpr;

    invoke-direct {v1, p0}, Lpr;-><init>(Lpo;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lpo;->쇰뒗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    sget v1, Lms;->꾨뱾:I

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setColor(I)V

    iget-object v0, p0, Lpo;->쇰뒗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    new-instance v1, Lps;

    invoke-direct {v1, p0}, Lps;-><init>(Lpo;)V

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lpo;->먯껜蹂대떎:Landroid/widget/CheckBox;

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "subtitle_fit_overlay_to_video"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lpo;->먯껜蹂대떎:Landroid/widget/CheckBox;

    new-instance v1, Lpu;

    invoke-direct {v1, p0}, Lpu;-><init>(Lpo;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic ㅼ꽑嫄(Lpo;)Lafzkl/development/mColorPicker/views/ColorPanelView;
    .locals 1

    iget-object v0, p0, Lpo;->쇰뒗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    return-object v0
.end method

.method static synthetic 弱밧(Lpo;)Lri;
    .locals 1

    iget-object v0, p0, Lpo;->ㅼ꽑嫄:Lri;

    return-object v0
.end method

.method private 癤욱븳援(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic 癤욱븳援(Lpo;I)I
    .locals 1

    invoke-direct {p0, p1}, Lpo;->癤욱븳援(I)I

    move-result v0

    return v0
.end method

.method static synthetic 癤욱븳援(Lpo;)Loh;
    .locals 1

    iget-object v0, p0, Lpo;->먯꽌:Loh;

    return-object v0
.end method

.method private 궗(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic 궗(Lpo;)Log;
    .locals 1

    iget-object v0, p0, Lpo;->궗:Log;

    return-object v0
.end method

.method static synthetic 먯꽌(Lpo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lpo;->몃Ъ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic 쇰뒗(Lpo;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lpo;->弱밧:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public 癤욱븳援(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    iget-object v0, p0, Lpo;->대쫫:Lcom/mxtech/widget/Spinner2;

    invoke-virtual {v0}, Lcom/mxtech/widget/Spinner2;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lpo;->癤욱븳援(I)I

    move-result v0

    sput v0, Lms;->몃Ъ:I

    iget-object v0, p0, Lpo;->洹:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sput v0, Lms;->뚮벏:I

    iget-object v0, p0, Lpo;->弱밧:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lms;->먯껜蹂대떎:Z

    iget-object v0, p0, Lpo;->쇰뒗:Lafzkl/development/mColorPicker/views/ColorPanelView;

    invoke-virtual {v0}, Lafzkl/development/mColorPicker/views/ColorPanelView;->getColor()I

    move-result v0

    sput v0, Lms;->꾨뱾:I

    const-string v0, "subtitle_alignment"

    sget v1, Lms;->몃Ъ:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_bottom_padding"

    sget v1, Lms;->뚮벏:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_bkcolor_enabled"

    sget-boolean v1, Lms;->먯껜蹂대떎:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_bkcolor"

    sget v1, Lms;->꾨뱾:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "subtitle_fit_overlay_to_video"

    iget-object v1, p0, Lpo;->먯껜蹂대떎:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
