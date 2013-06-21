.class public Limoblife/toolbox/full/ui/AWhitelist;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Landroid/app/ActivityManager;

.field private c:Landroid/view/LayoutInflater;

.field private d:Limoblife/toolbox/full/ui/dg;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ListView;

.field private j:Ljava/util/List;

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AWhitelist;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/dg;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/dg;->a(I)Limoblife/toolbox/full/ui/di;

    move-result-object v1

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/di;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AWhitelist;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/ui/dg;->b(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/dg;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0, p2}, Limoblife/toolbox/full/ui/AWhitelist;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Limoblife/toolbox/full/ui/di;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->k:I

    if-nez v0, :cond_1

    invoke-static {p1}, Limoblife/toolbox/full/ui/di;->c(Limoblife/toolbox/full/ui/di;)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/ui/dg;->a(Limoblife/toolbox/full/ui/di;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->k:I

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Limoblife/toolbox/full/ui/di;->c(Limoblife/toolbox/full/ui/di;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/ui/dg;->a(Limoblife/toolbox/full/ui/di;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Limoblife/toolbox/full/c/a;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->a()Limoblife/toolbox/full/c/a;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/c/a;->a(Ljava/lang/String;)Z

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Limoblife/toolbox/full/c/a;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->a()Limoblife/toolbox/full/c/a;

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->d()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Limoblife/toolbox/full/ui/AWhitelist;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->b()V

    return-void

    :cond_0
    const-string v2, "_appName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v2, "_pkgName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Limoblife/toolbox/full/ui/AWhitelist;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/AWhitelist;)V
    .locals 0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AWhitelist;->b()V

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/de;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/de;-><init>(Limoblife/toolbox/full/ui/AWhitelist;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/de;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/AWhitelist;)V
    .locals 10

    const/4 v8, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->a:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    move v7, v8

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AWhitelist;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AWhitelist;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v0, 0x1

    new-instance v1, Ljava/io/File;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Limoblife/toolbox/full/ui/di;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Limoblife/toolbox/full/ui/di;-><init>(Limoblife/toolbox/full/ui/AWhitelist;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->a(Limoblife/toolbox/full/ui/di;)V

    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    new-instance v0, Limoblife/toolbox/full/ui/di;

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v6}, Limoblife/toolbox/full/ui/di;-><init>(Limoblife/toolbox/full/ui/AWhitelist;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->a(Limoblife/toolbox/full/ui/di;)V

    goto :goto_1
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/AWhitelist;)V
    .locals 1

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AWhitelist;->a()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/dg;->a()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/dg;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method static synthetic e(Limoblife/toolbox/full/ui/AWhitelist;)Limoblife/toolbox/full/ui/dg;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AWhitelist;->a()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f020031

    const v2, 0x7f020030

    const/4 v1, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Limoblife/toolbox/full/ui/dd;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/dd;-><init>(Limoblife/toolbox/full/ui/AWhitelist;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/dd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AWhitelist;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iput v1, p0, Limoblife/toolbox/full/ui/AWhitelist;->k:I

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AWhitelist;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v0, 0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->k:I

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AWhitelist;->c()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AWhitelist;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x7f030013

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AWhitelist;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->a:Landroid/content/pm/PackageManager;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->b:Landroid/app/ActivityManager;

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0700fe

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AWhitelist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/db;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/db;-><init>(Limoblife/toolbox/full/ui/AWhitelist;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->i:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->i:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->c:Landroid/view/LayoutInflater;

    new-instance v0, Limoblife/toolbox/full/ui/dg;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/dg;-><init>(Limoblife/toolbox/full/ui/AWhitelist;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->i:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080137

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AWhitelist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->j:Ljava/util/List;

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AWhitelist;->b()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/dg;->a(I)Limoblife/toolbox/full/ui/di;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/di;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/di;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/di;->e()V

    iget-object v3, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v3}, Limoblife/toolbox/full/ui/dg;->b()V

    iget-object v3, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v3}, Limoblife/toolbox/full/ui/dg;->notifyDataSetChanged()V

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/di;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Limoblife/toolbox/full/c/a;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->a()Limoblife/toolbox/full/c/a;

    invoke-virtual {v0, v1, v2}, Limoblife/toolbox/full/c/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v2}, Limoblife/toolbox/full/ui/AWhitelist;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AWhitelist;->d:Limoblife/toolbox/full/ui/dg;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/dg;->a(I)Limoblife/toolbox/full/ui/di;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/di;->a(Limoblife/toolbox/full/ui/di;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Limoblife/toolbox/full/ui/di;->b(Limoblife/toolbox/full/ui/di;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Limoblife/toolbox/full/ui/dc;

    invoke-direct {v2, p0, p3, v1}, Limoblife/toolbox/full/ui/dc;-><init>(Limoblife/toolbox/full/ui/AWhitelist;ILjava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "remove Whitelist"

    aput-object v4, v1, v3

    const-string v3, "..."

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "..."

    aput-object v4, v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return v5
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AWhitelist;->c()V

    return-void
.end method
