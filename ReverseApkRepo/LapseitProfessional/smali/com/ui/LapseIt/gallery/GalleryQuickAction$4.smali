.class Lcom/ui/LapseIt/gallery/GalleryQuickAction$4;
.super Ljava/lang/Object;
.source "GalleryQuickAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/gallery/GalleryQuickAction;->buildResultDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$4;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$4;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;
    invoke-static {v0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;

    move-result-object v0

    sget-object v1, Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;->RECENTLY_ADDED:Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/gallery/GalleryListView;->setSortMode(Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;)V

    .line 238
    return-void
.end method
