.class Lexam/dialog/PopupTest$1;
.super Ljava/lang/Object;
.source "PopupTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/PopupTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/PopupTest;

.field private final synthetic val$btnshow:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lexam/dialog/PopupTest;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/PopupTest$1;->this$0:Lexam/dialog/PopupTest;

    iput-object p2, p0, Lexam/dialog/PopupTest$1;->val$btnshow:Landroid/widget/Button;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 38
    iget-object v0, p0, Lexam/dialog/PopupTest$1;->this$0:Lexam/dialog/PopupTest;

    iget-object v0, v0, Lexam/dialog/PopupTest;->popup:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 39
    iget-object v0, p0, Lexam/dialog/PopupTest$1;->this$0:Lexam/dialog/PopupTest;

    iget-object v0, v0, Lexam/dialog/PopupTest;->popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lexam/dialog/PopupTest$1;->val$btnshow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 40
    return-void
.end method
