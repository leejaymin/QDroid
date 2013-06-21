.class public final Lcom/inisoft/mediaplayer/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/b/ai;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/SeekBar;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Spinner;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/inisoft/mediaplayer/b/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0xf

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/inisoft/mediaplayer/b/k;->e:I

    const-string v0, "300000"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->g:Lcom/inisoft/mediaplayer/b/aj;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    const-string v0, "DICE_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "seek_intervals"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/k;->e:I

    const-string v1, "gestureseek_ranges"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->f:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/k;->f:Ljava/lang/String;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/k;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/k;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/k;->e:I

    const-string v1, "seek_intervals"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->g:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->g:Lcom/inisoft/mediaplayer/b/aj;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/b/aj;->l(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/k;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/b/k;->e:I

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/k;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/k;->f:Ljava/lang/String;

    const-string v1, "gestureseek_ranges"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->g:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->g:Lcom/inisoft/mediaplayer/b/aj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/k;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f030029

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const v0, 0x7f050061

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->b:Landroid/widget/SeekBar;

    const v0, 0x7f050062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->c:Landroid/widget/TextView;

    const v0, 0x7f050060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->d:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->b:Landroid/widget/SeekBar;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->b:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/k;->e:I

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->b:Landroid/widget/SeekBar;

    new-instance v1, Lcom/inisoft/mediaplayer/b/l;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/l;-><init>(Lcom/inisoft/mediaplayer/b/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/inisoft/mediaplayer/b/k;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " sec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/k;->a:Landroid/content/Context;

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->d:Landroid/widget/Spinner;

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/k;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/k;->d:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/m;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/m;-><init>(Lcom/inisoft/mediaplayer/b/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    return-object p1

    :cond_2
    const v1, 0x7f03002a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public final a(Lcom/inisoft/mediaplayer/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/k;->g:Lcom/inisoft/mediaplayer/b/aj;

    return-void
.end method
