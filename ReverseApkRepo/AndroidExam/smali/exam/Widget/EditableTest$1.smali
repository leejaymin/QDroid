.class Lexam/Widget/EditableTest$1;
.super Ljava/lang/Object;
.source "EditableTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Widget/EditableTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/EditableTest;


# direct methods
.method constructor <init>(Lexam/Widget/EditableTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/EditableTest$1;->this$0:Lexam/Widget/EditableTest;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x2

    .line 28
    iget-object v1, p0, Lexam/Widget/EditableTest$1;->this$0:Lexam/Widget/EditableTest;

    iget-object v1, v1, Lexam/Widget/EditableTest;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 29
    .local v0, edit:Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 31
    :sswitch_0
    const/4 v1, 0x0

    const-string v2, "INS"

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 34
    :sswitch_1
    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 37
    :sswitch_2
    const-string v1, "APP"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 45
    :sswitch_3
    const-string v1, "REP"

    invoke-interface {v0, v2, v3, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 48
    :sswitch_4
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0015 -> :sswitch_0
        0x7f0c0016 -> :sswitch_1
        0x7f0c0077 -> :sswitch_2
        0x7f0c0078 -> :sswitch_3
        0x7f0c0079 -> :sswitch_4
    .end sparse-switch
.end method
