.class Lcom/superdroid/sqd/ThreadDeleteActivity$5;
.super Ljava/lang/Object;
.source "ThreadDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/superdroid/sqd/ThreadDeleteActivity;->initShortcut()V
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
.field final synthetic this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$5;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    .line 281
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
    .line 284
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$5;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->handleDelete()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$9(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$5;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->selectAllOrUnSelectAll()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$10(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$5;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->about()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$11(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
