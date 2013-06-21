.class Lorg/bpiette/app/ShanghaiTaxiMainActivity$1;
.super Ljava/lang/Object;
.source "ShanghaiTaxiMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bpiette/app/ShanghaiTaxiMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;


# direct methods
.method constructor <init>(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$1;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 285
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$1;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    #calls: Lorg/bpiette/app/ShanghaiTaxiMainActivity;->computeAll()V
    invoke-static {v0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->access$0(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    .line 286
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 289
    return-void
.end method
