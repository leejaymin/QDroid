.class Lexam/dialog/OrderDialog$1;
.super Ljava/lang/Object;
.source "OrderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/OrderDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/OrderDialog;


# direct methods
.method constructor <init>(Lexam/dialog/OrderDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/OrderDialog$1;->this$0:Lexam/dialog/OrderDialog;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/dialog/OrderDialog$1;)Lexam/dialog/OrderDialog;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lexam/dialog/OrderDialog$1;->this$0:Lexam/dialog/OrderDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 19
    iget-object v1, p0, Lexam/dialog/OrderDialog$1;->this$0:Lexam/dialog/OrderDialog;

    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/LinearLayout;

    .line 21
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lexam/dialog/OrderDialog$1;->this$0:Lexam/dialog/OrderDialog;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v2, "\uc8fc\ubb38 \uc815\ubcf4\ub97c \uc785\ub825\ud558\uc2dc\uc624."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 23
    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 25
    const-string v2, "\ud655\uc778"

    new-instance v3, Lexam/dialog/OrderDialog$1$1;

    invoke-direct {v3, p0, v0}, Lexam/dialog/OrderDialog$1$1;-><init>(Lexam/dialog/OrderDialog$1;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 36
    const-string v2, "\ucde8\uc18c"

    new-instance v3, Lexam/dialog/OrderDialog$1$2;

    invoke-direct {v3, p0}, Lexam/dialog/OrderDialog$1$2;-><init>(Lexam/dialog/OrderDialog$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    return-void
.end method
