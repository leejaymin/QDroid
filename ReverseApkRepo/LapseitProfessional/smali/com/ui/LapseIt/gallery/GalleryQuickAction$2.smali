.class Lcom/ui/LapseIt/gallery/GalleryQuickAction$2;
.super Ljava/lang/Object;
.source "GalleryQuickAction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/gallery/GalleryQuickAction;->buildRatingDialog(JLjava/lang/String;)V
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
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$2;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    return-void
.end method
