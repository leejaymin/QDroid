.class final Lcom/mosaicture/view/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/i;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/j;->a:Lcom/mosaicture/view/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/mosaicture/g/y;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/mosaicture/view/j;->a:Lcom/mosaicture/view/i;

    invoke-static {v0}, Lcom/mosaicture/view/i;->a(Lcom/mosaicture/view/i;)Lcom/mosaicture/view/FolderViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/FolderViewActivity;->a(Lcom/mosaicture/view/FolderViewActivity;)[Z

    move-result-object v3

    iget-object v0, p0, Lcom/mosaicture/view/j;->a:Lcom/mosaicture/view/i;

    invoke-static {v0}, Lcom/mosaicture/view/i;->a(Lcom/mosaicture/view/i;)Lcom/mosaicture/view/FolderViewActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/view/FolderViewActivity;->a(Lcom/mosaicture/view/FolderViewActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-boolean v0, v3, v2

    invoke-static {}, Lcom/mosaicture/view/FolderViewActivity;->d()Lcom/mosaicture/view/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mosaicture/view/i;->notifyDataSetChanged()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
