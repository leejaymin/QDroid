.class Lcom/superdroid/sqd/SmsDeleteActivity$4;
.super Ljava/lang/Object;
.source "SmsDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/SmsDeleteActivity;->initShortcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/SmsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/SmsDeleteActivity$4;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 269
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity$4;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->handleDelete()V
    invoke-static {v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$9(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity$4;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->selectAllOrUnSelectAll()V
    invoke-static {v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$10(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity$4;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->about()V
    invoke-static {v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$11(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
