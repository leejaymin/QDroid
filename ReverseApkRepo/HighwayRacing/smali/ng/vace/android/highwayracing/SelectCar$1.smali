.class Lng/vace/android/highwayracing/SelectCar$1;
.super Ljava/lang/Object;
.source "SelectCar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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


# direct methods
.method constructor <init>(Lng/vace/android/highwayracing/SelectCar;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lng/vace/android/highwayracing/SelectCar$1;->this$0:Lng/vace/android/highwayracing/SelectCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "i"
    .parameter "l"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$1;->this$0:Lng/vace/android/highwayracing/SelectCar;

    iget-object v0, v0, Lng/vace/android/highwayracing/SelectCar;->health:Landroid/widget/ImageView;

    new-instance v1, Lng/vace/android/highwayracing/SelectCar$1$1;

    invoke-direct {v1, p0, p3}, Lng/vace/android/highwayracing/SelectCar$1$1;-><init>(Lng/vace/android/highwayracing/SelectCar$1;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$1;->this$0:Lng/vace/android/highwayracing/SelectCar;

    iget-object v0, v0, Lng/vace/android/highwayracing/SelectCar;->speed:Landroid/widget/ImageView;

    new-instance v1, Lng/vace/android/highwayracing/SelectCar$1$2;

    invoke-direct {v1, p0, p3}, Lng/vace/android/highwayracing/SelectCar$1$2;-><init>(Lng/vace/android/highwayracing/SelectCar$1;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$1;->this$0:Lng/vace/android/highwayracing/SelectCar;

    iget-object v0, v0, Lng/vace/android/highwayracing/SelectCar;->speed:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 88
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$1;->this$0:Lng/vace/android/highwayracing/SelectCar;

    iget-object v0, v0, Lng/vace/android/highwayracing/SelectCar;->health:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->refreshDrawableState()V

    .line 89
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
