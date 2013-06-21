.class Lelectrum2/drums/electrum$20;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$20;->this$0:Lelectrum2/drums/electrum;

    .line 6295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6299
    iget-object v0, p0, Lelectrum2/drums/electrum$20;->this$0:Lelectrum2/drums/electrum;

    iget v1, v0, Lelectrum2/drums/electrum;->progresscount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lelectrum2/drums/electrum;->progresscount:I

    .line 6303
    iget-object v0, p0, Lelectrum2/drums/electrum$20;->this$0:Lelectrum2/drums/electrum;

    iget-object v0, v0, Lelectrum2/drums/electrum;->exportprogress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lelectrum2/drums/electrum$20;->this$0:Lelectrum2/drums/electrum;

    iget v1, v1, Lelectrum2/drums/electrum;->progresscount:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6308
    return-void
.end method
