.class final Lcom/inisoft/mediaplayer/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/ci;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/n;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->b(Lcom/inisoft/mediaplayer/b/n;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->c(Lcom/inisoft/mediaplayer/b/n;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->b(Lcom/inisoft/mediaplayer/b/n;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->c(Lcom/inisoft/mediaplayer/b/n;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->d(Lcom/inisoft/mediaplayer/b/n;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    array-length v2, v1

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;I)V

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_3

    array-length v0, v1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->c(Lcom/inisoft/mediaplayer/b/n;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->b(Lcom/inisoft/mediaplayer/b/n;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->c(Lcom/inisoft/mediaplayer/b/n;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/b/n;->b(Lcom/inisoft/mediaplayer/b/n;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/n;->b(Lcom/inisoft/mediaplayer/b/n;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/b/n;->c(Lcom/inisoft/mediaplayer/b/n;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    invoke-static {v2, v0}, Lcom/inisoft/mediaplayer/b/n;->a(Lcom/inisoft/mediaplayer/b/n;I)V

    :cond_4
    iget-object v2, p0, Lcom/inisoft/mediaplayer/b/o;->a:Lcom/inisoft/mediaplayer/b/n;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/b/n;->a:Landroid/widget/ArrayAdapter;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
