.class Ljiqqa/recipe/Main$5;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/Main;->testDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/Main;


# direct methods
.method constructor <init>(Ljiqqa/recipe/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/Main$5;->this$0:Ljiqqa/recipe/Main;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "d"
    .parameter "which"

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 309
    iget-object v0, p0, Ljiqqa/recipe/Main$5;->this$0:Ljiqqa/recipe/Main;

    invoke-virtual {v0}, Ljiqqa/recipe/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Let me know if you have any ideas! =)"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void
.end method
