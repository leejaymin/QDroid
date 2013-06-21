.class Lorg/bpiette/app/ShanghaiTaxiMainActivity$2;
.super Ljava/lang/Object;
.source "ShanghaiTaxiMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$2;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 295
    const-string v2, "ShanghaiTaxi"

    const-string v3, "fromLocationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$2;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 299
    .local v0, buttonFrom:Landroid/widget/Button;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$2;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    const-class v3, Lorg/bpiette/app/SelectLocationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 301
    iget-object v2, p0, Lorg/bpiette/app/ShanghaiTaxiMainActivity$2;->this$0:Lorg/bpiette/app/ShanghaiTaxiMainActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/bpiette/app/ShanghaiTaxiMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 302
    return-void
.end method
