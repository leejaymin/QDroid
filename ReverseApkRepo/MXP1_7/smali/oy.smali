.class public Loy;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Landroid/widget/SeekBar;

.field private final 弱밧:Landroid/widget/TextView;

.field public 癤욱븳援:Z

.field private final 궗:Log;

.field private final 먯꽌:Loh;

.field private final 쇰뒗:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Log;Landroid/view/ViewGroup;Loh;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loy;->궗:Log;

    iput-object p3, p0, Loy;->먯꽌:Loh;

    sget v0, Lno;->ssa_font_scale:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Loy;->ㅼ꽑嫄:Landroid/widget/SeekBar;

    sget v0, Lno;->ssa_font_scale_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Loy;->弱밧:Landroid/widget/TextView;

    iget-object v0, p0, Loy;->弱밧:Landroid/widget/TextView;

    iget-object v1, p0, Loy;->弱밧:Landroid/widget/TextView;

    invoke-static {v1}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Loy;->弱밧:Landroid/widget/TextView;

    const-string v3, "%"

    invoke-static {v2, v3}, Lis;->癤욱븳援(Landroid/widget/TextView;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "ssa_font_scale"

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Loy;->弱밧:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const/high16 v3, 0x42c8

    mul-float/2addr v3, v0

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

    iget-object v1, p0, Loy;->ㅼ꽑嫄:Landroid/widget/SeekBar;

    const/high16 v2, 0x4218

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Loy;->ㅼ꽑嫄:Landroid/widget/SeekBar;

    const v2, 0x3e4ccccd

    sub-float/2addr v0, v2

    const/high16 v2, 0x4120

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Loy;->ㅼ꽑嫄:Landroid/widget/SeekBar;

    new-instance v1, Loz;

    invoke-direct {v1, p0}, Loz;-><init>(Loy;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget v0, Lno;->ssa_font_ignore:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Loy;->쇰뒗:Landroid/widget/CheckBox;

    iget-object v0, p0, Loy;->쇰뒗:Landroid/widget/CheckBox;

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "ssa_font_ignore"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Loy;->쇰뒗:Landroid/widget/CheckBox;

    new-instance v1, Lpa;

    invoke-direct {v1, p0}, Lpa;-><init>(Loy;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Loy;)Loh;
    .locals 1

    iget-object v0, p0, Loy;->먯꽌:Loh;

    return-object v0
.end method

.method static synthetic 궗(Loy;)Log;
    .locals 1

    iget-object v0, p0, Loy;->궗:Log;

    return-object v0
.end method

.method static synthetic 먯꽌(Loy;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Loy;->弱밧:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public 癤욱븳援(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    const-string v0, "ssa_font_scale"

    const v1, 0x3e4ccccd

    iget-object v2, p0, Loy;->ㅼ꽑嫄:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4120

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "ssa_font_ignore"

    iget-object v1, p0, Loy;->쇰뒗:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
