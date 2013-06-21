.class Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;
.super Ljava/lang/Object;
.source "THardwareKeyManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->AddKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ActionSpinner:Landroid/widget/Spinner;

.field private final synthetic val$DescriptionEdit:Landroid/widget/EditText;

.field private final synthetic val$KeyCodeEdit:Landroid/widget/EditText;

.field private final synthetic val$Parent:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$KeyCodeEdit:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$DescriptionEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$ActionSpinner:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$Parent:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 176
    const/4 v2, -0x1

    .line 178
    .local v2, KeyCode:I
    :try_start_0
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$KeyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 181
    :goto_0
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$DescriptionEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, Description:Ljava/lang/String;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$ActionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 183
    .local v0, Action:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    :cond_0
    :goto_1
    return-void

    .line 186
    :cond_1
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$Parent:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->access$0(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    move-result-object v4

    invoke-virtual {v4, v2, v0, v1}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->AddKey(IILjava/lang/String;)Lcom/rookiestudio/baseclass/THardwareKey;

    move-result-object v3

    .line 187
    .local v3, aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$3;->val$Parent:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;
    invoke-static {v4}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->access$0(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->notifyDataSetChanged()V

    goto :goto_1

    .line 179
    .end local v0           #Action:I
    .end local v1           #Description:Ljava/lang/String;
    .end local v3           #aKey:Lcom/rookiestudio/baseclass/THardwareKey;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
