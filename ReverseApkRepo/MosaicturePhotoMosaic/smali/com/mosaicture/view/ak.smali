.class final Lcom/mosaicture/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/aj;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/ak;->a:Lcom/mosaicture/view/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mosaicture/g/y;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/mosaicture/view/ak;->a:Lcom/mosaicture/view/aj;

    invoke-static {v2}, Lcom/mosaicture/view/aj;->a(Lcom/mosaicture/view/aj;)Lcom/mosaicture/view/TabSettingsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mosaicture/view/TabSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mosaicture/view/FolderViewActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "folderPos"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/mosaicture/view/ak;->a:Lcom/mosaicture/view/aj;

    invoke-static {v0}, Lcom/mosaicture/view/aj;->a(Lcom/mosaicture/view/aj;)Lcom/mosaicture/view/TabSettingsActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/TabSettingsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
