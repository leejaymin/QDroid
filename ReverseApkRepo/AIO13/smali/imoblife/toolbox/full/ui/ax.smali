.class public Limoblife/toolbox/full/ui/ax;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Limoblife/toolbox/full/d/c;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Landroid/app/ActivityManager;

.field private c:Limoblife/toolbox/full/ui/bd;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:Limoblife/toolbox/full/g/b;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/app/AlertDialog;

.field private t:Landroid/content/Context;

.field private u:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Limoblife/toolbox/full/ui/ax;->k:Z

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ax;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Landroid/support/v4/app/Fragment;
    .locals 2

    const-class v0, Limoblife/toolbox/full/ui/ax;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- newInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Limoblife/toolbox/full/ui/ax;

    invoke-direct {v0}, Limoblife/toolbox/full/ui/ax;-><init>()V

    return-object v0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ax;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/g/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    invoke-virtual {v0}, Limoblife/toolbox/full/g/b;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/ui/bd;->d(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->notifyDataSetChanged()V

    iget v0, p0, Limoblife/toolbox/full/ui/ax;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/ax;->l:I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Limoblife/toolbox/full/ui/ax;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ax;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, p1}, Limoblife/toolbox/full/ui/bd;->d(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->notifyDataSetChanged()V

    iget v0, p0, Limoblife/toolbox/full/ui/ax;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/ax;->l:I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Limoblife/toolbox/full/ui/ax;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, p2, p3}, Limoblife/toolbox/full/ui/ax;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ax;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/ax;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(+) insertRecord()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Limoblife/toolbox/full/c/a;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Limoblife/toolbox/full/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->a()Limoblife/toolbox/full/c/a;

    invoke-virtual {v0, p1, p2}, Limoblife/toolbox/full/c/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(+) insertRecord(): result = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->d()Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Limoblife/toolbox/full/c/a;->b()V

    return-void

    :cond_0
    const-string v2, "_appName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_pkgName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(+) insertRecord(): app = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(+) insertRecord(): pkg = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b()J
    .locals 14

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v0, "/proc/meminfo"

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v4, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\\s+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    :try_start_1
    array-length v6, v5

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v6, :cond_0

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :goto_1
    return-wide v0

    :cond_0
    aget-object v7, v5, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getTotalMemory(): item = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v0

    move-wide v12, v1

    move-wide v0, v12

    move-object v2, v11

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getTotalMemory(): Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ax;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->a:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private static c()I
    .locals 5

    const-string v0, "/proc/stat"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/2addr v0, v1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/ax;)J
    .locals 2

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ax;->o:J

    return-wide v0
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/ax;)J
    .locals 2

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ax;->u:J

    return-wide v0
.end method

.method private d()V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/ax;->k:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/ax;->k:Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->i:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/ax;->k:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->getCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/ax;->k:Z

    invoke-virtual {v0, v1, v2}, Limoblife/toolbox/full/ui/bd;->a(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic e(Limoblife/toolbox/full/ui/ax;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->d:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic f(Limoblife/toolbox/full/ui/ax;)V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/g/b;->a(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    invoke-virtual {v0}, Limoblife/toolbox/full/g/b;->a()V

    :cond_0
    return-void
.end method

.method static synthetic g(Limoblife/toolbox/full/ui/ax;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ax;->l:I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->a()V

    return-void
.end method

.method static synthetic h(Limoblife/toolbox/full/ui/ax;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic i(Limoblife/toolbox/full/ui/ax;)V
    .locals 2

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->b()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->notifyDataSetChanged()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->q:Landroid/widget/TextView;

    iget v1, p0, Limoblife/toolbox/full/ui/ax;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic j(Limoblife/toolbox/full/ui/ax;)Limoblife/toolbox/full/ui/bd;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    return-object v0
.end method

.method static synthetic k(Limoblife/toolbox/full/ui/ax;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Limoblife/toolbox/full/ui/ax;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "killProcess(): _adapter.getCount() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v3}, Limoblife/toolbox/full/ui/bd;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/g/b;->a(Ljava/util/List;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    invoke-virtual {v0}, Limoblife/toolbox/full/g/b;->b()V

    return-void

    :cond_0
    iget-object v2, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v2, v0}, Limoblife/toolbox/full/ui/bd;->c(I)Limoblife/toolbox/full/ui/bf;

    move-result-object v2

    invoke-virtual {v2}, Limoblife/toolbox/full/ui/bf;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Limoblife/toolbox/full/ui/bf;->a(Limoblife/toolbox/full/ui/bf;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v2, v0}, Limoblife/toolbox/full/ui/bd;->d(I)V

    iget v2, p0, Limoblife/toolbox/full/ui/ax;->l:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Limoblife/toolbox/full/ui/ax;->l:I

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic m(Limoblife/toolbox/full/ui/ax;)V
    .locals 6

    const/16 v5, 0x64

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ax;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ax;->n:J

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Limoblife/toolbox/full/ui/ax;->n:J

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v0, p0, Limoblife/toolbox/full/ui/ax;->n:J

    invoke-static {v0, v1}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, p0, Limoblife/toolbox/full/ui/ax;->m:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f070078

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f070079

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    const v1, 0x7f0700d1

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;JJ)V
    .locals 3

    iput-wide p2, p0, Limoblife/toolbox/full/ui/ax;->m:J

    iput-wide p4, p0, Limoblife/toolbox/full/ui/ax;->n:J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCommandExecuted(): amount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Limoblife/toolbox/full/d/b;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Limoblife/toolbox/full/d/b;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_0

    iget v0, p0, Limoblife/toolbox/full/ui/ax;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Limoblife/toolbox/full/ui/ax;->l:I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    new-instance v1, Limoblife/toolbox/full/ui/bf;

    iget-object v2, p1, Limoblife/toolbox/full/d/b;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1, p0, v2}, Limoblife/toolbox/full/ui/bf;-><init>(Limoblife/toolbox/full/ui/ax;Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/bd;->a(Limoblife/toolbox/full/ui/bf;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCommandExamining(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Limoblife/toolbox/full/d/b;->a:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    const-class v2, Limoblife/toolbox/full/ui/AAdvancedSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ax;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->i:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Limoblife/toolbox/full/ui/ax;->d()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Limoblife/toolbox/full/ui/ba;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/ba;-><init>(Limoblife/toolbox/full/ui/ax;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/ba;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Limoblife/toolbox/full/ui/bb;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/bb;-><init>(Limoblife/toolbox/full/ui/ax;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/bb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v1, v0}, Limoblife/toolbox/full/ui/bd;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->s:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/16 v4, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const v0, 0x7f030034

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/ax;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->d:Landroid/view/LayoutInflater;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->a:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->b:Landroid/app/ActivityManager;

    new-instance v0, Limoblife/toolbox/full/g/b;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-direct {v0, v2}, Limoblife/toolbox/full/g/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    invoke-virtual {v0, p0}, Limoblife/toolbox/full/g/b;->a(Limoblife/toolbox/full/d/c;)V

    const v0, 0x7f080015

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->e:Landroid/widget/ListView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0800ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->f:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0700da

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    new-instance v0, Limoblife/toolbox/full/ui/bd;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/bd;-><init>(Limoblife/toolbox/full/ui/ax;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->e:Landroid/widget/ListView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0800ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->g:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFlags(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->q:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->h:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->i:Landroid/widget/CheckBox;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Limoblife/toolbox/full/ui/ax;->c()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Limoblife/toolbox/full/ui/ax;->o:J

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "sort_type"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createSortDialog(): sortType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    const v4, 0x7f0700d7

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0700d8

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0700d9

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0700cb

    invoke-virtual {p0, v5}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Limoblife/toolbox/full/ui/az;

    invoke-direct {v5, p0, v0}, Limoblife/toolbox/full/ui/az;-><init>(Limoblife/toolbox/full/ui/ax;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4, v3, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ax;->s:Landroid/app/AlertDialog;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "sort_type"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Limoblife/toolbox/full/ui/ax;->b()J

    move-result-wide v2

    iput-wide v2, p0, Limoblife/toolbox/full/ui/ax;->u:J

    return-object v1

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    const v2, 0x7f0700d7

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, v6}, Limoblife/toolbox/full/ui/bd;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, v7}, Limoblife/toolbox/full/ui/bd;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    const v2, 0x7f0700d8

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, v8}, Limoblife/toolbox/full/ui/bd;->a(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->r:Landroid/widget/TextView;

    const v2, 0x7f0700d9

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0}, Limoblife/toolbox/full/ui/bd;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/bd;->b(I)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->c:Limoblife/toolbox/full/ui/bd;

    invoke-virtual {v0, p3}, Limoblife/toolbox/full/ui/bd;->c(I)Limoblife/toolbox/full/ui/bf;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/ui/bf;->b(Limoblife/toolbox/full/ui/bf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Limoblife/toolbox/full/ui/bf;->a(Limoblife/toolbox/full/ui/bf;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Limoblife/toolbox/full/ui/bc;

    invoke-direct {v2, p0, p3, v1, v0}, Limoblife/toolbox/full/ui/bc;-><init>(Limoblife/toolbox/full/ui/ax;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0700d4

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    const/4 v3, 0x1

    const v4, 0x7f0700d5

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const v4, 0x7f0700d6

    invoke-virtual {p0, v4}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Limoblife/toolbox/full/ui/ax;->t:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v5
.end method

.method public onStart()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    new-instance v0, Limoblife/toolbox/full/ui/ay;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/ay;-><init>(Limoblife/toolbox/full/ui/ax;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/ui/ay;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-F- onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ax;->p:Limoblife/toolbox/full/g/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Limoblife/toolbox/full/g/b;->a(Z)V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method
