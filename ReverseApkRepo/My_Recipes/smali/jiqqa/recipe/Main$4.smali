.class Ljiqqa/recipe/Main$4;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/Main;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljiqqa/recipe/Main;

.field private final synthetic val$id:J

.field private final synthetic val$mQuickAction:Ljiqqa/recipe/QuickAction;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Ljiqqa/recipe/Main;Ljiqqa/recipe/QuickAction;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    iput-object p2, p0, Ljiqqa/recipe/Main$4;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    iput p3, p0, Ljiqqa/recipe/Main$4;->val$position:I

    iput-wide p4, p0, Ljiqqa/recipe/Main$4;->val$id:J

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljiqqa/recipe/Main$4;)Ljiqqa/recipe/Main;
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 222
    iget-object v0, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Ljiqqa/recipe/Main;->deleteDialog:Landroid/app/AlertDialog;

    .line 223
    iget-object v0, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    iget-object v0, v0, Ljiqqa/recipe/Main;->deleteDialog:Landroid/app/AlertDialog;

    const-string v1, "Delete?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    iget-object v0, v0, Ljiqqa/recipe/Main;->deleteDialog:Landroid/app/AlertDialog;

    const-string v1, "Are you sure you want to delete this recipe?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    iget-object v0, v0, Ljiqqa/recipe/Main;->deleteDialog:Landroid/app/AlertDialog;

    const-string v1, "No"

    new-instance v2, Ljiqqa/recipe/Main$4$1;

    iget-object v3, p0, Ljiqqa/recipe/Main$4;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    invoke-direct {v2, p0, v3}, Ljiqqa/recipe/Main$4$1;-><init>(Ljiqqa/recipe/Main$4;Ljiqqa/recipe/QuickAction;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 232
    iget-object v0, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    iget-object v6, v0, Ljiqqa/recipe/Main;->deleteDialog:Landroid/app/AlertDialog;

    const-string v7, "Yes"

    new-instance v0, Ljiqqa/recipe/Main$4$2;

    iget v2, p0, Ljiqqa/recipe/Main$4;->val$position:I

    iget-wide v3, p0, Ljiqqa/recipe/Main$4;->val$id:J

    iget-object v5, p0, Ljiqqa/recipe/Main$4;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljiqqa/recipe/Main$4$2;-><init>(Ljiqqa/recipe/Main$4;IJLjiqqa/recipe/QuickAction;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 242
    iget-object v0, p0, Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;

    iget-object v0, v0, Ljiqqa/recipe/Main;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 243
    return-void
.end method
