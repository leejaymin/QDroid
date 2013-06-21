.class Lorg/bpiette/app/ShanghaiTaxiMainActivity$4;
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
    iput-object p1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$4;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 343
    iget-object v0, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$4;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    #calls: Lorg/bpiette/app/ShanghaiTaxiMainActivity;->computeAll()V
    invoke-static {v0}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->access$0(Lorg/bpiette/app/ShanghaiTaxiMainActivity;)V

    .line 344
    return-void
.end method
