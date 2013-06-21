.class Lcom/ui/LapseIt/gallery/GalleryListView$1;
.super Ljava/lang/Object;
.source "GalleryListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView$1;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-virtual {v0, p1}, Lcom/ui/LapseIt/gallery/GalleryListView;->openContextMenu(Landroid/view/View;)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x7f0b002a
        :pswitch_0
    .end packed-switch
.end method
