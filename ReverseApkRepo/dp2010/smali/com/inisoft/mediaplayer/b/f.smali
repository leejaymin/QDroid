.class public final Lcom/inisoft/mediaplayer/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/b/ai;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Spinner;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Spinner;

.field private e:Landroid/widget/Spinner;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/inisoft/mediaplayer/b/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->b:Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->c:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->d:Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->e:Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->g:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/b/f;->h:Z

    iput v2, p0, Lcom/inisoft/mediaplayer/b/f;->i:I

    iput v2, p0, Lcom/inisoft/mediaplayer/b/f;->j:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/inisoft/mediaplayer/b/f;->k:I

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    const-string v0, "DICE_SETTINGS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gesture_use"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/f;->h:Z

    const-string v1, "gestureseek_row"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/f;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/f;->i:I

    const-string v1, "gesture_left_options"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/f;->j:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/f;->j:I

    const-string v1, "gesture_right_options"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/f;->k:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/b/f;->k:I

    return-void
.end method

.method private a()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/b/f;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/f;->a()V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/f;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/f;->i:I

    const-string v1, "gestureseek_row"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/f;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/f;->i:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->i(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/f;IZ)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p2, :cond_1

    iput p1, p0, Lcom/inisoft/mediaplayer/b/f;->j:I

    const-string v1, "gesture_left_options"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    invoke-interface {v1, p1}, Lcom/inisoft/mediaplayer/b/aj;->j(I)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_1
    iput p1, p0, Lcom/inisoft/mediaplayer/b/f;->k:I

    const-string v1, "gesture_right_options"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    invoke-interface {v1, p1}, Lcom/inisoft/mediaplayer/b/aj;->k(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/f;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/b/f;->h:Z

    const-string v1, "gesture_use"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/f;->h:Z

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->f(Z)V
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
    .locals 5

    const/4 v2, 0x0

    const v4, 0x1090009

    const v3, 0x1090008

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f030025

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const v0, 0x7f05004e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f050050

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->b:Landroid/widget/Spinner;

    const v1, 0x7f05004f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->c:Landroid/widget/TextView;

    const v1, 0x7f050052

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->d:Landroid/widget/Spinner;

    const v1, 0x7f050054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->e:Landroid/widget/Spinner;

    const v1, 0x7f050051

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->f:Landroid/widget/TextView;

    const v1, 0x7f050053

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/f;->g:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/f;->h:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    new-instance v1, Lcom/inisoft/mediaplayer/b/g;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/g;-><init>(Lcom/inisoft/mediaplayer/b/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->b:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->b:Landroid/widget/Spinner;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/f;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->b:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/h;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/h;-><init>(Lcom/inisoft/mediaplayer/b/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/f;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->d:Landroid/widget/Spinner;

    iget v2, p0, Lcom/inisoft/mediaplayer/b/f;->j:I

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->d:Landroid/widget/Spinner;

    new-instance v2, Lcom/inisoft/mediaplayer/b/i;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/b/i;-><init>(Lcom/inisoft/mediaplayer/b/f;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->e:Landroid/widget/Spinner;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/f;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/f;->e:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/j;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/j;-><init>(Lcom/inisoft/mediaplayer/b/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/f;->a()V

    :cond_1
    return-object p1

    :cond_2
    const v1, 0x7f030026

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public final a(Lcom/inisoft/mediaplayer/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/f;->l:Lcom/inisoft/mediaplayer/b/aj;

    return-void
.end method
