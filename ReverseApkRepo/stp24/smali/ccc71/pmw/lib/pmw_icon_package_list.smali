.class public Lccc71/pmw/lib/pmw_icon_package_list;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/widget/TableLayout;

.field private f:Landroid/widget/TableLayout;

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View$OnTouchListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->b:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->c:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->d:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lccc71/pmw/lib/gb;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gb;-><init>(Lccc71/pmw/lib/pmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->k:Landroid/view/View$OnTouchListener;

    .line 221
    new-instance v0, Lccc71/pmw/lib/gc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gc;-><init>(Lccc71/pmw/lib/pmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->l:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lccc71/pmw/lib/gd;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gd;-><init>(Lccc71/pmw/lib/pmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->m:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lccc71/pmw/lib/ge;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ge;-><init>(Lccc71/pmw/lib/pmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->n:Landroid/view/View$OnClickListener;

    .line 299
    new-instance v0, Lccc71/pmw/lib/gf;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/gf;-><init>(Lccc71/pmw/lib/pmw_icon_package_list;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->o:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method private a(Landroid/content/pm/PackageManager;IZ)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 320
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 322
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 323
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 326
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 327
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    const/high16 v0, 0x4190

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 329
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 332
    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {v2, p2}, Landroid/widget/TableRow;->setId(I)V

    .line 335
    if-eqz p3, :cond_1

    .line 337
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    const/4 v1, 0x0

    .line 343
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "ccc71.pmw.icons.pmw_preferences"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 354
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 355
    sget v1, Lccc71/pmw/lib/c;->aw:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object v1, p0, Lccc71/pmw/lib/pmw_icon_package_list;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/TableRow$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    :cond_0
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->a:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/content/pm/PackageManager;IZ)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3}, Lccc71/pmw/lib/pmw_icon_package_list;->a(Landroid/content/pm/PackageManager;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lccc71/pmw/lib/pmw_icon_package_list;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/widget/TableLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lccc71/pmw/lib/pmw_icon_package_list;->e:Landroid/widget/TableLayout;

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_icon_package_list;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lccc71/pmw/lib/pmw_icon_package_list;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/widget/TableLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lccc71/pmw/lib/pmw_icon_package_list;->f:Landroid/widget/TableLayout;

    return-void
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->f:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_icon_package_list;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/widget/TableLayout;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->e:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_icon_package_list;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 201
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 202
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v0, p0, Lccc71/pmw/lib/pmw_icon_package_list;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 54
    sget v0, Lccc71/pmw/lib/e;->bj:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_icon_package_list;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_icon_package_list;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 57
    new-instance v1, Lccc71/pmw/lib/gg;

    invoke-direct {v1, p0, v0}, Lccc71/pmw/lib/gg;-><init>(Lccc71/pmw/lib/pmw_icon_package_list;Landroid/content/pm/PackageManager;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 193
    invoke-virtual {v1, v0}, Lccc71/pmw/lib/gg;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 194
    return-void
.end method
