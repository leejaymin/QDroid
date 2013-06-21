.class final Lccc71/utils/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/utils/h;


# direct methods
.method private constructor <init>(Lccc71/utils/h;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccc71/utils/h;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lccc71/utils/l;-><init>(Lccc71/utils/h;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->c(Lccc71/utils/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->c(Lccc71/utils/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 247
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->c(Lccc71/utils/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 256
    iget-object v1, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-static {v1}, Lccc71/utils/h;->f(Lccc71/utils/h;)Lccc71/utils/m;

    invoke-static {v0}, Lccc71/utils/m;->b(Ljava/io/File;)I

    move-result v2

    .line 257
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 258
    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-static {v3}, Lccc71/utils/h;->a(Lccc71/utils/h;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    :cond_0
    iget-object v0, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->f(Lccc71/utils/h;)Lccc71/utils/m;

    const/4 v0, 0x0

    invoke-static {v0}, Lccc71/utils/m;->b(Ljava/io/File;)I

    move-result v1

    .line 261
    const-string v0, ".."

    .line 264
    :goto_0
    if-nez p2, :cond_1

    .line 266
    new-instance p2, Lccc71/utils/ccc71_browser_item;

    iget-object v2, p0, Lccc71/utils/l;->a:Lccc71/utils/h;

    invoke-static {v2}, Lccc71/utils/h;->g(Lccc71/utils/h;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2, v1, v0}, Lccc71/utils/ccc71_browser_item;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 275
    :goto_1
    return-object p2

    .line 270
    :cond_1
    check-cast p2, Lccc71/utils/ccc71_browser_item;

    .line 271
    invoke-virtual {p2, v1}, Lccc71/utils/ccc71_browser_item;->setIconResId(I)V

    .line 272
    invoke-virtual {p2, v0}, Lccc71/utils/ccc71_browser_item;->setFileName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method
