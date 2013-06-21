.class public final Lcom/inisoft/mediaplayer/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/b/ai;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Lcom/inisoft/mediaplayer/b/aj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v0, 0xff

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->c:Ljava/lang/String;

    iput v2, p0, Lcom/inisoft/mediaplayer/b/a;->d:I

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z

    iput v0, p0, Lcom/inisoft/mediaplayer/b/a;->f:I

    iput-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "rotation"

    const-string v3, "sensorLandscape"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inisoft/mediaplayer/b/a;->c:Ljava/lang/String;

    const-string v2, "screen_size"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/inisoft/mediaplayer/b/a;->d:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z

    :goto_0
    const-string v3, "dice_brightMode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    :try_start_2
    const-string v2, "dice_brightValue"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/b/a;->f:I

    :goto_3
    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_1
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private a([Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 4

    const-string v0, "%d%%"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/inisoft/mediaplayer/b/a;->f:I

    mul-int/lit8 v3, v3, 0x64

    div-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/a;->f:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->b(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/b/a;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    aget-object v2, v0, p1

    iput-object v2, p0, Lcom/inisoft/mediaplayer/b/a;->c:Ljava/lang/String;

    const-string v2, "rotation"

    aget-object v0, v0, p1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/b/a;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput p1, p0, Lcom/inisoft/mediaplayer/b/a;->d:I

    const-string v1, "screen_size"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/a;->d:I

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/b/aj;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/b/a;I)V
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-ne p1, v0, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "dice_brightMode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z

    invoke-interface {v0, v2}, Lcom/inisoft/mediaplayer/b/aj;->a(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    const-string v2, "dice_brightValue"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/b/a;->f:I

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/a;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v0, 0xff

    goto :goto_2
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/b/a;I)V
    .locals 4

    const/16 v1, 0xff

    const/16 v0, 0x1e

    iget-boolean v2, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z

    if-nez v2, :cond_0

    if-le p1, v1, :cond_2

    :goto_0
    if-ge v1, v0, :cond_1

    :goto_1
    iput v0, p0, Lcom/inisoft/mediaplayer/b/a;->f:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "dice_brightValue"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/a;->a()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 10

    const/4 v2, 0x0

    const v9, 0x1090009

    const v8, 0x1090008

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f03001a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const v0, 0x7f05003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f050040

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    const v2, 0x7f050041

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f050043

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    const v3, 0x7f050044

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    invoke-direct {v4, v5, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/inisoft/mediaplayer/b/a;->a([Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v3, Lcom/inisoft/mediaplayer/b/b;

    invoke-direct {v3, p0}, Lcom/inisoft/mediaplayer/b/b;-><init>(Lcom/inisoft/mediaplayer/b/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/inisoft/mediaplayer/b/a;->g:Landroid/content/Context;

    invoke-direct {v3, v4, v8, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v0, p0, Lcom/inisoft/mediaplayer/b/a;->d:I

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v0, Lcom/inisoft/mediaplayer/b/c;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/b/c;-><init>(Lcom/inisoft/mediaplayer/b/a;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/inisoft/mediaplayer/b/d;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/b/d;-><init>(Lcom/inisoft/mediaplayer/b/a;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    const/16 v1, 0xe1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/inisoft/mediaplayer/b/a;->f:I

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    new-instance v1, Lcom/inisoft/mediaplayer/b/e;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/b/e;-><init>(Lcom/inisoft/mediaplayer/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/b/a;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    const v1, 0x7f03001b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/b/a;->a()V

    goto :goto_1
.end method

.method public final a(Lcom/inisoft/mediaplayer/b/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/a;->h:Lcom/inisoft/mediaplayer/b/aj;

    return-void
.end method
