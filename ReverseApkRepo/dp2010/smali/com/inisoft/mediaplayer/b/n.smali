.class public final Lcom/inisoft/mediaplayer/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/b/ai;


# instance fields
.field a:Landroid/widget/ArrayAdapter;

.field b:Lcom/inisoft/mediaplayer/ci;

.field private c:Landroid/content/Context;

.field private d:Lafzkl/development/mColorPicker/views/ColorPanelView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/Spinner;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/SeekBar;

.field private j:Landroid/widget/Spinner;

.field private k:Lafzkl/development/mColorPicker/a;

.field private l:I

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Z

.field private t:Lcom/inisoft/mediaplayer/b/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/b/n;->k:Lafzkl/development/mColorPicker/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/inisoft/mediaplayer/b/n;->l:I

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->m:Z

    iput v1, p0, Lcom/inisoft/mediaplayer/b/n;->n:I

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->o:Z

    const/16 v0, 0x16

    iput v0, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    const-string v0, "Default"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->s:Z

    iput-object v2, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    new-instance v0, Lcom/inisoft/mediaplayer/b/o;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/b/o;-><init>(Lcom/inisoft/mediaplayer/b/n;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->b:Lcom/inisoft/mediaplayer/ci;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v0, "DICE_SETTINGS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "subtitle_color"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/n;->l:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/n;->l:I

    const-string v1, "subtitle_bold"

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/b/n;->m:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->m:Z

    const-string v1, "subtitle_borders"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/n;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/n;->n:I

    const-string v1, "subtitle_shadow"

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/b/n;->o:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->o:Z

    const-string v1, "subtitle_fontsize"

    iget v2, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    const-string v1, "subtitle_fonts"

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a00a4

    const-string v1, "Default"

    invoke-static {p1, v0, v1}, Lcom/inisoft/mediaplayer/hw;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/n;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/inisoft/mediaplayer/b/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/n;I)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/n;->r:I

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/n;Lafzkl/development/mColorPicker/a;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/n;->k:Lafzkl/development/mColorPicker/a;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/n;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/b/n;->m:Z

    const-string v1, "subtitle_bold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->m:Z

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->d(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/n;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->j:Landroid/widget/Spinner;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/n;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/n;->l:I

    const-string v1, "subtitle_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->l:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/n;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/hw;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Default"

    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitle_fonts"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/b/aj;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/n;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/b/n;->o:Z

    const-string v1, "subtitle_shadow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->o:Z

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->e(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/b/n;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/b/n;->r:I

    return v0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/b/n;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/n;->n:I

    const-string v1, "subtitle_borders"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->n:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/b/n;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/b/n;->s:Z

    return-void
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/b/n;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/b/n;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    const-string v1, "subtitle_fontsize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/b/n;)Lafzkl/development/mColorPicker/a;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->k:Lafzkl/development/mColorPicker/a;

    return-object v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/b/n;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/b/n;->l:I

    return v0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/b/n;)Lafzkl/development/mColorPicker/views/ColorPanelView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->d:Lafzkl/development/mColorPicker/views/ColorPanelView;

    return-object v0
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/b/n;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/inisoft/mediaplayer/b/n;)I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    return v0
.end method

.method static synthetic j(Lcom/inisoft/mediaplayer/b/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/b/n;->s:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 7

    const/4 v2, 0x0

    const v6, 0x1090009

    const v5, 0x1090008

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const v0, 0x7f05007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lafzkl/development/mColorPicker/views/ColorPanelView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->d:Lafzkl/development/mColorPicker/views/ColorPanelView;

    const v0, 0x7f05007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->e:Landroid/widget/CheckBox;

    const v0, 0x7f05007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->f:Landroid/widget/Spinner;

    const v0, 0x7f05007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->g:Landroid/widget/CheckBox;

    const v0, 0x7f050080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->i:Landroid/widget/SeekBar;

    const v0, 0x7f050081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->h:Landroid/widget/TextView;

    const v0, 0x7f050083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->j:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->d:Lafzkl/development/mColorPicker/views/ColorPanelView;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->l:I

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->a(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->d:Lafzkl/development/mColorPicker/views/ColorPanelView;

    new-instance v1, Lcom/inisoft/mediaplayer/b/p;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/p;-><init>(Lcom/inisoft/mediaplayer/b/n;)V

    invoke-virtual {v0, v1}, Lafzkl/development/mColorPicker/views/ColorPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->e:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->m:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/inisoft/mediaplayer/b/r;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/r;-><init>(Lcom/inisoft/mediaplayer/b/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->f:Landroid/widget/Spinner;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->f:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/s;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/s;-><init>(Lcom/inisoft/mediaplayer/b/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->g:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/inisoft/mediaplayer/b/n;->o:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/inisoft/mediaplayer/b/t;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/t;-><init>(Lcom/inisoft/mediaplayer/b/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->i:Landroid/widget/SeekBar;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->i:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->p:I

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->i:Landroid/widget/SeekBar;

    new-instance v1, Lcom/inisoft/mediaplayer/b/u;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/u;-><init>(Lcom/inisoft/mediaplayer/b/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v0, v1

    iput v0, p0, Lcom/inisoft/mediaplayer/b/n;->r:I

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    array-length v0, v1

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->r:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/b/n;->s:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/n;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->j:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->j:Landroid/widget/Spinner;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/n;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/n;->j:Landroid/widget/Spinner;

    new-instance v1, Lcom/inisoft/mediaplayer/b/v;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/v;-><init>(Lcom/inisoft/mediaplayer/b/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_2
    return-object p1

    :cond_3
    const v1, 0x7f030030

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/n;->q:Ljava/lang/String;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput v0, p0, Lcom/inisoft/mediaplayer/b/n;->r:I

    :cond_5
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final a(Lcom/inisoft/mediaplayer/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/n;->t:Lcom/inisoft/mediaplayer/b/aj;

    return-void
.end method
