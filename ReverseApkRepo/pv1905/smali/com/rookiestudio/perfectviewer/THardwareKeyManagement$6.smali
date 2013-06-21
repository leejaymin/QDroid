.class Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;
.super Ljava/lang/Object;
.source "THardwareKeyManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->EditKey(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;Lcom/rookiestudio/baseclass/THardwareKey;)V
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

.field private final synthetic val$aKey:Lcom/rookiestudio/baseclass/THardwareKey;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/rookiestudio/baseclass/THardwareKey;Landroid/widget/Spinner;Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$KeyCodeEdit:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$DescriptionEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$aKey:Lcom/rookiestudio/baseclass/THardwareKey;

    iput-object p4, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$ActionSpinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$Parent:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 228
    const/4 v1, -0x1

    .line 230
    .local v1, KeyCode:I
    :try_start_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$KeyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 233
    :goto_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$DescriptionEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, Description:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$aKey:Lcom/rookiestudio/baseclass/THardwareKey;

    iput v1, v2, Lcom/rookiestudio/baseclass/THardwareKey;->KeyCode:I

    .line 238
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$aKey:Lcom/rookiestudio/baseclass/THardwareKey;

    iput-object v0, v2, Lcom/rookiestudio/baseclass/THardwareKey;->Description:Ljava/lang/String;

    .line 239
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$aKey:Lcom/rookiestudio/baseclass/THardwareKey;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$ActionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    iput v3, v2, Lcom/rookiestudio/baseclass/THardwareKey;->Action:I

    .line 240
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement$6;->val$Parent:Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->HardwareKeyList:Lcom/rookiestudio/perfectviewer/THardwareKeyList;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;->access$0(Lcom/rookiestudio/perfectviewer/THardwareKeyManagement;)Lcom/rookiestudio/perfectviewer/THardwareKeyList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/THardwareKeyList;->notifyDataSetChanged()V

    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    .line 231
    .end local v0           #Description:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
