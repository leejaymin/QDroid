.class Ljiqqa/recipe/AddIng$2;
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
    iput-object p1, p0, Ljiqqa/recipe/AddIng$2;->this$0:Ljiqqa/recipe/AddIng;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "returnStatus"

    const-string v3, "CANCEL"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 64
    .local v1, mIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Ljiqqa/recipe/AddIng$2;->this$0:Ljiqqa/recipe/AddIng;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljiqqa/recipe/AddIng;->setResult(ILandroid/content/Intent;)V

    .line 66
    iget-object v2, p0, Ljiqqa/recipe/AddIng$2;->this$0:Ljiqqa/recipe/AddIng;

    invoke-virtual {v2}, Ljiqqa/recipe/AddIng;->finish()V

    .line 67
    return-void
.end method
