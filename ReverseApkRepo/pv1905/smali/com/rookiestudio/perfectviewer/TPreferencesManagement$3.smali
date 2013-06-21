.class Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;
.super Ljava/lang/Object;
.source "TPreferencesManagement.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->onPopupMenu(Landroid/view/View;I)V
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
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

.field private final synthetic val$ItemIndex:I

.field private final synthetic val$MenuDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Landroid/app/AlertDialog;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->val$MenuDialog:Landroid/app/AlertDialog;

    iput p3, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->val$ItemIndex:I

    .line 148
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
    .line 152
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->val$MenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    packed-switch p3, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->access$1(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    move-result-object v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->val$ItemIndex:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->AskLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->access$1(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    move-result-object v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->val$ItemIndex:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->AskSave(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->access$1(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    move-result-object v1

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$3;->val$ItemIndex:I

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->AskDelete(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
