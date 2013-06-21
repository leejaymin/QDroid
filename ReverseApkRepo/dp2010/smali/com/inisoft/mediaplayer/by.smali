.class public final Lcom/inisoft/mediaplayer/by;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/inisoft/mediaplayer/cg;

.field private static final m:Ljava/util/Comparator;

.field private static synthetic n:[I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/app/AlertDialog;

.field private f:Landroid/app/AlertDialog$Builder;

.field private g:Lcom/inisoft/mediaplayer/ch;

.field private h:Z

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/EditText;

.field private l:Lcom/inisoft/mediaplayer/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inisoft/mediaplayer/bz;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/bz;-><init>()V

    sput-object v0, Lcom/inisoft/mediaplayer/by;->m:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->e:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->f:Landroid/app/AlertDialog$Builder;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->g:Lcom/inisoft/mediaplayer/ch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/by;->h:Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->l:Lcom/inisoft/mediaplayer/ci;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/inisoft/mediaplayer/by;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/by;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Lcom/inisoft/mediaplayer/cg;
    .locals 1

    sget-object v0, Lcom/inisoft/mediaplayer/by;->i:Lcom/inisoft/mediaplayer/cg;

    return-object v0
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/by;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inisoft/mediaplayer/cg;Lcom/inisoft/mediaplayer/ci;)V
    .locals 1

    sput-object p3, Lcom/inisoft/mediaplayer/by;->i:Lcom/inisoft/mediaplayer/cg;

    new-instance v0, Lcom/inisoft/mediaplayer/by;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/by;-><init>(Landroid/content/Context;)V

    iput-object p4, v0, Lcom/inisoft/mediaplayer/by;->l:Lcom/inisoft/mediaplayer/ci;

    invoke-direct {v0, p1, p2}, Lcom/inisoft/mediaplayer/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/inisoft/mediaplayer/by;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0a00af

    const v6, 0x7f0a00a5

    const/4 v5, -0x1

    const/16 v4, 0xe

    iput-object p1, p0, Lcom/inisoft/mediaplayer/by;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/by;->c:Ljava/lang/String;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/by;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/inisoft/mediaplayer/ch;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p2, v0}, Lcom/inisoft/mediaplayer/ch;-><init>(Lcom/inisoft/mediaplayer/by;Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/by;->g:Lcom/inisoft/mediaplayer/ch;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->g:Lcom/inisoft/mediaplayer/ch;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/ch;->setNotifyOnChange(Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f030020

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-static {v4}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    :goto_0
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/inisoft/mediaplayer/by;->j:Landroid/widget/ListView;

    invoke-static {v4}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "theme"

    const-string v3, "Light"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Light"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/by;->g:Lcom/inisoft/mediaplayer/ch;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->j:Landroid/widget/ListView;

    new-instance v2, Lcom/inisoft/mediaplayer/ca;

    invoke-direct {v2, p0}, Lcom/inisoft/mediaplayer/ca;-><init>(Lcom/inisoft/mediaplayer/by;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/inisoft/mediaplayer/cb;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cb;-><init>(Lcom/inisoft/mediaplayer/by;)V

    invoke-virtual {v1, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/inisoft/mediaplayer/by;->i:Lcom/inisoft/mediaplayer/cg;

    sget-object v2, Lcom/inisoft/mediaplayer/cg;->c:Lcom/inisoft/mediaplayer/cg;

    if-ne v0, v2, :cond_2

    new-instance v0, Lcom/inisoft/mediaplayer/cc;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cc;-><init>(Lcom/inisoft/mediaplayer/by;)V

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    new-instance v0, Lcom/inisoft/mediaplayer/cd;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/cd;-><init>(Lcom/inisoft/mediaplayer/by;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/by;->e:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/by;->f:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->f:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v4}, Lcom/inisoft/mediaplayer/hw;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/by;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->f:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/by;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->f:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/inisoft/mediaplayer/ce;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/ce;-><init>(Lcom/inisoft/mediaplayer/by;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->f:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/inisoft/mediaplayer/cf;

    invoke-direct {v1, p0}, Lcom/inisoft/mediaplayer/cf;-><init>(Lcom/inisoft/mediaplayer/by;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-void

    :cond_4
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/by;->a:Landroid/content/Context;

    const v3, 0x103000b

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/inisoft/mediaplayer/by;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/by;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->e:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/by;->b:Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/inisoft/mediaplayer/by;->b()[I

    move-result-object v1

    sget-object v2, Lcom/inisoft/mediaplayer/by;->i:Lcom/inisoft/mediaplayer/cg;

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/cg;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Lcom/inisoft/mediaplayer/hw;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/inisoft/mediaplayer/hw;->g(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic b()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/by;->n:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/cg;->values()[Lcom/inisoft/mediaplayer/cg;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/cg;->c:Lcom/inisoft/mediaplayer/cg;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cg;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/cg;->b:Lcom/inisoft/mediaplayer/cg;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cg;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/cg;->a:Lcom/inisoft/mediaplayer/cg;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cg;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/inisoft/mediaplayer/by;->n:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ch;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->g:Lcom/inisoft/mediaplayer/ch;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/inisoft/mediaplayer/by;->b:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    if-lt v1, v0, :cond_2

    sget-object v0, Lcom/inisoft/mediaplayer/by;->m:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3

    :cond_1
    array-length v0, v2

    goto :goto_0

    :cond_2
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inisoft/mediaplayer/by;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method static synthetic c(Lcom/inisoft/mediaplayer/by;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/by;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->l:Lcom/inisoft/mediaplayer/ci;

    return-object v0
.end method

.method static synthetic f(Lcom/inisoft/mediaplayer/by;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->f:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic g(Lcom/inisoft/mediaplayer/by;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/by;->c:Ljava/lang/String;

    return-object v0
.end method
