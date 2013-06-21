.class Lelectrum2/drums/electrum$8;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$8;->this$0:Lelectrum2/drums/electrum;

    .line 1611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1616
    iget-object v1, p0, Lelectrum2/drums/electrum$8;->this$0:Lelectrum2/drums/electrum;

    iput-boolean v4, v1, Lelectrum2/drums/electrum;->IsExporting:Z

    .line 1618
    iget-object v1, p0, Lelectrum2/drums/electrum$8;->this$0:Lelectrum2/drums/electrum;

    invoke-virtual {v1}, Lelectrum2/drums/electrum;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    .line 1619
    const/4 v3, -0x2

    .line 1618
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 1622
    iget-object v1, p0, Lelectrum2/drums/electrum$8;->this$0:Lelectrum2/drums/electrum;

    iget-object v1, v1, Lelectrum2/drums/electrum;->exportprogress:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1628
    iget-object v1, p0, Lelectrum2/drums/electrum$8;->this$0:Lelectrum2/drums/electrum;

    const-string v2, "Exporting finished!"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1630
    .local v0, temptoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1633
    return-void
.end method
