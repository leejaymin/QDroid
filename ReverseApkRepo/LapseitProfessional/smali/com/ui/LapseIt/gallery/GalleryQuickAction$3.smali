.class Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;
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

.field private final synthetic val$galleryId:J

.field private final synthetic val$ratingView:Landroid/widget/RatingBar;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/gallery/GalleryQuickAction;JLandroid/widget/RatingBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    iput-wide p2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->val$galleryId:J

    iput-object p4, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->val$ratingView:Landroid/widget/RatingBar;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;
    invoke-static {v0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    const-string v1, "Registering your vote"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;
    invoke-static {v0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;

    move-result-object v0

    iget-object v0, v0, Lcom/ui/LapseIt/gallery/GalleryListView;->fetchingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 192
    iget-object v0, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    #getter for: Lcom/ui/LapseIt/gallery/GalleryQuickAction;->parent:Lcom/ui/LapseIt/gallery/GalleryListView;
    invoke-static {v0}, Lcom/ui/LapseIt/gallery/GalleryQuickAction;->access$2(Lcom/ui/LapseIt/gallery/GalleryQuickAction;)Lcom/ui/LapseIt/gallery/GalleryListView;

    move-result-object v0

    invoke-static {v0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 193
    new-instance v0, Lcom/ui/LapseIt/gallery/RatingRequestTask;

    iget-object v1, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->this$0:Lcom/ui/LapseIt/gallery/GalleryQuickAction;

    iget-wide v2, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->val$galleryId:J

    iget-object v4, p0, Lcom/ui/LapseIt/gallery/GalleryQuickAction$3;->val$ratingView:Landroid/widget/RatingBar;

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getRating()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/gallery/RatingRequestTask;-><init>(Lcom/ui/LapseIt/gallery/RatingRequestTask$RatingResultListener;JF)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/ui/LapseIt/gallery/GalleryListView$SORT_MODE;

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/gallery/RatingRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 194
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 195
    return-void
.end method
