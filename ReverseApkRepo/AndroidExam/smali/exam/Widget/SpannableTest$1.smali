.class Lexam/Widget/SpannableTest$1;
.super Landroid/text/style/URLSpan;
.source "SpannableTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/Widget/SpannableTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/SpannableTest;


# direct methods
.method constructor <init>(Lexam/Widget/SpannableTest;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/SpannableTest$1;->this$0:Lexam/Widget/SpannableTest;

    .line 39
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\uc774 \uc0ac\ub78c\uc758 \ud504\ub85c\ud544\uc744 \uac80\uc0c9\ud55c\ub2e4."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    return-void
.end method
