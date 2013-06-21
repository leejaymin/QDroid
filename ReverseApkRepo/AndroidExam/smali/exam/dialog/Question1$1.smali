.class Lexam/dialog/Question1$1;
.super Ljava/lang/Object;
.source "Question1.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/dialog/Question1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/Question1;


# direct methods
.method constructor <init>(Lexam/dialog/Question1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 111
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 112
    iget-object v1, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    iget-object v2, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    iget v2, v2, Lexam/dialog/Question1;->a:I

    iget-object v3, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    iget v3, v3, Lexam/dialog/Question1;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Lexam/dialog/Question1;->result:I

    .line 116
    :goto_0
    iget-object v1, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Lexam/dialog/Question1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, text:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uc5f0\uc0b0 \uacb0\uacfc = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    iget v2, v2, Lexam/dialog/Question1;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    const-string v2, "\uc5f0\uc0b0\uc744 \uc644\ub8cc\ud558\uc600\uc2b5\ub2c8\ub2e4."

    .line 119
    const/4 v3, 0x1

    .line 118
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 120
    return-void

    .line 114
    .end local v0           #text:Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    iget-object v2, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    iget v2, v2, Lexam/dialog/Question1;->a:I

    iget-object v3, p0, Lexam/dialog/Question1$1;->this$0:Lexam/dialog/Question1;

    iget v3, v3, Lexam/dialog/Question1;->b:I

    mul-int/2addr v2, v3

    iput v2, v1, Lexam/dialog/Question1;->result:I

    goto :goto_0
.end method
