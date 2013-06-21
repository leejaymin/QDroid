.class final Limoblife/cmfilemanager/aa;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Limoblife/cmfilemanager/FileManagerActivity;

.field private b:Limoblife/cmfilemanager/FileManagerActivity;

.field private c:Ljava/io/File;


# direct methods
.method private constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;)V
    .locals 0

    iput-object p1, p0, Limoblife/cmfilemanager/aa;->a:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Limoblife/cmfilemanager/aa;->b:Limoblife/cmfilemanager/FileManagerActivity;

    return-void
.end method

.method synthetic constructor <init>(Limoblife/cmfilemanager/FileManagerActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Limoblife/cmfilemanager/aa;-><init>(Limoblife/cmfilemanager/FileManagerActivity;)V

    return-void
.end method

.method private a(Ljava/io/File;)I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    iput-object p1, p0, Limoblife/cmfilemanager/aa;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :cond_1
    :goto_1
    return v0

    :cond_2
    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v0}, Limoblife/cmfilemanager/aa;->a(Ljava/io/File;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    iput-object v0, p0, Limoblife/cmfilemanager/aa;->c:Ljava/io/File;

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v2

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Limoblife/cmfilemanager/aa;->a(Ljava/io/File;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/io/File;

    invoke-direct {p0, v0}, Limoblife/cmfilemanager/aa;->a(Ljava/io/File;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/cmfilemanager/aa;->b:Limoblife/cmfilemanager/FileManagerActivity;

    invoke-static {v0}, Limoblife/cmfilemanager/FileManagerActivity;->a(Limoblife/cmfilemanager/FileManagerActivity;)V

    iget-object v0, p0, Limoblife/cmfilemanager/aa;->b:Limoblife/cmfilemanager/FileManagerActivity;

    sget v1, Limoblife/cmfilemanager/ao;->x:I

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/cmfilemanager/aa;->b:Limoblife/cmfilemanager/FileManagerActivity;

    iget-object v1, p0, Limoblife/cmfilemanager/aa;->a:Limoblife/cmfilemanager/FileManagerActivity;

    sget v2, Limoblife/cmfilemanager/ao;->m:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Limoblife/cmfilemanager/aa;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Limoblife/cmfilemanager/aa;->b:Limoblife/cmfilemanager/FileManagerActivity;

    iget-object v1, p0, Limoblife/cmfilemanager/aa;->a:Limoblife/cmfilemanager/FileManagerActivity;

    sget v2, Limoblife/cmfilemanager/ao;->k:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Limoblife/cmfilemanager/aa;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Limoblife/cmfilemanager/aa;->b:Limoblife/cmfilemanager/FileManagerActivity;

    iget-object v1, p0, Limoblife/cmfilemanager/aa;->a:Limoblife/cmfilemanager/FileManagerActivity;

    sget v2, Limoblife/cmfilemanager/ao;->l:I

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Limoblife/cmfilemanager/aa;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Limoblife/cmfilemanager/FileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final onPreExecute()V
    .locals 3

    iget-object v0, p0, Limoblife/cmfilemanager/aa;->b:Limoblife/cmfilemanager/FileManagerActivity;

    sget v1, Limoblife/cmfilemanager/ao;->h:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
