.class Lorg/bpiette/app/ShanghaiTaxiMainActivity$7;
.super Ljava/lang/Object;
.source "ShanghaiTaxiMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bpiette/app/ShanghaiTaxiMainActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    iput-object p1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$7;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 436
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    return-void
.end method
