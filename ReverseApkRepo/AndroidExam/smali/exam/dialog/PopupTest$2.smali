.class Lexam/dialog/PopupTest$2;
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


# direct methods
.method constructor <init>(Lexam/dialog/PopupTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/PopupTest$2;->this$0:Lexam/dialog/PopupTest;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lexam/dialog/PopupTest$2;->this$0:Lexam/dialog/PopupTest;

    iget-object v0, v0, Lexam/dialog/PopupTest;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 47
    return-void
.end method
