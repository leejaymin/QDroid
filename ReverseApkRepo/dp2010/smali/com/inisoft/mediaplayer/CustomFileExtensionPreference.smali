.class public Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;
.super Landroid/preference/ListPreference;


# instance fields
.field a:Landroid/content/Context;

.field b:[Ljava/lang/String;

.field c:[I

.field d:[Ljava/lang/String;

.field e:Landroid/content/SharedPreferences;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Lcom/inisoft/mediaplayer/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->d:[Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->e:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->g:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->h:Lcom/inisoft/mediaplayer/bd;

    :try_start_0
    iput-object p1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->e:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    new-instance v0, Lcom/inisoft/mediaplayer/bd;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/inisoft/mediaplayer/bd;-><init>(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->h:Lcom/inisoft/mediaplayer/bd;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->h:Lcom/inisoft/mediaplayer/bd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/bd;->setNotifyOnChange(Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->e:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileExtension_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->h:Lcom/inisoft/mediaplayer/bd;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/bd;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a()V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    move v2, v0

    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->d:[Ljava/lang/String;

    array-length v3, v3

    if-gt v3, v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    aput v0, v1, v2

    :goto_3
    return-void

    :cond_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FileExtension_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    aget v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a()V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/inisoft/mediaplayer/hw;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    const/4 v2, 0x1

    aput v2, v1, v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hw;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    const/4 v2, 0x2

    aput v2, v1, v0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    const/4 v2, 0x0

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const v0, 0x7f0a0019

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->h:Lcom/inisoft/mediaplayer/bd;

    new-instance v1, Lcom/inisoft/mediaplayer/ba;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/ba;-><init>(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a00a5

    new-instance v1, Lcom/inisoft/mediaplayer/bb;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/bb;-><init>(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0a00a7

    new-instance v1, Lcom/inisoft/mediaplayer/bc;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/bc;-><init>(Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->c:[I

    iget-object v2, p0, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/inisoft/mediaplayer/CustomFileExtensionPreference;->a(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
