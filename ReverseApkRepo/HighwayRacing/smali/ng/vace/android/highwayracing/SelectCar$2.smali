.class Lng/vace/android/highwayracing/SelectCar$2;
.super Ljava/lang/Object;
.source "SelectCar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng/vace/android/highwayracing/SelectCar;->setupCarSelector(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lng/vace/android/highwayracing/SelectCar;

.field final synthetic val$carGallery:Landroid/widget/Gallery;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lng/vace/android/highwayracing/SelectCar;Landroid/content/Intent;Landroid/widget/Gallery;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lng/vace/android/highwayracing/SelectCar$2;->this$0:Lng/vace/android/highwayracing/SelectCar;

    iput-object p2, p0, Lng/vace/android/highwayracing/SelectCar$2;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lng/vace/android/highwayracing/SelectCar$2;->val$carGallery:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 97
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$2;->val$intent:Landroid/content/Intent;

    const-string v1, "selectedCar"

    iget-object v2, p0, Lng/vace/android/highwayracing/SelectCar$2;->val$carGallery:Landroid/widget/Gallery;

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$2;->this$0:Lng/vace/android/highwayracing/SelectCar;

    const/4 v1, -0x1

    iget-object v2, p0, Lng/vace/android/highwayracing/SelectCar$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lng/vace/android/highwayracing/SelectCar;->setResult(ILandroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$2;->this$0:Lng/vace/android/highwayracing/SelectCar;

    invoke-virtual {v0}, Lng/vace/android/highwayracing/SelectCar;->finish()V

    .line 100
    return-void
.end method
