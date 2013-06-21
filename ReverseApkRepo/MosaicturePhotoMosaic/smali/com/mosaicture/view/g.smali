.class public final Lcom/mosaicture/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/markupartist/android/widget/b;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/FolderViewActivity;


# direct methods
.method public constructor <init>(Lcom/mosaicture/view/FolderViewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/g;->a:Lcom/mosaicture/view/FolderViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f020010

    return v0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/mosaicture/view/BaseApp;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/g;->a:Lcom/mosaicture/view/FolderViewActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/FolderViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/g;->a:Lcom/mosaicture/view/FolderViewActivity;

    invoke-virtual {v1}, Lcom/mosaicture/view/FolderViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mosaicture/view/g;->a:Lcom/mosaicture/view/FolderViewActivity;

    invoke-static {v0}, Lcom/mosaicture/view/FolderViewActivity;->a(Lcom/mosaicture/view/FolderViewActivity;)[Z

    move-result-object v0

    array-length v0, v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mosaicture/view/TabSettingsActivity;->d:Z

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mosaicture/view/FolderViewActivity;->e()I

    move-result v1

    invoke-static {}, Lcom/mosaicture/view/FolderViewActivity;->b()Lcom/mosaicture/view/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->a:Lcom/mosaicture/view/aj;

    invoke-virtual {v0}, Lcom/mosaicture/view/aj;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/mosaicture/view/g;->a:Lcom/mosaicture/view/FolderViewActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/FolderViewActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mosaicture/view/FolderViewActivity;->b()Lcom/mosaicture/view/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mosaicture/view/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/view/a/b;

    iget-object v2, p0, Lcom/mosaicture/view/g;->a:Lcom/mosaicture/view/FolderViewActivity;

    invoke-static {v2}, Lcom/mosaicture/view/FolderViewActivity;->a(Lcom/mosaicture/view/FolderViewActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    iput-boolean v2, v0, Lcom/mosaicture/view/a/b;->b:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
