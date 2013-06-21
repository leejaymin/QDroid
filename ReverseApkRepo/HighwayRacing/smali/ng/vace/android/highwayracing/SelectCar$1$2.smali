.class Lng/vace/android/highwayracing/SelectCar$1$2;
.super Landroid/graphics/drawable/Drawable;
.source "SelectCar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lng/vace/android/highwayracing/SelectCar$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lng/vace/android/highwayracing/SelectCar$1;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lng/vace/android/highwayracing/SelectCar$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lng/vace/android/highwayracing/SelectCar$1$2;->this$1:Lng/vace/android/highwayracing/SelectCar$1;

    iput p2, p0, Lng/vace/android/highwayracing/SelectCar$1$2;->val$i:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$1$2;->this$1:Lng/vace/android/highwayracing/SelectCar$1;

    iget-object v0, v0, Lng/vace/android/highwayracing/SelectCar$1;->this$0:Lng/vace/android/highwayracing/SelectCar;

    iget-object v0, v0, Lng/vace/android/highwayracing/SelectCar;->speed:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iget v2, p0, Lng/vace/android/highwayracing/SelectCar$1$2;->val$i:I

    invoke-static {v2}, Lng/vace/android/highwayracing/util/CarFactory;->getSpeed(I)I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v3, v0

    const/high16 v4, 0x41a0

    iget-object v0, p0, Lng/vace/android/highwayracing/SelectCar$1$2;->this$1:Lng/vace/android/highwayracing/SelectCar$1;

    iget-object v0, v0, Lng/vace/android/highwayracing/SelectCar$1;->this$0:Lng/vace/android/highwayracing/SelectCar;

    iget-object v5, v0, Lng/vace/android/highwayracing/SelectCar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 78
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "colorFilter"

    .prologue
    .line 81
    return-void
.end method
