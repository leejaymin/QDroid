.class Lelectrum2/drums/electrum$7;
.super Ljava/lang/Object;
.source "electrum.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelectrum2/drums/electrum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lelectrum2/drums/electrum;


# direct methods
.method constructor <init>(Lelectrum2/drums/electrum;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lelectrum2/drums/electrum$7;->this$0:Lelectrum2/drums/electrum;

    .line 1589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1594
    iget-object v1, p0, Lelectrum2/drums/electrum$7;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v1}, Lelectrum2/drums/electrum;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    .line 1595
    const/4 v3, -0x2

    .line 1594
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 1602
    iget-object v1, p0, Lelectrum2/drums/electrum$7;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, p0, Lelectrum2/drums/electrum$7;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->globalErrorString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1604
    .local v0, temptoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1607
    return-void
.end method
