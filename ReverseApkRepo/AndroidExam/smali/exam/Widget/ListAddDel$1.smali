.class Lexam/Widget/ListAddDel$1;
.super Ljava/lang/Object;
.source "ListAddDel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Widget/ListAddDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/ListAddDel;


# direct methods
.method constructor <init>(Lexam/Widget/ListAddDel;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 38
    iget-object v3, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    const v4, 0x7f0c0085

    invoke-virtual {v3, v4}, Lexam/Widget/ListAddDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 39
    .local v0, ed:Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 41
    :sswitch_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, text:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    iget-object v3, v3, Lexam/Widget/ListAddDel;->Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v3, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    iget-object v3, v3, Lexam/Widget/ListAddDel;->Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 50
    .end local v2           #text:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    iget-object v3, v3, Lexam/Widget/ListAddDel;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 51
    .local v1, id:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 52
    iget-object v3, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    iget-object v3, v3, Lexam/Widget/ListAddDel;->Items:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    iget-object v3, v3, Lexam/Widget/ListAddDel;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 54
    iget-object v3, p0, Lexam/Widget/ListAddDel$1;->this$0:Lexam/Widget/ListAddDel;

    iget-object v3, v3, Lexam/Widget/ListAddDel;->Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x7f0c0016 -> :sswitch_1
        0x7f0c0086 -> :sswitch_0
    .end sparse-switch
.end method
