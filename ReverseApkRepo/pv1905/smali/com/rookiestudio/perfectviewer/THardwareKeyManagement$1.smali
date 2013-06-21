.class Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;
.super Ljava/lang/Object;
.source "THardwareKeyManagement.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->onPopupMenu(Landroid/view/View;I)V
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
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

.field private final synthetic val$ItemIndex:I

.field private final synthetic val$MenuDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;Landroid/app/AlertDialog;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->val$MenuDialog:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->val$ItemIndex:I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 117
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->val$MenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 118
    packed-switch p3, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->access$0(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    move-result-object v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->val$ItemIndex:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->getItem(I)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->EditKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;Lcom/rookiestudio/baseclass/THardwareKey;)V

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->access$0(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    move-result-object v0

    iget v1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->val$ItemIndex:I

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->Delete(I)V

    .line 124
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;
    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->access$0(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->notifyDataSetChanged()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
