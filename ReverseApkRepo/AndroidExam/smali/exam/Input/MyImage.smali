.class Lexam/Input/MyImage;
.super Landroid/widget/ImageView;
.source "ContextMenuTest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 87
    const-string v0, "MyImage Menu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 88
    const/16 v0, 0x64

    const-string v1, "\uc774\ubbf8\uc9c0 \ud68c\uc804"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 89
    const/16 v0, 0x65

    const-string v1, "\ud06c\uae30 \ubcc0\uacbd"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    return-void
.end method
