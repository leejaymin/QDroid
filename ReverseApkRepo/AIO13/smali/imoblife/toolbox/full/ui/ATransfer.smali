.class public Limoblife/toolbox/full/ui/ATransfer;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Limoblife/toolbox/full/ui/cm;

.field private b:I

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ATransfer;->l:I

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ATransfer;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/ck;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/ck;-><init>(Limoblife/toolbox/full/ui/ATransfer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/ck;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-DETAILS- showInstalledAppDetails(): apiLevel >= 9"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "package"

    const/4 v2, 0x0

    invoke-static {v0, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-DETAILS- showInstalledAppDetails(): apiLevel < 9"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    const-string v0, "pkg"

    :goto_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "com.android.settings.ApplicationPkgName"

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-DETAILS- startActivity(): Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/cm;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/cm;->b(I)Limoblife/toolbox/full/ui/cl;

    move-result-object v1

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/cl;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ATransfer;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8

    move v7, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Limoblife/toolbox/full/ui/ATransfer;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Limoblife/toolbox/full/ui/ATransfer;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v9, :cond_2

    new-instance v0, Limoblife/toolbox/full/ui/cl;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Limoblife/toolbox/full/ui/cl;-><init>(Limoblife/toolbox/full/ui/ATransfer;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/ATransfer;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Limoblife/toolbox/full/ui/ATransfer;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cl;->b()V

    :cond_1
    iget v1, p0, Limoblife/toolbox/full/ui/ATransfer;->b:I

    if-nez v1, :cond_3

    invoke-direct {p0, v2}, Limoblife/toolbox/full/ui/ATransfer;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/cm;->a(Limoblife/toolbox/full/ui/cl;)V

    iget v0, p0, Limoblife/toolbox/full/ui/ATransfer;->j:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Limoblife/toolbox/full/ui/ATransfer;->j:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    iget v1, p0, Limoblife/toolbox/full/ui/ATransfer;->b:I

    if-ne v1, v9, :cond_2

    invoke-direct {p0, v2}, Limoblife/toolbox/full/ui/ATransfer;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/cm;->a(Limoblife/toolbox/full/ui/cl;)V

    iget v0, p0, Limoblife/toolbox/full/ui/ATransfer;->k:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Limoblife/toolbox/full/ui/ATransfer;->k:I

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ATransfer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v2, "/mnt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSdCard(): NameNotFoundException = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/ATransfer;)V
    .locals 6

    const-string v0, "/sdcard"

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v4, v2

    iput-wide v4, p0, Limoblife/toolbox/full/ui/ATransfer;->o:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Limoblife/toolbox/full/ui/ATransfer;->p:J

    return-void
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/ATransfer;)V
    .locals 6

    const-string v0, "/data"

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getFreeBlocks()I

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v4, v2

    iput-wide v4, p0, Limoblife/toolbox/full/ui/ATransfer;->m:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Limoblife/toolbox/full/ui/ATransfer;->n:J

    return-void
.end method

.method static synthetic e(Limoblife/toolbox/full/ui/ATransfer;)V
    .locals 3

    const v2, 0x7f020031

    const v1, 0x7f020030

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ATransfer;->j:I

    iput v0, p0, Limoblife/toolbox/full/ui/ATransfer;->k:I

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ATransfer;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cm;->a()V

    :cond_0
    iget v0, p0, Limoblife/toolbox/full/ui/ATransfer;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic f(Limoblife/toolbox/full/ui/ATransfer;)V
    .locals 5

    const v4, 0x7f020031

    const v3, 0x7f020030

    iget v0, p0, Limoblife/toolbox/full/ui/ATransfer;->b:I

    if-nez v0, :cond_0

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ATransfer;->m:J

    invoke-static {v0, v1}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->h:Landroid/widget/TextView;

    const v2, 0x7f070117

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cm;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cm;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ATransfer;->o:J

    invoke-static {v0, v1}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->h:Landroid/widget/TextView;

    const v2, 0x7f07011b

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Limoblife/toolbox/full/ui/ATransfer;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    move v1, v0

    move v0, v2

    :goto_0
    if-ne v1, v3, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isMoveable(): isMoveable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    packed-switch v1, :pswitch_data_0

    :cond_2
    move v1, v0

    :goto_2
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->nextToken()I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v0

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_0

    :pswitch_0
    :try_start_2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "manifest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-interface {v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "installLocation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "-isMoveable()-: value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "[0-9]*"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    packed-switch v0, :pswitch_data_1

    move v1, v2

    goto :goto_2

    :pswitch_1
    move v1, v3

    goto :goto_2

    :pswitch_2
    move v1, v2

    goto :goto_2

    :pswitch_3
    move v1, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMoveable(): NameNotFoundException = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMoveable(): XmlPullParserException = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isMoveable(): IOException = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_5

    :catch_7
    move-exception v1

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public finish()V
    .locals 4

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ATransfer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imoblife.memorybooster.AMOUNT"

    iget v2, p0, Limoblife/toolbox/full/ui/ATransfer;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "imoblife.memorybooster.SIZE"

    iget v2, p0, Limoblife/toolbox/full/ui/ATransfer;->k:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v1, p0, Limoblife/toolbox/full/ui/ATransfer;->l:I

    invoke-virtual {p0, v1, v0}, Limoblife/toolbox/full/ui/ATransfer;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ATransfer;->b()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ATransfer;->b:I

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ATransfer;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Limoblife/toolbox/full/ui/ATransfer;->b:I

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ATransfer;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->requestWindowFeature(I)Z

    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->setContentView(I)V

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ATransfer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->c:Landroid/content/pm/PackageManager;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->e:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->e:Landroid/widget/ListView;

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

    const v0, 0x7f07011c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->d:Landroid/view/LayoutInflater;

    new-instance v0, Limoblife/toolbox/full/ui/cm;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/cm;-><init>(Limoblife/toolbox/full/ui/ATransfer;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->e:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070114

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->h:Landroid/widget/TextView;

    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->i:Landroid/widget/TextView;

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/cj;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/cj;-><init>(Limoblife/toolbox/full/ui/ATransfer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/cm;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/cm;->b(I)Limoblife/toolbox/full/ui/cl;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cl;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATransfer;->a:Limoblife/toolbox/full/ui/cm;

    invoke-virtual {v1, p3}, Limoblife/toolbox/full/ui/cm;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput v2, p0, Limoblife/toolbox/full/ui/ATransfer;->l:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p0, v0}, Limoblife/toolbox/full/ui/ATransfer;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput v2, p0, Limoblife/toolbox/full/ui/ATransfer;->l:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ATransfer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07011a

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ATransfer;->a()V

    return-void
.end method
