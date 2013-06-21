.class Lexam/Widget/EditSelect$1;
.super Ljava/lang/Object;
.source "EditSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Widget/EditSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/EditSelect;


# direct methods
.method constructor <init>(Lexam/Widget/EditSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 30
    :sswitch_0
    iget-object v2, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    iget-object v2, v2, Lexam/Widget/EditSelect;->mEdit:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 33
    :sswitch_1
    iget-object v2, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    iget-object v2, v2, Lexam/Widget/EditSelect;->mEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    iget-object v3, v3, Lexam/Widget/EditSelect;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 36
    :sswitch_2
    iget-object v2, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    iget-object v2, v2, Lexam/Widget/EditSelect;->mEdit:Landroid/widget/EditText;

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 39
    :sswitch_3
    iget-object v2, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    iget-object v2, v2, Lexam/Widget/EditSelect;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 42
    :sswitch_4
    iget-object v2, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    iget-object v2, v2, Lexam/Widget/EditSelect;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 43
    .local v1, start:I
    iget-object v2, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    iget-object v2, v2, Lexam/Widget/EditSelect;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 44
    .local v0, end:I
    iget-object v2, p0, Lexam/Widget/EditSelect$1;->this$0:Lexam/Widget/EditSelect;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",end = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    const/4 v4, 0x1

    .line 44
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 28
    :sswitch_data_0
    .sparse-switch
        0x7f0c006b -> :sswitch_1
        0x7f0c007c -> :sswitch_0
        0x7f0c007d -> :sswitch_2
        0x7f0c007e -> :sswitch_3
        0x7f0c007f -> :sswitch_4
    .end sparse-switch
.end method
