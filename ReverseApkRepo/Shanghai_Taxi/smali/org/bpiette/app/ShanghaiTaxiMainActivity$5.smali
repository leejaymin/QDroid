.class Lorg/bpiette/app/ShanghaiTaxiMainActivity$5;
.super Ljava/lang/Object;
.source "ShanghaiTaxiMainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bpiette/app/ShanghaiTaxiMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;


# direct methods
.method constructor <init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$5;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 350
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$5;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    #getter for: Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;
    invoke-static {v0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->access$1(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)Lcom/google/android/maps/MapView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setTraffic(Z)V

    .line 351
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$5;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    #getter for: Lorg/bpiette/app/ShanghaiTaxiMainActivity;->mapView:Lcom/google/android/maps/MapView;
    invoke-static {v0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->access$1(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)Lcom/google/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 352
    return-void
.end method
