.class Lcom/ui/LapseIt/gallery/GalleryListView$4;
.super Ljava/lang/Object;
.source "GalleryListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/gallery/GalleryListView;->buildConnectionErrorDialog()V
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
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryListView$4;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 247
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryListView$4;->this$0:Lcom/ui/LapseIt/gallery/GalleryListView;

    invoke-static {v0}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 250
    sget-object v0, Lcom/ui/LapseIt/list/ListHostView;->tabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 251
    return-void
.end method
