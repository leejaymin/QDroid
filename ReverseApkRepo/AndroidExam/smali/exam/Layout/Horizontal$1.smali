.class Lexam/Layout/Horizontal$1;
.super Ljava/lang/Object;
.source "Horizontal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Layout/Horizontal;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Layout/Horizontal;


# direct methods
.method constructor <init>(Lexam/Layout/Horizontal;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Layout/Horizontal$1;->this$0:Lexam/Layout/Horizontal;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 17
    iget-object v2, p0, Lexam/Layout/Horizontal$1;->this$0:Lexam/Layout/Horizontal;

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Lexam/Layout/Horizontal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 18
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, str:Ljava/lang/String;
    iget-object v2, p0, Lexam/Layout/Horizontal$1;->this$0:Lexam/Layout/Horizontal;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 20
    return-void
.end method
