.class public Limoblife/toolbox/full/ui/AUninstaller;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Landroid/view/LayoutInflater;

.field private c:Limoblife/toolbox/full/ui/cx;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/CheckBox;

.field private i:I

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->k:I

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AUninstaller;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/cw;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/cw;-><init>(Limoblife/toolbox/full/ui/AUninstaller;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/cw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->j:Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->h:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/AUninstaller;->j:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cx;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectAll(): _isAllSelected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/AUninstaller;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/AUninstaller;->j:Z

    invoke-virtual {v0, v1, v2}, Limoblife/toolbox/full/ui/cx;->a(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/AUninstaller;)V
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->a:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v10

    move v9, v0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lt v9, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v0, 0x1

    new-instance v1, Ljava/io/File;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v0, 0x1

    if-eq v6, v0, :cond_2

    iget-object v11, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    new-instance v0, Limoblife/toolbox/full/ui/cz;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Limoblife/toolbox/full/ui/cz;-><init>(Limoblife/toolbox/full/ui/AUninstaller;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v11, v0}, Limoblife/toolbox/full/ui/cx;->a(Limoblife/toolbox/full/ui/cz;)V

    iget v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->i:I

    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/AUninstaller;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->i:I

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cx;->a()V

    return-void
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/AUninstaller;)V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Limoblife/toolbox/full/ui/AUninstaller;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->h:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cx;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cx;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AUninstaller;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imoblife.memorybooster.AMOUNT"

    iget v2, p0, Limoblife/toolbox/full/ui/AUninstaller;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "imoblife.memorybooster.SIZE"

    iget v2, p0, Limoblife/toolbox/full/ui/AUninstaller;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->k:I

    invoke-virtual {p0, v1, v0}, Limoblife/toolbox/full/ui/AUninstaller;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/cx;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->k:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/cx;->b(I)Limoblife/toolbox/full/ui/cz;

    move-result-object v1

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/cz;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Limoblife/toolbox/full/ui/cz;->a(Limoblife/toolbox/full/ui/cz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AUninstaller;->startActivity(Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AUninstaller;->a()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->h:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AUninstaller;->b()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->requestWindowFeature(I)Z

    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AUninstaller;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->a:Landroid/content/pm/PackageManager;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->d:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f070149

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->b:Landroid/view/LayoutInflater;

    new-instance v0, Limoblife/toolbox/full/ui/cx;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/cx;-><init>(Limoblife/toolbox/full/ui/AUninstaller;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->d:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080130

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->f:Landroid/widget/TextView;

    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070147

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AUninstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AUninstaller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/cv;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/cv;-><init>(Limoblife/toolbox/full/ui/AUninstaller;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AUninstaller;->c:Limoblife/toolbox/full/ui/cx;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/cx;->a(I)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AUninstaller;->a()V

    return-void
.end method
