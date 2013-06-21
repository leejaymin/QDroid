.class Lcom/wareone/tappmt/Currency$3$1;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Currency$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wareone/tappmt/Currency$3;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Currency$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$3$1;->this$1:Lcom/wareone/tappmt/Currency$3;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 256
    packed-switch p2, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$3$1;->this$1:Lcom/wareone/tappmt/Currency$3;

    #getter for: Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v0}, Lcom/wareone/tappmt/Currency$3;->access$0(Lcom/wareone/tappmt/Currency$3;)Lcom/wareone/tappmt/Currency;

    move-result-object v0

    #calls: Lcom/wareone/tappmt/Currency;->_setDigits()V
    invoke-static {v0}, Lcom/wareone/tappmt/Currency;->access$5(Lcom/wareone/tappmt/Currency;)V

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$3$1;->this$1:Lcom/wareone/tappmt/Currency$3;

    #getter for: Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v0}, Lcom/wareone/tappmt/Currency$3;->access$0(Lcom/wareone/tappmt/Currency$3;)Lcom/wareone/tappmt/Currency;

    move-result-object v0

    #calls: Lcom/wareone/tappmt/Currency;->_setSymbol()V
    invoke-static {v0}, Lcom/wareone/tappmt/Currency;->access$6(Lcom/wareone/tappmt/Currency;)V

    goto :goto_0

    .line 264
    :pswitch_2
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$3$1;->this$1:Lcom/wareone/tappmt/Currency$3;

    #getter for: Lcom/wareone/tappmt/Currency$3;->this$0:Lcom/wareone/tappmt/Currency;
    invoke-static {v0}, Lcom/wareone/tappmt/Currency$3;->access$0(Lcom/wareone/tappmt/Currency$3;)Lcom/wareone/tappmt/Currency;

    move-result-object v0

    #calls: Lcom/wareone/tappmt/Currency;->_setDefaultCurrency()V
    invoke-static {v0}, Lcom/wareone/tappmt/Currency;->access$7(Lcom/wareone/tappmt/Currency;)V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
