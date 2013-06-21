.class Lcom/kt/olleh/inapp/Purchase$16;
.super Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kt/olleh/inapp/Purchase;->PayDialogNoPwd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kt/olleh/inapp/Purchase;

.field private final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/kt/olleh/inapp/Purchase;Landroid/app/Dialog;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kt/olleh/inapp/Purchase$16;->this$0:Lcom/kt/olleh/inapp/Purchase;

    iput p3, p0, Lcom/kt/olleh/inapp/Purchase$16;->val$mode:I

    .line 567
    invoke-direct {p0, p2}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;-><init>(Landroid/app/Dialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0x3f1

    .line 570
    invoke-super {p0, p1}, Lcom/kt/olleh/inapp/dialog/DialogOnClickListener;->onClick(Landroid/view/View;)V

    .line 571
    iget v0, p0, Lcom/kt/olleh/inapp/Purchase$16;->val$mode:I

    packed-switch v0, :pswitch_data_0

    .line 576
    sput v1, Lcom/kt/olleh/inapp/Purchase;->Dialog_Mode:I

    .line 577
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$16;->this$0:Lcom/kt/olleh/inapp/Purchase;

    invoke-virtual {v0, v1}, Lcom/kt/olleh/inapp/Purchase;->SendMessage(I)V

    .line 578
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$16;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    .line 581
    :goto_0
    return-void

    .line 573
    :pswitch_0
    iget-object v0, p0, Lcom/kt/olleh/inapp/Purchase$16;->this$0:Lcom/kt/olleh/inapp/Purchase;

    #getter for: Lcom/kt/olleh/inapp/Purchase;->dialogPayNoPwd:Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;
    invoke-static {v0}, Lcom/kt/olleh/inapp/Purchase;->access$32(Lcom/kt/olleh/inapp/Purchase;)Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kt/olleh/inapp/dialog/DialogPayNoPwd;->close()V

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x3ff
        :pswitch_0
    .end packed-switch
.end method
