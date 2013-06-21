.class Lcom/ui/LapseIt/gallery/GalleryListView$3;
.super Landroid/database/DataSetObserver;
.source "GalleryListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/gallery/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/gallery/GalleryListView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/gallery/GalleryListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    .line 322
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    iget-object v1, v1, Lcom/ui/LapseIt/gallery/GalleryListView;->headerTitleView:Landroid/widget/TextView;

    const-string v2, "No projects found"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    iget-object v1, v1, Lcom/ui/LapseIt/gallery/GalleryListView;->headerSubTitle:Landroid/widget/TextView;

    const-string v2, "Try with other filter settings"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :goto_0
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 339
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 329
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, headerTitle:Ljava/lang/String;
    const-string v1, "XXX"

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    iget-object v1, v1, Lcom/ui/LapseIt/gallery/GalleryListView;->headerTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    .end local v0           #headerTitle:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .restart local v0       #headerTitle:Ljava/lang/String;
    const-string v1, "XXX"

    iget-object v2, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/gallery/GalleryListView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    iget-object v1, v1, Lcom/ui/LapseIt/gallery/GalleryListView;->headerTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 344
    return-void
.end method
