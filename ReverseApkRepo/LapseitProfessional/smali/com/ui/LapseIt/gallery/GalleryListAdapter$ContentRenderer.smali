.class Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;
.super Ljava/lang/Object;
.source "GalleryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/gallery/GalleryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentRenderer"
.end annotation


# instance fields
.field datetime:Landroid/widget/TextView;

.field description:Landroid/widget/TextView;

.field imageContainer:Lpl/polidea/imagemanager/ManagedImageView;

.field final synthetic this$0:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

.field title:Landroid/widget/TextView;

.field user:Landroid/widget/TextView;

.field votes:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/ui/LapseIt/gallery/GalleryListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;->this$0:Lcom/ui/LapseIt/gallery/GalleryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ui/LapseIt/gallery/GalleryListAdapter;Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/gallery/GalleryListAdapter$ContentRenderer;-><init>(Lcom/ui/LapseIt/gallery/GalleryListAdapter;)V

    return-void
.end method
