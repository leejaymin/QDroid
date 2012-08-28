.class Lorg/connectbot/ConsoleActivity$17$1;
.super Ljava/lang/Object;
.source "ConsoleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/ConsoleActivity$17;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/ConsoleActivity$17;

.field private final synthetic val$resizeView:Landroid/view/View;

.field private final synthetic val$terminalView:Lorg/connectbot/TerminalView;


# direct methods
.method constructor <init>(Lorg/connectbot/ConsoleActivity$17;Landroid/view/View;Lorg/connectbot/TerminalView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/ConsoleActivity$17$1;->this$1:Lorg/connectbot/ConsoleActivity$17;

    iput-object p2, p0, Lorg/connectbot/ConsoleActivity$17$1;->val$resizeView:Landroid/view/View;

    iput-object p3, p0, Lorg/connectbot/ConsoleActivity$17$1;->val$terminalView:Lorg/connectbot/TerminalView;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 754
    :try_start_0
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$17$1;->val$resizeView:Landroid/view/View;

    .line 755
    const v4, 0x7f0b0028

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 754
    check-cast v3, Landroid/widget/EditText;

    .line 756
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 757
    .local v2, width:I
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$17$1;->val$resizeView:Landroid/view/View;

    .line 758
    const v4, 0x7f0b0029

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 757
    check-cast v3, Landroid/widget/EditText;

    .line 759
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 757
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 766
    .local v0, height:I
    iget-object v3, p0, Lorg/connectbot/ConsoleActivity$17$1;->val$terminalView:Lorg/connectbot/TerminalView;

    invoke-virtual {v3, v2, v0}, Lorg/connectbot/TerminalView;->forceSize(II)V

    .line 767
    .end local v0           #height:I
    .end local v2           #width:I
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v1

    .line 763
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method
