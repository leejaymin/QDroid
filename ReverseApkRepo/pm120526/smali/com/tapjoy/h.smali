.class public final Lcom/tapjoy/h;
.super Ljava/lang/Object;


# static fields
.field public static e:Z

.field public static j:Ljava/util/ArrayList;

.field public static k:Ljava/util/ArrayList;

.field private static l:Lcom/tapjoy/aq;

.field private static m:Lcom/tapjoy/ar;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;


# instance fields
.field a:Lcom/tapjoy/m;

.field public b:Ljava/util/Hashtable;

.field public c:Ljava/util/ArrayList;

.field public d:I

.field f:Ljava/lang/String;

.field public g:Landroid/view/View$OnClickListener;

.field public h:Landroid/view/View$OnClickListener;

.field i:Landroid/view/View$OnClickListener;

.field private n:Landroid/content/Context;

.field private o:Landroid/content/Context;

.field private p:Ljava/util/ArrayList;

.field private q:Landroid/database/sqlite/SQLiteDatabase;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/h;->l:Lcom/tapjoy/aq;

    sput-object v0, Lcom/tapjoy/h;->m:Lcom/tapjoy/ar;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/h;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tapjoy/h;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/h;->n:Landroid/content/Context;

    iput-object v1, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/h;->d:I

    iput-object v1, p0, Lcom/tapjoy/h;->q:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v1, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/tapjoy/h;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/h;->f:Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/i;

    invoke-direct {v0, p0}, Lcom/tapjoy/i;-><init>(Lcom/tapjoy/h;)V

    iput-object v0, p0, Lcom/tapjoy/h;->g:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tapjoy/j;

    invoke-direct {v0, p0}, Lcom/tapjoy/j;-><init>(Lcom/tapjoy/h;)V

    iput-object v0, p0, Lcom/tapjoy/h;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tapjoy/k;

    invoke-direct {v0, p0}, Lcom/tapjoy/k;-><init>(Lcom/tapjoy/h;)V

    iput-object v0, p0, Lcom/tapjoy/h;->i:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vgDownloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/h;->u:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vgDownloads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/h;->t:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    new-instance v0, Lcom/tapjoy/ar;

    iget-object v1, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/ar;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/h;->m:Lcom/tapjoy/ar;

    invoke-static {p1}, Lcom/tapjoy/au;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/h;->q:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vgDownloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VirtualGoodUtil"

    const-string v1, "vgDownloads directory created at device....."

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tempZipDownloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VirtualGoodUtil"

    const-string v1, "temporary zip file directory generated at device"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/os/AsyncTask;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/tapjoy/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/tapjoy/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    sget-object v0, Lcom/tapjoy/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    aget-object v0, p0, v2

    check-cast v0, Lcom/tapjoy/n;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    check-cast p0, [Lcom/tapjoy/cc;

    invoke-static {v0, p0}, Lcom/tapjoy/h;->a(Landroid/os/AsyncTask;[Lcom/tapjoy/cc;)Z

    :cond_1
    return v2
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Lcom/tapjoy/cc;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "VirtualGoodUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addTask size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pending size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/tapjoy/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "VirtualGoodUtil"

    const-string v1, "execute with params"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v4

    :cond_0
    const-string v0, "VirtualGoodUtil"

    const-string v1, "execute"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tapjoy/cc;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p1, v0, v4

    sget-object v1, Lcom/tapjoy/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Lcom/tapjoy/ar;
    .locals 1

    sget-object v0, Lcom/tapjoy/h;->m:Lcom/tapjoy/ar;

    return-object v0
.end method

.method static synthetic c(Lcom/tapjoy/h;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/h;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/tapjoy/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/h;->n:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/h;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tapjoy/h;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tapjoy/h;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/h;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/tapjoy/aq;
    .locals 1

    sget-object v0, Lcom/tapjoy/h;->l:Lcom/tapjoy/aq;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tapjoy/h;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "An error occured while downloading the contents of acquired item."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const-string v1, "OK"

    new-instance v2, Lcom/tapjoy/l;

    invoke-direct {v2, p0}, Lcom/tapjoy/l;-><init>(Lcom/tapjoy/h;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tapjoy/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tapjoy/h;->d:I

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "VirtualGoodUtil"

    const-string v1, "checkForVirtualGoods"

    invoke-static {v0, v1}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/h;->l:Lcom/tapjoy/aq;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/h;->s:Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/aq;

    const-string v1, "https://ws.tapjoyads.com/"

    iget-object v2, p0, Lcom/tapjoy/h;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/aq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/tapjoy/h;->l:Lcom/tapjoy/aq;

    :cond_0
    iput-object p1, p0, Lcom/tapjoy/h;->n:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/h;->p:Ljava/util/ArrayList;

    new-instance v0, Lcom/tapjoy/m;

    invoke-direct {v0, p0, v3}, Lcom/tapjoy/m;-><init>(Lcom/tapjoy/h;B)V

    iput-object v0, p0, Lcom/tapjoy/h;->a:Lcom/tapjoy/m;

    iget-object v0, p0, Lcom/tapjoy/h;->a:Lcom/tapjoy/m;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tapjoy/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Lcom/tapjoy/n;)V
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v0, Lcom/tapjoy/n;

    invoke-direct {v0, p0}, Lcom/tapjoy/n;-><init>(Lcom/tapjoy/h;)V

    const-string v1, "VirtualGoodUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RETRY DOWNLOAD VG: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tapjoy/n;->a(Lcom/tapjoy/n;)Lcom/tapjoy/cc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    iget-object v1, v0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v0, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p1, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    iput-object v1, v0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    iget-object v1, p1, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v2, "Download Pending"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, v0, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v4, v0, Lcom/tapjoy/n;->g:I

    invoke-static {p1}, Lcom/tapjoy/n;->a(Lcom/tapjoy/n;)Lcom/tapjoy/cc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tapjoy/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v6}, Lcom/tapjoy/n;->cancel(Z)Z

    :cond_0
    iget-object v2, p0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/tapjoy/TJCVirtualGoods;->l:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tapjoy/TJCVirtualGoods;->m:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "VirtualGoodUtil"

    const-string v3, "UPDATE DETAIL VIEW"

    invoke-static {v2, v3}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TJCVirtualGoods;->a(Lcom/tapjoy/n;)V

    :cond_1
    new-array v2, v6, [Lcom/tapjoy/cc;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/tapjoy/h;->a(Landroid/os/AsyncTask;[Lcom/tapjoy/cc;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/h;->p:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Ljava/util/List;Landroid/widget/TableLayout;I)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/h;->q:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT VGStoreItemID FROM tapjoy_VGStoreItems"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "VGStoreItemID"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v1, v10, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    iput-object v1, p0, Lcom/tapjoy/h;->c:Ljava/util/ArrayList;

    move v5, p3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tapjoy/cc;

    move-object v3, v0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const-string v1, "VirtualGoodUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "download this purchased vg: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", name: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tapjoy/cc;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/tapjoy/n;

    invoke-direct {v6, p0}, Lcom/tapjoy/n;-><init>(Lcom/tapjoy/h;)V

    mul-int/lit8 v1, v5, 0x2

    invoke-virtual {p2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v7, "vg_row_progress_bar"

    const-string v8, "id"

    iget-object v9, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v6, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    iget-object v2, v6, Lcom/tapjoy/n;->a:Landroid/widget/ProgressBar;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v2, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v7, "vg_row_download_status_text"

    const-string v8, "id"

    iget-object v9, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v6, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    iget-object v2, v6, Lcom/tapjoy/n;->b:Landroid/widget/TextView;

    const-string v7, "Download Pending"

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v7, "vg_row_retry_button"

    const-string v8, "id"

    iget-object v9, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v6, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/h;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v7, "vg_row_error_icon"

    const-string v8, "id"

    iget-object v9, p0, Lcom/tapjoy/h;->r:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v6, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iget-object v1, v6, Lcom/tapjoy/n;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/h;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v6, Lcom/tapjoy/n;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tapjoy/h;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/tapjoy/cc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v11, [Lcom/tapjoy/cc;

    aput-object v3, v1, v10

    invoke-static {v6, v1}, Lcom/tapjoy/h;->a(Landroid/os/AsyncTask;[Lcom/tapjoy/cc;)Z

    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    :cond_4
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/n;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tapjoy/n;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/tapjoy/n;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/tapjoy/h;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
