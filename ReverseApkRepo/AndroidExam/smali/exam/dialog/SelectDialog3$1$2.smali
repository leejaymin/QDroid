.class Lexam/dialog/SelectDialog3$1$2;
.super Ljava/lang/Object;
.source "SelectDialog3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/SelectDialog3$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/dialog/SelectDialog3$1;


# direct methods
.method constructor <init>(Lexam/dialog/SelectDialog3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/SelectDialog3$1$2;->this$1:Lexam/dialog/SelectDialog3$1;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 30
    iget-object v4, p0, Lexam/dialog/SelectDialog3$1$2;->this$1:Lexam/dialog/SelectDialog3$1;

    #getter for: Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;
    invoke-static {v4}, Lexam/dialog/SelectDialog3$1;->access$0(Lexam/dialog/SelectDialog3$1;)Lexam/dialog/SelectDialog3;

    move-result-object v4

    invoke-virtual {v4}, Lexam/dialog/SelectDialog3;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, foods:[Ljava/lang/String;
    iget-object v4, p0, Lexam/dialog/SelectDialog3$1$2;->this$1:Lexam/dialog/SelectDialog3$1;

    #getter for: Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;
    invoke-static {v4}, Lexam/dialog/SelectDialog3$1;->access$0(Lexam/dialog/SelectDialog3$1;)Lexam/dialog/SelectDialog3;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Lexam/dialog/SelectDialog3;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 32
    .local v3, text:Landroid/widget/TextView;
    const-string v2, "\uc120\ud0dd\ud55c \uc74c\uc2dd = "

    .line 33
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lexam/dialog/SelectDialog3$1$2;->this$1:Lexam/dialog/SelectDialog3$1;

    #getter for: Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;
    invoke-static {v4}, Lexam/dialog/SelectDialog3$1;->access$0(Lexam/dialog/SelectDialog3$1;)Lexam/dialog/SelectDialog3;

    move-result-object v4

    iget-object v4, v4, Lexam/dialog/SelectDialog3;->mSelect:[Z

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 38
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void

    .line 34
    :cond_0
    iget-object v4, p0, Lexam/dialog/SelectDialog3$1$2;->this$1:Lexam/dialog/SelectDialog3$1;

    #getter for: Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;
    invoke-static {v4}, Lexam/dialog/SelectDialog3$1;->access$0(Lexam/dialog/SelectDialog3$1;)Lexam/dialog/SelectDialog3;

    move-result-object v4

    iget-object v4, v4, Lexam/dialog/SelectDialog3;->mSelect:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_1

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
