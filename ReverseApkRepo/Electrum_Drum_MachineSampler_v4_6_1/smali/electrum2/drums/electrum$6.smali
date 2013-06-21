.class Lelectrum2/drums/electrum$6;
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
    iput-object p1, p0, Lelectrum2/drums/electrum$6;->this$0:Lelectrum2/drums/electrum;

    .line 1568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1572
    new-instance v0, Ljava/lang/Integer;

    iget-object v2, p0, Lelectrum2/drums/electrum$6;->this$0:Lelectrum2/drums/electrum;

    iget v2, v2, Lelectrum2/drums/electrum;->currentpattern:I

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1574
    .local v0, pattnum:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1576
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v1, pattstr:Ljava/lang/String;
    iget-object v2, p0, Lelectrum2/drums/electrum$6;->this$0:Lelectrum2/drums/electrum;

    iget-object v2, v2, Lelectrum2/drums/electrum;->patternText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Pat: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1580
    iget-object v2, p0, Lelectrum2/drums/electrum$6;->this$0:Lelectrum2/drums/electrum;

    #calls: Lelectrum2/drums/electrum;->DisplaySoundSlots()V
    invoke-static {v2}, Lelectrum2/drums/electrum;->access$1(Lelectrum2/drums/electrum;)V

    .line 1583
    return-void
.end method
