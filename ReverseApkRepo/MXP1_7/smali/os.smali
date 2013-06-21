.class public Los;
.super Ljava/lang/Object;


# instance fields
.field private final ㅼ꽑嫄:Landroid/widget/CheckBox;

.field private final 弱밧:Landroid/widget/SeekBar;

.field private final 洹:Landroid/widget/CheckBox;

.field public 癤욱븳援:Z

.field private final 궗:Log;

.field private final 꾨뱾:Landroid/widget/CheckBox;

.field private final 대쫫:Z

.field private 뚮Ц:Landroid/widget/CheckBox;

.field private final 먯껜蹂대떎:Landroid/widget/TextView;

.field private final 먯꽌:Loh;

.field private final 몃Ъ:Landroid/widget/SeekBar;

.field private final 쇰뒗:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Log;Landroid/view/ViewGroup;Loh;)V
    .locals 6

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Los;->궗:Log;

    iput-object p3, p0, Los;->먯꽌:Loh;

    sget v0, Lno;->showMoveButtons:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Los;->洹:Landroid/widget/CheckBox;

    sget v0, Lno;->show_prev_next:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Los;->꾨뱾:Landroid/widget/CheckBox;

    sget v0, Lno;->moveInterval:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Los;->몃Ъ:Landroid/widget/SeekBar;

    sget v0, Lno;->moveIntervalText:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Los;->먯껜蹂대떎:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "navi_move_interval"

    const/16 v4, 0xa

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Los;->먯껜蹂대떎:Landroid/widget/TextView;

    iget-object v4, p0, Los;->먯껜蹂대떎:Landroid/widget/TextView;

    invoke-static {v4}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v1, p0, Los;->먯껜蹂대떎:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Los;->몃Ъ:Landroid/widget/SeekBar;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Los;->몃Ъ:Landroid/widget/SeekBar;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Los;->몃Ъ:Landroid/widget/SeekBar;

    new-instance v1, Lot;

    invoke-direct {v1, p0}, Lot;-><init>(Los;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Los;->洹:Landroid/widget/CheckBox;

    invoke-static {}, Lms;->몃Ъ()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Los;->洹:Landroid/widget/CheckBox;

    new-instance v1, Lou;

    invoke-direct {v1, p0}, Lou;-><init>(Los;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Los;->꾨뱾:Landroid/widget/CheckBox;

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "show_prev_next"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Los;->꾨뱾:Landroid/widget/CheckBox;

    new-instance v1, Lov;

    invoke-direct {v1, p0}, Lov;-><init>(Los;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lno;->use_gesture_seek:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Los;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    sget v0, Lno;->gesture_seek_speed_label:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Los;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    sget-object v4, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v5, "drag_screen"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Los;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    new-instance v4, Low;

    invoke-direct {v4, p0}, Low;-><init>(Los;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v1, Lno;->gesture_seek_speed:I

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Los;->弱밧:Landroid/widget/SeekBar;

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v4, "drag_seek_speed"

    const/high16 v5, 0x4120

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v5, "GB"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "US"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Los;->대쫫:Z

    iget-boolean v1, p0, Los;->대쫫:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lnt;->gesture_seek_speed:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnt;->second_abbr:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/inch)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget v0, Lno;->gesture_seek_speed_text:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Los;->쇰뒗:Landroid/widget/TextView;

    iget-object v0, p0, Los;->쇰뒗:Landroid/widget/TextView;

    iget-object v1, p0, Los;->쇰뒗:Landroid/widget/TextView;

    invoke-static {v1}, Lis;->癤욱븳援(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    invoke-direct {p0, v4}, Los;->癤욱븳援(F)I

    move-result v0

    iget-object v1, p0, Los;->弱밧:Landroid/widget/SeekBar;

    invoke-direct {p0}, Los;->癤욱븳援()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Los;->弱밧:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct {p0, v0}, Los;->癤욱븳援(I)V

    iget-object v0, p0, Los;->弱밧:Landroid/widget/SeekBar;

    new-instance v1, Lox;

    invoke-direct {v1, p0}, Lox;-><init>(Los;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lnt;->gesture_seek_speed:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnt;->second_abbr:I

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cm)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic ㅼ꽑嫄(Los;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Los;->뚮Ц:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private 癤욱븳援(IZ)F
    .locals 2

    const/16 v1, 0x11

    iget-boolean v0, p0, Los;->대쫫:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    mul-int/lit8 v0, p1, 0x5

    add-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    :goto_0
    if-eqz p2, :cond_0

    const v1, 0x40228f5c

    div-float/2addr v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/16 v0, 0xd

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x6

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x28

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    if-ge p1, v1, :cond_3

    add-int/lit8 v0, p1, -0x6

    add-int/lit8 v0, v0, -0x7

    mul-int/lit8 v0, v0, 0x19

    add-int/lit8 v0, v0, 0x7d

    int-to-float v0, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x15

    if-ge p1, v0, :cond_4

    add-int/lit8 v0, p1, -0x6

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    mul-int/lit8 v0, v0, 0x32

    add-int/lit16 v0, v0, 0xfa

    int-to-float v0, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, p1, -0x6

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, -0x4

    mul-int/lit8 v0, v0, 0x64

    add-int/lit16 v0, v0, 0x1f4

    int-to-float v0, v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    if-ge p1, v0, :cond_6

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_1

    :cond_6
    const/16 v0, 0xb

    if-ge p1, v0, :cond_7

    add-int/lit8 v0, p1, -0x5

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    goto :goto_1

    :cond_7
    if-ge p1, v1, :cond_8

    add-int/lit8 v0, p1, -0x5

    add-int/lit8 v0, v0, -0x6

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    goto :goto_1

    :cond_8
    const/16 v0, 0x16

    if-ge p1, v0, :cond_9

    add-int/lit8 v0, p1, -0x5

    add-int/lit8 v0, v0, -0x6

    add-int/lit8 v0, v0, -0x6

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x78

    int-to-float v0, v0

    goto :goto_1

    :cond_9
    add-int/lit8 v0, p1, -0x5

    add-int/lit8 v0, v0, -0x6

    add-int/lit8 v0, v0, -0x6

    add-int/lit8 v0, v0, -0x5

    mul-int/lit8 v0, v0, 0x32

    add-int/lit16 v0, v0, 0xfa

    int-to-float v0, v0

    goto :goto_1
.end method

.method private 癤욱븳援()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method private 癤욱븳援(F)I
    .locals 6

    const/high16 v1, 0x4000

    const/high16 v5, 0x42c8

    const/high16 v4, 0x4248

    const/high16 v3, 0x4120

    const/high16 v2, 0x40a0

    iget-boolean v0, p0, Los;->대쫫:Z

    if-eqz v0, :cond_4

    const v0, 0x40228f5c

    mul-float/2addr v0, p1

    const/high16 v1, 0x41f0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_0
    cmpg-float v1, v0, v5

    if-gtz v1, :cond_1

    const/high16 v1, 0x40c0

    const/high16 v2, 0x4220

    sub-float/2addr v0, v2

    div-float/2addr v0, v3

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4348

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_2

    const/high16 v1, 0x4150

    const/high16 v2, 0x42fa

    sub-float/2addr v0, v2

    const/high16 v2, 0x41c8

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43c8

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_3

    const/high16 v1, 0x4188

    const/high16 v2, 0x437a

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_0

    :cond_3
    const/high16 v1, 0x41a8

    const/high16 v2, 0x43fa

    sub-float/2addr v0, v2

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    goto :goto_0

    :cond_4
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_5

    sub-float v0, p1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_5
    const/high16 v0, 0x4220

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    const/high16 v0, 0x4170

    sub-float v0, p1, v0

    div-float/2addr v0, v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_6
    cmpg-float v0, p1, v5

    if-gtz v0, :cond_7

    const/high16 v0, 0x4130

    sub-float v1, p1, v4

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    const/high16 v0, 0x4348

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    const/high16 v0, 0x4188

    const/high16 v1, 0x42f0

    sub-float v1, p1, v1

    const/high16 v2, 0x41a0

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0

    :cond_8
    const/high16 v0, 0x41b0

    const/high16 v1, 0x437a

    sub-float v1, p1, v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic 癤욱븳援(Los;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Los;->먯껜蹂대떎:Landroid/widget/TextView;

    return-object v0
.end method

.method private 癤욱븳援(I)V
    .locals 2

    iget-object v0, p0, Los;->쇰뒗:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Los;->癤욱븳援(IZ)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Los;I)V
    .locals 0

    invoke-direct {p0, p1}, Los;->癤욱븳援(I)V

    return-void
.end method

.method static synthetic 궗(Los;)Loh;
    .locals 1

    iget-object v0, p0, Los;->먯꽌:Loh;

    return-object v0
.end method

.method static synthetic 먯꽌(Los;)Log;
    .locals 1

    iget-object v0, p0, Los;->궗:Log;

    return-object v0
.end method


# virtual methods
.method public 癤욱븳援(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    const-string v0, "navi_show_move_buttons"

    iget-object v1, p0, Los;->洹:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "navi_move_interval"

    iget-object v1, p0, Los;->몃Ъ:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "drag_screen"

    iget-object v1, p0, Los;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "drag_seek_speed"

    iget-object v1, p0, Los;->弱밧:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Los;->癤욱븳援(IZ)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "show_prev_next"

    iget-object v1, p0, Los;->꾨뱾:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public 癤욱븳援(Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Los;->뚮Ц:Landroid/widget/CheckBox;

    return-void
.end method
