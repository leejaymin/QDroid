.class Lcom/fleapapa/helper/ItemEdit$2;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->upload_photo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;

.field private final synthetic val$checker:Ljava/lang/Runnable;

.field private final synthetic val$int_handler:Landroid/os/Handler;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$2;->val$int_handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemEdit$2;->val$checker:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemEdit$2;->val$pdlg:Landroid/app/ProgressDialog;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 150
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->val$int_handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemEdit$2;->val$checker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 151
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    sget-object v3, Lcom/fleapapa/helper/ItemEdit;->puri:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 154
    const-string v3, "<img src=\'%s\'>\n"

    new-array v4, v5, [Ljava/lang/Object;

    sget-object v5, Lcom/fleapapa/helper/ItemEdit;->puri:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, itag:Ljava/lang/String;
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    const v4, 0x7f0800b7

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 156
    .local v0, detail:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 157
    .local v2, oStart:I
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    invoke-interface {v3, v2, v4, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 163
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 167
    :goto_0
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 168
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 171
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->iid:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->photos:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    sget-object v4, Lcom/fleapapa/helper/ItemEdit;->puri:Ljava/lang/String;

    iput-object v4, v3, Lcom/fleapapa/helper/Item;->photos:Ljava/lang/String;

    .line 177
    .end local v0           #detail:Landroid/widget/EditText;
    .end local v1           #itag:Ljava/lang/String;
    .end local v2           #oStart:I
    :cond_1
    :goto_1
    return-void

    .line 165
    .restart local v0       #detail:Landroid/widget/EditText;
    .restart local v1       #itag:Ljava/lang/String;
    .restart local v2       #oStart:I
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 175
    .end local v0           #detail:Landroid/widget/EditText;
    .end local v1           #itag:Ljava/lang/String;
    .end local v2           #oStart:I
    :cond_3
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v3}, Lcom/fleapapa/helper/ItemEdit;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    iget-object v3, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    const v4, 0x7f060070

    invoke-static {v4}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/fleapapa/helper/ItemEdit$2;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v6, v6, Lcom/fleapapa/helper/ItemEdit;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v6, v6, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
