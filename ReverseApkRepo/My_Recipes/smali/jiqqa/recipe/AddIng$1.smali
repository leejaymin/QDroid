.class Ljiqqa/recipe/AddIng$1;
.super Ljava/lang/Object;
.source "AddIng.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/AddIng;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/AddIng;


# direct methods
.method constructor <init>(Ljiqqa/recipe/AddIng;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/AddIng$1;->this$0:Ljiqqa/recipe/AddIng;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v1, sender:Landroid/os/Bundle;
    const-string v2, "ingredient"

    iget-object v3, p0, Ljiqqa/recipe/AddIng$1;->this$0:Ljiqqa/recipe/AddIng;

    iget-object v3, v3, Ljiqqa/recipe/AddIng;->ingredient:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "amount"

    iget-object v3, p0, Ljiqqa/recipe/AddIng$1;->this$0:Ljiqqa/recipe/AddIng;

    iget-object v3, v3, Ljiqqa/recipe/AddIng;->amount:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "measurement"

    iget-object v3, p0, Ljiqqa/recipe/AddIng$1;->this$0:Ljiqqa/recipe/AddIng;

    iget-object v3, v3, Ljiqqa/recipe/AddIng;->measurement:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 51
    iget-object v2, p0, Ljiqqa/recipe/AddIng$1;->this$0:Ljiqqa/recipe/AddIng;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Ljiqqa/recipe/AddIng;->setResult(ILandroid/content/Intent;)V

    .line 52
    iget-object v2, p0, Ljiqqa/recipe/AddIng$1;->this$0:Ljiqqa/recipe/AddIng;

    invoke-virtual {v2}, Ljiqqa/recipe/AddIng;->finish()V

    .line 53
    return-void
.end method
