.class public Lexam/Input/ContextMenuTest;
.super Landroid/app/Activity;
.source "ContextMenuTest.java"


# instance fields
.field mBtn:Landroid/widget/Button;

.field mEdit:Landroid/widget/EditText;

.field mImage:Lexam/Input/MyImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 71
    :goto_0
    return v2

    .line 49
    :sswitch_0
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mBtn:Landroid/widget/Button;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 52
    :sswitch_1
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mBtn:Landroid/widget/Button;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 55
    :sswitch_2
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mBtn:Landroid/widget/Button;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 58
    :sswitch_3
    const-string v0, "\ubc88\uc5ed\ud588\ub2e4."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 61
    :sswitch_4
    const-string v0, "\ud544\uae30 \uc778\uc2dd\ud588\ub2e4."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 64
    :sswitch_5
    const-string v0, "\ud68c\uc804\ud588\ub2e4 \uce58\uace0."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :sswitch_6
    const-string v0, "\ud06c\uae30 \ubcc0\uacbd \ud588\ub2e4 \uce58\uace0."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lexam/Input/ContextMenuTest;->setContentView(I)V

    .line 20
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lexam/Input/ContextMenuTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lexam/Input/ContextMenuTest;->mBtn:Landroid/widget/Button;

    .line 21
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mBtn:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lexam/Input/ContextMenuTest;->registerForContextMenu(Landroid/view/View;)V

    .line 23
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lexam/Input/ContextMenuTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lexam/Input/ContextMenuTest;->mEdit:Landroid/widget/EditText;

    .line 24
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lexam/Input/ContextMenuTest;->registerForContextMenu(Landroid/view/View;)V

    .line 26
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lexam/Input/ContextMenuTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lexam/Input/MyImage;

    iput-object v0, p0, Lexam/Input/ContextMenuTest;->mImage:Lexam/Input/MyImage;

    .line 27
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mImage:Lexam/Input/MyImage;

    invoke-virtual {p0, v0}, Lexam/Input/ContextMenuTest;->registerForContextMenu(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 33
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mBtn:Landroid/widget/Button;

    if-ne p2, v0, :cond_0

    .line 34
    const-string v0, "Button Menu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 35
    const/4 v0, 0x1

    const-string v1, "Red"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 36
    const/4 v0, 0x2

    const-string v1, "Green"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 37
    const/4 v0, 0x3

    const-string v1, "Blue"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 40
    :cond_0
    iget-object v0, p0, Lexam/Input/ContextMenuTest;->mEdit:Landroid/widget/EditText;

    if-ne p2, v0, :cond_1

    .line 41
    const/4 v0, 0x4

    const-string v1, "\ubc88\uc5ed\ud558\uae30"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 42
    const/4 v0, 0x5

    const-string v1, "\ud544\uae30 \uc778\uc2dd"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 44
    :cond_1
    return-void
.end method
