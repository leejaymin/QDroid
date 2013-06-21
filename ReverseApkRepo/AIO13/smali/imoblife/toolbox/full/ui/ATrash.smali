.class public Limoblife/toolbox/full/ui/ATrash;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:I

.field private b:J

.field private c:Limoblife/toolbox/full/ui/cs;

.field private d:Landroid/view/LayoutInflater;

.field private e:Z

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/TextView;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ATrash;->m:I

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ATrash;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Limoblife/toolbox/full/ui/cq;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/cq;-><init>(Limoblife/toolbox/full/ui/ATrash;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/cq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    const-string v0, "/proc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sys"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-eqz v8, :cond_0

    array-length v0, v8

    if-ge v7, v0, :cond_0

    aget-object v0, v8, v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dfs(): leaf.getAbsolutePath() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Limoblife/toolbox/full/ui/ATrash;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, p2}, Limoblife/toolbox/full/ui/ATrash;->a(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-string v4, "yyyy/MM/dd"

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "addApk(): filePath = "

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    new-instance v0, Limoblife/toolbox/full/ui/ct;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Limoblife/toolbox/full/ui/ct;-><init>(Limoblife/toolbox/full/ui/ATrash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v9, v0}, Limoblife/toolbox/full/ui/cs;->a(Limoblife/toolbox/full/ui/ct;)V

    iget v0, p0, Limoblife/toolbox/full/ui/ATrash;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Limoblife/toolbox/full/ui/ATrash;->a:I

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    goto :goto_1
.end method

.method private a(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isTrash(): file.getParent() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "tmp"

    aput-object v2, v3, v1

    const-string v2, "temp"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "cache"

    aput-object v4, v3, v2

    move v2, v1

    :goto_0
    if-eqz p2, :cond_0

    array-length v4, p2

    if-lt v2, v4, :cond_1

    :cond_0
    move v0, v1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isTrash(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isTrash(): true, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ATrash;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "retrieveApk(): {"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".tmp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".temp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".cache"

    aput-object v2, v0, v1

    const-string v1, "/sdcard"

    invoke-direct {p0, v1, v0}, Limoblife/toolbox/full/ui/ATrash;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "retrieveApk(): }"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/ATrash;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ATrash;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cs;->a()V

    return-void
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/ATrash;)V
    .locals 4

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    invoke-static {v0, v1}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATrash;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Limoblife/toolbox/full/ui/ATrash;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATrash;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->k:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cs;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic e(Limoblife/toolbox/full/ui/ATrash;)V
    .locals 7

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cs;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/cs;->a(I)Limoblife/toolbox/full/ui/ct;

    move-result-object v1

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/ct;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Limoblife/toolbox/full/ui/ct;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    iget-object v3, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v3, v0}, Limoblife/toolbox/full/ui/cs;->c(I)V

    iget v3, p0, Limoblife/toolbox/full/ui/ATrash;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Limoblife/toolbox/full/ui/ATrash;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleteSelected(): _total_size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleteSelected(): file.getName() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteSelected(): isSuccess = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 4

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ATrash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imoblife.memorybooster.AMOUNT"

    iget v2, p0, Limoblife/toolbox/full/ui/ATrash;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "imoblife.memorybooster.SIZE"

    iget-wide v2, p0, Limoblife/toolbox/full/ui/ATrash;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v1, p0, Limoblife/toolbox/full/ui/ATrash;->m:I

    invoke-virtual {p0, v1, v0}, Limoblife/toolbox/full/ui/ATrash;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Limoblife/toolbox/full/ui/cr;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/cr;-><init>(Limoblife/toolbox/full/ui/ATrash;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/cr;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/ATrash;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/ATrash;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/ATrash;->e:Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->k:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/ATrash;->e:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/cs;->getCount()I

    move-result v0

    :goto_2
    if-lt v1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectAll(): _isAllSelected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/ATrash;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    iget-boolean v3, p0, Limoblife/toolbox/full/ui/ATrash;->e:Z

    invoke-virtual {v2, v1, v3}, Limoblife/toolbox/full/ui/cs;->a(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ATrash;->a()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->requestWindowFeature(I)Z

    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->setContentView(I)V

    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->g:Landroid/widget/TextView;

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->l:Landroid/widget/TextView;

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->f:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->f:Landroid/widget/ListView;

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

    const v0, 0x7f07013c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->f:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->k:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ATrash;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->d:Landroid/view/LayoutInflater;

    new-instance v0, Limoblife/toolbox/full/ui/cs;

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ATrash;->getApplicationContext()Landroid/content/Context;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/cs;-><init>(Limoblife/toolbox/full/ui/ATrash;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->f:Landroid/widget/ListView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f07013a

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/ATrash;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ATrash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/cp;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/cp;-><init>(Limoblife/toolbox/full/ui/ATrash;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ATrash;->a()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ATrash;->c:Limoblife/toolbox/full/ui/cs;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/cs;->b(I)V

    :cond_0
    return-void
.end method
