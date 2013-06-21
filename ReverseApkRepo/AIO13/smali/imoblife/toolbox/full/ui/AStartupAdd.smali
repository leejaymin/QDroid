.class public Limoblife/toolbox/full/ui/AStartupAdd;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Landroid/widget/ListView;

.field private c:Limoblife/toolbox/full/ui/bt;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AStartupAdd;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/bs;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/bs;-><init>(Limoblife/toolbox/full/ui/AStartupAdd;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/bs;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AStartupAdd;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Limoblife/toolbox/full/c/c;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Limoblife/toolbox/full/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/c;->a()Limoblife/toolbox/full/c/c;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/c;->close()V

    :goto_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Limoblife/toolbox/full/c/c;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Limoblife/toolbox/full/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/c;->a()Limoblife/toolbox/full/c/c;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/c/c;->b(Ljava/lang/String;)Z

    invoke-virtual {v0}, Limoblife/toolbox/full/c/c;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AStartupAdd;Z)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createStartupDialog(): checked = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createStartupDialog(): message = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Limoblife/toolbox/full/ui/br;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/br;-><init>(Limoblife/toolbox/full/ui/AStartupAdd;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07005f

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AStartupAdd;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070062

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AStartupAdd;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createStartupDialog(): message = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/AStartupAdd;)Limoblife/toolbox/full/ui/bt;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->c:Limoblife/toolbox/full/ui/bt;

    return-object v0
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/AStartupAdd;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->a:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Limoblife/toolbox/full/ui/AStartupAdd;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Limoblife/toolbox/full/ui/AStartupAdd;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v0, 0x1

    new-instance v7, Ljava/io/File;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    const/4 v0, 0x1

    if-eq v6, v0, :cond_2

    new-instance v0, Limoblife/toolbox/full/c/c;

    iget-object v6, p0, Limoblife/toolbox/full/ui/AStartupAdd;->i:Landroid/content/Context;

    invoke-direct {v0, v6}, Limoblife/toolbox/full/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/c;->a()Limoblife/toolbox/full/c/c;

    invoke-virtual {v0, v3}, Limoblife/toolbox/full/c/c;->c(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0}, Limoblife/toolbox/full/c/c;->close()V

    new-instance v0, Limoblife/toolbox/full/ui/bv;

    invoke-direct {v0, p0, v5, v3, v4}, Limoblife/toolbox/full/ui/bv;-><init>(Limoblife/toolbox/full/ui/AStartupAdd;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Limoblife/toolbox/full/ui/bv;->a(Z)V

    iget-object v3, p0, Limoblife/toolbox/full/ui/AStartupAdd;->c:Limoblife/toolbox/full/ui/bt;

    invoke-virtual {v3, v0}, Limoblife/toolbox/full/ui/bt;->a(Limoblife/toolbox/full/ui/bv;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AStartupAdd;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AStartupAdd;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AStartupAdd;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AStartupAdd;->requestWindowFeature(I)Z

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AStartupAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AStartupAdd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->i:Landroid/content/Context;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->b:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->h:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->h:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->h:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Limoblife/toolbox/full/ui/bt;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->i:Landroid/content/Context;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/bt;-><init>(Limoblife/toolbox/full/ui/AStartupAdd;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->c:Limoblife/toolbox/full/ui/bt;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->b:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AStartupAdd;->c:Limoblife/toolbox/full/ui/bt;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07015b

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AStartupAdd;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AStartupAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/bp;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/bp;-><init>(Limoblife/toolbox/full/ui/AStartupAdd;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AStartupAdd;->a()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->c:Limoblife/toolbox/full/ui/bt;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/bt;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AStartupAdd;->c:Limoblife/toolbox/full/ui/bt;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/bt;->b(I)Limoblife/toolbox/full/ui/bv;

    move-result-object v0

    iget-object v1, v0, Limoblife/toolbox/full/ui/bv;->b:Ljava/lang/String;

    iget-object v2, v0, Limoblife/toolbox/full/ui/bv;->a:Ljava/lang/String;

    invoke-static {v0}, Limoblife/toolbox/full/ui/bv;->a(Limoblife/toolbox/full/ui/bv;)Z

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "change(): checked = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Limoblife/toolbox/full/ui/bq;

    invoke-direct {v4, p0, v1, v2, v3}, Limoblife/toolbox/full/ui/bq;-><init>(Limoblife/toolbox/full/ui/AStartupAdd;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v4, v1}, Limoblife/toolbox/full/ui/bq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onItemClick(): item._isChecked = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Limoblife/toolbox/full/ui/bv;->a(Limoblife/toolbox/full/ui/bv;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
