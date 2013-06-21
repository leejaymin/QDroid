.class Lexam/dialog/SelectDialog1$1$1;
.super Ljava/lang/Object;
.source "SelectDialog1.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/SelectDialog1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/dialog/SelectDialog1$1;


# direct methods
.method constructor <init>(Lexam/dialog/SelectDialog1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/SelectDialog1$1$1;->this$1:Lexam/dialog/SelectDialog1$1;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 25
    iget-object v2, p0, Lexam/dialog/SelectDialog1$1$1;->this$1:Lexam/dialog/SelectDialog1$1;

    #getter for: Lexam/dialog/SelectDialog1$1;->this$0:Lexam/dialog/SelectDialog1;
    invoke-static {v2}, Lexam/dialog/SelectDialog1$1;->access$0(Lexam/dialog/SelectDialog1$1;)Lexam/dialog/SelectDialog1;

    move-result-object v2

    invoke-virtual {v2}, Lexam/dialog/SelectDialog1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, foods:[Ljava/lang/String;
    iget-object v2, p0, Lexam/dialog/SelectDialog1$1$1;->this$1:Lexam/dialog/SelectDialog1$1;

    #getter for: Lexam/dialog/SelectDialog1$1;->this$0:Lexam/dialog/SelectDialog1;
    invoke-static {v2}, Lexam/dialog/SelectDialog1$1;->access$0(Lexam/dialog/SelectDialog1$1;)Lexam/dialog/SelectDialog1;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Lexam/dialog/SelectDialog1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 27
    .local v1, text:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\uc120\ud0dd\ud55c \uc74c\uc2dd = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
