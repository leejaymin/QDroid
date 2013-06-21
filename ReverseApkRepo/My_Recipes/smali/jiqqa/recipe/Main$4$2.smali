.class Ljiqqa/recipe/Main$4$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljiqqa/recipe/Main$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljiqqa/recipe/Main$4;

.field private final synthetic val$id:J

.field private final synthetic val$mQuickAction:Ljiqqa/recipe/QuickAction;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Ljiqqa/recipe/Main$4;IJLjiqqa/recipe/QuickAction;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljiqqa/recipe/Main$4$2;->this$1:Ljiqqa/recipe/Main$4;

    iput p2, p0, Ljiqqa/recipe/Main$4$2;->val$position:I

    iput-wide p3, p0, Ljiqqa/recipe/Main$4$2;->val$id:J

    iput-object p5, p0, Ljiqqa/recipe/Main$4$2;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 235
    iget-object v1, p0, Ljiqqa/recipe/Main$4$2;->this$1:Ljiqqa/recipe/Main$4;

    #getter for: Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;
    invoke-static {v1}, Ljiqqa/recipe/Main$4;->access$0(Ljiqqa/recipe/Main$4;)Ljiqqa/recipe/Main;

    move-result-object v1

    #getter for: Ljiqqa/recipe/Main;->rCursor:Landroid/database/Cursor;
    invoke-static {v1}, Ljiqqa/recipe/Main;->access$0(Ljiqqa/recipe/Main;)Landroid/database/Cursor;

    move-result-object v0

    .line 236
    .local v0, c:Landroid/database/Cursor;
    iget v1, p0, Ljiqqa/recipe/Main$4$2;->val$position:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 237
    iget-object v1, p0, Ljiqqa/recipe/Main$4$2;->this$1:Ljiqqa/recipe/Main$4;

    #getter for: Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;
    invoke-static {v1}, Ljiqqa/recipe/Main$4;->access$0(Ljiqqa/recipe/Main$4;)Ljiqqa/recipe/Main;

    move-result-object v1

    iget-object v1, v1, Ljiqqa/recipe/Main;->db:Ljiqqa/recipe/RecipeDBAdapter;

    iget-wide v2, p0, Ljiqqa/recipe/Main$4$2;->val$id:J

    invoke-virtual {v1, v2, v3}, Ljiqqa/recipe/RecipeDBAdapter;->deleteRecipe(J)Z

    .line 238
    iget-object v1, p0, Ljiqqa/recipe/Main$4$2;->this$1:Ljiqqa/recipe/Main$4;

    #getter for: Ljiqqa/recipe/Main$4;->this$0:Ljiqqa/recipe/Main;
    invoke-static {v1}, Ljiqqa/recipe/Main$4;->access$0(Ljiqqa/recipe/Main$4;)Ljiqqa/recipe/Main;

    move-result-object v1

    #calls: Ljiqqa/recipe/Main;->fillData()V
    invoke-static {v1}, Ljiqqa/recipe/Main;->access$1(Ljiqqa/recipe/Main;)V

    .line 239
    iget-object v1, p0, Ljiqqa/recipe/Main$4$2;->val$mQuickAction:Ljiqqa/recipe/QuickAction;

    invoke-virtual {v1}, Ljiqqa/recipe/QuickAction;->dismiss()V

    .line 240
    return-void
.end method
