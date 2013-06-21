.class Lexam/Output/ToastTest$1;
.super Ljava/lang/Object;
.source "ToastTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Output/ToastTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Output/ToastTest;


# direct methods
.method constructor <init>(Lexam/Output/ToastTest;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    const-string v3, "\uc7a0\uc2dc \ub098\ud0c0\ub098\ub294 \uba54\uc2dc\uc9c0"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 33
    :pswitch_1
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    const-string v3, "\uc870\uae08 \uae38\uac8c \ub098\ud0c0\ub098\ub294 \uba54\uc2dc\uc9c0"

    .line 34
    const/4 v4, 0x1

    .line 33
    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\ud604\uc7ac \uce74\uc6b4\ud2b8 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget v5, v4, Lexam/Output/ToastTest;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lexam/Output/ToastTest;->count:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lexam/Output/ToastTest;->str:Ljava/lang/String;

    .line 38
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v2, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v2, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 41
    :cond_0
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v3, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v4, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v4, v4, Lexam/Output/ToastTest;->str:Ljava/lang/String;

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    .line 42
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v2, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\ud604\uc7ac \uce74\uc6b4\ud2b8 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget v5, v4, Lexam/Output/ToastTest;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lexam/Output/ToastTest;->count:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lexam/Output/ToastTest;->str:Ljava/lang/String;

    .line 46
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v2, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 47
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v3, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v4, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v4, v4, Lexam/Output/ToastTest;->str:Ljava/lang/String;

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    .line 51
    :goto_1
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v2, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 49
    :cond_1
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v2, v2, Lexam/Output/ToastTest;->mToast:Landroid/widget/Toast;

    iget-object v3, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    iget-object v3, v3, Lexam/Output/ToastTest;->str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    :pswitch_4
    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    .line 55
    const v3, 0x7f03004d

    const/4 v4, 0x0

    .line 54
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 56
    .local v0, linear:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lexam/Output/ToastTest$1;->this$0:Lexam/Output/ToastTest;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 57
    .local v1, t2:Landroid/widget/Toast;
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 58
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c005f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
